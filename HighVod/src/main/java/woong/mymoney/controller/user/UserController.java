package woong.mymoney.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import woong.mymoney.dto.UserDto;
import woong.mymoney.service.user.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping("openMain.do")
	public String openMain(Model model, HttpSession session, HttpServletRequest req) {
		
		session = req.getSession(false);
		String sessionCheck;
		
		if(session.getAttribute("userInfo") == null){
			sessionCheck = "nok";
		}else{
			sessionCheck = "ok";
		}
		
		model.addAttribute("sessionCheck", sessionCheck);
		
		return "main";
		
	}
	
	@RequestMapping("login.do")
	public String login() {
		
		return "login";
		
	}
	
	@RequestMapping("register.do")
	public String register() {
		
		return "register";
		
	}
	
	// 아이디 중복체크
	@RequestMapping("userIdDupCheck.do")
	@ResponseBody
	public String userIdDupCheck(String userId) {
		
		Boolean check = userService.userIdDupCheck(userId) == null;
		
		return check.toString();
	}
	
	// 회원가입
	@RequestMapping("user/insertUser.do")
	@ResponseBody
	public void insertUser(UserDto dto) {
		
		try {
			userService.insertUser(dto);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	// 로그인
	@RequestMapping("user/loginPrcs.do")
	public @ResponseBody UserDto loginPrcs(UserDto dto, HttpSession session, HttpServletRequest req, Model model) {
		
		session = req.getSession();
		
		UserDto result = userService.selectUserInfo(dto);
		
		session.setAttribute("userInfo", result);

		return result;
		
	}
	
	
	
	
}
