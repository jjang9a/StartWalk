<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
	<c:if test="${loginUser.userGrade.equals('admin') }">
		<a href="packageDelete.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right; margin: 0 10px">삭제</a>
		<a href="packageModifyForm.do" class="btn btn-sm btn-dark rounded py-2 px-4" style="float: right;">수정</a>
	</c:if>
	<div style="clear: both; margin-bottom: 5px;"></div>
	<div style="float: right; margin: 0 10px; padding:0;">
	<c:choose>
			<c:when test="${info.pdSale == 0 }">
				<p style="font-size: 25px; margin:0; padding:0;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdPrice }" type="currency" />
				</p>
			</c:when>
			<c:otherwise>
			<c:choose>
			<c:when test="${info.pdSale == info.pdPrice }">
				<p style="font-size: 25px; margin:0; padding:0;">
					<strong style="color: red;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdSale }" type="currency"  /></strong>
				</p>
			</c:when>
			<c:otherwise>
				<p style="font-size: 25px; margin:0; padding:0;">
					<fmt:setLocale value="ko_kr" /><del>
					<fmt:formatNumber value="${info.pdPrice }" type="currency" /></del>
					<strong style="color: red;">
					<fmt:setLocale value="ko_kr" />
					<fmt:formatNumber value="${info.pdSale }" /></strong>
				</p>
			</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>	
	</div>
	<h3>&#91; ${info.pdType}${info.pdId}&#93; ${info.pdName}</h3>
	<input type="hidden" name="pdid" id="pdid" value="${info.pdId }"/>
	<hr>
	<button class="btn btn-sm btn-primary rounded py-2 px-4" type="button" id="submitBtn" style="float: right; margin: 0 5px 18px 5px;">장바구니</button>
	
	<a class="btn btn-sm btn-dark rounded py-2 px-4" href="orderDirect.do?pdid=${info.pdId }" style="float: right; margin: 0 5px 18px 5px;">결제</a>
	<div style="width:600px;">
	<p>| &nbsp; 출발:<fmt:formatDate value="${info.pdStart }" type="both" pattern="yyyy-MM-dd E요일" /> &nbsp; | &nbsp; 도착:<fmt:formatDate value="${info.pdEnd }" type="both" pattern="yyyy-MM-dd E요일" />&nbsp; |</p>
	</div>
	
	
	<br>
                <!-- img Start -->                 
                        <div class="owl-carousel testimonial-carousel py-5">
                            <div>
                                <img src="./upload/${info.prImg}" style="width: 400px; height: 280px; margin-right: 10px;">
                            </div>
                            <div>
                                <img src="./upload/${img.get(1).imgFile }" style="width: 400px; height: 280px; margin-right: 10px;">
                            </div>
                            <div>
                                <img src="./upload/${img.get(2).imgFile }" style="width: 400px; height: 280px; margin-right: 10px;">
                            </div>
                            <div>
                                <img src="./upload/${img.get(3).imgFile }" style="width: 400px; height: 280px; margin-right: 10px;">
                            </div>							
                        </div>
                <!-- img End -->
	
	<h5 style="margin: 20px;">여행일정</h5>
	<div style="background-color: rgb(242, 242, 242); padding: 20px; margin: 20px 0;">
		<b><p>참고하세요</p></b>
		<p>여행 일정은 계약 체결 시 예상하지 못한 부득이한 사정 등이 발생한 경우 여행자의 사전 동의를 거쳐 변경될 수 있음을 양지하여 주시기를 바랍니다.</p>
	</div>
	
	<div style="padding: 20px; margin: 20px;">
		<p>${info.pdInfo }</p>
	</div>
	
	<div style="padding: 10px;">
		<p><strong style="background-color: blanchedalmond; padding: 0 10px; color: black;">&#10003; Review</strong></p>
		
		<div style="clear: both; margin: 10px 0; padding: 20px;">		
			
			
			<c:forEach var="review" items="${list }">
			<div >
				<hr>
				<p style="margin:0;"><strong>${review.userId }</strong> &nbsp; &nbsp; &nbsp; &nbsp; </p>
				<div style="overflow:hidden;">
					<c:if test="${review.prStar ==1}">
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
					</c:if>
					<c:if test="${review.prStar ==2}">
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
					</c:if>
					<c:if test="${review.prStar ==3}">
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
					</c:if>
					<c:if test="${review.prStar ==4}">
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star" style="float: left;"></div>
					</c:if>
					<c:if test="${review.prStar ==5}">
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
						<div class="bi-star-fill" style="float: left;"></div>
					</c:if>
					
				</div>
				<p style="clear: both;">${review.prBody }</p>
			</div>
			
			</c:forEach>
			
			
			
		</div>
	</div>
	

</div>

<script>
let pdid = document.querySelector('#pdid').value;
console.log('pdid');
document.querySelector('#submitBtn').addEventListener('click', function(){
fetch('cartAdd.do', {
	method : 'post',
	headers : {'Content-Type' : 'application/x-www-form-urlencoded'},
	body: 'pdid='+pdid

})
.then(resolve => resolve.json()) // {"id":"user1", "name":"hong" ...}
.then(result => {
	console.log(result);
	if(result.retCode == 'Success'){
		alert('장바구니 추가 완료!');
		
	} else if(result.retCode == 'Fail'){
		alert('실패!');
	}
})
.catch(reject => console.error(reject));
});
</script>
