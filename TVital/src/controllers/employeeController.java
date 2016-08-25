package controllers;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import data.IEmployeeMapper;
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
	
	@RequestMapping(value="showEmp.html")
	public String getEmployee(Model m){
		m.addAttribute("emp", empMapper.getEmployeeTest());
		return "showEmpTest";
	}

}
