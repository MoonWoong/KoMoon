package com.keh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.keh.dto.KehDto;
import com.keh.service.KehService;

@Controller
public class KehController {
	
	@Autowired
	KehService kehService;

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
	
	@RequestMapping("dbTest.do")
	public ModelAndView dbTest(ModelAndView result) {
		 
        List<KehDto> memberList = kehService.memberList();
        result.addObject("result", memberList);
        result.setViewName("dbTest");
       
        return result;
	}
	
}

