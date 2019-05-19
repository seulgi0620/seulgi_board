package seulgi.board.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seulgi.board.DAO.MemberDAO;
import seulgi.board.VO.MemberVO;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO memberDAO;
	Logger logger = Logger.getLogger(MemberService.class);
	
	public MemberVO loginSuccess(MemberVO memberVO) {
		logger.info("loginSuccess");
		MemberVO memberVO2 = memberDAO.loginSuccess(memberVO);
		return memberVO2;
	}
	

}
