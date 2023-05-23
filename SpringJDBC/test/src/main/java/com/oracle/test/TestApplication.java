package com.oracle.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

@SpringBootApplication
public class TestApplication implements CommandLineRunner {

	@Autowired
	private JdbcTemplate JdbcTemplate;

	public static void main(String[] args) {
		SpringApplication.run(TestApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		String sql1 = "SElect * from products";
		String sql2 = "SElect * from employees";
		List<Product> list1 = JdbcTemplate.query(sql1, BeanPropertyRowMapper.newInstance(Product.class));
		List<Employee> list2 = JdbcTemplate.query(sql2, BeanPropertyRowMapper.newInstance(Employee.class));
		list1.forEach(System.out::println);
		list2.forEach(System.out::println);
	}

}
