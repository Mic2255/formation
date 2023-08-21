package com.bj.formation.formationJava.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Data
@Entity
@ToString
//@Table(name = "users")
@SQLDelete(sql = "UPDATE user SET deleted = true WHERE id=?")
@Where(clause = "deleted=false")
public class User extends EntityBase<Integer> implements UserDetails {
    private String prenoms, nom, login, telephone, adresse;

    @Column(unique = true)
    private String email;

    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String password;

    @Access(AccessType.PROPERTY)
    private String verificaToken;

    @ManyToMany(fetch = FetchType.LAZY)
    private Set<Role> roles = new HashSet<>();

    @Temporal(TemporalType.TIMESTAMP)
    private Date lastLogin;

    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    protected Date createdAt;

    @Temporal(TemporalType.TIMESTAMP)
    @LastModifiedDate
    protected Date updatedAt;

    private Boolean enabled = Boolean.FALSE, deleted = Boolean.FALSE;

    @Transient
    private Set<String> permissions = new HashSet<>();

    public User() {
    }

    public User(User u) {
        super();
        this.setId(u.getId());
        this.setPassword(u.getPassword());
        this.setVerificaToken(u.getVerificaToken());
        this.setCreatedAt(u.getCreatedAt());
        this.setLastLogin(u.getLastLogin());
        this.setUpdatedAt(u.getUpdatedAt());
        this.setEnabled(u.getEnabled());
        this.setDeleted(u.getDeleted());
        this.setRoles(u.getRoles());
    }

    public User(Integer id, String password, boolean enabled) {
        this();
        this.id = id;
        this.password = password;
        this.enabled = enabled;
    }

    public static User create(User u) {
        return new User(
                u.getId(),
                u.getPassword(),
                u.getEnabled());
    }

    public Set<String> getPermissions() {// this.permissions = new HashSet<>();

        this.roles.forEach(role -> {
            permissions.add(role.getName());
        });

        return permissions;
    }
    
    public Set<Role> addRole(Role role) {
        roles.add(role);
        return roles;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<>();
        getPermissions().forEach(item -> authorities.add(new SimpleGrantedAuthority("ROLE_" + item.toUpperCase())));
        return authorities;
    }

    @Override
    public String getUsername() {
        return login;
    }

    @JsonIgnore
    public boolean isAccountNonExpired() {
        return enabled == Boolean.TRUE;
    }

    @JsonIgnore
    public boolean isAccountNonLocked() {
        return enabled != null;
    }

    @JsonIgnore
    public boolean isCredentialsNonExpired() {
        return enabled != Boolean.FALSE;
    }

    @Override
    public boolean isEnabled() {
        return enabled;
    }
}
