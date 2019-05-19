package seulgi.board.DAO;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import seulgi.board.VO.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	Logger logger = Logger.getLogger(MemberDAO.class);

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public MemberVO loginSuccess(MemberVO memberVO) {
		logger.info("loginSuccess");
		MemberVO memberVO2 = sqlSessionTemplate.selectOne("loginSuccess",memberVO);
		return memberVO2;
	}
	

}
