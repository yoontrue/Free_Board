package com.yoontrue.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.yoontrue.board.mapper.BoardMapper;
import com.yoontrue.board.vo.BoardVO;

import net.webjjang.util.PageObject;

@Service
public class BoardService {
	
	@Inject
	private BoardMapper mapper;
	
	public List<BoardVO> list(PageObject pageObject) {
		System.out.println("BoardService.list().pageObject : " + pageObject);
		pageObject.setTotalRow(mapper.getCount());
		return mapper.list(pageObject);
		
	}

	public Integer write(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.write(vo);
	}
}
