package com.yoontrue.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.yoontrue.user.mapper.UserMapper;
import com.yoontrue.user.vo.UserVO;

import lombok.AllArgsConstructor;

@Service
@Qualifier("UserServiceImp")
@AllArgsConstructor
public class UserServiceImp implements UserService{
	private UserMapper mapper;
	
	@Override
	public List<UserVO> list(){
		
		return mapper.list();
	}
	
	@Override
	public void join(UserVO vo) {
		
		mapper.join(vo);
	}

}
