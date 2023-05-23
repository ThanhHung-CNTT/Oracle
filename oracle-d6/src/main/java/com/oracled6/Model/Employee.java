package com.oracled6.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "employee")
@Entity
public class Employee {
    @Id
    @GeneratedValue
    @Column(name = "EmpNo")
    Long id;

    @Column(name = "EmpName")
    String name;

    @Column(name = "Salary")
    Integer salary;

    @Column(name = "DeptNo")
    Long departmentId;

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public void setDepartmentId(Long departmentId) {
        this.departmentId = departmentId;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Integer getSalary() {
        return salary;
    }

    public Long getDepartmentId() {
        return departmentId;
    }
}
