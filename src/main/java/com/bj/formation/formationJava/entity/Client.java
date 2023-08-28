package com.bj.formation.formationJava.entity;

import lombok.Data;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Data
@Entity
@ToString
public class Client extends EntityBase<Integer>{
    private String nom;
    private String prenon;
    private String sexe;
    private String telephone;
    private String email;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;
}
