package com.project.EmployeeManagement.model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Entity
@Table(name = "employees")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String email;
	private long phoneNumber;
	private String designation;
	
	public Employee() {
		super();
	}

	public Employee(int id, String name, String email, long phoneNumber, String designation) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.designation = designation;
	}

	public Employee(String name, String email, long phoneNumber, String designation) {
		super();
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.designation = designation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
}
