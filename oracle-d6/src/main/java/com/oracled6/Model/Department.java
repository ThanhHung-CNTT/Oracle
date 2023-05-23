package com.oracled6.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "Department")
@Entity
public class Department {
    @Id
    @GeneratedValue
    @Column(name = "DeptNo")
    Long id;

    @Column(name = "DeptName")
    String name;

    @Column(name = "Location")
    String location;

    @Column(name = "NumOfStaff")
    int numOfStaff;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLocation() {
        return location;
    }

    public void setNumOfStaff(int numOfStaff) {
        this.numOfStaff = numOfStaff;
    }

    public int getNumOfStaff() {
        return numOfStaff;
    }
}
