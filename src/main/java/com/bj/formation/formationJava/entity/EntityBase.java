package com.bj.formation.formationJava.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;
import javax.persistence.MappedSuperclass;
import java.util.Date;

@MappedSuperclass
public abstract class EntityBase<ID extends Serializable> implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected ID id;

    @CreatedDate
    protected Date createdAt = new Date();

    @JsonIgnore
    @ColumnDefault("false")
    protected boolean deleted = false;

    public ID getId() {
        return id;
    }

    public void setId(ID id) {
        this.id = id;
    }

    @Override
    public abstract String toString();
}