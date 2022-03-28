package org.iot.mapper;

import org.iot.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String userid);
	
	public void insert(MemberVO vo);
}
