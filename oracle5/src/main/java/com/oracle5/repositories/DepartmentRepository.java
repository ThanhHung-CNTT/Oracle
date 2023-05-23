package com.oracle5.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracle5.entities.Department;

public interface DepartmentRepository extends JpaRepository<Department, Long> {
    List<Department> findByName(String Name);
}
