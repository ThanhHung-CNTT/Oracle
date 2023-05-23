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

import com.oracle5.entities.Department;
import com.oracle5.repositories.DepartmentRepository;
import com.oracle5.utils.Helper;

@Controller
public class DepartmentController {

    @Autowired
    DepartmentRepository departmentRepository;

    @GetMapping("/department")
    public ResponseEntity<String> getAll(@RequestParam(required = false) Map<String, String> query) {
        String name = query.get("name");
        if (name != null)
            return Helper.responseSuccess(departmentRepository.findByName(name));
        return Helper.responseSuccess(departmentRepository.findAll());
    }

    @PostMapping("/department")
    public ResponseEntity<String> create(@RequestBody Department body) {
        return Helper.responseCreated(departmentRepository.save(body));
    }

    @PatchMapping("/department/{id}")
    public ResponseEntity<String> update(@PathVariable Long id, @RequestBody Department body) {
        if (departmentRepository.findById(id).isPresent()) {
            body.setId(id);
            return Helper.responseSuccess(departmentRepository.save(body));
        }
        return Helper.responseError();
    }

    @DeleteMapping("/department/{id}")
    public ResponseEntity<String> delete(@PathVariable Long id) {
        departmentRepository.deleteById(id);
        return Helper.responseSuccessNoData();
    }
}
