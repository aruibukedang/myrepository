
package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.product;

import service.product_service;
import service.ptype_service;
import util.SearchInfo;
import util.jsonInfo;




@Controller
@RequestMapping("product")
public class product_Controller {
	@Autowired
	product_service service;
	@Autowired
	ptype_service   pService;

	@RequestMapping("product-list")
	private String index(ModelMap m,SearchInfo info ,Integer select ,String txt) {
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
		    
			m.put("typerow",pService.select1());
			info.setWhere(where);
	        m.put("search", info);
	       
			m.put("list", service.select(info));
			
			
		return "product/product-list";
				
	}
	
	@RequestMapping("insert")
	protected @ResponseBody jsonInfo insert(product p) {
	System.out.println(p.getPics());
		service.insert(p);
		return new jsonInfo(1, "");
	} 
	
	@RequestMapping("update")
	protected @ResponseBody jsonInfo update(product p) {
		service.update(p);
		return new jsonInfo(1, "");
	}
	
	@RequestMapping("delete")
	protected String delete(int id) {
		service.delete(id);
		return "redirect:product-list";
	}
	
//	@RequestMapping("deleteall")
//	protected String deleteall(String ids, ModelMap m) {
//		String[] strs = ids.split(",");
//		for (int i = 0; i < strs.length; i++) {
//			try {
//				int id = Integer.parseInt(strs[i]);
//				service.deleteall(ids);
//			} catch (Exception e) {
//			}
//		}
//		return "redirect:product-list";
//	}
	
	@RequestMapping("add")
	protected String add(ModelMap m) {
		m.put("stustatus",  product.statuses);
		m.put("typerow", pService.select1());
		return "product/edit";
	}
	
	
	
	
	@RequestMapping("edit")
	protected String edit(int id, ModelMap m) {
		m.put("info", service.getById(id));
		
		return add(m);
	}
	
	
	

}
