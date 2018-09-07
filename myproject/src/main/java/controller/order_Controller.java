package controller;

import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.orders;
import service.order_service;
import service.orders_details_service;
import util.jsonInfo;

@Controller
@RequestMapping("order")
public class order_Controller {

	@Autowired
	order_service rservice;
	@Autowired
	orders_details_service dservice;
	
	
	@RequestMapping("order-list")
	public String def(ModelMap model) {
		
		model.put("list", rservice.def());
		return "order/order-list";
	}
	
	@RequestMapping("orders-details")
	public String Select(ModelMap m) {
		m.put("list", dservice.select());
		return "order/orders-details";
		
	}
	
	
	
	@RequestMapping("search")
	public String getId(int id,ModelMap model) {
		model.put("lists", dservice.getId(id));
		return "order/order_view";
	}
	
	@RequestMapping("insert")
	protected @ResponseBody jsonInfo insert(orders r) {
		rservice.insert(r);
		return new jsonInfo(1, "");
	} 
	
	@RequestMapping("delete")
	protected String delete(int id, ModelMap m) {
		rservice.delete(id);
		return "redirect:def";
	}
	
	@RequestMapping("deleteall")
	protected String deleteall(String ids, ModelMap m) {
		String[] strs = ids.split(",");
		for (int i = 0; i < strs.length; i++) {
			try {
				int id = Integer.parseInt(strs[i]);
				rservice.deleteall(id);
			} catch (Exception e) {
			}
		}
		return "redirect:def";
	}
	
	@RequestMapping("add")
	protected String add(ModelMap m) {
		return "orders/order_add";
	}
	
	@RequestMapping("update")
	public @ResponseBody jsonInfo update(orders r) {
		System.out.println("aowu");
		rservice.update(r);
		return new jsonInfo(1, "");
		
	}
	
}

