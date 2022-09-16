<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="../member/categoryTop.jsp" %>

	<script type="text/javascript" src="//code.jquery.com/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="https://cdn.rawgit.com/poolerMF/bootstrap-multiselectsplitter/master/bootstrap-multiselectsplitter.js"></script>
	<script type="text/javascript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- 오른쪽 상단 아이콘 관련 -->
      <script src="https://kit.fontawesome.com/75769dc150.js" crossorigin="anonymous"></script>
      <script>
        function gotoSellPage(){
        	location.href = "insert.prd";
        }
     </script>
     <style>
	       i {
	    	font-size: 1.2rem;
		}
	</style>
	
	<script type="text/javascript">

	var components = [];

	$(function() {
	
		/* 세부 구성품 추가하는 부분 */
		$('#add_component').click(function(){
			
			var isExistComponent = components.indexOf($('#component_text').val()) != -1;
			/* $('#component_text').val() */
			if($('#component_text').val() != "" && !isExistComponent){
				$(this).parent().parent().parent().append("<div class='row row-cols-3 components'><div class='col' style='padding:10px 10px'>"+ $('#component_text').val() + "</div><div class='col' style='padding:12px 10px'><i class='fa-regular fa-circle-xmark delete_component'  style='cursor:pointer'></i></div><div class='col'></div></div>");
				components.push($('#component_text').val());
				//alert(components);					
			}
			
			$('#component_text').val(""); // 입력하는 곳 초기화
		});//click끝
		
		/* 세부 구성품 삭제하는 부분*/
		$('.col').on('click', '.delete_component', function(){
			$(this).parent().parent().remove();
		});
		

		//var newJquery = $.noConflict(true); // 다른 라이브러리랑 겹칠때 이렇게 해주면 됨.
		$('#openZipSearch').click(function(){
			new daum.Postcode({
				oncomplete: function(data) {
		
					//newJquery('[name=full_address1]').val(data.jibunAddress);
					
					var temp = "";
					
					temp += data.sido;
					temp += " " + data.sigungu;
					if(data.bname1 != ""){
						temp += " " + data.bname1;
					}
					temp += " " + data.bname;
					
					$('[name=full_address]').val(temp);
					
					$('[name=add1_sido]').val(data.sido);
					$('[name=add2_sigungu]').val(data.sigungu);
					$('[name=add3_eubmyeon]').val(data.bname1);
					$('[name=add4_donglee]').val(data.bname);
				}
			}).open();
		});//click끝
		

		
		/* 등록 버튼을 눌렀을 때 */
		$('#submit_button').click(function(){
			
			/* 구성용품 정보를 보내기 위해 hidden 타입의 input을 채워줌 */
			var temp = "";
			
			$('.components').each(function(index){
				
				if(index == 0){
					temp = $(this).children().first().text();
				}else{
					temp += "," + $(this).children().first().text();
				}

			});
			
			$('input[name="components"]').val(temp);
			
			
			/*
			<div class="row row-cols-3 components">
				<div class="col" style="padding:10px 10px">Column</div>
				<div class="col" style="padding:12px 10px"><i class="fa-regular fa-circle-xmark delete_component"  style="cursor:pointer"></i></div>
				<div class="col"></div>
			</div> 
			*/
			
			$('#prd_register_form').submit();
			
		});//click끝 
		
		$('.lcategory').click(function(){
			$('.lcategory').css('color', '');
			$(this).css('color', 'red');
			$('input[name="lcategory_no"]').val($(this).attr('id').split('/')[1]);
		});
		
		
		$('.scategory').click(function(){
			$('.scategory').css('color', '');
			$(this).css('color', 'red');
			$('input[name="scategory_no"]').val($(this).attr('id').split('/')[1]);
		});
	});
	
	
	</script>
	
	<style>
		#att_zone {
			width: 100%;
			min-height: 150px;
			padding: 10px;
			border: 1px solid #D7D7D7;
			border-radius: 10px;
		}
		
		#att_zone:empty:before {
			content: attr(data-placeholder);
			color: #999;
			font-size: .9em;
		}
		
		input[type="text"]{
			width:100%;
		}
	</style>
	
	<style>
		ol li > input{
			width : 100%;
			border: none;
			background: none;
			padding : 10px;
			text-align: left;
		}
		
		ol > li:hover {
			background-color: #F4F4FA;
		}
		
		ol > li:active {
			background-color: #EAE9F1;
		}

	</style>





