package com.bj.formation.formationJava.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Data
@Entity
@ToString
public class DetailCommande extends EntityBase<Integer>{
    @OneToOne
    @JoinColumn(name = "article_id")
    private Article article;
    private double quantite;
}
