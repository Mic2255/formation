package com.bj.formation.formationJava.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Data
@Entity
@ToString
public class Article extends EntityBase<Integer>{

    private String designation;
    private float prix;
    private String image;
    private String description;

    @ManyToOne
    @JoinColumn(name = "categories_id")
    private Categories categories;
}
