package com.oracled6.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracled6.Model.Project;

public interface ProjectRepository extends JpaRepository<Project, Long> {
    
}
