package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class employeeController {

	public employeeController() {
		// TODO Auto-generated constructor stub
	}
	
	@RequestMapping(value="index.html")
	public String welcomePage(Model m){
		m.addAttribute("msg", "Hello from the Controller");
		return "hello";
	}

}
