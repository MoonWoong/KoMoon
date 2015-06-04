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
	public String login(String userName, Model model) {
		String b = "ok";
		System.out.println(userName);
		String userId = vodService.loginCheck(userName);
		System.out.println(userId);
		if(userId == null){
			b = "nok";
		}
		model.addAttribute("check", b);
		model.addAttribute("userName", userName);
		model.addAttribute("userId", userId);
		return "loginCheck";
	}
	
}
