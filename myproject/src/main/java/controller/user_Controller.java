package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.user;
import service.user_service;
import util.jsonInfo;


@Controller
@RequestMapping("user_c")
public class user_Controller {

	@Autowired
	user_service uservice;
	
	@RequestMapping("def")
	public String def(String txt,ModelMap model) {
		if(txt==null) txt="";
		model.put("list", uservice.def(txt));
		return "user/user_index";
	}
	
	@RequestMapping("insert")
	protected @ResponseBody jsonInfo insert(user u) {
		uservice.insert(u);
		return new jsonInfo(1, "");
	} 
	
	@RequestMapping("update")
	protected @ResponseBody jsonInfo update(user u, ModelMap m) {
		uservice.update(u);
		return new jsonInfo(1, "");
	}
	
	@RequestMapping("delete")
	protected String delete(int id, ModelMap m) {
		uservice.delete(id);
		return "redirect:def";
	}
	
	@RequestMapping("deleteall")
	protected String deleteall(String ids, ModelMap m) {
		String[] strs = ids.split(",");
		for (int i = 0; i < strs.length; i++) {
			try {
				int id = Integer.parseInt(strs[i]);
				uservice.deleteall(id);
			} catch (Exception e) {
			}
		}
		return "redirect:def";
	}
	
	@RequestMapping("add")
	protected String add(ModelMap m) {
		return "user/user_edit";
	}
	
	@RequestMapping("edit")
	protected String edit(int id, ModelMap m) {
		m.put("info", uservice.getId(id));
		return add(m);
	}
	
}
