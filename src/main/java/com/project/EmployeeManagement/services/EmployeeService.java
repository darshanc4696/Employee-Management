package com.project.EmployeeManagement.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.EmployeeManagement.model.Employee;
import com.project.EmployeeManagement.repo.EmployeeRepo;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepo er;

	public List<Employee> getEmployees() {
		return er.findAll();
		
	}

	public void add(Employee employee) {
		er.save(employee);
		
	}

	public void updateEmployee(int id, Employee employee) {
		Employee em = er.findById(id).orElse(new Employee());
		
		em.setName(employee.getName());
		em.setEmail(employee.getEmail());
		em.setPhoneNumber(employee.getPhoneNumber());
		em.setDesignation(employee.getDesignation());
		
		er.save(em);
		
	}

	public void deleteEmployee(int id) {
		er.deleteById(id);
		
	}

	public Employee getEmployee(int id) {
		return er.findById(id).orElse(new Employee());
	}

}
