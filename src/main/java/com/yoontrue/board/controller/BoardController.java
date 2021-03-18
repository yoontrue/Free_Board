package com.yoontrue.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yoontrue.board.service.BoardService;
import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	private final String MODULE_NAME = "board";
	
	@Autowired
	@Qualifier("boardServiceImp")
	private BoardService service;
	
	// 리스트
	@GetMapping("/list.do")
	public String list(Model model,PageObject pageObject) {
		// model.~는 request에 값 담은거..jsp에서 꺼내쓸 때 el태그로..
		model.addAttribute("list", service.list(pageObject));
		return MODULE_NAME + "/list";
	}
	// 입력폼(Get)
	@GetMapping("/write.do")
	public String writeForm() {
		System.out.println("BoardController.writeForm()");
		return MODULE_NAME + "/write"; 
	}
	// 입력처리(Post)
	@PostMapping("/write.do")
	public String write(BoardVO vo) {
		System.out.println("BoardController.write()");
		service.write(vo);
		return "redirect:list.do";
	}
	// 상세페이지
	@GetMapping("/view.do")
	public String view(Model model, int b_no, int inc) {
		model.addAttribute("vo",service.view(b_no, inc));
		return MODULE_NAME + "/view";
	}
	// 수정폼(Get)
	@GetMapping("/update.do")
	public String updateForm(Model model, int b_no) {
		// 데이터 가져오기 view(), inc = 0(조회수 증가 안되게...)
		model.addAttribute("vo", service.view(b_no, 0));
		return MODULE_NAME + "/update";
	}
	// 수정처리(Post)
	@PostMapping("/update.do")
	public String update(BoardVO vo) {
		service.update(vo);
		return "redirect:view.do?b_no=" + vo.getB_no() + "&inc=0";
	}
	// 삭제(Get)
	@PostMapping("/delete.do")
	public String delete(BoardVO vo) {
		service.delete(vo);
		return "redirect:list.do";
	}
}
