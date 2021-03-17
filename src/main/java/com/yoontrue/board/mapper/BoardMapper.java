package com.yoontrue.board.mapper;

import java.util.List;

import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

public interface BoardMapper {
	
	// 1게시판 리스트
	public List<BoardVO> list(PageObject pageObject);
	
	// 2게시물 수
	public Integer getRow();
	
	// 3게시판 글보기
	public BoardVO view(int b_no);
	
	// 4조회수 1증가
	public void increase(int b_no);
	
	// 5게시판 글쓰기
	public void write(BoardVO vo);
	
	// 6게시판 글수정
	public void update(BoardVO vo);
	
	// 7게시판 글삭제
	public void delete(BoardVO vo);
}
