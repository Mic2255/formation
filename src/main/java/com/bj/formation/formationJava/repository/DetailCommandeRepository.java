package com.bj.formation.formationJava.repository;

import com.bj.formation.formationJava.entity.DetailCommande;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DetailCommandeRepository extends JpaRepository<DetailCommande, Integer> {

}
