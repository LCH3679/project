package org.iot.service;

import java.util.List;

import org.iot.domain.Criteria;
import org.iot.domain.ReplyPageDTO;
import org.iot.domain.ReplyVO;



public interface ReplyService {

	public int register(ReplyVO vo);

	public ReplyVO get(Long rno);

	public int modify(ReplyVO vo);

	public int remove(Long rno);

	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	public ReplyPageDTO getListPage(Criteria cri, Long bno);

}
