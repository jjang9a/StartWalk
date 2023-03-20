package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.BoardService;
import co.start.service.BoardServiceMybatis;
import co.start.vo.BoardVO;

public class MateInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String co = request.getParameter("userId");
		
		BoardService service = new BoardServiceMybatis();
		BoardVO vo = service.getMateInfo(Integer.parseInt(co));
		
		
		System.out.println(vo);
		request.setAttribute("info", vo);
		
		return "board/mateInfo.tiles";
	}

}
