package com.bj.formation.formationJava.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailCommande extends JpaRepository<Commande, Integer> {

}
