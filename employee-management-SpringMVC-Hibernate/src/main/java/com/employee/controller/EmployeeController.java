package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.employee.entity.Employee;
import com.employee.service.EmployeeService;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("home")
	public ModelAndView getHomeView()
	{
		//return "/pages/home.jsp";
		return new ModelAndView("home");
	}
	
	@RequestMapping("insert-employee")
	public ModelAndView getInsertView()
	{
		return new ModelAndView("add");
	}
	
	@RequestMapping("save-record")
	public ModelAndView saveEmployeeRecord(Employee employee)
	{
		employeeService.saveRecord(employee);
		return new ModelAndView("save");
	}
	
	@RequestMapping("employee-list")
	public ModelAndView getEmployeeList()
	{
		List<Employee> employeeList=employeeService.getList();
		ModelAndView modelAndView=new ModelAndView("list");
		modelAndView.addObject("elist",employeeList);
		return modelAndView;
	}
	
	@RequestMapping("search-employee")
	public ModelAndView getSearchView()
	{
		return new ModelAndView("search");
	}
	
	@RequestMapping("search-record")
	public String searchEmployeeRecord(int eid,Model model)
	{
		Employee employee=employeeService.getRecord(eid);
		if(employee==null)
		{
			model.addAttribute("msg","Record not found");
			model.addAttribute("eid",eid);
			return "search";
		}
		model.addAttribute("emp", employee);
		return "show-record";
	}
	
	@RequestMapping("delete-employee")
	public String getDeleteView()
	{
		return "delete";
	}
	
	@RequestMapping("confirm-delete")
	public String confirmDeleteEmployeeRecord(int eid,Model model)
	{
		Employee employee=employeeService.getRecord(eid);
		if(employee==null)
		{
			model.addAttribute("msg","Record does not exist");
			model.addAttribute("eid",eid);
			return "delete";
		}
		model.addAttribute("emp", employee);
		return "confirm";
	}
	
	@RequestMapping("delete-record")
	public String deleteEmployeeRecord(int eid)
	{
		employeeService.deleteRecord(eid); 
		return "delete-success";
	}
	
	@RequestMapping("edit-employee")
	public String getEditView()
	{
		return "edit";
	}
	
	@RequestMapping("show-record")
	public String showDeleteEmployeeRecord(int eid,Model model)
	{
		Employee employee=employeeService.getRecord(eid);
		if(employee==null)
		{
			model.addAttribute("msg","Record does not exist");
			model.addAttribute("eid",eid);
			return "edit";
		}
		model.addAttribute("emp", employee);
		return "update-show";
	}
	
	@RequestMapping("update-record")
	public String updateEmployeeRecord(Employee employee)
	{
		employeeService.updateRecord(employee);
		return "update-success";
	}
}
