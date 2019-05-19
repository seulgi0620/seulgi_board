package seulgi.board.DAO;

import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import seulgi.board.VO.BoardVO;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	Logger logger = Logger.getLogger(BoardDAO.class);

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	public List<BoardVO> boardMain() {
		logger.info("boardMain");
		List<BoardVO> boardVO = sqlSessionTemplate.selectList("boardMain");
		return boardVO;
	}

	public void boardInsert(BoardVO boardVO) {
		logger.info("boardInsert");
		sqlSessionTemplate.insert("boardInsert",boardVO);
	}

	public BoardVO boardRead(String no) {
		logger.info("boardRead");
		BoardVO boardVO = sqlSessionTemplate.selectOne("boardRead",no);
		sqlSessionTemplate.update("boardHit",no);
		return boardVO;
	}

	public void boardUpdate(BoardVO boardVO) {
		logger.info("boardUpdate");
		sqlSessionTemplate.update("boardUpdate",boardVO);
	}

	public void boardDelete(String no) {
		logger.info("boardDelete");
		sqlSessionTemplate.delete("boardDelete",no);
	}

}
