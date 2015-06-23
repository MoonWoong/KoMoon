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
	
	@RequestMapping("main.do")
	public String queryTest() {
		return "main";
	}
	
	@RequestMapping("openMovieAction.do")
	public String openMovieAction() {
		return "movie/action";
	}
	
	@RequestMapping("login.do")
	public String login() {
		return "login";
	}
	
	@RequestMapping("menu.do")
	public String menu() {
		return "menu/menu";
	}
	
	@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
	public String loginCheck(String userName, Model model) {
		String success = "ok";
		String userId = vodService.loginCheck(userName);
		if(userId == null){
			success = "nok";
		}
		model.addAttribute("check", success);
		model.addAttribute("userName", userName);
		model.addAttribute("userId", userId);
		return "loginCheck";
	}
	
}
