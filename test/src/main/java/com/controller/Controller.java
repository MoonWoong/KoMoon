package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class Controller {

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

