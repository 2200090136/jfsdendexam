package com.klef.jfsd.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.spring.model.Admin;
import com.klef.jfsd.spring.model.Employee;
import com.klef.jfsd.spring.repository.AdminRepository;
import com.klef.jfsd.spring.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@Override
	public List<Employee> viewAllEmployees() 
	{
		return employeeRepository.findAll();
	}
	
	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
	return adminRepository.checkadminlogin(uname, pwd);
		
	}
	
	@Override
	public String deleteemp(int eid)
	{
		
		employeeRepository.deleteById(eid);
		return "Delete Successfully";
		
	}
	
	@Override
	public long empcount() 
	{
		return employeeRepository.count();
	}

}
