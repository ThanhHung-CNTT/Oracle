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

import com.oracle5.entities.Job;
import com.oracle5.repositories.JobRepository;
import com.oracle5.utils.Helper;

@Controller
public class JobController {
    @Autowired
    JobRepository jobRepository;

    @GetMapping("/job")
    public ResponseEntity<String> getAll(@RequestParam(required = false) Map<String, String> query) {
        return Helper.responseSuccess(jobRepository.findAll());
    }

    @PostMapping("/job")
    public ResponseEntity<String> create(@RequestBody Job body) {
        return Helper.responseCreated(jobRepository.save(body));
    }

    @PatchMapping("/job/{id}")
    public ResponseEntity<String> update(@PathVariable String id, @RequestBody Job body) {

        if (jobRepository.findById(id).isPresent()) {
            body.setId(id);
            return Helper.responseSuccess(jobRepository.save(body));
        }
        return Helper.responseError();
    }

    @DeleteMapping("/job/{id}")
    public ResponseEntity<String> delete(@PathVariable String id) {
        jobRepository.deleteById(id);
        return Helper.responseSuccessNoData();
    }
}
