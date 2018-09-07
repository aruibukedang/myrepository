/*package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import entity.student;
import service.Class_service;
import service.student_service;
import util.SearchInfo;
import util.jsonInfo;


@Controller
@RequestMapping("student")
public class Test_Controller {
	
	@Autowired
	student_service service;
	@Autowired
	Class_service cService;
	
	student entity;
	
	
	@RequestMapping("index")
	private String index(ModelMap m,SearchInfo info ,Integer select ,String txt) {
		
//		String limit="";
//		int max=5;

		
		
        if (select==null)select=0; 
		String where ="";
		if (txt!=null&&txt.length()>0) {
			switch (select) {
			case 1:
				where=" where student.age ="+txt+" ";
				break;
			case 2:
				where=" where student.status="+txt+" ";
				break;
			case 3:
				where=" where student.classid="+txt+" ";
				break;
			default:
				where=" where student.name like '%"+txt+"%'";
				
			}

		}
			
		m.put("select", select);
		m.put("txt",select==0?"'"+txt+"'":txt);
	    m.put("stustatus",  student.stustatus);
		m.put("typerow",cService.select());
		info.setWhere(where);
        m.put("search", info);
       
		m.put("list", service.select(info));
		
		
		
		return "student/index";

	}
	
	@RequestMapping("insert")
	public @ResponseBody jsonInfo insert(student s) {
		service.insert(s);
		return new jsonInfo(1, "");
		
	}
	

	
	@RequestMapping("update")
	public @ResponseBody jsonInfo update(student s) {
		service.update(s);
		return new jsonInfo(1, "");
		
	}
	
	@RequestMapping("add")
	public String add(ModelMap m) {
		m.put("stustatus",  student.stustatus);
		m.put("typerow", cService.select());
		return "student/edit";
		
	}
	

	@RequestMapping("edit")
	public String edit(ModelMap m,int id) {
		
		m.put("info", service.getById(id));
		return add(m);
		
	}


	@RequestMapping("delete")
	public String delete(int id) {
		
		service.delete(id);
		return "redirect:index";
		
	}
	

	
//	@RequestMapping("deleteall")
//	public String deleteall(String ids) {
//		
//		
//		return "redirect:index";
//		
//	}
//	
	
	
	
	
	
	
	
	

	
//	@RequestMapping("index1")
//	public ModelAndView exe3() {
//		System.out.println("接收到请求：");
//		ModelAndView v = new ModelAndView("index");
//		return v;
//	}
//	

}*/