<!--Collection Banner-->
<div class="collection-header">
	<div class="collection-hero">
		<div class="collection-hero__image" style=""></div>
		<div class="collection-hero__title-wrapper container">
			<h1 class="collection-hero__title">상품등록</h1>
			<div class="breadcrumbs text-uppercase mt-1 mt-lg-2">
				<a href="index.html" title="Back to the home page">홈</a><span>|</span><span
					class="fw-bold">상품등록</span><span>|</span><a href="#"><span>상품관리</span></a>
			</div>
		</div>
	</div>
</div>
<!--End Collection Banner-->

<!--Main Content-->

<form id="prd_register_form" action="insert.prd" method="post" enctype="multipart/form-data">
	

	<div class="container">
		<!-- 상품명 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">상품명</div>
			
			<div class="col col-lg-6">
				<input type="text" name="name" placeholder="상품이름을 입력해 주세요." value="오큘러스 VR">
			</div>
		</div>
		<br>
	
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 83px 10px;">상품 이미지</div>
			
			<div class="col col-lg-6">
				<input type='file' name="upload " id='btnAtt' multiple='multiple' style="width:40%; padding:2px; border: none; border-radius: 0px;"/>
				<div id='att_zone' data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하세요'></div>
			</div>
		</div>
		<br>
		<!-- 카테고리 선택부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 112px 10px;">카테고리</div>
			
			<div class="col col-lg-6">
				<div class="row">
					<div class="col" style="overflow: auto; height: 250px;">
						<ol style="list-style-type: none; padding-left: 0px">
							<li><input type="button" value="여성의류" class="lcategory" id="lcategory/1"></li> <!-- id는 파싱을 위한 용도 -->
							<li><input type="button" value="남성의류" class="lcategory" id="lcategory/2"></li>
							<li><input type="button" value="신발" class="lcategory" id="lcategory/3"></li>
							<li><input type="button" value="가방" class="lcategory" id="lcategory/4"></li>
							<li><input type="button" value="시계/쥬얼리" class="lcategory" id="lcategory/5"></li>
							<li><input type="button" value="패션 액세서리" class="lcategory" id="lcategory/6"></li>
							<li><input type="button" value="디지털/가전" class="lcategory" id="lcategory/7"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/8"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/9"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/10"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/11"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/12"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/13"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/14"></li>
							<li><input type="button" value="스포츠/레저" class="lcategory" id="lcategory/15"></li>
						</ol>
					</div>
	
					<div class="col" style="overflow: auto; height: 250px;">
						<ol style="list-style-type: none; padding-left: 0px">
							<li><input type="button" value="여성의류" class="scategory" id="scategory/1"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/2"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/3"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/4"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/5"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/6"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/7"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/8"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/9"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/10"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/11"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/12"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/13"></li>
							<li><input type="button" value="여성의류" class="scategory" id="scategory/14"></li>
						</ol>
					</div>
				</div>
				
				<input type="hidden" name="lcategory_no" value="">
				<input type="hidden" name="scategory_no" value=""> 
			</div>
		</div>
		<br>
		<!-- 거래지역 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">거래지역</div>
			
			<div class="col col-lg-6">
				<div class="row row-cols-auto">
					<div class="col"><input type="text" name="full_address" style="width: 200px" readonly></div>
    				<div class="col" style="padding:0px"><input type="button" value="집주소"></div>
    				<div class="col"><input type="button" value="새로지정" id="openZipSearch"></div>
  				</div>
				
				
				 
				<input type="hidden" name="add1_sido" value="">		<!-- 도/시 이름 --> 
				<input type="hidden" name="add2_sigungu" value=""> 	<!-- 시/군/구 이름 --> 
				<input type="hidden" name="add3_eubmyeon" value=""> <!-- 법정리의 읍/면 이름 --> 
				<input type="hidden" name="add4_donglee" value=""> <!-- 법정동/법정리 이름 -->
			</div>
		</div>
		<br>
		<!-- 일일렌트가격 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">일일렌트가격</div>
			
			<div class="col col-lg-6">
				<input type="text" name="day_price" placeholder="숫자만 입력해주세요" style="width: 200px" value="6000"> 원
			</div>
		</div>
		<br>
		<!-- 대여가능 최소일수 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">대여가능 최소일수</div>
			
			<div class="col col-lg-6">
				<input type="text" name="rentday_minimum" placeholder="숫자만 입력해주세요" style="width: 200px" value="7"> 일
			</div>
		</div>
		<br>
		<!-- 세부 구성품 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">세부 구성품</div>
			
			<div class="col col-lg-6">
				<div class="row row-cols-auto">
    				<div class="col"><input type="text" id="component_text" placeholder="세부 구성품을 입력해 주세요." style="width: 250px"></div>
    				<div class="col" style="padding:0px"><input type="button" id="add_component" value="+"></div>
  				</div>
  				
  				<!-- 
  				<div class="row row-cols-3 components">
					<div class="col" style="padding:10px 10px">Column</div>
					<div class="col" style="padding:12px 10px"><i class="fa-regular fa-circle-xmark delete_component"  style="cursor:pointer"></i></div>
					<div class="col"></div>
				</div> 
  				-->
				
				<input type="hidden" name="components" value="">
			</div>
		</div>
		<br>
		<!-- 상세설명 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 38px 10px;">상세설명</div>
			
			<div class="col col-lg-6">
				<textarea name="description" placeholder="내용을 입력해 주세요." style="width: 100%; height: 6.25em; resize: none;">지금 당장 체험해보세요</textarea>
			</div>
		</div>
		<br>
		<!-- 게시종료 예정일자 입력부분 -->
		<div class="row justify-content-md-center">
			<div class="col col-lg-2" style="padding : 10px 10px;">게시종료 예정일자</div>
			
			<div class="col col-lg-6">
				<input type="date" name="end_day" style="width: 140px">
			</div>
		</div>
		<br>
		
		<div class="row justify-content-md-center">
			<div class="col col-lg-8">
				<input type="button" id="submit_button" value="등록하기">	
			</div>
		</div>
		
		
	</div>
