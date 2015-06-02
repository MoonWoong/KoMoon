package com.java.highvod;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.highvod.dao.VodService;

@Controller
public class VodController {
	
	@Autowired
	private VodService vodService;
	
	@RequestMapping("/")
	public String mainOpen() {
		return "index";
	}
	
	@RequestMapping("dddd.do")
	public String sub1Open() {
		return "subPage";
	}
	
	@RequestMapping("test.do")	
	public String queryTest(Model model) {
		String name = vodService.queryTest();
		
		model.addAttribute("name", name);
		return "queryTest";
	}
}
