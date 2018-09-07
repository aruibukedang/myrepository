
package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.product;
import entity.ptype;
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
	private String index(ModelMap m,SearchInfo info,Integer parentid ) {
		 
		
		m.put("typelist", pService.select(new SearchInfo(" where type.parentid=0 ",false)));

		if(parentid==null) parentid=0;	
		m.put("parentid", parentid);
	
			m.put("typerow",pService.selectAll());
			
	   
	        
			m.put("list", service.select(info));
			
			
		return "product/product-list";
				
	}
	
	
//	public String productselect(ModelMap m,int value) {
//		m.put("list", value)
//		
//		return null;
//		
//	}
	
	@RequestMapping("changestatus")
	public @ResponseBody jsonInfo changestatus(product p) {
		
		service.changestatus(p);
		
		return new jsonInfo(1, "");
		
	}
	
	
	
	@RequestMapping("product_info")
	public String product_info(ModelMap m, int id) {
		m.put("info", service.getById(id));
		return "product/info";
		
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
		m.put("typerow", pService.selectAll());
		return "product/edit";
	}
	
	
	
	
	@RequestMapping("edit")
	protected String edit(int id, ModelMap m) {
		m.put("info", service.getById(id));
		
		return add(m);
	}
	
	
	

}
