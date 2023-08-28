package com.bj.formation.formationJava.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
@Entity
@ToString
public class Commande extends EntityBase<Integer>{
    private Date date;
    private float prixTotal;
    private double description;
    private String numero;

    @ManyToMany
    private List<DetailCommande> detailCommandes = new ArrayList<>();
}
