package com.yoontrue.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.yoontrue.board.mapper.BoardMapper;
import com.yoontrue.board.vo.BoardVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.webjjang.util.PageObject;

@Service
@Log4j
@Qualifier("boardServiceImp")
@AllArgsConstructor
public class BoardServiceImp implements BoardService{
	// 생성자 어노테이션 이용해서 자동 DI
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> list(PageObject pageObject) {
		// TODO Auto-generated method stub
		log.info("----- 게시판 리스트 service -----");
		pageObject.setTotalRow(mapper.getRow(pageObject));
		log.info(pageObject);
		return mapper.list(pageObject);
	}

	@Override
	public BoardVO view(int b_no, int inc) {
		// 조회수증가 > 데이터 가져올것
		if(inc == 1) mapper.increase(b_no); //update
		return mapper.view(b_no); // selectOne
	}

	@Override
	public void write(BoardVO vo) {
		mapper.write(vo);
	}

	@Override
	public void update(BoardVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(BoardVO vo) {
		mapper.delete(vo);
	}

}
