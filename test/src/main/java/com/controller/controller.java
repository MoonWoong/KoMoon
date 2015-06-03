package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class controller {

	@RequestMapping("/")
	public String index(){
		return "index";
	}
	
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	
	//protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response,Object command,BindException bindException)

/*	@RequestMapping("/join.do")
	public String join(){

		return "login";
	}*/
/*	@RequestMapping("/join.do")
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,HttpServletResponse arg1)throws Exception{

		return new ModelAndView("/login");
	}*/
}

