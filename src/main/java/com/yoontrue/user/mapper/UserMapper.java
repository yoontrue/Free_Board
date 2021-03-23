package com.yoontrue.user.mapper;

import java.util.List;

import com.yoontrue.user.vo.UserVO;

public interface UserMapper {
	public List<UserVO> list();
	public void join(UserVO vo);
}
