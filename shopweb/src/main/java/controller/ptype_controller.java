package controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import service.ptype_service;
import util.SearchInfo;



@Controller
public class ptype_controller {
	@Autowired 
	ptype_service service;
	
	
	
	@RequestMapping("gettypelist")
	public String gettypelist(ModelMap m){
		m.put("typelist", service.select());
		return "index";
		
	}
	
	
	

}