package controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;



import service.product_service;
import service.ptype_service;
import util.SearchInfo;





@Controller
public class index_Controller {
	@Autowired
	product_service service;
	@Autowired
	ptype_service   pService;

	
	
	@RequestMapping("index")
	private void selectitem(ModelMap m,HttpSession session) {
		
		

			m.put("ilist", service.selectitem());
			
			m.put("typelist", pService.select());
			
				
	}
	
	
	@RequestMapping("fruit-list")
	private String select(ModelMap m,SearchInfo info) {

			m.put("slist", service.select(info));
			
			
		return "fruit-list";
				
	}
	
	

	
	


}