</form>



<!-- 내 코드가 위치하면 되는 곳 -->

	
		


	


	<script type="text/javascript">
						( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
						  imageView = function imageView(att_zone, btn){
						
						    var attZone = document.getElementById(att_zone);
						    var btnAtt = document.getElementById(btn)
						    var sel_files = [];
						    
						    // 이미지와 체크 박스를 감싸고 있는 div 속성
						    var div_style = 'display:inline-block;position:relative;'
						                  + 'width:31%;height:160px;margin:7px;border:1px solid #D7D7D7;z-index:1';
						    // 미리보기 이미지 속성
						    var img_style = 'width:100%;height:100%;z-index:none;';
						    
						    // 이미지안에 표시되는 체크박스의 속성
						    var chk_style = 'width:30px; height:30px; position:absolute; font-size:24px;'
						                  + 'right: 0px; bottom:0px; z-index:999; color:#8C8C8C; cursor:pointer;';
						  
						    btnAtt.onchange = function(e){
						      var files = e.target.files;
						      var fileArr = Array.prototype.slice.call(files)
						      for(f of fileArr){
						        imageLoader(f);
						      }
						    }
						    
						    /*첨부된 이미리를을 배열에 넣고 미리보기 */
						    imageLoader = function(file){
						      sel_files.push(file);
						      var reader = new FileReader();
						      reader.onload = function(ee){
						        let img = document.createElement('img')
						        img.setAttribute('style', img_style)
						        img.src = ee.target.result;
						        attZone.appendChild(makeDiv(img, file));
						      }
						      
						      reader.readAsDataURL(file);
						    }
						    
						    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
						    makeDiv = function(img, file){
						      var div = document.createElement('div')
						      div.setAttribute('style', div_style)
						      
						      /* 
						      var btn = document.createElement('input') 
						      btn.setAttribute('type', 'button')
						      btn.setAttribute('value', 'x')
						      btn.setAttribute('delFile', file.name);
						      btn.setAttribute('style', chk_style);
						       */
						      
						      /* 이미지 오른편에 보여지는 X표시 버튼 */
						      var btn = document.createElement('i');
						      btn.setAttribute('class', 'fa-solid fa-square-xmark');
						      btn.setAttribute('delFile', file.name); /* 이게 있어야 삭제가능 */
						      btn.setAttribute('style', chk_style);
						      
						      /* 삭제 버튼이 눌릴 경우 이벤트 처리 */
						      btn.onclick = function(ev){
						        var ele = ev.srcElement;
						        var delFile = ele.getAttribute('delFile');
						        for(var i=0 ;i<sel_files.length; i++){
						          if(delFile== sel_files[i].name){
						            sel_files.splice(i, 1);      
						          }
						        }
						        
						        dt = new DataTransfer();
						        for(f in sel_files) {
						          var file = sel_files[f];
						          dt.items.add(file);
						        }
						        btnAtt.files = dt.files;
						        var p = ele.parentNode;
						        attZone.removeChild(p)
						      }
						      div.appendChild(img)
						      div.appendChild(btn)
						      return div
						    }
						  }
						)('att_zone', 'btnAtt')
					
						</script>


	<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->


	<!--End Body Container-->

	<!--Footer-->
	<div class="footer footer-1">
		<div class="footer-top clearfix">
			<div class="container">
				<div class="row">
					<div
						class="col-12 col-sm-12 col-md-12 col-lg-12 text-center about-col mb-4">
						<img src="resources/assets/images/footer-logo.png" alt="Optimal"
							class="mb-3" />
						<p>55 Gallaxy Enque, 2568 steet, 23568 NY</p>
						<p class="mb-0 mb-md-3">
							Phone: <a href="tel:+011234567890">(+01) 123 456 7890</a> <span
								class="mx-1">|</span> Email: <a href="mailto:info@example.com">info@example.com</a>
						</p>
					</div>
				</div>
				<div class="row">
					<div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
						<h4 class="h4">Informations</h4>
						<ul>
							<li><a href="my-account.html">My Account</a></li>
							<li><a href="aboutus-style1.html">About us</a></li>
							<li><a href="login.html">Login</a></li>
							<li><a href="privacy-policy.html">Privacy policy</a></li>
							<li><a href="#">Terms &amp; condition</a></li>
						</ul>
					</div>
					<div class="col-12 col-sm-12 col-md-4 col-lg-2 footer-links">
						<h4 class="h4">Quick Shop</h4>
						<ul>
							<li><a href="#">Women</a></li>
							<li><a href="#">Men</a></li>
							<li><a href="#">Kids</a></li>
							<li><a href="#">Sportswear</a></li>
							<li><a href="#">Sale</a></li>
						</ul>
					</div>
					<div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
						<h4 class="h4">Customer Services</h4>
						<ul>
							<li><a href="#">Request Personal Data</a></li>
							<li><a href="faqs-style1.html">FAQ's</a></li>
							<li><a href="contact-style1.html">Contact Us</a></li>
							<li><a href="#">Orders and Returns</a></li>
							<li><a href="#">Support Center</a></li>
						</ul>
					</div>
					<div class="col-12 col-sm-12 col-md-12 col-lg-4 newsletter-col">
						<div class="display-table pt-md-3 pt-lg-0">
							<div class="display-table-cell footer-newsletter">
								<form action="#" method="post">
									<label class="h4">NEWSLETTER SIGN UP</label>
									<p>Enter Your Email To Receive Daily News And Get 20% Off
										Coupon For All Items.</p>
									<div class="input-group">
										<input type="email"
											class="brounded-start input-group__field newsletter-input mb-0"
											name="EMAIL" value="" placeholder="Email address" required>
										<span class="input-group__btn">
											<button type="submit"
												class="btn newsletter__submit rounded-end" name="commit"
												id="Subscribe">
												<i class="an an-envelope-l"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
						</div>
						<ul class="list-inline social-icons mt-3 pt-1">
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top"
								title="Facebook"><i class="an an-facebook"
									aria-hidden="true"></i></a></li>
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i
									class="an an-twitter" aria-hidden="true"></i></a></li>
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top"
								title="Pinterest"><i class="an an-pinterest-p"
									aria-hidden="true"></i></a></li>
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top"
								title="Instagram"><i class="an an-instagram"
									aria-hidden="true"></i></a></li>
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top" title="TikTok"><i
									class="an an-tiktok" aria-hidden="true"></i></a></li>
							<li class="list-inline-item"><a href="#"
								data-bs-toggle="tooltip" data-bs-placement="top"
								title="Whatsapp"><i class="an an-whatsapp"
									aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom clearfix">
			<div class="container">
				<div
					class="d-flex-center flex-column justify-content-md-between flex-md-row-reverse">
					<img src="resources/assets/images/payment.png"
						alt="Paypal Visa Payments" />
					<div class="copytext text-uppercase">&copy; 2022 Optimal. All
						Rights Reserved.</div>
				</div>
			</div>
		</div>
	</div>
	<!--End Footer-->

	<!--Scoll Top-->
	<span id="site-scroll"><i class="icon an an-chevron-up"></i></span>
	<!--End Scoll Top-->

	<!--MiniCart Drawer-->
	<div class="minicart-right-drawer modal right fade"
		id="minicart-drawer">
		<div class="modal-dialog">
			<div class="modal-content">
				<div id="cart-drawer" class="block block-cart">
					<div class="minicart-header">
						<a href="javascript:void(0);" class="close-cart"
							data-bs-dismiss="modal" aria-label="Close"><i
							class="an an-times-r" aria-hidden="true" data-bs-toggle="tooltip"
							data-bs-placement="left" title="Close"></i></a>
						<h4 class="fs-6">Your cart (2 Items)</h4>
					</div>
					<div class="minicart-content">
						<ul class="clearfix">
							<li class="item d-flex justify-content-center align-items-center">
								<a class="product-image" href="product-layout1.html"> <img
									class="blur-up lazyload"
									src="resources/assets/images/products/cart-product-img1.jpg"
									data-src="resources/assets/images/products/cart-product-img1.jpg"
									alt="image" title="">
							</a>
								<div class="product-details">
									<a class="product-title" href="product-layout1.html">Floral
										Crop Top</a>
									<div class="variant-cart">Black / XL</div>
									<div class="priceRow">
										<div class="product-price">
											<span class="money">$59.00</span>
										</div>
									</div>
								</div>
								<div class="qtyDetail text-center">
									<div class="wrapQtyBtn">
										<div class="qtyField">
											<a class="qtyBtn minus" href="javascript:void(0);"><i
												class="icon an an-minus-r" aria-hidden="true"></i></a> <input
												type="text" name="quantity" value="1" class="qty"> <a
												class="qtyBtn plus" href="javascript:void(0);"><i
												class="icon an an-plus-l" aria-hidden="true"></i></a>
										</div>
									</div>
									<a href="#" class="edit-i remove"><i
										class="icon an an-edit-l" data-bs-toggle="tooltip"
										data-bs-placement="top" title="Edit"></i></a> <a href="#"
										class="remove"><i class="an an-times-r"
										data-bs-toggle="tooltip" data-bs-placement="top"
										title="Remove"></i></a>
								</div>
							</li>
							<li class="item d-flex justify-content-center align-items-center">
								<a class="product-image" href="product-layout1.html"> <img
									class="blur-up lazyload"
									src="resources/assets/images/products/cart-product-img1.jpg"
									data-src="resources/assets/images/products/cart-product-img1.jpg"
									alt="image" title="">
							</a>
								<div class="product-details">
									<a class="product-title" href="product-layout1.html">V Neck
										T-shirts</a>
									<div class="variant-cart">Blue / XL</div>
									<div class="priceRow">
										<div class="product-price">
											<span class="money">$199.00</span>
										</div>
									</div>
								</div>
								<div class="qtyDetail text-center">
									<div class="wrapQtyBtn">
										<div class="qtyField">
											<a class="qtyBtn minus" href="javascript:void(0);"><i
												class="icon an an-minus-r" aria-hidden="true"></i></a> <input
												type="text" name="quantity" value="1" class="qty"> <a
												class="qtyBtn plus" href="javascript:void(0);"><i
												class="icon an an-plus-l" aria-hidden="true"></i></a>
										</div>
									</div>
									<a href="#" class="edit-i remove"><i
										class="icon an an-edit-l" data-bs-toggle="tooltip"
										data-bs-placement="top" title="Edit"></i></a> <a href="#"
										class="remove"><i class="an an-times-r"
										data-bs-toggle="tooltip" data-bs-placement="top"
										title="Remove"></i></a>
								</div>
							</li>
						</ul>
					</div>
					<div class="minicart-bottom">
						<div class="shipinfo text-center mb-3 text-uppercase">
							<p class="freeShipMsg">
								<i class="an an-truck fs-5 me-2 align-middle"></i>SPENT <b>$199.00</b>
								MORE FOR FREE SHIPPING
							</p>
						</div>
						<div class="subtotal">
							<span>Total:</span> <span class="product-price">$93.13</span>
						</div>
						<a href="checkout-style1.html"
							class="w-100 p-2 my-2 btn btn-outline-primary proceed-to-checkout rounded">Proceed
							to Checkout</a> <a href="cart-style1.html"
							class="w-100 btn-primary cart-btn rounded">View Cart</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--End MiniCart Drawer-->
	<div class="modalOverly"></div>


	<!-- Including Jquery -->
	<script src="resources/assets/js/vendor/jquery-min.js"></script>
	<script src="resources/assets/js/vendor/js.cookie.js"></script>
	<!--Including Javascript-->
	<script src="resources/assets/js/plugins.js"></script>
	<script src="resources/assets/js/main.js"></script>

	<!--Including Tagsinput-->
	<script src="resources/assets/js/vendor/bootstrap-tagsinput.js"></script>
	<script>
                $(document).ready(function () {
                    $("#inputTag").tagsinput('items');
                });
            </script>

	<!--Including editor tinymce-->
	<script src="resources/assets/js/vendor/tinymce.min.js"></script>
	<script>
                $(document).ready(function () {
                    tinymce.init({
                        selector: '#editor',
                        menubar: false,
                        statusbar: false,
                        plugins: 'autoresize anchor autolink charmap code codesample directionality fullpage help hr image imagetools insertdatetime link lists media nonbreaking pagebreak preview print searchreplace table template textpattern toc visualblocks visualchars',
                        toolbar: 'h1 h2 bold italic strikethrough blockquote bullist numlist backcolor | link image media | removeformat help fullscreen ',
                        skin: 'bootstrap',
                        toolbar_drawer: 'floating',
                        min_height: 200,
                        autoresize_bottom_margin: 16
                    });
                });
            </script>

</div>
<!--End Page Wrapper-->
	</body>
	</html>