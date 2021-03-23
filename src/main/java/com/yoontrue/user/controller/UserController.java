package com.yoontrue.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yoontrue.user.service.UserService;
import com.yoontrue.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImp")
	private UserService service;
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public void joinForm() {
		
	}
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(UserVO vo) {
		service.join(vo);
		return "redirect:/";
	}
	
}
