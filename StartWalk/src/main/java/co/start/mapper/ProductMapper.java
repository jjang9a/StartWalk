package co.start.mapper;

import java.util.List;

import co.start.vo.ProductVO;

public interface ProductMapper {

	
	//상품목록 (용억)
	public List<ProductVO> productList(int page);    //명물
	
	public List<ProductVO> hotelList();  //숙소
	//상품상세 (용억)
	public ProductVO selectProduct(int pdId);
	
	//페이징
	public List<ProductVO> productListWithPaging(int page);
	
	//전체 글 수
	public int getTotalCount();
	
	//조회 수 증가
	public int updateCount(int PdId);

	// 패키지 상품 리스트
	public List<ProductVO> PackageList();

}
