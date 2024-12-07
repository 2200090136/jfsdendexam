package com.klef.jfsd.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.spring.model.Employee;

import jakarta.transaction.Transactional;
import java.util.List;


@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{
 @Query("select e from Employee e where e.email=?1 and e.password=?2")
 public Employee checkemployeelogin(String email,String epwd);
 
//reference
@Query("update Employee e set e.status=?1 where e.id=?2 ")
@Modifying //DML to modify the data
@Transactional //auto commit(to enable commit)
public int updateempstatus(String status,int eid);


@Query("delete from Employee e where e.id=?1 ")
@Modifying //DML to modify the data
@Transactional //auto commit(to enable commit)
public int deleteempbyid(int eid);

//no need to write queries expliciltly
public List<Employee> findByDepartment(String department);
	

}