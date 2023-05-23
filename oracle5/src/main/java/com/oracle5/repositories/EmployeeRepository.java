package com.oracle5.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracle5.entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    List<Employee> findByDepartmentId(long id);

    List<Employee> findBySalaryGreaterThan(int minSalary);
}
