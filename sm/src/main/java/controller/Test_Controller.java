package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Test_Controller {
	
	
	
	
	@RequestMapping("index")
	private void exe( HttpServletRequest req ) {
		
		
		System.out.println("接受请求");

	}
	

	
	@RequestMapping("index1")
	public ModelAndView exe3() {
		System.out.println("接收到请求：");
		ModelAndView v = new ModelAndView("index");
		return v;
	}
	

}
