package controllers;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import data.IEmployeeMapper;

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
	
	//@RequestMapping(value="add.html")
	

}
