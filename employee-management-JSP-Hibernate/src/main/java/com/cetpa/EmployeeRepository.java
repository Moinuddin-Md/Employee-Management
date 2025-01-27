package com.cetpa;

import java.util.List;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class EmployeeRepository 
{
	private static Session session;
	private static Transaction transaction;
	static
	{
		SessionFactory factory=new Configuration().configure().buildSessionFactory();
		session=factory.openSession();
		transaction=session.getTransaction();
	}
	public static void saveEmployee(Employee employee)
	{
		transaction.begin();
		session.persist(employee);
		transaction.commit();
	}
	public static List<Employee> getEmployeeList()
	{
		Query<Employee> query=session.createQuery("from Employee",Employee.class);
		List<Employee> employeeList=query.list();
		return employeeList;
	}
	public static Employee getEmployee(int eid)
	{
		Employee emp=session.get(Employee.class,eid);
		return emp;
	}
	public static void deleteEmployee(Employee employee)
	{
		transaction.begin();
		session.remove(employee);
		transaction.commit();
	}
	public static void updateEmployee(Employee empo,Employee empn)
	{
		transaction.begin();
		empo.setFirstname(empn.getFirstname());
		empo.setLastname(empn.getLastname());
		empo.setPhone(empn.getPhone());
		empo.setEmailid(empn.getEmailid());
		empo.setDepartment(empn.getDepartment());
		empo.setSalary(empn.getSalary());
		transaction.commit();
	}
}
