package com.cetpa;

import java.util.List;


public class EmployeeService 
{
	public static void saveRecord(jakarta.servlet.http.HttpServletRequest request)
	{
		  Employee emp=new Employee();
		  emp.setEid(Integer.parseInt(request.getParameter("eid")));
		  emp.setFirstname(request.getParameter("firstname"));
		  emp.setLastname(request.getParameter("lastname"));
		  emp.setPhone(request.getParameter("phone"));
		  emp.setEmailid(request.getParameter("email"));
		  emp.setDepartment(request.getParameter("department"));
		  emp.setSalary(Integer.parseInt(request.getParameter("salary")));
		  EmployeeRepository.saveEmployee(emp);
	}
	public static List<Employee> getList()
	{
		return EmployeeRepository.getEmployeeList();
	}
	public static Employee getRecord(String eid)
	{
		return EmployeeRepository.getEmployee(Integer.parseInt(eid));
	}
	public static void deleteRecord(String eid)
	{
		Employee emp=EmployeeRepository.getEmployee(Integer.parseInt(eid));
		EmployeeRepository.deleteEmployee(emp);
	}
	public static void updateRecord(jakarta.servlet.http.HttpServletRequest request)
	{
		  int eid=Integer.parseInt(request.getParameter("eid"));
		  Employee empo=EmployeeRepository.getEmployee(eid);
		  Employee empn=new Employee();
		  empn.setEid(eid);
		  empn.setFirstname(request.getParameter("firstname"));
		  empn.setLastname(request.getParameter("lastname"));
		  empn.setPhone(request.getParameter("phone"));
		  empn.setEmailid(request.getParameter("email"));
		  empn.setDepartment(request.getParameter("department"));
		  empn.setSalary(Integer.parseInt(request.getParameter("salary")));
		  EmployeeRepository.updateEmployee(empo,empn);
	}
}
