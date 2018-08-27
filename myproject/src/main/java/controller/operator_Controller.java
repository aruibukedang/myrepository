
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
import entity.student;
import service.operator_service;
import util.MD5;
import util.jsonInfo;

@Controller

public class operator_Controller {
	@Autowired
	operator_service service;
	
	
	@RequestMapping("operator/admin-role")
	private String ref(ModelMap m) {
		List<operator> oList = service.select();
		
		
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
		session.removeAttribute("username");;   
		return "login";
		
		
	}
	
	@RequestMapping("operator/show")
	public String show(String nike,ModelMap m) {
		
		m.put("showlist", service.getByName(nike));
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
				
				if (power==0) {
					
					
		        
			        session.setAttribute("username",username);
			        session.setMaxInactiveInterval(30 * 60);
					return "index";
					
				}
				
				
				else if (power==1) {
					
				
			        
			        session.setAttribute("username",username);
			        session.setMaxInactiveInterval(30 * 60);
					return "index2";
					
				}
					
			}else {
				return "redirect:/login.jsp";
			}
			
		}else {
			session.setAttribute("error", "验证码错误");
			return "redirect:/login.jsp";
		}
		
			
			
			return "redirect:/login.jsp";
			
		
		
		
	
			

	}
	
	
//	protected void def(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		 String username = req.getParameter("username");
//		 
//		if(username.startsWith("st")) {
//			
//			stlogin(req, resp);
//		}
//		else if (username.startsWith("te")) {
//			
//			telogin(req, resp);
//		}else  {
//			
//			resp.sendRedirect("/stweb003/login.jsp");
//		}
//		
//		
//	}
	
	
	
	
//	public boolean startsWith(String prefix) {
//		return false;
//		
//	}
//	
//	
//	
//	protected void stlogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String username = req.getParameter("username");
//		String password = req.getParameter("password");
//		ArrayList<HashMap<String, Object>>  lists=SqlHelper.executeQuery("select password from student where code=?",username);
//		
//		
//		
//if (password.equals(lists.get(0).get("password"))) {
//			
//			HttpSession session=req.getSession();//返回与当前request相关联的session，如果没有则在服务器端创建一个;
//	        
//	        session.setAttribute("username",username);
//	        session.setMaxInactiveInterval(30 * 60);
//	        
//			req.setCharacterEncoding("utf-8");
//			resp.setContentType("text/html;charset=utf-8");
//			
//			
//			req.getRequestDispatcher("/index.jsp").forward(req, resp);
//		} else {
//			
//			req.getRequestDispatcher("/login.jsp").forward(req, resp);
//		}
//		 
//		
//	   
//}
//	
//	protected void telogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		 String username = req.getParameter("username");
//		String password = req.getParameter("password");
//		String randomCode = req.getParameter("randomCode");
//		 ArrayList<HashMap<String, Object>> lists=SqlHelper.executeQuery("select password from teacher where code='"+username+"'");
//		
//		if (password.equals(lists.get(0).get("password"))) {
//			
//			HttpSession session=req.getSession();//返回与当前request相关联的session，如果没有则在服务器端创建一个;
//			
//			
//	        session.setAttribute("username",req.getParameter("username"));
//			
//			req.setCharacterEncoding("utf-8");
//			resp.setContentType("text/html;charset=utf-8");
//			
//			
//			req.getRequestDispatcher("/index2.jsp").forward(req, resp);
//		} else {
//			
//			req.getRequestDispatcher("/login.jsp").forward(req, resp);
//		}
//		 
		
	
		
		
		
		


	

}
