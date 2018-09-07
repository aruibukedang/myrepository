package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import entity.address;
import entity.orders;
import entity.orders_details;
import entity.product;
import entity.user;
import service.address_service;
import service.order_service;
import service.orders_details_service;
import service.product_service;
import service.shopcar_service;
import util.jsonInfo;

@Controller
@RequestMapping("orders")
public class order_Controller {

	@Autowired
	product_service pservice;	
	@Autowired
	order_service oService;	
	@Autowired
	shopcar_service sservice;	
	@Autowired
	orders_details_service dservice;	
	@Autowired
	address_service aservice;
	
	
	@RequestMapping("finalAccount")
		public @ResponseBody jsonInfo finalAccount(@RequestBody List<orders> list,HttpSession session){
		double finalNewAmount=0;
		double finalAmount=0;
		int num= list.size();
//		product product=new product();
		for(int i=0;i<num;i++) {
			double nowprice=pservice.getById(list.get(i).getProduct_id()).getNowprice();
			double price=pservice.getById(list.get(i).getProduct_id()).getPrice();
			finalAmount +=price*list.get(i).getCount();//原总价
			finalNewAmount += nowprice*list.get(i).getCount();//总价
		}
		
		session.setAttribute("address_id",1);
		orders or=new orders();
		or.setNowamount(finalNewAmount);
		or.setAmount(finalAmount);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		long dt= new Date().getTime();
		String code=dt+"";
		System.out.println("code:  "+code);
		String date=df.format(dt);
		or.setDate(date);
		or.setCode(code);
		
		int  user_id = (Integer) session.getAttribute("user_id");
		or.setUser_id(user_id);
		or.setAddress_id((Integer) session.getAttribute("address_id"));
		oService.insert(or);
		
		
		int orders_id = oService.getByUid(user_id).getId();
		System.out.println("user_id"+user_id);
	    for (int i = 0; i < num; i++) {
			orders_details d = new orders_details();
			double nowprice=pservice.getById(list.get(i).getProduct_id()).getNowprice();
			double price=pservice.getById(list.get(i).getProduct_id()).getPrice();
			int count = list.get(i).getCount();
			
			d.setOrders_id(orders_id);
			d.setCount(count);
			d.setPrice(price);
			d.setNowprice(nowprice);
			
			d.setProduct_id(list.get(i).getProduct_id());
			
			dservice.insert(d);
		  }
	
	    
	
	    return new jsonInfo(1, "");
			
}
	
	
	@RequestMapping("settlement")
    public String settlement(ModelMap m,HttpSession session) {
		int  user_id = (Integer) session.getAttribute("user_id");
		
		int orders_id = oService.getByUid(user_id).getId();	
		
		m.put("address", aservice.select(user_id));	
		
		
		m.put("orders_details", dservice.getByoid(orders_id));		
		m.put("orders", oService.getByUid(user_id));
		
		return "orders/settlement";
		
	}
	
	
	@RequestMapping("cancle2")
	public @ResponseBody jsonInfo cancle2(int id){
		
		
		
		
		int status=5;
		orders r = new orders();
		r.setId(id);
		r.setStatus(status);	
		oService.update(r);
		return new jsonInfo(1, "");
	
	  }

	
	@RequestMapping("cancleorders")
	public String cancleorders(int id) {
		int status=5;
		orders r = new orders();
		r.setId(id);
		r.setStatus(status);	
		oService.update(r);
		
		return "index";
	
	}
	
	@RequestMapping("pay")
	public @ResponseBody jsonInfo pay(int address_id ,HttpSession session) {
		int  user_id = (Integer) session.getAttribute("user_id");
		int orders_id = oService.getByUid(user_id).getId();
		sservice.deletecar(user_id);
		
		int status=1;
		orders r = new orders();
		r.setId(orders_id);
		r.setStatus(status);
		r.setAddress_id(address_id);
		oService.update(r);
		
		return new jsonInfo(1, "");
		
	}
	
	
	//支付后，跳转到我的订单详情
	@RequestMapping("toOrders_details")
    public String toOrders_details(ModelMap m,HttpSession session) {
		int  user_id = (Integer) session.getAttribute("user_id");
		
		
		m.put("orders", oService.select(user_id));
		
		
		m.put("orders_details", dservice.select());

	/*	m.put("address", aservice.select(user_id));
		
		m.put("orders_details", dservice.getByoid(orders_id));
		
		m.put("nowamount", oService.getByUid(user_id).getNowamount());*/
		return "orders/orders";
		
	}
	
	@RequestMapping("addaddress")
	public void addaddress(address adr,HttpSession session) {
		String zone= adr.getProvince()+" "+adr.getCity()+ " "+ adr.getCity();
		
		address ad2 = new address();
		ad2.setUser_id((Integer) session.getAttribute("user_id"));
		ad2.setName(adr.getName());
		ad2.setTel(adr.getTel());
		ad2.setZone(zone);
		ad2.setAddr(adr.getAddr());
		
		
		aservice.Insert(ad2);
		
		
		
		
	}
	
	@RequestMapping("sureorders")
	public @ResponseBody jsonInfo sureorders(int id) {
	     orders o = new orders();
	     o.setId(id);
	     o.setStatus(3);
	     oService.update(o);
		return new jsonInfo(1, "");
		
	}
	
	
	@RequestMapping("cuifa")
	public @ResponseBody jsonInfo cuifa(int id,HttpSession session) {
	     orders o = new orders();
	     
	     o.setId(id);
	     String email=(String) session.getAttribute("email");
	     o.setComments("用户"+email+"催你发货");
	    
	     oService.update1(o);
		return new jsonInfo(1, "");
		
	}
	
	
	
}
