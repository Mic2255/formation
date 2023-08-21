package com.bj.formation.formationJava.services;

import java.util.List;

import com.bj.formation.formationJava.entity.Role;
import com.bj.formation.formationJava.entity.User;
import com.bj.formation.formationJava.repository.RoleRepository;
import com.bj.formation.formationJava.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;
import java.util.logging.Logger;

@Service
public class UserService implements UserDetailsService {
    private final Logger logger = Logger.getLogger(getClass().getName());
    @Autowired
    private UserRepository repository;
    @Autowired
    private RoleRepository rep;

    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

//    @Bean
//    public PasswordEncoder encoder()
//    {
//        return new BCryptPasswordEncoder();
//    }
    
    public long count() {
        return repository.count();
    }
    
    public long countUser() {
        long total = 0;
        Role rs = rep.findByName("USER");
        List<User> users = repository.findAll();
        for(int i = 0; i<users.size(); i++){
            //Si la personne est un utilisateur, procéder à une itération du nombre d'utilisateur
            if(users.get(i).getRoles().contains(rs)) total++;
        }
        return total;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        logger.info(String.format("Connexion de %s", username));
        return repository.findByLogin(username)
                .orElseThrow(() -> new UsernameNotFoundException(String.format("Utilisateur %s non trouvé !", username)));
    }

    public Iterable<User> all(Pageable page) {
        return repository.findAll(page);
    }

    public User addAdmin(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        user.setVerificaToken(UUID.randomUUID().toString());
        user.getRoles().add(rep.findByName("ADMIN"));
        return repository.save(user);
    }

    public User add(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        user.setVerificaToken(UUID.randomUUID().toString());
        user.getRoles().add(rep.findByName("USER"));
        return repository.save(user);
    }

    public Optional<User> one(Long id) {
        return repository.findById(id);
    }

    public Optional<User> del(Long id) {
        return one(id).map(user -> {
            repository.delete(user);
            return user;
        });
    }
}