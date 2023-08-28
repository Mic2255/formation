package com.bj.formation.formationJava.repository;

import com.bj.formation.formationJava.entity.Categories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriesRepository extends JpaRepository<Categories, Integer>  {

}
