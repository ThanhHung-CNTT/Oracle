package com.oracle5.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.oracle5.entities.Location;

public interface LocationRepository extends JpaRepository<Location, Long> {

}
