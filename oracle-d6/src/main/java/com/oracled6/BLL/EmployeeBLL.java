package com.oracled6.BLL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracled6.DAL.EmployeeDAL;
import com.oracled6.DTO.Post4fDTO;
import com.oracled6.DTO.Query4aDTO;
import com.oracled6.DTO.Query4eDTO;
import com.oracled6.DTO.ResponseDTO;
import com.oracled6.Model.Employee;
import com.oracled6.utils.Helper;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

@Controller
public class EmployeeBLL {

    @Autowired
    EmployeeDAL empDal;

    @GetMapping("/employee/4a")
    public ResponseEntity<String> query4a(@RequestParam(required = true, name = "department_name") String departmantName,
    @RequestParam(required = true, name = "project_name") String projectName){
        try {
            List<Query4aDTO> list = empDal.query4a(departmantName, projectName);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/employee/4e")
    public ResponseEntity<String> query4e(@RequestParam(required = true, name = "department_name") String departmantName,
    @RequestParam(required = true, name = "compared_department_name") String comparedDepartmentName){
        try {
            List<Query4eDTO> list = empDal.query4e(departmantName, comparedDepartmentName);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/employee")
    public ResponseEntity<String> findAll(){
        try {
            List<Employee> list = empDal.findAll();
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/employee/{id}")
    public ResponseEntity<String> findById(@PathVariable(name = "id") long id){
        try {
            Employee emp = empDal.findById(id);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", emp)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PatchMapping("/employee/{id}")
    public ResponseEntity<String> update(@PathVariable(name = "id") long id, @RequestBody Employee body){
        try {
            Employee emp = empDal.update(id, body);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", emp)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @DeleteMapping("/employee/{id}")
    public ResponseEntity<String> deleteById(@PathVariable(name = "id") long id){
        try {
            empDal.delete(id);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", null)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/employee")
    public ResponseEntity<String> save(@RequestBody Employee body){
        try {
            Employee emp = empDal.save(body);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(201, "Success", emp)), HttpStatus.CREATED);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping("/employee/4f")
    public ResponseEntity<String> post4f(@RequestBody Post4fDTO body){
        try {
            List<Employee> list = empDal.post4f(body.getDepartmentName(), body.getAvgDepartName());
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
