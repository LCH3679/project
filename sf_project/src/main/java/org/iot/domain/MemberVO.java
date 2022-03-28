package org.iot.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {

	private String userid;
	private String userpw;
	private String userName;
	private String userEmail;
	private String userAddr;
	private boolean enabled;

	private Date regDate;
	private Date updateDate;
	private List<AuthVO> authList;

}
