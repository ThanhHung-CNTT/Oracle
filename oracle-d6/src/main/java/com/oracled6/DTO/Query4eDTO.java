package com.oracled6.DTO;

public class Query4eDTO extends Query4aDTO {
    int salary;
    
    public Query4eDTO(String name, int salary) {
        super(name);
        this.salary = salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getSalary() {
        return salary;
    }
}