package co.start.service;

import java.util.List;

import co.start.vo.BoardVO;

public interface BoardService {
	
	//용억
	// 메이트 목록
	public List<BoardVO> mateList();
	
	// 메이트 등록
	public boolean addMate(BoardVO vo);
	// 메이트 수정
	public boolean ModifyMate(BoardVO vo);	
	// 메이트 상세
	public BoardVO getMateInfo(String bTitle);
	// 전체 건수
	public int getTotalCount();
	

	// 가애 - 여행 수기

	
	// 여행 수기

	public List<BoardVO> travelBoardList(int page);
	public BoardVO travelBoardRead(int key);
	public boolean travelBoardWrite(BoardVO vo);
	public boolean travelBoardDel(int key);
	public boolean trabelBoardModify(BoardVO vo);
	
	// 대준
	// 문의 게시판 전체조회
	public List<BoardVO> scManagerList();
		
	// 글읽기 (상세조회)
	public BoardVO scSearch(int bId);
	// 문의 작성 (등록)
	public boolean scWrite(BoardVO vo);
	// 수정
	public int scModify(BoardVO vo);
	// 삭제
	public int scRemove(int bId);	
	
	
	// 순덕
	// 공지사항 목록
	public List<BoardVO> noitceList();	
	// 공지사항 상세
	public BoardVO noticeInfo(String bTitle);
	// 공지사항 글쓰기
	
	// 공지사항 수정
	
	// 공지사항 삭제
	
	
	
}
