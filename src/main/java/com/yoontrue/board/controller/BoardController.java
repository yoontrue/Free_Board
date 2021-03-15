package com.yoontrue.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	private final String MODULE_NAME = "board";
	
	@Autowired
	private BoardService service;
	
	
	@GetMapping("/list.do")
	public String list(Model model,PageObject pageObject) {
		System.out.println("BoardController.list.pageObject:" + pageObject);
		
		model.addAttribute("list", service.list(pageObject));
		model.addAttribute("pageObject", pageObject);
		
		return MODULE_NAME + "/list";
	}
	
	@GetMapping("/write.do")
	public String writeForm() {
		System.out.println("BoardController.writeForm()");
		return MODULE_NAME + "/write";
	}
	
	@PostMapping("/write.do")
	public String write(BoardVO vo) {
		
		System.out.println("BoardController.write()");
		
		service.write(vo);
		
		return "redirect:list.do";
	}
}
