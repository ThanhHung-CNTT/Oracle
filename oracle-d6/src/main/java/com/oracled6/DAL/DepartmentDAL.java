package com.oracled6.DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.oracled6.DTO.Query4dDTO;

@Service
public class DepartmentDAL {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Query4dDTO> query4d(int maxEmployees){
        String queryString = "select DeptName from (select d.DeptName, count(e.EmpNo) as countEmp "
       +" from department d, employee e where d.DeptNo = e.DeptNo "
       +" group by d.DeptNo, d.DeptName) x where countEmp < "+maxEmployees;
        List<Query4dDTO> list = jdbcTemplate.query(queryString,  new RowMapper<Query4dDTO>() {
            public Query4dDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Query4dDTO(rs.getString("DeptName"));
            }
        });
        return list;
    }
}
