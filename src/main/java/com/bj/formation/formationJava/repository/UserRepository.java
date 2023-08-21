package com.bj.formation.formationJava.repository;

import com.bj.formation.formationJava.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    @Query("SELECT u FROM User u where u.email = ?1")
    Optional<User> findByUsername(String r);

    Optional<User> findByVerificaToken(String s);

    Boolean existsByEmail(String email);

    Page<User> findByCreatedAtGreaterThan(Date d, Pageable p);

    @Query("select p from User p where p.createdAt > :date")
    Page<User> findByCreatedUsingISO8601Date(@Param("date") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) Date d,
                                             Pageable p);

    @Query("SELECT u FROM User u where u.login = ?1 or u.telephone = ?1")
    Optional<User> findByLogin(String login);

    Boolean existsByTelephone(String phone);
}
