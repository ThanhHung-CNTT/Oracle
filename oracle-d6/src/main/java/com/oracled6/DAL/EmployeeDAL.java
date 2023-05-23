package com.oracled6.DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.oracled6.DTO.Query4aDTO;
import com.oracled6.DTO.Query4eDTO;
import com.oracled6.Model.Employee;
import com.oracled6.repository.EmployeeRepository;

@Service
public class EmployeeDAL {
    @Autowired
    JdbcTemplate jdbcTemplate;
    
    @Autowired
    EmployeeRepository empRepo;

    public List<Employee> findAll(){
        return empRepo.findAll();
    }

    public Employee save(Employee entity) {
        return empRepo.save(entity);
    }

    public Employee findById(long id) {
        return empRepo.findById(id).get();
    }

    public void delete(long id){
        empRepo.deleteById(id);
    }

    public Employee update(long id, Employee entity){
        Employee existingEmployee = findById(id);
        if(existingEmployee != null){
            if(entity.getName()!=null)
                existingEmployee.setName(entity.getName());
            if(entity.getSalary()!=null)
                existingEmployee.setSalary(entity.getSalary());
            if(entity.getDepartmentId()!=null)
                existingEmployee.setDepartmentId(entity.getDepartmentId());
        }
        return null;
    }

    public List<Query4aDTO> query4a(String departmentName, String projectName){
        String queryString = "select e.EmpName from employee e, department d, works w, project p"
        +" where e.EmpNo = w.EmpNo and d.DeptNo = e.DeptNo and w.ProjNo = p.ProjNo"
        +" and p.ProjName = '"+projectName+"' and d.DeptName = '"+departmentName+"'";
        List<Query4aDTO> list = jdbcTemplate.query(queryString,  new RowMapper<Query4aDTO>() {
            public Query4aDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Query4aDTO(rs.getString("EmpName"));
            }
        });
        return list;
    }

    public List<Query4eDTO> query4e(String departmentName, String comparedDepartmentName){
        String queryString = "select e.EmpName, e.Salary from employee e, department d"
       +" where e.Salary > (select max(emp.Salary) "
       +" from employee emp, department dept where emp.DeptNo = dept.DeptNo "
       +" and Dept.DeptName = '"+comparedDepartmentName+"') and  e.DeptNo = d.DeptNo and d.DeptName = '" + departmentName +"'";
        List<Query4eDTO> list = jdbcTemplate.query(queryString,  new RowMapper<Query4eDTO>() {
            public Query4eDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
                return new Query4eDTO(rs.getString("EmpName"), rs.getInt("Salary"));
            }
        });
        return list;
    }

    public List<Employee> post4f(String departmentName, String avgDepartmentName){
        String queryString1 = "update employee set Salary = (select avg(emp.Salary) "
        +" from employee emp, department dept where emp.DeptNo = dept.DeptNo "
        +" and Dept.DeptName = '"+avgDepartmentName+"') where DeptNo = (select DeptNo "
        +" from  department  where  DeptName = '"+departmentName+"')";
        jdbcTemplate.execute(queryString1);

        String queryString2 = "select e.* from employee e, department d"
        +" where d.DeptNo = e.DeptNo "
        +" and d.DeptName = '"+departmentName+"'";
        List<Employee> list = jdbcTemplate.query(queryString2,  new RowMapper<Employee>() {
            public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
                Employee employee = new Employee();
                employee.setId(rs.getLong("EmpNo"));
                employee.setName(rs.getString("EmpName"));
                employee.setDepartmentId(rs.getLong("DeptNo"));
                employee.setSalary(rs.getInt("Salary"));
                return employee;
            }
        });
        return list;
    }
}
