package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;

public class NoticeAddFormControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		return "client/noticeAddForm.tiles";
	}

}
