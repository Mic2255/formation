package com.bj.formation.formationJava.entity;

import lombok.Data;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;

import javax.persistence.Entity;

@Entity
@Data
@SQLDelete(sql = "UPDATE role SET deleted = true WHERE id=?")
@Where(clause = "deleted=false")
public class Role extends EntityBase<Integer> {
    private String name;

    public Role() {
    }

    @Override
    public int hashCode() {
        if (id != null)
            return id.hashCode();
        else if (name != null)
            return name.hashCode();
        return 0;
    }

    @Override
    public boolean equals(Object another) {
        if (!(another instanceof Role))
            return false;
        Role r = (Role) another;
        return r.id != null && (r.id.equals(this.id));
    }

    public Role(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Role{" +
                "name='" + name + '\'' +
                ", id=" + id +
                '}';
    }
}
