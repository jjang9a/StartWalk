package co.start.service;

import java.util.List;

import co.start.vo.CommentsVO;

public interface CommentsService {
	
	//용억
		//매칭 댓글 목록
			public List<CommentsVO> CommentsList(int bId);
		//매칭 댓글 등록
			public boolean addComments(CommentsVO vo);
		//댓글 삭제
			public boolean removeComments(int coId);
	
			
	// 순덕
	// 메인화면 댓글 리스트
	public List<CommentsVO> mainommentsList();
			
			
}
