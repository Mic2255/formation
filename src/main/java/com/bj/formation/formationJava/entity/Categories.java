package com.bj.formation.formationJava.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;

@Data
@Entity
@ToString
public class Categories extends EntityBase<Integer> {
    private String libelle;
}
