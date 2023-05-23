package com.oracled6.DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.oracled6.DTO.Query4cDTO;
import com.oracled6.Model.Project;

@Service
public class ProjectDAL {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Project> query4b(String employeeName){
        String queryString = "select p.* from project p, employee e, works w"
        +" where  e.EmpNo = w.EmpNo and w.ProjNo = p.ProjNo and e. EmpName = '"+employeeName+"'";
        List<Project> list = jdbcTemplate.query(queryString,  new RowMapper<Project>() {
            public Project mapRow(ResultSet rs, int rowNum) throws SQLException {
                Project proj = new Project();
                proj.setId(rs.getLong("ProjNo"));
                proj.setBudget(rs.getInt("Budget"));
                proj.setName(rs.getString("ProjName"));
                proj.setType(rs.getString("ProjType"));
                return proj;
            }
        });
        return list;
    }

    public List<Query4cDTO> query4c(){
        String queryString = "select ProjName from project where budget = (select max(budget) from project)";
        List<Query4cDTO> list = jdbcTemplate.query(queryString,  new RowMapper<Query4cDTO>() {
            public Query4cDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Query4cDTO(rs.getString("ProjName"));
            }
        });
        return list;
    }
}
