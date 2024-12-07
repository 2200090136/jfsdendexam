package com.klef.jfsd.spring.service;

import java.util.List;

import com.klef.jfsd.spring.model.Employee;

public interface EmployeeService {
	
	  public String EmployeeRegistration(Employee employee);
	  public Employee checkemployeelogin(String eemail, String epwd);
	  public String updateemp(Employee e);
	  
	  public List<Employee> displayEmpsByDepartment(String dept);
	  
  	  
	  
	  
	
}
