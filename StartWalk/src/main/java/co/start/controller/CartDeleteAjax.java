package co.start.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.PaymentService;
import co.start.service.PaymentServiceMybatis;
import co.start.vo.CartVO;
import co.start.vo.UserVO;

public class CartDeleteAjax implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String cartId = request.getParameter("cartId");

		PaymentService service = new PaymentServiceMybatis();
		CartVO vo = new CartVO();
		UserVO user = (UserVO) request.getSession().getAttribute("loginUser");
		vo.setUserId(user.getUserId());
		vo.setCartId(Integer.parseInt(cartId));

		boolean result = service.delFromCart(vo);
		String json = "";
		if (result) { // {"retCode" : "Success"}
			json = "{\"retCode\" : \"Success\"}";
		} else { // {"retCode" : "Fail"}
			json = "{\"retCode\" : \"Fail\"}";
		}
		return json + ".ajax";
	}

}
