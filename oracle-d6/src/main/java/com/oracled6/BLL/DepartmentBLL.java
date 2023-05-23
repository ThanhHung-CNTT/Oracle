package com.oracled6.BLL;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oracled6.DAL.DepartmentDAL;
import com.oracled6.DTO.Query4dDTO;
import com.oracled6.DTO.ResponseDTO;
import com.oracled6.utils.Helper;

@Controller
public class DepartmentBLL {
    @Autowired
    DepartmentDAL deptDal;

    @GetMapping("/department/4d")
    public ResponseEntity<String> query4d(@RequestParam(required = true, name = "max_employees") String maxEmployees){
        try {
            List<Query4dDTO> list = deptDal.query4d(Integer.parseInt(maxEmployees));
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(200, "Success", list)), HttpStatus.OK);
        } catch (Exception e) {
            System.err.println(e);
            return new ResponseEntity<>(Helper.toJson(new ResponseDTO<>(500, "Error", null)), HttpStatus.OK);
        }
    }
}
