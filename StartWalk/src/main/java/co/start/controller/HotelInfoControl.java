package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ImagesVO;
import co.start.vo.ProductVO;

public class HotelInfoControl implements Control {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		int key = Integer.parseInt(req.getParameter("key"));
		
		ProductService service = new ProductServiceMybatis();
		ProductVO vo = service.getProduct(key);
		
		req.setAttribute("hotel", vo);
		
		List<ImagesVO> img = service.getImgs(key);
		req.setAttribute("img", img);
		
		return "product/hotelInfo.tiles";
	}

}
