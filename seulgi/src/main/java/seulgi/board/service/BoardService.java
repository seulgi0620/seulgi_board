package seulgi.board.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seulgi.board.DAO.BoardDAO;
import seulgi.board.VO.BoardVO;

@Service
public class BoardService {
	
	@Autowired
	BoardDAO boardDAO;
	Logger logger = Logger.getLogger(BoardService.class);
	
	public List<BoardVO> boardMain() {
		logger.info("boardMain");
		List<BoardVO> boardVO = boardDAO.boardMain();
		return boardVO;
	}

	public void boardInsert(BoardVO boardVO) {
		logger.info("boardInsert");
		boardDAO.boardInsert(boardVO);
	}

	public BoardVO boardRead(String no) {
		logger.info("boardRead");
		BoardVO boardVO = boardDAO.boardRead(no);
		return boardVO;
	}

	public void boardUpdate(BoardVO boardVO) {
		logger.info("boardUpdate");
		boardDAO.boardUpdate(boardVO);
	}

	public void boardDelete(String no) {
		logger.info("boardDelete");
		boardDAO.boardDelete(no);
	}

}
