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

import com.oracle5.entities.Employee;
import com.oracle5.repositories.EmployeeRepository;
import com.oracle5.utils.Helper;

@Controller
public class EmployeeController {
    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/employee")
    public ResponseEntity<String> getAll(@RequestParam(required = false) Map<String, String> query) {
        String departmentId = query.get("department_id");
        String minSalary = query.get("min_salary");
        if (departmentId != null)
            return Helper.responseSuccess(employeeRepository.findByDepartmentId(Long.parseLong(departmentId)));

        if (minSalary != null)
            return Helper.responseSuccess(employeeRepository.findBySalaryGreaterThan(Integer.parseInt(minSalary)));
        return Helper.responseSuccess(employeeRepository.findAll());
    }

    @PostMapping("/employee")
    public ResponseEntity<String> create(@RequestBody Employee body) {
        return Helper.responseCreated(employeeRepository.save(body));
    }

    @PatchMapping("/employee/{id}")
    public ResponseEntity<String> update(@PathVariable Long id, @RequestBody Employee body) {

        if (employeeRepository.findById(id).isPresent()) {
            body.setId(id);
            return Helper.responseSuccess(employeeRepository.save(body));
        }
        return Helper.responseError();
    }

    @DeleteMapping("/employee/{id}")
    public ResponseEntity<String> delete(@PathVariable Long id) {
        employeeRepository.deleteById(id);
        return Helper.responseSuccessNoData();
    }
}
