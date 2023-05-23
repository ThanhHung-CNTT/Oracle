package com.oracle5.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "departments")
public class Department {
    @Id
    @GeneratedValue
    @Column(name = "department_id")
    private Long id;

    @Column(name = "department_name")
    private String name;

    @Column(name = "manager_id")
    private Long managerId;

    @Column(name = "location_id")
    private Long locationId;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getManagerId() {
        return this.managerId;
    }

    public void setManagerId(Long managerId) {
        this.managerId = managerId;
    }

    public Long getLocationId() {
        return this.locationId;
    }

    public void setLocationId(Long locationId) {
        this.locationId = locationId;
    }

}
