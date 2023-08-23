package com.bj.formation.formationJava.repository;

import com.bj.formation.formationJava.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Commande extends JpaRepository<Commande, Integer> {
}
