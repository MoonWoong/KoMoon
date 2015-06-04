package com.java.highvod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java.highvod.service.VodService;

@Controller
public class VodController {
	
	@Autowired
	private VodService vodService;
	
	@RequestMapping("/")
	public String mainOpen() {
		return "index";
	}
	
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(String userId, String userPw, Model model) {
		String b = "ok";
		String name = vodService.loginCheck(userId, userPw);
		System.out.println(name);
		if(name == null){
			b = "nok";
		}
		model.addAttribute("check", b);
		return "loginCheck";
	}
	
	@RequestMapping("test.do")	
	public String test(Model model) {
		String name = vodService.queryTest();
		
		model.addAttribute("name", name);
		return "queryTest";
	}
}
