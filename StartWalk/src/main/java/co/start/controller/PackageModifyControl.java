package co.start.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.start.common.Control;
import co.start.service.ProductService;
import co.start.service.ProductServiceMybatis;
import co.start.vo.ProductVO;

public class PackageModifyControl implements Control {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductVO vo2 = (ProductVO) request.getSession().getAttribute("modify");
		int pdId = vo2.getPdId();
		String pdName = request.getParameter("pdName");
		String pdPrice = request.getParameter("pdPrice");
		String pdSale = request.getParameter("pdSale");
		String pdInfo = request.getParameter("pdInfo");
		String pdStart = request.getParameter("pdStart");
		String pdEnd = request.getParameter("pdEnd");
		System.out.println("s:"+ pdEnd + pdStart + pdName);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date dateStart=null;
		Date dateEnd=null;
		
			try {
				dateStart = formatter.parse(pdStart);
				dateEnd = formatter.parse(pdEnd);
				System.out.println("dateStart: "+dateStart);
			} catch (ParseException e) {
				e.printStackTrace();
			}
	
		ProductVO vo = new ProductVO();
		vo.setPdId(pdId);
		vo.setPdName(pdName);
		try {
			vo.setPdPrice(Integer.parseInt(pdPrice));
			vo.setPdSale(Integer.parseInt(pdSale));		
		} catch (Exception e) {
			
		}
		vo.setPdInfo(pdInfo);
		vo.setPdStart(dateStart);
		vo.setPdEnd(dateEnd);
		
		System.out.println("vo: "+vo);
		ProductService service = new ProductServiceMybatis();
		service.packageModify(vo);
		
		return "packageList.do";
	}

}
