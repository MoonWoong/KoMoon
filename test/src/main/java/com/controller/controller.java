package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping("join.do")
	public String join(){

		return "join";
	}
	@RequestMapping("joincheck.do")
	protected ModelAndView handleRequestInternal(String id)throws Exception{
		ModelAndView mav = new ModelAndView("joincheck");
		mav.addObject("id", id);
		
		return mav;
	}
}

