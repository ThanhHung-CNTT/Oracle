package com.oracled6.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "Project")
@Entity
public class Project {
    @Id
    @Column(name = "ProjNo")
    @GeneratedValue
    Long id;

    @Column(name = "ProjName")
    String name;

    @Column(name = "ProjType")
    String type;

    @Column(name = "Budget")
    int budget;

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getBudget() {
        return budget;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public Long getId() {
        return id;
    }
}
