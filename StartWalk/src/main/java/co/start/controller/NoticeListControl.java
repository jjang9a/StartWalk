package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class NoticeListControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BoardService service = new BoardServiceMybatis();
		List<BoardVO> list = service.noitceList();
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "client/noticeList.tiles";
	}

}
