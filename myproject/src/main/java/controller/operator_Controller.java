
package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.operator;
import entity.product;
import service.operator_service;
import util.MD5;
import util.SearchInfo;
import util.jsonInfo;

@Controller

public class operator_Controller {
	@Autowired
	operator_service service;
	
	
	@RequestMapping("operator/admin-role")
	private String ref(Integer value,ModelMap m,SearchInfo info) {
		String where = "";
      if (value==null)value=0; 
      
      switch (value) {
		case 1:
			where="where power=0";
			break;
		case 2:
			where="where power=1";
			break;
	
		default:
			where="";
			
		}
      
		
		info.setWhere(where);
		System.out.println(where);
		List<operator> oList = service.select(info);		
		m.put("list", oList);
		 
		return "operator/admin-role";
				
	}
	
	@RequestMapping("operator/insert")
	public @ResponseBody jsonInfo insert(operator o) {
		service.insert(o);
		return new jsonInfo(1, "");
		
	}
	
	

	

	
	@RequestMapping("operator/update")
	public @ResponseBody jsonInfo update(operator o) {
		service.update(o);
		return new jsonInfo(1, "");
		
	}
	
	@RequestMapping("operator/add")
	public String add(ModelMap m) {
		/*m.put("stustatus",  student.stustatus);
		m.put("typerow", cService.select());*/
		m.put("sexes",operator.sexes );
		m.put("powers", operator.powers);
		m.put("statuses", operator.statuses);
		return "operator/admin-role-add";
		
	}
	

	@RequestMapping("operator/edit")
	public String edit(ModelMap m,int id) {
		
		m.put("info", service.getById(id));
		return add(m);
		
	}
	
	@RequestMapping("operator/delete")
	protected @ResponseBody jsonInfo delete(int id) {
		service.delete(id);
		
		return new jsonInfo(1,"");
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("exit")
	public String exit(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.removeAttribute("username");   
		return "login";
		
		
	}
	

	
	@RequestMapping("operator/show")
	public String show(HttpSession session,ModelMap m) {
     String nike=(String) session.getAttribute("username");
     m.put("peopleinfo", service.getByName(nike));
		
		return "operator/show";
		
	}
	
	
	@RequestMapping("login")
	private String login(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		String username = req.getParameter("username");
		String password = MD5.MD5(req.getParameter("password"));
		System.out.println(password);
		String rcode = req.getParameter("rcode");
		
		
		String nike = service.getByName(username).getNike();
		String pwd = service.getByName(username).getPassword();
		int power = service.getByName(username).getPower();
		
		if ((session.getAttribute("randomCode")).toString().equalsIgnoreCase(rcode)) {
		

			if (username.equals(nike)&&password.equals(pwd)) {
				
				
					
					
		        
			        session.setAttribute("username",username);
			        session.setAttribute("operator", service.getByName(username));
			        session.setMaxInactiveInterval(30 * 60);
					return "index";
		
				
				
			
					
			}else {
				session.setAttribute("error", 1);
				return "redirect:/login.jsp";
			}
			
		}else {
			session.setAttribute("error", 2);
			return "redirect:/login.jsp";
		}
			
		
	

	}
	

		
		


	

}
