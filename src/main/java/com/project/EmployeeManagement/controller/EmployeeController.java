package com.project.EmployeeManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.EmployeeManagement.model.Employee;
import com.project.EmployeeManagement.services.EmployeeService;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService es;
	@Autowired
	HttpSession session;
	
	@GetMapping("/")
	public String home()
	{
		return "index";
	}
	
	@GetMapping("/getemployees")
	public String getAll()
	{
		session.setAttribute("employees", es.getEmployees());
		return "view";
	}
	
	@GetMapping("/getemployee/{id}")
	public String getEmployee(@PathVariable int id)
	{
		session.setAttribute("employee", es.getEmployee(id));
		return "update";
	}
	
	@RequestMapping("/add")
	public String addEmployee(@ModelAttribute Employee employee)
	{
		es.add(employee);
		getAll();
		return "view";
	}
	
	@RequestMapping("/update/{id}")
	public String update(@PathVariable int id,  @ModelAttribute Employee employee)
	{
		es.updateEmployee(id, employee);
		getAll();
		return "view";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id)
	{
		es.deleteEmployee(id);
		getAll();
		return "view";
	}
	

}
