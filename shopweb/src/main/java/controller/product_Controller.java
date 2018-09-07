
package controller;


import java.util.List;

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
public class product_Controller {
	@Autowired
	product_service service;
	@Autowired
	ptype_service   tService;
	
	
	@RequestMapping("Detail_page")
	private String Detail_page(ModelMap m,int id) {

			m.put("plist", service.getById(id));
			
		return "Detail_page";
				
	}
	
	
	@RequestMapping("product_list")
	private String product_list(ModelMap m,Integer id,SearchInfo info,SearchInfo info2) {
		
		
		
		int parentid = tService.getById(id).getParentid();

		
		
		if (parentid==0) {
			info.setWhere("where  parentid="+id);
			
			List<ptype> sonlist = tService.select1(info);
		m.put("sonlist", sonlist);
		m.put("thisid", id);
		
		
		
		
		String ids = "";
		for(int i=0;i<sonlist.size();i++){
		ids+=sonlist.get(i).getId()+",";
		}
		
		ids = ids.substring(0,ids.length()-1);
		System.out.println(ids); 
		info2.setWhere("where status=1 and type_id in("+ids+")");
	System.out.println(info2.getWhere());
		m.put("p_list", service.productlist(info2));
		m.put("t_list", tService.select());
			
		}else if (parentid!=0) {
			int pid = tService.getById(id).getParentid();
			info.setWhere("where  parentid="+pid);
			
			
			
			m.put("sonlist", tService.select1(info));
			m.put("thisid", pid);
			
			info2.setWhere("where status=1 and  type_id="+id);
			m.put("p_list", service.productlist(info2));
			m.put("t_list", tService.select());
		}
		
		
	
		
		
		return "product_list";
		
		
	}
	

	

}
