package seulgi.board.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import seulgi.board.VO.BoardVO;
import seulgi.board.service.BoardService;

@Controller
@RequestMapping("board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	Logger logger = Logger.getLogger(BoardController.class);
	
	//게시판 메인
	@RequestMapping(value = "/boardMain", method = RequestMethod.GET)
	public ModelAndView boardMain(Model model) {
		logger.info("boardMain");
		List<BoardVO> boardVO = boardService.boardMain();
		ModelAndView mav = new ModelAndView();
		model.addAttribute("boardMain",boardVO);
		mav.setViewName("boardMain");
		return mav;
	}
	
	//게시판 글쓰기 화면으로 이동
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public ModelAndView boardWrite() {
		logger.info("boardWrite");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardWrite");
		return mav;
	}
	
	//게시판 글 작성 완료
	@RequestMapping(value = "/boardInsert", method = RequestMethod.GET)
	public String boardInsert(BoardVO boardVO) {
		logger.info("boardInsert");
		boardService.boardInsert(boardVO);
		return "redirect:boardMain";
	}
	
	//게시판 글 읽기
	@RequestMapping(value = "/boardRead", method = RequestMethod.GET)
	public ModelAndView boardRead(@RequestParam String no, Model model) {
		logger.info("boardRead");
		BoardVO boardVO = boardService.boardRead(no);
		ModelAndView mav = new ModelAndView();
		model.addAttribute("boardRead",boardVO);
		mav.setViewName("boardRead");
		return mav;
	}
	
	//게시판 글 수정 화면
	@RequestMapping(value = "/boardEdit", method = RequestMethod.GET)
	public ModelAndView boardEdit(@RequestParam String no, Model model) {
		logger.info("boardEdit");
		BoardVO boardVO = boardService.boardRead(no);
		ModelAndView mav = new ModelAndView();
		model.addAttribute("boardRead",boardVO);
		mav.setViewName("boardEdit");
		return mav;
	}
	
	//게시판 글 수정 완료
	@RequestMapping(value = "/boardUpdate", method = RequestMethod.GET)
	public String boardUpdate(BoardVO boardVO) {
		logger.info("boardUpdate");
		boardService.boardUpdate(boardVO);
		return "redirect:boardMain";
	}
	
	//게시판 글 삭제 완료
	@RequestMapping(value = "/boardDelete", method = RequestMethod.GET)
	public String boardDelete(@RequestParam String no) {
		logger.info("boardDelete");
		boardService.boardDelete(no);
		return "redirect:boardMain";
	}

}
