<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div style="margin: 100px auto 100px auto; width: 1000px; ">
<!-- 사이드바 -->
		  <div style="width: 200px; float: left;  ">
                <p style="color:rgb(255, 255, 255); font-weight: 700; font-size: 25px;  background-color: #0f172b; text-align: center; padding: 20px; margin-bottom: 0; border-bottom: 5px solid #fea116;">관리자 모드</p>
                 <div style="border: 2px solid rgb(230, 226, 226);  padding: 45px 20px; margin-top: 0 auto;"> 
                     <a href="" style="color:black;">회원/결제 관리</a>
                    <hr>
                     <a href="scManagerList.do" style="color:black;">고객 문의답변(1:1)</a>
                     <hr>
                     <p style="margin-bottom:0;">상품등록</p>
                     <p style="margin-bottom:0;"><a href="packageAddForm.do" style="color:black; font-size: 13px;">&nbsp;&nbsp;패키지 상품등록</a></p>
                     <p><a href="addProduct.do" style="color:black; font-size: 13px;">&nbsp;&nbsp;기타 상품등록</a></p>
					<hr>
                     <a href="" style="color:black;">연락처 &#183; 위치 안내</a>                    
                 </div>
            </div>
<!-- 사이드바 종료 -->
