package com.oracled6.BLL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracled6.DAL.ProjectDAL;
import com.oracled6.DTO.Query4cDTO;
import com.oracled6.DTO.ResponseDTO;
import com.oracled6.Model.Project;
import com.oracled6.utils.Helper;

@Controller
public class ProjectBLL {
    @Autowired
    ProjectDAL projDal;

    @GetMapping("/project/4b")
    public ResponseEntity<String> query4b(@RequestParam(required = true, name = "employee_name") String employeeName){
        try {
            List<Project> list = projDal.query4b(employeeName);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.OK);
        }
    }

    @GetMapping("/project/4c")
    public ResponseEntity<String> query4c(){
        try {
            List<Query4cDTO> list = projDal.query4c();
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.OK);
        }
    }
}
