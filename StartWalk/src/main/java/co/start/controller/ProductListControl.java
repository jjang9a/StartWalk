package co.start.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.PageDTO;
import co.start.vo.ProductVO;

public class ProductListControl implements Control {
	public static PageDTO pageInfo = null;
	
	
	
	@Override     //용억
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String page = request.getParameter("page");
		if(page==null) {
			page = "1";
		}
		
		
		
		
		// 글목록
		ProductService service = new ProductServiceMybatis();
		List<ProductVO> list = service.products(Integer.parseInt(page));
		int total = service.getTotalCount();
		request.setAttribute("product", list);
		pageInfo = new PageDTO(Integer.parseInt(page), total);
		request.setAttribute("page", pageInfo);
		
		//db결과 -> attribute("list")
		return "product/productList.tiles";
	}

}
