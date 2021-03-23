package com.yoontrue.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yoontrue.board.service.BoardService;
import com.yoontrue.board.vo.BoardVO;
import com.yoontrue.util.FileUtil;

import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

@Controller
@Log4j
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
	public String write(BoardVO vo, MultipartFile imageFile, RedirectAttributes ra, HttpServletRequest request) throws IllegalStateException, IOException {
		String path = "/upload/image/";
		String realPath = request.getServletContext().getRealPath(path);
		System.out.println(realPath);
		
		String fileName = imageFile.getOriginalFilename();
		
		// 저장하려는 파일시스템의 실제 위치와 파일명
		String saveFileName = FileUtil.checkDuplicate(realPath + fileName);
		System.out.println(saveFileName);
		
		// 실제적으로 실제위치와 파일명으로 저장해야 한다. 
		// request안에 data로 담겨있는 파일 내용을 실제적인 파일로 저장
		imageFile.transferTo(new File(saveFileName));
		
		// 서버에 올라간 파일명만 가져옴 - path 없음..
		String uploadFileName = saveFileName.substring(saveFileName.lastIndexOf("/")+1);
		
		// 이게 DB에 저장되는 거 (path + 파일명)
		vo.setFileName(path + uploadFileName);
		service.write(vo);
		
		// 글쓰기 정상처리 됐다는 표시 할 거
		ra.addFlashAttribute("processResult", "write success");
		
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
	public String update(BoardVO vo, RedirectAttributes ra) {
		service.update(vo);
		// 수정 완료 메세지 날려줄거.
		ra.addFlashAttribute("processResult", "update success");
		return "redirect:view.do?b_no=" + vo.getB_no() + "&inc=0";
	}
	// 삭제(Post)
	@PostMapping("/delete.do")
	public String delete(BoardVO vo, RedirectAttributes ra) {
		service.delete(vo);
		// 삭제 완료 메세지 날려줄거.
		ra.addFlashAttribute("processResult", "delete success");
		return "redirect:list.do";
	}
}
