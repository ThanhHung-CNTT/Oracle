package com.oracled6.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracled6.Model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    
}
