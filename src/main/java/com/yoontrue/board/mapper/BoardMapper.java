package com.yoontrue.board.mapper;

import java.util.List;

import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

public interface BoardMapper {
	
	// 게시판 리스트
	public List<BoardVO> list(PageObject pageObject);
	
	// 전체 데이터 가져오기
	public Integer getCount();
	
	// 게시판 글보기
	public BoardVO view(int b_no);
	
	// 조회수 1증가
	public Integer increase(int b_no);
	
	// 게시판 글쓰기
	public Integer write(BoardVO vo);
	
	// 게시판 글수정
	public Integer update(BoardVO vo);
	
	// 게시판 글삭제
	public Integer delete(int b_no);
}
