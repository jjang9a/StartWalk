package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.start.common.Control;
import co.start.service.CommentsService;
import co.start.service.CommentsServiceMybatis;
import co.start.vo.BoardVO;
import co.start.vo.CommentsVO;

public class CommentsListAjax implements Control{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CommentsService service = new CommentsServiceMybatis();
		BoardVO vo  = (BoardVO) request.getSession().getAttribute("mo");
		List<CommentsVO> list = service.CommentsList(vo.getBId());
		System.out.println(list);
		Gson gson = new GsonBuilder().create();
		String json = gson.toJson(list);
		return json + ".ajax";
	}

}
