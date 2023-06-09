package co.start.vo;

import java.sql.Date;

import lombok.Data;
@Data
public class OrderVO {

	// 결제 정보 페이지
	
		private int orderId; // 주문번호 - mapper로 insert시 values (order_seq.NEXTVAL, ...)방식으로 입력하면 자동생성됨
		private String userId; // 결제자 id
		private int cpId; // 사용된 쿠폰번호
		private Date orderDate; // 주문일
		private String deliReceiver; // 배송 받는사람 이름
		private String deliPhone; // 배송 받는사람 연락처
		private String deliAddr; // 배송지 주소
		private String orderMethod; // 결제방법
		private int orderTotal; // 총 결제액
		private String orderStatus; // 현재 주문 상태 (결제대기중, 결제완료, 배송준비중, 배송중, 배송완료)
		private int realTotal; // 실 결제금액
		private int uesdPoint; // 포인트 사용액
		private int statusCount; // 주문상태 누적 합

		
}
