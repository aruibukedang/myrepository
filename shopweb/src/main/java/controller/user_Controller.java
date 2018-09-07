package controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.synth.Region;

import org.apache.tomcat.util.descriptor.web.LoginConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.user;
import service.user_service;
import util.MD5;
import util.jsonInfo;


@Controller
public class user_Controller {

	@Autowired
	user_service uservice;
	
	
	
	@RequestMapping("exit")
	public String exit(HttpSession session) {
		
		session.removeAttribute("email");
		
		return "redirect:/index";
		
		
	}
	
	 @RequestMapping("login")
	 public String login(user u,HttpSession session) {
		 
		 user user = uservice.getByEmail(u.getEmail());
		 
		 String email = user.getEmail();
		 String password = user.getPassword();
		 
		 
		 if(u.getEmail().equals(email)&&u.getPassword().equals(password)) {
			 
			 session.setAttribute("user", user);
			 session.setAttribute("email", email);
			 session.setAttribute("user_id", user.getId());
			 
			 return "redirect:/index";
				
		 }
		 
		 return "login";
	
		 
	 }
	
	
	
	
   @RequestMapping("register")
   public String register(ModelMap M ,user u) {
	   uservice.insert(u);
	   return "login";
   }
   
 
   
//   @RequestMapping("login")
//	private String login(HttpServletRequest req ) {
//		
//	   HttpSession session = req.getSession();
//		
//		String username = req.getParameter("username");
//		String password = MD5.MD5(req.getParameter("password"));
//		System.out.println(password);
//		String rcode = req.getParameter("rcode");
//		
//		
//		String email = uservice.getByEmail(username).getEmail();
//		String pwd = uservice.getByEmail(username).getPassword();
//		
//		
//		if ((session.getAttribute("randomCode")).toString().equalsIgnoreCase(rcode)) {
//		
//
//			if (username.equals(email)&&password.equals(pwd)) {
//				session.setAttribute("success", "登陆成功");
//					return "index";
//			
//					
//			}else {
//				session.setAttribute("error", "账号密码错误");
//				return "redirect:/login.jsp";
//				
//			}
//			
//		}
//		
//			session.setAttribute("error", "验证码错误");
//			return "redirect:/login.jsp";
//		
//		
//
//	}
//   
   
   
	
}
