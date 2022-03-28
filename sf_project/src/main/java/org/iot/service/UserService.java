package org.iot.service;

import org.iot.domain.MemberVO;

public interface UserService {
	
	public void insert(MemberVO vo);
	
	public MemberVO mget(String userid);
}
