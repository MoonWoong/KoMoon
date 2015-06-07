package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.DTO.*;

@Controller
public class controller {

	@RequestMapping("/")
	public String index(){
		return "index";
	}
	
	@RequestMapping("mainmenu.do")
	public String mainmenu(){
		return "main";
	}
	
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	
	@RequestMapping("addcontents.do")
	public String addcontents(){
		return "addcontents";
	}
	
	//protected ModelAndView onSubmit(HttpServletRequest request,HttpServletResponse response,Object command,BindException bindException)

	@RequestMapping("/join.do")
	public String join(){

		return "join";
	}

	@RequestMapping("/loginsuccess.do")
	public String loginsuccess(){

		return "joincheck";
	}	

/*	@RequestMapping("/join.do")
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,HttpServletResponse arg1)throws Exception{

		return new ModelAndView("/login");
	}*/
}

