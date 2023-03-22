<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid page-header mb-5 p-0"
	style="background-image: url(img/carousel-1.jpg);">
	<div class="container-fluid page-header-inner py-5">
		<div class="container text-center pb-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">숙박이용권</h1>
		</div>
	</div>
</div>
<!-- Page Header End -->

<!-- Booking Start -->
<div class="container-xxl py-5">
	<div class="container">
		<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
			<h6 class="section-title text-center text-primary text-uppercase"></h6>
			<h1 class="mb-5">
				<span class="text-primary text-uppercase"></span>
			</h1>
		</div>
		<div class="row g-5">
			<div class="col-lg-6">
				<div class="row g-3">
					<div class="col-6 text-end">
						<img class="img-fluid rounded w-75 wow zoomIn"
							data-wow-delay="0.1s" src="img/about-1.jpg"
							style="margin-top: 25%;">
					</div>
					<div class="col-6 text-start">
						<img class="img-fluid rounded w-100 wow zoomIn"
							data-wow-delay="0.3s" src="img/about-2.jpg">
					</div>
					<div class="col-6 text-end">
						<img class="img-fluid rounded w-50 wow zoomIn"
							data-wow-delay="0.5s" src="img/about-3.jpg">
					</div>
					<div class="col-6 text-start">
						<img class="img-fluid rounded w-75 wow zoomIn"
							data-wow-delay="0.7s" src="img/about-4.jpg">
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<h4>${hotel.pdName }</h4>
				<div class="wow fadeInUp" data-wow-delay="0.2s">
					<form>
						<div class="row g-3">
							<div class="col-12" style="text-align:right; padding-top:10px">
								<input type="hidden" name="pdid" value="${hotel.pdId }"/>
									출발만의 특가 : <fmt:formatNumber pattern="#,###,###" value="${hotel.pdPrice }" />원
								<div class="form-floating" >
								</div>
							</div>

<%-- 							<div class="col-md-6">
								<div class="form-floating date" id="date3"
									data-target-input="nearest">
									<input type="text" class="form-control datetimepicker-input"
										id="checkin" placeholder="Check In" data-target="#date3"
										data-toggle="datetimepicker" /> <label for="checkin">${info.pdPrice}</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-floating date" id="date4"
									data-target-input="nearest">${info.pdType}</div>
							</div> --%>

							<div class="col-12">
								<div class="form-floating">
									<textarea class="form-control" placeholder="Special Request"
										id="message" style="height: 100px"></textarea>
									<label for="message">${hotel.pdInfo }</label>
								</div>
							</div>
							<div class="col-12" style="font-size:10px; color:#808080; padding-left:15px">
								<div class="form-floating">
									※ 본 상품은 이용권 상품으로 지정일 예약은 사용처와 따로 진행하셔야 합니다.
								</div>
							</div>							
							<div class="col-12">
								<button style="background-color:#0f172b; border:none;" class="btn btn-primary w-100 py-3" type="submit">구매하기</button>
								<button class="btn btn-primary w-100 py-3" type="submit">장바구니</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Booking End -->