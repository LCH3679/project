package org.iot.service;

import org.iot.domain.MemberVO;
import org.iot.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	MemberMapper memberMapper;

	@Override
	public void insert(MemberVO vo) {

		memberMapper.insert(vo);
	}

	@Override
	public MemberVO mget(String userid) {
		// TODO Auto-generated method stub
		return null;
	}
}
