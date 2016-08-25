package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import data.IEmployeeMapper;
import models.Department;
import models.Departments;
import models.Employee;

@Controller
public class employeeController {
	
	@Autowired
	public IEmployeeMapper empMapper;
	
	@RequestMapping(value="HomePage.html")
	public String welcomePage (Model m){
		m.addAttribute("msg", "Added Employee");
		return "HomePage";
	}
	
	@RequestMapping(value="FrontEnd.html")
	public String openForm(Model m){
		return "FrontEnd";
	}
	
	@RequestMapping(value="showEmp.html")
	public String getEmployee(Model m){
		m.addAttribute("emp", empMapper.getEmployeeTest());
		return "showEmpTest";
	}
	
	@RequestMapping(value="showEmployees.html")
	public String getEmployeeByDept(Model m){
		List<Employee> emps = empMapper.getEmployees();
		List<Department> depts = empMapper.getDepartments();
		for (Employee emp : emps){
			for (Department dept: depts){
				if (emp.getDepartment_ID() == dept.getDepartment_ID()){
					emp.setDepartmentName(dept.getDeptName());
				}
			}
		}
		m.addAttribute("emps", emps);
		return "EmpShowByDept";
	}
	
	//@RequestMapping(value="add.html")
	

}
