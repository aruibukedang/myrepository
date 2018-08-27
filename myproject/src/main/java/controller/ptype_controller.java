/*package controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.ptype;
import service.ptype_service;
import util.SearchInfo;
import util.jsonInfo;


@Controller
@RequestMapping("type")
public class ptype_controller {
		@Autowired 
	ptype_service service;
	
	
	@RequestMapping("type-list")
	public void select(ModelMap map,Integer parentid,SearchInfo s,ptype t){//不能加String类型的参数，只能通过对象传进来
		map.put("typelist", service.select(new SearchInfo(" where type.parentid=0 ",false)));
		
		if(parentid==null) parentid=0;	
		map.put("parentid", parentid);
		
		if(parentid>0) {//找当前节点的上级
		ptype tname= service.getById(parentid);
		map.put("name",tname.getName());
		String path="/<a href=\"type-list?parentid="+tname.getId()+"\">"+tname.getName()+"</a>";
		
		while(tname.getParentid()>0) {			
			 tname=service.getById(parentid);
			 path="/<a href=\"type-list?parentid="+tname.getId()+"\">"+tname.getName()+"</a>"+path;
		}
		 path="/<a href=\"type-list?parentid=0\">根节点</a>"+path;
		map.put("path", path);
		}else {
			map.put("name","根节点");
			map.put("myparentid",0);
			map.put("path", "<a href=\"type-list?parentid=0\">根节点</a>");
		}
		s.setCanPage(false);
		s.setWhere(" where type.parentid=" +parentid);//--当前结点的下级
		map.put("list", service.select(s));
		
}
	@RequestMapping("gettypelist")
	public @ResponseBody List<ptype> gettypelist(int id){
		return service.select(new SearchInfo(" where type.parentid= "+id, false));
	}
	
	//@RequestBody  将json对象转为json串回应请求。edit页面调用
	@RequestMapping("insert")
	public   @ResponseBody jsonInfo  insert(@RequestBody ptype t){
	service.insert(t);
	return new jsonInfo(1,"");
	}
	@RequestMapping("delete")
	public  String delete(int id){
		service.delete(id);
		return "redirect:type-list";
		}
	
	@RequestMapping("update")
	public   @ResponseBody jsonInfo update(@RequestBody ptype t){
	service.update(t);
	return new jsonInfo(1,"");
	}
	
	
	@RequestMapping("add")
	public String add(ModelMap map,SearchInfo s) {
		List list = service.select1();
		
		System.out.println(s.getWhere());
		System.out.println(list.size());
		map.put("product_type",list);	
		return "type/type-add";//指向视图完整名字，并不是指向方法
	}
	
	
	 @RequestMapping("edit")
	   public String  edit(ModelMap map,int id,int parentid) {		 
		 map.put("info",service.getById(id));
		map.put("parentid", parentid);//修改时知道上级的id
		 return "type/type-edit";
		}
}*/