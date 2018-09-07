package controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Insert;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.shopcar;
import entity.user;
import service.collect_service;
import service.product_service;
import service.shopcar_service;
import util.jsonInfo;

@Controller
public class shopcar_Controller {
	
	@Autowired 
	shopcar_service service;
	@Autowired
	product_service pservice;
	@Autowired
	collect_service cservice;
	
	
	@RequestMapping("shopcar")
	private @ResponseBody jsonInfo Detail_page(shopcar s) {
  
        service.insert(s);
       /* m.put("slist", service.select(user_id));
        m.put("plist", pservice.getById(id));*/				
		return new jsonInfo(1, "") ;
				
	}
	
	
	@RequestMapping("goshopcar")
	private String goshopcar(ModelMap m,HttpSession session) {
		
		
		int user_id = (Integer) session.getAttribute("user_id");
		
		  m.put("slist", service.goshopcar(user_id));
		
		 
		return "shopcar";
		
	}
	
	@RequestMapping("delshopcar")
	private @ResponseBody jsonInfo delshopcar(int id) {
		service.delete(id);
		return new jsonInfo(1, "");
		
	}
	@RequestMapping("deleteall")
	private @ResponseBody jsonInfo deleteall(int user_id) {
		service.deleteall(user_id);
		return new jsonInfo(1, "");
		
	}    
	
	@RequestMapping("collects")
	private @ResponseBody jsonInfo collects(entity.collect c) {
		
		cservice.insert(c);
		return  new jsonInfo(1, "");
		
	}
	
	

}
