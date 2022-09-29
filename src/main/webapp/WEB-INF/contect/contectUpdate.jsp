<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../common/common.jsp" %>
<%@include file="../member/commonTop.jsp" %>
<div class="container contact-pstyle2">        
<div class="collection-header">
	<div class="collection-hero">
		<div class="collection-hero__image"></div>
		<div class="collection-hero__title-wrapper container">
			<h2 style="font-family: 'Poppins', Arial, Tahoma !important; font-weight: 700 !important; font-size: 25px; color: black; margin-bottom: 0px">
			문의게시판
			</h2>
		</div>
	</div>
</div>
  <!-- Contact Form - Details -->
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-8 col-lg-8">
                            <!-- Contact Form -->
                            <div class="formFeilds contact-form form-vertical mt-2 mt-md-0">
                                <h1 class="text-center text-capitalize mb-4">직접 문의 남기기</h1>
                                <form:form commandName="contect" action="update.ctc" name="contactus" method="post" id="contact-form" class="contact-form">	
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                            	<select name="category_num" class="form-control">
                                            		<option value="">카테고리 선택</option>
                                            		<c:forEach items="${contect.category }" var="category" varStatus="i">
                                            		<option value="${i}"<c:if test="${i eq contect.category_num }"> choosed</c:if>>${category }</option>
                                            			
                                            		</c:forEach>
                                            	</select>
                                            	<center>
                                                <form:errors cssClass="error_msg" path="category_num"></form:errors>
	                                            </center>    
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                            
                                                <input type="hidden" name="id" value="${contect.id }"/>
                                                <input type="text" id="ContactSubject" name="title" class="form-control" value="${contect.title }" placeholder="제목을 입력하세요." />
                                                <center>
                                                <form:errors cssClass="error_msg" path="title"></form:errors>
												</center>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <textarea id="ContactFormMessage" name="content" class="form-control" rows="4" placeholder="내용을 입력하세요.">${contect.content }</textarea>
                                     			<center>
                                     			<form:errors cssClass="error_msg" path="content"></form:errors>
                                     			</center>
                                            </div>
                                        </div>  
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group mailsendbtn mb-0 w-100">	
                                                <input class="btn w-100 rounded" type="submit" name="contactus" value="저장하기" />
                                                <div class="loading"><img class="img-fluid" src="assets/images/ajax-loader.gif" alt="loading"></div>
                                            </div>
                                        </div>
                                    </div>
                                </form:form>
                                <div class="response-msg"></div>
                            </div>
                            <!-- End Contact Form -->
                        </div>
                        <div class="col-12 col-sm-12 col-md-4 col-lg-4">
                            <!-- Contact Details -->
                            <div class="contact-details">
                                <ul class="list-unstyled">
                                    <li class="mb-4 address"><strong class="d-block mb-2">주소 :</strong><p class="m-0"><i class="icon an an-map-marker-al me-2 d-none"></i> 서울특별시 마포구 드림로 56길 19 드림디지털타워</p></li>
                                    <li class="mb-3 phone"><strong>유선전화 : </strong><i class="icon an an-phone me-2 d-none"></i> (02) 792 7979</li>
                                    <li class="email"><strong>EMAIL:</strong><i class="icon an an-envelope-l me-2 d-none"></i> Billy@dream.com</li>
                                </ul>
                                <hr>
                                <div class="open-hours"><strong class="d-block mb-2">영업시간</strong>
                                    월요일 - 토요일 : 9am - 11pm<br>
                                    일요일 / 공휴일 : 11am - 5pm
                                </div>
                                <hr>
                                <div class="follow-us">
                                    <label class="d-block mb-3"><strong>공식 SNS</strong></label>
                                    <div class="social-sharing d-flex-center">
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Facebook"><i class="icon an an-facebook m-0 pb-1 px-1"></i><span class="d-none share-title">Facebook</span></a>
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-twitter" data-bs-toggle="tooltip" data-bs-placement="top" title="Tweet on Twitter"><i class="icon an an-twitter m-0 pb-1 px-1"></i><span class="d-none share-title">Tweet</span></a>
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-pinterest" data-bs-toggle="tooltip" data-bs-placement="top" title="Pin on Pinterest"><i class="icon an an-pinterest-p pb-1 m-0 px-1"></i> <span class="d-none share-title">Pin it</span></a>
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-instagram" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Instagram"><i class="icon an an-instagram m-0 pb-1 px-1"></i><span class="d-none share-title">Instagram</span></a>
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-tikTok" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on TikTok"><i class="icon an an-tiktok m-0 pb-1 px-1"></i><span class="d-none share-title">TikTok</span></a>
                                        <a href="#" class="d-flex-center btn btn-link btn--share share-whatsapp" data-bs-toggle="tooltip" data-bs-placement="top" title="Share by Whatsapp"><i class="icon an an-whatsapp m-0 pb-1 px-1"></i><span class="d-none share-title">Whatsapp</span></a>
                                    </div>  
                                </div>
                            </div>
                            <!-- End Contact Details -->
                        </div>
                    </div>
                    <!-- End Contact Form - Details -->
</div>



<%@include file="../member/commonBottom.jsp" %>