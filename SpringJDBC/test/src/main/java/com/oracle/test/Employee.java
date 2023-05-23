package com.oracle.test;

import java.util.Date;

public class Employee {
    private Long id;

    private String first_name;

    private String last_name;

    private String email;

    private String phone;

    private Date hire_date;

    private String manager_id;

    private String job_title;

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirst_name() {
        return this.first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return this.last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getHire_date() {
        return this.hire_date;
    }

    public void setHire_date(Date hire_date) {
        this.hire_date = hire_date;
    }

    public String getManager_id() {
        return this.manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }

    public String getJob_title() {
        return this.job_title;
    }

    public void setJob_title(String job_title) {
        this.job_title = job_title;
    }

    @Override
    public String toString() {
        return "{" +
                " id='" + getId() + "'" +
                ", first_name='" + getFirst_name() + "'" +
                ", last_name='" + getLast_name() + "'" +
                ", email='" + getEmail() + "'" +
                ", phone='" + getPhone() + "'" +
                ", hide_date='" + getHire_date() + "'" +
                ", manager_id='" + getManager_id() + "'" +
                ", job_title='" + getJob_title() + "'" +
                "}";
    }

}
