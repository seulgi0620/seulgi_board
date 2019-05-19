package seulgi.board.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import seulgi.board.VO.MemberVO;
import seulgi.board.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	MemberService memberService;
	Logger logger = Logger.getLogger(MemberController.class);
	
	//로그인 시도
	@RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
	public String loginSuccess(MemberVO memberVO, Model model) {
		logger.info("loginSuccess");
		MemberVO memberVO2 = memberService.loginSuccess(memberVO);
		model.addAttribute("loginSuccess", memberVO2);
		logger.info(memberVO2.getName());
		return "loginSuccess";
	}

}
