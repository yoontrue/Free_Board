package com.yoontrue.user.service;

import java.util.List;

import com.yoontrue.user.vo.UserVO;

public interface UserService {
		// list
		public List<UserVO> list();
		
		// join
		public void join(UserVO vo);
}
