package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {

	public int insert(ReplyVO vo);
	
	public ReplyVO read(Long vo); // 특정 댓글 상세 조회
	
	public int delete(Long rno);   // 특정 댓글 삭제 기능 정의
	
	public int update(ReplyVO reply);  // 기존 댓글을 매개변수로 인식해서 수정 처리를 합니다
	
	// 특정 게시글의 댓글 조회 시 댓글이 많은 리스트형 댓글에는 대해 페이징 처리를 적용해 줍니다
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") Long bno);
	
	// Page 432 71.6.3 댓글의 숫자 파악 기능 구현을 할 getCountByBno() 메소드를 선언
	public int getCountByBno(Long bno);
	
	
}
