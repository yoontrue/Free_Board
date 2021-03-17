package com.yoontrue.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

@Service
public interface BoardService {
	// list
	public List<BoardVO> list(PageObject pageObject);
	
	// view
	public BoardVO view(int b_no, int inc);
	
	// write
	public void write(BoardVO vo);
	
	// update
	public void update(BoardVO vo);
	
	// delete
	public void delete(BoardVO vo);
}
