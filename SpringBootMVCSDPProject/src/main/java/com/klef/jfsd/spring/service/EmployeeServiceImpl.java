package com.klef.jfsd.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.spring.model.Employee;
import com.klef.jfsd.spring.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
		@Autowired
		private EmployeeRepository employeeRepository;
		
		@Override
		public Employee checkemployeelogin(String eemail, String epwd)
		{
			return employeeRepository.checkemployeelogin(eemail, epwd);
			
		}
		@Override
		public String EmployeeRegistration(Employee emp) {
			employeeRepository.save(emp);
			return "Employee Registered Successfully";
		}
		@Override
		public String updateemp(Employee e) {
			
			Employee emp = employeeRepository.findById(e.getId()).get();
		
			employeeRepository.findById(e.getId()).get();
			emp.setContact(e.getContact());
			emp.setDateofbirth(e.getDateofbirth());
			emp.setDepartment(e.getDepartment());
			emp.setGender(e.getGender());
			emp.setLocation(e.getLocation());
			emp.setName(e.getName());
			emp.setPassword(e.getPassword());
			emp.setSalary(e.getSalary());
			
			employeeRepository.save(emp);
			
			return "Employee Updated Successfully";
			
		}
		@Override
		public List<Employee> displayEmpsByDepartment(String dept) 
		{
			return employeeRepository.findByDepartment(dept);
			
			
		}

	}