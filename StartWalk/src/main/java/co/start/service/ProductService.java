package co.start.service;

import java.util.List;

import co.start.vo.ProductVO;

public interface ProductService {

	//용억
		//상품목록(명물)
	       public List<ProductVO> products(int page);
	    // 상품목록(호텔)
	       public List<ProductVO> hotels();
	    //상품상세
	       public ProductVO getProduct(int pdId);
	   // 전체 건수
	     public int getTotalCount();
	       

	public List<ProductVO> packageList();

}
