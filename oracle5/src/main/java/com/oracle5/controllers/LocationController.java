package com.oracle5.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracle5.entities.Location;
import com.oracle5.repositories.LocationRepository;
import com.oracle5.utils.Helper;

@Controller
public class LocationController {
    @Autowired
    LocationRepository locationRepository;

    @GetMapping("/location")
    public ResponseEntity<String> getAll(@RequestParam(required = false) Map<String, String> query) {
        return Helper.responseSuccess(locationRepository.findAll());
    }

    @PostMapping("/location")
    public ResponseEntity<String> create(@RequestBody Location body) {
        return Helper.responseCreated(locationRepository.save(body));
    }

    @PatchMapping("/location/{id}")
    public ResponseEntity<String> update(@PathVariable Long id, @RequestBody Location body) {

        if (locationRepository.findById(id).isPresent()) {
            body.setId(id);
            return Helper.responseSuccess(locationRepository.save(body));
        }
        return Helper.responseError();
    }

    @DeleteMapping("/location/{id}")
    public ResponseEntity<String> delete(@PathVariable Long id) {
        locationRepository.deleteById(id);
        return Helper.responseSuccessNoData();
    }
}
