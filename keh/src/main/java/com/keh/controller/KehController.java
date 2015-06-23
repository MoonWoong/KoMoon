package com.keh.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	@RequestMapping("main.do")
	public String main(){
		return "main";
	}
	
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	
	@RequestMapping("myPage.do")
	public String myPage(){
		
		return "myPage";
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
	
	@RequestMapping("updateInfo.do")
	public String updateInfo(HttpSession session, HttpServletRequest req, Model model){
		session = req.getSession(false);
		KehDto dto = (KehDto) session.getAttribute("userInfo");
		
		model.addAttribute("userDto", dto);
		
		return "updateInfo";
	}

	@RequestMapping("/loginsuccess.do")
	public ModelAndView loginsuccess(KehDto dto,HttpSession session, HttpServletRequest req){
		session = req.getSession();
		KehDto result = new KehDto();
		ModelAndView model = new ModelAndView();
		
		result = kehService.loginCheck(dto.getId(), dto.getPw());
		
		session.setAttribute("userInfo", result);
		model.addObject("userDto", result);
		model.setViewName("joincheck");
		
		return model;
	}	

	@RequestMapping("/register.do")
	protected String register(KehDto dto){
		
		kehService.registerCheck(dto.getId(),dto.getPw(),dto.getName());
		
		return "registerCheck";
	}
	
	@RequestMapping("dbTest.do")
	public ModelAndView dbTest(ModelAndView result) {
		 
        List<KehDto> memberList = kehService.memberList();
        result.addObject("result", memberList);
        result.setViewName("dbTest");
       
        return result;
	}
	
	@RequestMapping("update.do")
	public String update(HttpSession session, HttpServletRequest req, Model model, String pw, String name) {
		
		session = req.getSession(false);
		KehDto dto = (KehDto) session.getAttribute("userInfo"); // 세션에서 가져온 유저정보 dto
		
		String check = "fail"; // 업데이트 성공여부설정 기본값 fail
														// pass : 비밀번호 오류
														// success : 성공
		
		if(!pw.equals(dto.getPw())){ // 입력된 비밀번호가 session의 비밀번호와 다르면
			check = "pass"; // 성공여부를 pass로 바꾼다
		}else{ // 비밀번호가 맞으면
			kehService.updateInfo(dto.getId(), name); // 바뀐 정보(name)를 넣고 update 쿼리 실행
			dto.setName(name); // session에서 가져왔던 유저정보 dto에 변경된 name을 세팅
			session.setAttribute("userInfo", dto); // 변경된 dto를 세션에 세팅
			check = "success"; // 성공여부 success
		}
		
		model.addAttribute("check", check); // 성공여부를 넣어준다
		return "updateCheck";
		
	}
	
}

