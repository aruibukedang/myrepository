package controller;

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

import dao.SqlHelper;
import entity.student;
import service.student_service;
import util.jsonInfo;


@Controller
@RequestMapping("student")
public class Test_Controller {
	
	@Autowired
	student_service service;
	
	student entity;
	
	
	@RequestMapping("index")
	private String index(ModelMap m ,Integer select,Integer pageno,String txt) {
		String where ="";
		String limit="";
		int max=5;
		
	
		if (pageno==null||pageno<1)pageno=1;
		int prev = 1;
		int next = 2;
		limit =" limit " +(pageno-1)*max+","+max;
		
		prev = pageno>1?pageno-1:1;
		next = pageno+1;
		m.put("prev", prev);
		m.put("next", next);
		if (select==null) select=0;
		
		
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
		m.put("typerow", SqlHelper.executeQuery("select * from class "));
		
		m.put("list", SqlHelper.executeQuery("select student.*,c.name cname from student inner join class c on student.classid=c.id " +where +" "+ limit));
		
		
		return "student/index";

	}
	
	@RequestMapping("insert")
	public @ResponseBody jsonInfo insert(student s) {
		SqlHelper.executeUpdate("insert into student (name,age,status,classid) values(?,?,?,?)",s.getName(),s.getAge(),s.getStatus(),s.getClassid());
		return new jsonInfo(1, "");
		
	}
	

	
	@RequestMapping("update")
	public @ResponseBody jsonInfo update(student s) {
		SqlHelper.executeUpdate("update student set name=?,age=?,status=?,classid=? where id=?", s.getName(),s.getAge(),s.getStatus(),s.getClassid(),s.getId());
		return new jsonInfo(1, "");
		
	}
	
	@RequestMapping("add")
	public String add(ModelMap m) {
		m.put("stustatus",  student.stustatus);
		m.put("typerow", SqlHelper.executeQuery("select * from class "));
		return "student/edit";
		
	}
	

	@RequestMapping("edit")
	public String edit(ModelMap m,int id) {
		
		m.put("info", SqlHelper.executeQuery("select * from student where id=?", id).get(0));
		return add(m);
		
	}
//	protected void edit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.setAttribute("info", SqlHelper.executeQuery("select * from student where id=?", Integer.valueOf(entity.getId())).get(0));
//		add(req, resp);
//	}
	
	

	@RequestMapping("delete")
	public String delete(int id) {
		
		SqlHelper.executeUpdate("delete from student where id=?",id);
		return "redirect:index";
		
	}
	
//	protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		SqlHelper.executeUpdate("delete from student where id=?", Integer.valueOf(entity.getId()));
//	return def(req, resp);
//			
//	}
	
	
	@RequestMapping("deleteall")
	public String deleteall(String ids) {
		
		SqlHelper.executeUpdate("delete from student where id in ("+ids+")");
		return "redirect:index";
		
	}
	
	
	
	
	
	
	
	
	

	
//	@RequestMapping("index1")
//	public ModelAndView exe3() {
//		System.out.println("接收到请求：");
//		ModelAndView v = new ModelAndView("index");
//		return v;
//	}
//	

}
