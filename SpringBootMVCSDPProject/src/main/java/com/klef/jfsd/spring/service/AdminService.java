package com.klef.jfsd.spring.service;

import java.util.List;

import com.klef.jfsd.spring.model.Admin;
import com.klef.jfsd.spring.model.Employee;

public interface AdminService {
	public List<Employee> viewAllEmployees();
	public Admin checkadminlogin(String uname,String pwd);
	public String deleteemp(int eid);
	public long empcount();
	

}
