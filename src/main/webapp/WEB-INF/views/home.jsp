<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@include file="../common/common.jsp" %>
<%
	String id = (String)session.getAttribute("id"); // 아이디
	System.out.println("id : "+id); 
%>
<c:set var="id" value="<%=id %>"></c:set>
<html lang="ko">
    <head>
        <!--Required Meta Tags-->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="description">
        
        <!-- Title Of Site -->
        <title>Billy A Dream</title>
        
        <!-- Favicon -->
        <link rel="shortcut icon" href="resources/assets/images/favicon.png" />
        
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="resources/assets/css/plugins.css" />
        
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="resources/assets/css/style.css" />
        <link rel="stylesheet" href="resources/assets/css/responsive.css" />
        
        <!-- 오른쪽 상단 아이콘 관련 -->
        <script src="https://kit.fontawesome.com/75769dc150.js" crossorigin="anonymous"></script>
        <script>
        	function gotoSellPage(){
        		if($('#id').val()=="null"){
        			if(confirm("로그인이 필요한 페이지입니다. \n 로그인 하시겠습니까?")){
        				location.href="login.mb";	
        			}
        			return false;
        		}
        		else{
        			
        			location.href = "insert.prd";

        		}
        	}
        	function chat(){
        		if($('#id').val()=="null"){
        			if(confirm("로그인이 필요한 페이지입니다. \n 로그인 하시겠습니까?")){
        				location.href="login.mb";	
        			}
        			return false;
        		}
        		else{
        			
        			location.href = "allchatting.mb";

        		}
        	}
        	
        	function kakaoTalk(){
        		var idx = "${eduVO.idx}";
    		    var windowW = 550;
    		    var windowH = 650;
    		    var winHeight = document.body.clientHeight;
    		    var winWidth = document.body.clientWidth;
    		    var winX = window.screenX || window.screenLeft || 0;
    		    var winY = window.screenY || window.screenTop || 0;
    		    var popX = winX + (winWidth - windowW)/2;
    		    var popY = winY + (winHeight - windowH)/2;
        		
        		window.open("http://pf.kakao.com/_pxcHuxj/chat","카카오톡 상담하기","width=" + windowW + ", height=" + windowH + ", scrollbars=no, menubar=no, top=" + popY + ", left=" + popX);
        	}
        	function mypage(){
        		if($('#id').val()=="null"){
        			if(confirm("로그인이 필요한 페이지입니다. \n 로그인 하시겠습니까?")){
        				location.href="login.mb";	
        			}
        			return false;
        		}
        		else{
        			
        			location.href = "mypage.mb";

        		}
        	}
        	
        	
        </script>
        <style>
	        i {
	    		font-size: 1rem;
			}
		</style>
		
    </head>



    <body class="template-index index-demo20">
        <!-- Page Loader -->
        <div id="pre-loader"><img src="resources/assets/images/loader.gif" alt="Loading..." /></div>
        <!-- End Page Loader -->

        <!--Page Wrapper-->
        <div class="page-wrapper">

            <!--Header wrap-->
            <div class="header-main header-18">
                <!--Header-->
                <header id="header" class="header header-wrap d-flex align-items-center">
                    <div class="container">        
                        <div class="row">
                            <!--Logo / Menu Toggle-->
                            <div class="col-6 col-sm-6 col-md-6 col-lg-2 align-self-center justify-content-start d-flex">
                                <!--Mobile Toggle-->
                                <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open me-3 d-lg-none"><i class="icon an an-times-l"></i><i class="icon an an-bars-l"></i></button>
                                <!--End Mobile Toggle-->
                                <!--Logo-->
                                <div class="logo"><a href="/ex/"><img class="logo-img mh-100" src="resources/assets/images/logo-demo20.png" alt="Optimal Multipurpose eCommerce Bootstrap 5 Html Template" title="Optimal Multipurpose eCommerce Bootstrap 5 Html Template" width="120" /><span class="logo-txt d-none">Optimal</span></a></div>
                                <!--End Logo-->
                            </div>
                            <!--End Logo / Menu Toggle-->
                            <!--Search Inline-->
                            <div class="col-1 col-sm-1 col-md-1 col-lg-8 d-none d-lg-block">
                                <form class="form minisearch search-inline px-5" id="header-search1" action="#" method="get">
                                	<input type="hidden" id="id" id="id" value="<%=id %>">
                                    <label class="label d-none"><span>Search</span></label>
                                    <div class="control">
                                        <div class="searchField d-flex">
                                            <div class="search-category">
                                                <select id="rgsearch-category1" name="rgsearch[category]" data-default="All Categories" class="rounded-pill-start">
                                                    <option value="00" label="All Categories" selected="selected">All Categories</option>
                                                    <optgroup id="rgsearch-shop1" label="Shop">
                                                        <option value="0">- All</option>
                                                        <option value="1">- Men</option>
                                                        <option value="2">- Women</option>
                                                        <option value="3">- Shoes</option>
                                                        <option value="4">- Blouses</option>
                                                        <option value="5">- Pullovers</option>
                                                        <option value="6">- Bags</option>
                                                        <option value="7">- Accessories</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                            <div class="input-box d-flex w-100">
                                                <input type="text" name="q" value="" placeholder="Search products or #" class="input-text rounded-0 border-start-0 border-end-0">
                                                <button type="submit" title="Search" class="action search rounded-pill-end"><i class="icon an an-search-l"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--End Search Inline-->
                            <!--Right Action-->
                            <div class="col-6 col-sm-6 col-md-6 col-lg-2 align-self-center icons-col text-right d-flex justify-content-end">
                                <!--Search-->
                                <div class="site-search iconset d-block d-lg-none"><i class="icon an an-search-l"></i><span class="tooltip-label">Search</span></div>
                                <!--End Search-->
                                <!--Wishlist-->
                                <div class="wishlist-link iconset d-none"><i class="icon an an-heart-l"></i><span class="wishlist-count counter d-flex-center justify-content-center position-absolute translate-middle rounded-circle">0</span><span class="tooltip-label">Wishlist</span></div>
                                <!--End Wishlist-->
                                <!--Setting Dropdown-->
                                
                                <!-- 상단 오른편 판매하기 버튼 -->
                                <div class="iconset flex-lg-column">
	                                	<i class="fa-solid fa-won-sign" onClick="gotoSellPage()"></i>
	                                	<span class="text d-none d-lg-flex" onClick="gotoSellPage()">판매하기</span>
                                </div>
                               
                                   <!-- 상단 오른편 판매하기 버튼 -->
                                <div class="iconset flex-lg-column">
	                                	<i class="fa-regular fa-comment"></i>
	                                	<span class="text d-none d-lg-flex" onClick="chat()">채팅</span>
                                </div>
                                
                                <!-- 상단 오른편 마이페이지 버튼 -->
                                <div class="user-link iconset flex-lg-column">
                                	<i class="fa-regular fa-user">
                                		</i><span class="text d-none d-lg-flex" onclick="mypage()">마이페이지</span>
                                </div>
                                <%-- <div id="userLinks" class="mt-lg-3">
                                    <ul class="user-links">
                                    	<c:if test="${id == null}">
                                        	<li><a href="register.mb">회원가입</a></li>
                                    	</c:if>
                                    	<c:if test="${not empty id }">
                                        	<li><a href="mypage.mb?id=<%=id%>">마이페이지</a></li>
                                        	<li><a href="my-wishlist.mb">관심목록</a></li>
                                    	</c:if>
                                    </ul>
                                </div> --%>
                                
                                    <!-- 상단 오른편 로그인,로그아웃 버튼 -->
                                <c:if test="${id == null}">
                                <div class="iconset flex-lg-column">
	                                	<i class="fa-solid fa-lock-open"></i>
	                                	<span class="text d-none d-lg-flex" onClick="location.href='login.mb'">로그인</span>
                                </div>
                                </c:if>
                                 <c:if test="${id != null}">
                                <div class="iconset flex-lg-column">
	                                	<i class="fa-solid fa-lock"></i>
	                                	<span class="text d-none d-lg-flex" onClick="location.href='out.mb'">로그아웃</span>
                                </div>
                                </c:if>
                                <!--End Setting Dropdown-->
                                
                                <!--Setting Dropdown-->

                                
                                <div id="settingsBox" class="mt-lg-3">
                                    <div class="currency-picker">
                                        <span class="ttl">Select Currency</span>
                                        <ul id="currencies" class="cnrLangList">
                                            <li class="selected"><a href="#;" class="active">INR</a></li><li><a href="#;">GBP</a></li><li><a href="#;">CAD</a></li><li><a href="#;">USD</a></li><li><a href="#;">AUD</a></li><li><a href="#;">EUR</a></li><li><a href="#;">JPY</a></li>
                                        </ul>
                                    </div>
                                    <div class="language-picker">
                                        <span class="ttl">SELECT LANGUAGE</span>
                                        <ul id="language" class="cnrLangList">
                                            <li><a href="#" class="active">English</a></li><li><a href="#">French</a></li><li><a href="#">German</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!--End Setting Dropdown-->
                            </div>
                            <!--End Right Action-->
                        </div>
                    </div>
                    <!--Search Popup-->
                    <div id="search-popup" class="search-drawer">
                        <div class="container">
                            <span class="closeSearch an an-times-l"></span>
                            <form class="form minisearch" id="header-search" action="#" method="get">
                                <label class="label"><span>Search</span></label>
                                <div class="control">
                                    <div class="searchField">
                                        <div class="search-category">
                                            <select id="rgsearch-category" name="rgsearch[category]" data-default="All Categories">
                                                <option value="00" label="All Categories" selected="selected">All Categories</option>
                                                <optgroup id="rgsearch-shop" label="Shop">
                                                    <option value="0">- All</option>
                                                    <option value="1">- Men</option>
                                                    <option value="2">- Women</option>
                                                    <option value="3">- Shoes</option>
                                                    <option value="4">- Blouses</option>
                                                    <option value="5">- Pullovers</option>
                                                    <option value="6">- Bags</option>
                                                    <option value="7">- Accessories</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                        <div class="input-box">
                                            <button type="submit" title="Search" class="action search rounded-0"><i class="icon an an-search-l"></i></button>
                                            <input type="text" name="q" value="" placeholder="Search by keyword or #" class="input-text rounded-0">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--End Search Popup-->
                </header>
                <!--End Header-->
                <!--Main Navigation Desktop-->
                <div class="menu-outer d-none d-lg-block">
                    <div class="container">
                        <div class="row">
                            <div class="col-1 col-sm-1 col-md-1 col-lg-12 align-self-center d-menu-col">                            
                                <nav class="grid__item" id="AccessibleNav">
                                    <ul id="siteNav" class="site-nav medium center hidearrow">
                                        <li class="lvl1 parent megamenu"><a href="#;">Home <i class="an an-angle-down-l"></i></a>
                                            <div class="megamenu style1">
                                                <div class="row">
                                                    <div class="col-md-8 col-lg-8">
                                                        <div class="row">
                                                            <div class="lvl-1 col-md-5 col-lg-4">
                                                                <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                <ul class="subLinks">
                                                                    <li class="lvl-2"><a href="index.html" class="site-nav lvl-2">Home 01 - Default</a></li>
                                                                    <li class="lvl-2"><a href="index-demo2.html" class="site-nav lvl-2">Home 02 - Minimal</a></li>
                                                                    <li class="lvl-2"><a href="index-demo3.html" class="site-nav lvl-2">Home 03 - Colorful</a></li>
                                                                    <li class="lvl-2"><a href="index-demo4.html" class="site-nav lvl-2">Home 04 - Modern</a></li>
                                                                    <li class="lvl-2"><a href="index-demo5.html" class="site-nav lvl-2">Home 05 - Kids Clothing</a></li>
                                                                    <li class="lvl-2"><a href="index-demo6.html" class="site-nav lvl-2">Home 06 - Single Product</a></li>
                                                                    <li class="lvl-2"><a href="index-demo7.html" class="site-nav lvl-2">Home 07 - Glamour</a></li>
                                                                    <li class="lvl-2"><a href="index-demo8.html" class="site-nav lvl-2">Home 08 - Simple</a></li>
                                                                    <li class="lvl-2"><a href="index-demo9.html" class="site-nav lvl-2">Home 09 - Cool <span class="lbl nm_label1">Hot</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo10.html" class="site-nav lvl-2">Home 10 - Cosmetic</a></li>
                                                                </ul>
                                                            </div>
                                                            <div class="lvl-1 col-md-5 col-lg-4">
                                                                <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                <ul class="subLinks">
                                                                    <li class="lvl-2"><a href="index-demo11.html" class="site-nav lvl-2">Home 11 - Pets <span class="lbl nm_label3">Popular</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo12.html" class="site-nav lvl-2">Home 12 - Tools & Parts</a></li>
                                                                    <li class="lvl-2"><a href="index-demo13.html" class="site-nav lvl-2">Home 13 - Watches <span class="lbl nm_label1">Hot</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo14.html" class="site-nav lvl-2">Home 14 - Food</a></li>
                                                                    <li class="lvl-2"><a href="index-demo15.html" class="site-nav lvl-2">Home 15 - Christmas</a></li>
                                                                    <li class="lvl-2"><a href="index-demo16.html" class="site-nav lvl-2">Home 16 - Phone Case</a></li>
                                                                    <li class="lvl-2"><a href="index-demo17.html" class="site-nav lvl-2">Home 17 - Jewelry</a></li>
                                                                    <li class="lvl-2"><a href="index-demo18.html" class="site-nav lvl-2">Home 18 - Bag <span class="lbl nm_label3">Popular</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo19.html" class="site-nav lvl-2">Home 19 - Swimwear</a></li>
                                                                    <li class="lvl-2"><a href="index-demo20.html" class="site-nav lvl-2">Home 20 - Furniture <span class="lbl nm_label2">New</span></a></li>
                                                                </ul>
                                                            </div>
                                                            <div class="lvl-1 col-md-5 col-lg-4">
                                                                <a href="#" class="site-nav lvl-1 menu-title">Home Styles</a>
                                                                <ul class="subLinks">
                                                                    <li class="lvl-2"><a href="index-demo21.html" class="site-nav lvl-2">Home 21 - Party Supplies <span class="lbl nm_label2">New</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo22.html" class="site-nav lvl-2">Home 22 - Digital <span class="lbl nm_label2">New</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo23.html" class="site-nav lvl-2">Home 23 - Vogue <span class="lbl nm_label2">New</span></a></li>
                                                                    <li class="lvl-2"><a href="index-demo24.html" class="site-nav lvl-2">Home 24 - Glamour <span class="lbl nm_label2">New</span></a></li>
                                                                </ul>

                                                                <div class="row mm-Banners mt-3">
                                                                    <div class="col-md-12 col-lg-12 imageCol text-center">
                                                                        <div class="menubox position-relative">
                                                                            <a href="index-demo5.html" class="mb-0"><img class="blur-up lazyload" src="resources/assets/images/megamenu/megamenu-banner7.png" data-src="resources/assets/images/megamenu/megamenu-banner7.png" alt="image"/></a>
                                                                            <p class="position-absolute bottom-0 start-50 translate-middle-x"><a href="index-demo5.html" class="title text-uppercase mb-3">Kids Store</a></p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 col-lg-4">
                                                        <div class="row mm-Banners">
                                                            <div class="col-md-12 col-lg-12 imageCol text-center">
                                                                <div class="menubox position-relative">
                                                                    <a href="index-demo6.html" class="mb-0"><img class="blur-up lazyload" src="resources/assets/images/megamenu/megamenu-banner8.png" data-src="resources/assets/images/megamenu/megamenu-banner8.png" alt="image"/></a>
                                                                    <p class="position-absolute bottom-0 start-50 translate-middle-x"><a href="index-demo6.html" class="title text-uppercase">Single Product Layout</a></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="lvl1 parent dropdown"><a href="#;">카테고리 <i class="an an-angle-down-l"></i></a>
                                            <!-- foreach -->
                                            <ul class="dropdown">
                                            <c:forEach items="${lists }" var="firstList" varStatus="j">
                                                
                                                	<li>
                                                	<a href="aboutus-style1.html" class="site-nav">대분류 : ${firstList.key} <i class="an an-angle-right-l"></i></a>
                                                
                                                    <ul class="dropdown">
												<c:forEach items="${firstList.value }" var="scate" varStatus="i">
                                                       
                                                        <li><a href="aboutus-style1.html" class="site-nav last"> ${scate.name }</a></li>
                                                        
                                            	</c:forEach>
                                                    
                                                    </ul>
                                                
                                                	</li>
                                                
											</c:forEach>
                                            </ul>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="#;">Shop <i class="an an-angle-down-l"></i></a>
                                            <div class="megamenu style4">
                                                <div class="row">
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Category Page</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="productdetail.prd?no=5" class="site-nav lvl-2">상세페이지</a></li>
                                                            <li class="lvl-2"><a href="category-3columns.html" class="site-nav lvl-2">3 Columns with style2</a></li>
                                                            <li class="lvl-2"><a href="category-4columns.html" class="site-nav lvl-2">4 Columns with style3</a></li>
                                                            <li class="lvl-2"><a href="category-5columns.html" class="site-nav lvl-2">5 Columns with style4</a></li>
                                                            <li class="lvl-2"><a href="category-6columns.html" class="site-nav lvl-2">6 Columns with Fullwidth</a></li>
                                                            <li class="lvl-2"><a href="category-7columns.html" class="site-nav lvl-2">7 Columns</a></li>
                                                            <li class="lvl-2"><a href="empty-category.html" class="site-nav lvl-2">Category Empty</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Page</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Left Sidebar</a></li>
                                                            <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Right Sidebar</a></li>
                                                            <li class="lvl-2"><a href="shop-top-filter.html" class="site-nav lvl-2">Top Filter</a></li>
                                                            <li class="lvl-2"><a href="shop-fullwidth.html" class="site-nav lvl-2">Fullwidth</a></li>
                                                            <li class="lvl-2"><a href="shop-no-sidebar.html" class="site-nav lvl-2">Without Filter</a></li>
                                                            <li class="lvl-2"><a href="shop-listview-sidebar.html" class="site-nav lvl-2">List View</a></li>
                                                            <li class="lvl-2"><a href="shop-listview-drawer.html" class="site-nav lvl-2">List View Drawer</a></li>
                                                            <li class="lvl-2"><a href="shop-category-slideshow.html" class="site-nav lvl-2">Category Slideshow</a></li>
                                                            <li class="lvl-2"><a href="shop-heading-with-banner.html" class="site-nav lvl-2">Headings With Banner</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Page</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="shop-sub-collections.html" class="site-nav lvl-2">Sub Collection List <span class="lbl nm_label5">Hot</span></a></li>
                                                            <li class="lvl-2"><a href="shop-masonry-grid.html" class="site-nav lvl-2">Shop Masonry Grid</a></li>
                                                            <li class="lvl-2"><a href="shop-left-sidebar.html" class="site-nav lvl-2">Shop Countdown</a></li>
                                                            <li class="lvl-2"><a href="shop-hover-info.html" class="site-nav lvl-2">Shop Hover Info</a></li>
                                                            <li class="lvl-2"><a href="shop-right-sidebar.html" class="site-nav lvl-2">Infinite Scrolling</a></li>
                                                            <li class="lvl-2"><a href="shop-fullwidth.html" class="site-nav lvl-2">Classic Pagination</a></li>
                                                            <li class="lvl-2"><a href="shop-swatches-style.html" class="site-nav lvl-2">Swatches Style</a></li>
                                                            <li class="lvl-2"><a href="shop-grid-style.html" class="site-nav lvl-2">Grid Style</a></li>
                                                            <li class="lvl-2"><a href="shop-search-results.html" class="site-nav lvl-2">Search Results</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Shop Other Page</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="my-wishlist.html" class="site-nav lvl-2">My Wishlist Style1</a></li>
                                                            <li class="lvl-2"><a href="my-wishlist-style2.html" class="site-nav lvl-2">My Wishlist Style2</a></li>
                                                            <li class="lvl-2"><a href="compare-style1.html" class="site-nav lvl-2">Compare Page Style1</a></li>
                                                            <li class="lvl-2"><a href="compare-style2.html" class="site-nav lvl-2">Compare Page Style2</a></li>
                                                            <li class="lvl-2"><a href="cart-style1.html" class="site-nav lvl-2">Cart Page Style1</a></li>
                                                            <li class="lvl-2"><a href="cart-style2.html" class="site-nav lvl-2">Cart Page Style2</a></li>
                                                            <li class="lvl-2"><a href="checkout-style1.html" class="site-nav lvl-2">Checkout Page Style1</a></li>
                                                            <li class="lvl-2"><a href="checkout-style2.html" class="site-nav lvl-2">Checkout Page Style2</a></li>
                                                            <li class="lvl-2"><a href="checkout-success.html" class="site-nav lvl-2">Checkout Success</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="row clear mt-4">
                                                    <div class="col-md-3 col-lg-3">
                                                        <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" data-src="resources/assets/images/megamenu/megamenu-banner4-1.jpg" alt="image"/></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="#;">Product <i class="an an-angle-down-l"></i></a>
                                            <div class="megamenu style2">
                                                <div class="row">
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Product Types</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="product-standard.html" class="site-nav lvl-2">Simple Product</a></li>
                                                            <li class="lvl-2"><a href="product-variable.html" class="site-nav lvl-2">Variable Product</a></li>
                                                            <li class="lvl-2"><a href="product-grouped.html" class="site-nav lvl-2">Grouped Product</a></li>
                                                            <li class="lvl-2"><a href="product-external-affiliate.html" class="site-nav lvl-2">External / Affiliate Product</a></li>
                                                            <li class="lvl-2"><a href="product-outofstock.html" class="site-nav lvl-2">Out Of Stock Product</a></li>
                                                            <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">New Product</a></li>
                                                            <li class="lvl-2"><a href="product-layout2.html" class="site-nav lvl-2">Sale Product</a></li>
                                                            <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">Variable Image</a></li>
                                                            <li class="lvl-2"><a href="product-accordian.html" class="site-nav lvl-2">Variable Select</a></li>
                                                            <li class="lvl-2"><a href="prodcut-360-degree-view.html" class="site-nav lvl-2">360 Degree view</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Product Page</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="product-layout1.html" class="site-nav lvl-2">Product Layout1</a></li>
                                                            <li class="lvl-2"><a href="product-layout2.html" class="site-nav lvl-2">Product Layout2</a></li>
                                                            <li class="lvl-2"><a href="product-layout3.html" class="site-nav lvl-2">Product Layout3</a></li>
                                                            <li class="lvl-2"><a href="product-layout4.html" class="site-nav lvl-2">Product Layout4</a></li>
                                                            <li class="lvl-2"><a href="product-layout5.html" class="site-nav lvl-2">Product Layout5</a></li>
                                                            <li class="lvl-2"><a href="product-layout6.html" class="site-nav lvl-2">Product Layout6</a></li>
                                                            <li class="lvl-2"><a href="product-layout7.html" class="site-nav lvl-2">Product Layout7</a></li>
                                                            <li class="lvl-2"><a href="product-accordian.html" class="site-nav lvl-2">Product Accordian</a></li>
                                                            <li class="lvl-2"><a href="product-tabs-left.html" class="site-nav lvl-2">Product Tabs Left</a></li>
                                                            <li class="lvl-2"><a href="product-tabs-center.html" class="site-nav lvl-2">Product Tabs Center</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3"><a href="#" class="site-nav lvl-1 menu-title">Top Brands</a>
                                                        <div class="menu-brand-logo">
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                        </div>
                                                        <div class="menu-brand-logo">
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                            <a href="brands-style2.html"><img src="resources/assets/images/logo/brandlogo1.png" alt="image"/></a>
                                                        </div>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3 p-0">
                                                        <a href="shop-left-sidebar.html"><img src="resources/assets/images/megamenu/megamenu-banner3.jpg" alt="image"/></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="#;">Collections <i class="an an-angle-down-l"></i></a>
                                            <div class="megamenu style5 container">
                                                <ul class="row mmWrapper">
                                                    <li class="lvl-1 col-md-3 col-lg-3">
                                                        <a href="shop-heading-with-banner.html" class="catalogueImg mb-3"><img src="resources/assets/images/megamenu/collection-1.jpg" alt="image" /></a>
                                                        <a href="shop-heading-with-banner.html" class="site-nav lvl-1 menu-title">Bedding</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="#" class="site-nav">Bedsheets</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Tablewear</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Kitchenware</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Flooring</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="lvl-1 col-md-3 col-lg-3">
                                                        <a href="shop-fullwidth.html" class="catalogueImg mb-3"><img src="resources/assets/images/megamenu/collection-1.jpg" alt="image" /></a>
                                                        <a href="shop-fullwidth.html" class="site-nav lvl-1 menu-title">Kids Furniture</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="#" class="site-nav">Table Decor</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Cushion Fillers</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Kitchen Linen</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Bedsheets</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="lvl-1 col-md-3 col-lg-3">
                                                        <a href="shop-right-sidebar.html" class="catalogueImg mb-3"><img src="resources/assets/images/megamenu/collection-1.jpg" alt="image" /></a>
                                                        <a href="shop-right-sidebar.html" class="site-nav lvl-1 menu-title">Shoes Rack</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="#" class="site-nav">Bedsheets</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Tablewear</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Kitchenware</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Flooring</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="lvl-1 col-md-3 col-lg-3">
                                                        <a href="shop-heading-with-banner.html" class="catalogueImg mb-3"><img src="resources/assets/images/megamenu/collection-1.jpg" alt="image" /></a>
                                                        <a href="shop-heading-with-banner.html" class="site-nav lvl-1 menu-title">Bathlinen</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="#" class="site-nav">Table Decor</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Cushion Fillers</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Kitchen Linen</a></li>
                                                            <li class="lvl-2"><a href="#" class="site-nav">Bedsheets</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="#;" class="shop-offers">Shop Offers <i class="an an-angle-down-l"></i></a>
                                            <div class="megamenu megamenu-gridproduct">
                                                <!--Product Grid-->
                                                <div class="grid-products grid--view-items">
                                                    <div class="row">
                                                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 item">
                                                        
                                                            <!--Start Product Image-->
                                                            <div class="product-image">
                                                                <!--Start Product Image-->
                                                                <a href="product-layout1.html" class="product-img">
                                                                    <!-- image -->
                                                                    <img class="primary blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End image -->
                                                                    <!-- Hover image -->
                                                                    <img class="hover blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End hover image -->
                                                                </a>
                                                                <!--End Product Image-->
                                                                <!-- product label -->
                                                                <div class="product-labels"><span class="lbl on-sale rounded-0">Sale</span></div>
                                                                <!-- End product label -->
                                                            </div>
                                                            <!--End Product Image-->
                                                            
                                                            <!--Start Product Details-->
                                                            <div class="product-details text-center">
                                                                <!--Product Name-->
                                                                <div class="product-name text-uppercase">
                                                                    <a href="product-layout1.html">Black Flower Vase</a>
                                                                </div>
                                                                <!--End Product Name-->
                                                                <!--Product Price-->
                                                                <div class="product-price">
                                                                    <span class="old-price">$100.00</span><span class="price">$70.00</span>
                                                                </div>
                                                                <!--End Product Price-->
                                                            </div>
                                                            <!--End Product Details-->
                                                            
                                                        </div>
                                                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 item">
                                                            <!--Start Product Image-->
                                                            <div class="product-image">
                                                                <!--Start Product Image-->
                                                                <a href="product-layout1.html" class="product-img">
                                                                    <!-- image -->
                                                                    <img class="primary blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End image -->
                                                                    <!-- Hover image -->
                                                                    <img class="hover blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End hover image -->
                                                                </a>
                                                                <!--End Product Image-->
                                                            </div>
                                                            <!--End Product Image-->
                                                            <!--Start Product Details-->
                                                            <div class="product-details text-center">
                                                                <!--Product Name-->
                                                                <div class="product-name text-uppercase">
                                                                    <a href="product-layout1.html">Wooden Baby Chair</a>
                                                                </div>
                                                                <!--End Product Name-->
                                                                <!--Product Price-->
                                                                <div class="product-price">
                                                                    <span class="price">$200.00</span>
                                                                </div>
                                                                <!--End Product Price-->
                                                            </div>
                                                            <!--End Product Details-->
                                                        </div>
                                                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 item">
                                                            <!--Start Product Image-->
                                                            <div class="product-image">
                                                                <!--Start Product Image-->
                                                                <a href="product-layout1.html" class="product-img">
                                                                    <!-- image -->
                                                                    <img class="primary blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End image -->
                                                                    <!-- Hover image -->
                                                                    <img class="hover blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End hover image -->
                                                                </a>
                                                                <!--End Product Image-->
                                                                <!--Product label-->
                                                                <div class="product-labels"><span class="lbl pr-label1 rounded-0">New</span></div>
                                                                <!--Product label--> 
                                                            </div>
                                                            <!--End Product Image-->
                                                            <!--Start Product Details-->
                                                            <div class="product-details text-center">
                                                                <!--Product Name-->
                                                                <div class="product-name text-uppercase">
                                                                    <a href="product-layout1.html">Round Wall Clock</a>
                                                                </div>
                                                                <!--End Product Name-->
                                                                <!--Product Price-->
                                                                <div class="product-price">
                                                                    <span class="price">$30.00</span>
                                                                </div>
                                                                <!--End Product Price-->
                                                            </div>
                                                            <!--End Product Details-->
                                                        </div>
                                                        <div class="col-6 col-sm-6 col-md-3 col-lg-3 item">
                                                            <!--Start Product Image-->
                                                            <div class="product-image">
                                                                <!--Start Product Image-->
                                                                <a href="product-layout1.html" class="product-img">
                                                                    <!-- image -->
                                                                    <img class="primary blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End image -->
                                                                    <!-- Hover image -->
                                                                    <img class="hover blur-up lazyload" data-src="resources/assets/images/products/800x800.jpg" src="resources/assets/images/products/800x800.jpg" alt="image" title="">
                                                                    <!-- End hover image -->
                                                                </a>
                                                                <!--End Product Image-->
                                                                <!-- product label -->
                                                                <div class="product-labels"><span class="lbl on-sale rounded-0">Sale</span></div>
                                                                <!-- End product label -->
                                                            </div>
                                                            <!--End Product Image-->
                                                            <!--Start Product Details-->
                                                            <div class="product-details text-center">
                                                                <!--Product Name-->
                                                                <div class="product-name text-uppercase">
                                                                    <a href="product-layout1.html">Cushioned Office Chair</a>
                                                                </div>
                                                                <!--End Product Name-->
                                                                <!--Product Price-->
                                                                <div class="product-price">
                                                                    <span class="old-price">$120.00</span><span class="price">$80.00</span>
                                                                </div>
                                                                <!--End Product Price-->
                                                            </div>
                                                            <!--End Product Details-->
                                                        </div>  
                                                    </div>
                                                </div>
                                                <!--End Product Grid-->
                                            </div>
                                        </li>
                                        <li class="lvl1 parent megamenu"><a href="#">Features <i class="an an-angle-down-l"></i><span class="navLbl new">New</span></a>
                                            <div class="megamenu style4">
                                                <div class="row shop-grid-5">
                                                    <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Vendor Pages</a>
                                                        <ul class="subLinks">
                                                            <li><a href="vendor-dashboard.html" class="site-nav">Vendor Dashboard</a></li>
                                                            <li><a href="vendor-profile.html" class="site-nav">Vendor Profile</a></li>
                                                            <li><a href="vendor-uploads.html" class="site-nav">Vendor Uploads</a></li>
                                                            <li><a href="vendor-tracking.html" class="site-nav">Vendor Tracking</a></li>
                                                            <li><a href="vendor-service.html" class="site-nav">Vendor Service</a></li>
                                                            <li><a href="vendor-settings.html" class="site-nav last">Vendor Settings</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Email Template</a>
                                                        <ul class="subLinks">
                                                            <li><a target="_blank" href="email-template/email-order-success1.html" class="site-nav">Order Success 1</a></li>
                                                            <li><a target="_blank" href="email-template/email-order-success2.html" class="site-nav">Order Success 2</a></li>
                                                            <li><a target="_blank" href="email-template/email-invoice-template1.html" class="site-nav">Invoice Template 1</a></li>
                                                            <li><a target="_blank" href="email-template/email-invoice-template2.html" class="site-nav last">Invoice Template 2</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Email Template</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a target="_blank" href="email-template/email-forgot-password.html" class="site-nav">Mail Reset password</a></li>
                                                            <li class="lvl-2"><a target="_blank" href="email-template/email-confirmation.html" class="site-nav">Mail Confirmation</a></li>
                                                            <li class="lvl-2"><a target="_blank" href="email-template/email-promotional1.html" class="site-nav">Mail Promotional 1</a></li>
                                                            <li class="lvl-2"><a target="_blank" href="email-template/email-promotional2.html" class="site-nav last">Mail Promotional 2</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Elements</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="elements-typography.html" class="site-nav lvl-2">Typography</a></li>
                                                            <li class="lvl-2"><a href="elements-buttons.html" class="site-nav lvl-2">Buttons</a></li>
                                                            <li class="lvl-2"><a href="elements-titles.html" class="site-nav lvl-2">Titles</a></li>
                                                            <li class="lvl-2"><a href="elements-banner-styles.html" class="site-nav lvl-2">Banner Styles</a></li>
                                                            <li class="lvl-2"><a href="elements-testimonial.html" class="site-nav lvl-2">Testimonial</a></li>
                                                            <li class="lvl-2"><a href="elements-accordions.html" class="site-nav lvl-2">Accordions</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="lvl-1 col-md-3 col-lg-3 col-xl-2 item"><a href="#" class="site-nav lvl-1 menu-title">Elements</a>
                                                        <ul class="subLinks">
                                                            <li class="lvl-2"><a href="elements-icons.html" class="site-nav lvl-2">Icons</a></li>
                                                            <li class="lvl-2"><a href="elements-blog-posts.html" class="site-nav lvl-2">Blog Posts</a></li>
                                                            <li class="lvl-2"><a href="elements-product.html" class="site-nav lvl-2">Product</a></li> 
                                                            <li class="lvl-2"><a href="elements-product-tab.html" class="site-nav lvl-2">Product Tab</a></li> 
                                                            <li class="lvl-2"><a href="elements-top-info-bar.html" class="site-nav lvl-2">Top Info Bar</a></li>
                                                            <li class="lvl-2"><a href="elements-top-promo-bar.html" class="site-nav lvl-2">Top Promo Bar</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="row clear mt-4">
                                                    <div class="col-md-3 col-lg-3">
                                                        <img src="resources/assets/images/megamenu/megamenu-store.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <img src="resources/assets/images/megamenu/megamenu-elements.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <img src="resources/assets/images/megamenu/megamenu-pages.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                    </div>
                                                    <div class="col-md-3 col-lg-3">
                                                        <img src="resources/assets/images/megamenu/megamenu-fast.png" data-src="resources/assets/images/megamenu/megamenu-elements.png" alt="image"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        
                                        <li class="lvl1 parent dropdown"><a href="#;">Blog <i class="an an-angle-down-l"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                                                <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                                                <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                                                <li><a href="blog-masonry.html" class="site-nav">Masonry Blog Style</a></li>
                                                <li><a href="blog-2columns.html" class="site-nav">2 Columns</a></li>
                                                <li><a href="blog-3columns.html" class="site-nav">3 Columns</a></li>
                                                <li><a href="blog-4columns.html" class="site-nav">4 Columns</a></li>
                                                <li><a href="blog-single-post.html" class="site-nav last">Article Page</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>                                   
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Main Navigation Desktop-->
            </div>
            <!--End Header wrap-->

            <!--Mobile Menu-->
            <div class="mobile-nav-wrapper" role="navigation">
                <div class="closemobileMenu"><i class="icon an an-times-l pull-right"></i> Close Menu</div>
                <ul id="MobileNav" class="mobile-nav medium">
                    <li class="lvl1 parent megamenu"><a href="index.html">Home <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index.html" class="site-nav">Home 01 - Default</a></li>
                                    <li class="lvl-2"><a href="index-demo2.html" class="site-nav">Home 02 - Minimal</a></li>
                                    <li class="lvl-2"><a href="index-demo3.html" class="site-nav">Home 03 - Colorful</a></li>
                                    <li class="lvl-2"><a href="index-demo4.html" class="site-nav">Home 04 - Modern</a></li>
                                    <li class="lvl-2"><a href="index-demo5.html" class="site-nav">Home 05 - Kids Clothing</a></li>
                                    <li class="lvl-2"><a href="index-demo6.html" class="site-nav">Home 06 - Single Product</a></li>
                                    <li class="lvl-2"><a href="index-demo7.html" class="site-nav">Home 07 - Glamour</a></li>
                                    <li class="lvl-2"><a href="index-demo8.html" class="site-nav">Home 08 - Simple</a></li>
                                    <li class="lvl-2"><a href="index-demo9.html" class="site-nav">Home 09 - Cool <span class="lbl nm_label1">Hot</span></a></li>
                                    <li class="lvl-2"><a href="index-demo10.html" class="site-nav last">Home 10 - Cosmetic</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index-demo11.html" class="site-nav">Home 11 - Pets <span class="lbl nm_label3">Popular</span></a></li>
                                    <li class="lvl-2"><a href="index-demo12.html" class="site-nav">Home 12 - Tools & Parts</a></li>
                                    <li class="lvl-2"><a href="index-demo13.html" class="site-nav">Home 13 - Watches <span class="lbl nm_label1">Hot</span></a></li>
                                    <li class="lvl-2"><a href="index-demo14.html" class="site-nav">Home 14 - Food</a></li>
                                    <li class="lvl-2"><a href="index-demo15.html" class="site-nav">Home 15 - Christmas</a></li>
                                    <li class="lvl-2"><a href="index-demo16.html" class="site-nav">Home 16 - Phone Case</a></li>
                                    <li class="lvl-2"><a href="index-demo17.html" class="site-nav">Home 17 - Jewelry</a></li>
                                    <li class="lvl-2"><a href="index-demo18.html" class="site-nav">Home 18 - Bag <span class="lbl nm_label3">Popular</span></a></li>
                                    <li class="lvl-2"><a href="index-demo19.html" class="site-nav">Home 19 - Swimwear</a></li>
                                    <li class="lvl-2"><a href="index-demo20.html" class="site-nav last">Home 20 - Furniture <span class="lbl nm_label2">New</span></a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Home Styles <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li class="lvl-2"><a href="index-demo21.html" class="site-nav">Home 21 - Party Supplies <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo22.html" class="site-nav">Home 22 - Digital <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo23.html" class="site-nav">Home 23 - Vogue <span class="lbl nm_label2">New</span></a></li>
                                    <li class="lvl-2"><a href="index-demo24.html" class="site-nav last">Home 24 - Glamour <span class="lbl nm_label2">New</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Shop <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="#" class="site-nav">Category Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="category-2columns.html" class="site-nav">2 Columns with style1</a></li>
                                    <li><a href="category-3columns.html" class="site-nav">3 Columns with style2</a></li>
                                    <li><a href="category-4columns.html" class="site-nav">4 Columns with style3</a></li>
                                    <li><a href="category-5columns.html" class="site-nav">5 Columns with style4</a></li>
                                    <li><a href="category-6columns.html" class="site-nav">6 Columns with Fullwidth</a></li>
                                    <li><a href="category-7columns.html" class="site-nav">7 Columns</a></li>
                                    <li><a href="empty-category.html" class="site-nav last">Category Empty</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="shop-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                                    <li><a href="shop-top-filter.html" class="site-nav">Top Filter</a></li>
                                    <li><a href="shop-fullwidth.html" class="site-nav">Fullwidth</a></li>
                                    <li><a href="shop-no-sidebar.html" class="site-nav">Without Filter</a></li>
                                    <li><a href="shop-listview-sidebar.html" class="site-nav">List View</a></li>
                                    <li><a href="shop-listview-drawer.html" class="site-nav">List View Drawer</a></li>
                                    <li><a href="shop-category-slideshow.html" class="site-nav">Category Slideshow</a></li>
                                    <li><a href="shop-heading-with-banner.html" class="site-nav last">Headings With Banner</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="shop-sub-collections.html" class="site-nav">Sub Collection List <span class="lbl nm_label5">Hot</span></a></li>
                                    <li><a href="shop-masonry-grid.html" class="site-nav">Shop Masonry Grid</a></li>
                                    <li><a href="shop-left-sidebar.html" class="site-nav">Shop Countdown</a></li>
                                    <li><a href="shop-hover-info.html" class="site-nav">Shop Hover Info</a></li>
                                    <li><a href="shop-right-sidebar.html" class="site-nav">Infinite Scrolling</a></li>
                                    <li><a href="shop-fullwidth.html" class="site-nav">Classic Pagination</a></li>
                                    <li><a href="shop-swatches-style.html" class="site-nav">Swatches Style</a></li>
                                    <li><a href="shop-grid-style.html" class="site-nav">Grid Style</a></li>
                                    <li><a href="shop-search-results.html" class="site-nav last">Search Results</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shop Other Page <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="my-wishlist.html" class="site-nav">My Wishlist Style1</a></li>
                                    <li><a href="my-wishlist-style2.html" class="site-nav">My Wishlist Style2</a></li>
                                    <li><a href="compare-style1.html" class="site-nav">Compare Page Style1</a></li>
                                    <li><a href="compare-style2.html" class="site-nav">Compare Page Style2</a></li>
                                    <li><a href="cart-style1.html" class="site-nav">Cart Page Style1</a></li>
                                    <li><a href="cart-style2.html" class="site-nav">Cart Page Style2</a></li>
                                    <li><a href="checkout-style1.html" class="site-nav">Checkout Page Style1</a></li>
                                    <li><a href="checkout-style2.html" class="site-nav">Checkout Page Style2</a></li>
                                    <li><a href="checkout-success.html" class="site-nav last">Checkout Success</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Product <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="product-standard.html" class="site-nav">Product Types<i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="product-standard.html" class="site-nav">Simple Product</a></li>
                                    <li><a href="product-variable.html" class="site-nav">Variable Product</a></li>
                                    <li><a href="product-grouped.html" class="site-nav">Grouped Product</a></li>
                                    <li><a href="product-external-affiliate.html" class="site-nav">External / Affiliate Product</a></li>
                                    <li><a href="product-outofstock.html" class="site-nav">Out Of Stock Product</a></li>
                                    <li><a href="product-layout1.html" class="site-nav">New Product</a></li>
                                    <li><a href="product-layout2.html" class="site-nav">Sale Product</a></li>
                                    <li><a href="product-layout1.html" class="site-nav">Variable Image</a></li>
                                    <li><a href="product-accordian.html" class="site-nav">Variable Select</a></li>
                                    <li><a href="prodcut-360-degree-view.html" class="site-nav last">360 Degree view</a></li>
                                </ul>
                            </li>
                            <li><a href="product-layout1.html" class="site-nav">Product Page Types <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="product-layout1.html" class="site-nav">Product Layout1</a></li>
                                    <li><a href="product-layout2.html" class="site-nav">Product Layout2</a></li>
                                    <li><a href="product-layout3.html" class="site-nav">Product Layout3</a></li>
                                    <li><a href="product-layout4.html" class="site-nav">Product Layout4</a></li>
                                    <li><a href="product-layout5.html" class="site-nav">Product Layout5</a></li>
                                    <li><a href="product-layout6.html" class="site-nav">Product Layout6</a></li>
                                    <li><a href="product-layout7.html" class="site-nav">Product Layout7</a></li>
                                    <li><a href="product-accordian.html" class="site-nav">Product Accordian</a></li>
                                    <li><a href="product-tabs-left.html" class="site-nav">Product Tabs Left</a></li>
                                    <li><a href="product-tabs-center.html" class="site-nav last">Product Tabs Center</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Collections <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="#" class="site-nav">Bedding <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="#" class="site-nav">Bedsheets</a></li>
                                    <li><a href="#" class="site-nav">Tablewear</a></li>
                                    <li><a href="#" class="site-nav">Kitchenware</a></li>
                                    <li><a href="#" class="site-nav last">Flooring</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Kids Furniture <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="#" class="site-nav">Table Decor</a></li>
                                    <li><a href="#" class="site-nav">Cushion Fillers</a></li>
                                    <li><a href="#" class="site-nav">Kitchen Linen</a></li>
                                    <li><a href="#" class="site-nav last">Bedsheets</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Shoes Rack <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="#" class="site-nav">Bedsheets</a></li>
                                    <li><a href="#" class="site-nav">Tablewear</a></li>
                                    <li><a href="#" class="site-nav">Kitchenware</a></li>
                                    <li><a href="#" class="site-nav last">Flooring</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Bathlinen <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="#" class="site-nav">Table Decor</a></li>
                                    <li><a href="#" class="site-nav">Cushion Fillers</a></li>
                                    <li><a href="#" class="site-nav">Kitchen Linen</a></li>
                                    <li><a href="#" class="site-nav last">Bedsheets</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Shop Offers <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="product-layout1.html" class="site-nav">Black Flower Vase</a></li>
                            <li><a href="product-layout1.html" class="site-nav">Wooden Baby Chair</a></li>
                            <li><a href="product-layout1.html" class="site-nav">Round Wall Clock</a></li>
                            <li><a href="product-layout1.html" class="site-nav">Cushioned Office Chair</a></li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Features <i class="an an-plus-l"></i><span class="lbl nm_label1">New</span></a>
                        <ul>
                            <li><a href="#" class="site-nav">Vendor Pages <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="vendor-dashboard.html" class="site-nav">Vendor Dashboard</a></li>
                                    <li><a href="vendor-profile.html" class="site-nav">Vendor Profile</a></li>
                                    <li><a href="vendor-uploads.html" class="site-nav">Vendor Uploads</a></li>
                                    <li><a href="vendor-tracking.html" class="site-nav">Vendor Tracking</a></li>
                                    <li><a href="vendor-service.html" class="site-nav">Vendor Service</a></li>
                                    <li><a href="vendor-settings.html" class="site-nav last">Vendor Settings</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Email Template <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a target="_blank" href="email-template/email-order-success1.html" class="site-nav">Order Success 1</a></li>
                                    <li><a target="_blank" href="email-template/email-order-success2.html" class="site-nav">Order Success 2</a></li>
                                    <li><a target="_blank" href="email-template/email-invoice-template1.html" class="site-nav">Invoice Template 1</a></li>
                                    <li><a target="_blank" href="email-template/email-invoice-template2.html" class="site-nav last">Invoice Template 2</a></li>
                                    <li><a target="_blank" href="email-template/email-forgot-password.html" class="site-nav">Mail Reset password</a></li>
                                    <li><a target="_blank" href="email-template/email-confirmation.html" class="site-nav">Mail Confirmation</a></li>
                                    <li><a target="_blank" href="email-template/email-promotional1.html" class="site-nav">Mail Promotional 1</a></li>
                                    <li><a target="_blank" href="email-template/email-promotional2.html" class="site-nav last">Mail Promotional 2</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Elements <i class="an an-plus-l"></i></a>
                                <ul>
                                    <li><a href="elements-typography.html" class="site-nav">Typography</a></li>
                                    <li><a href="elements-buttons.html" class="site-nav">Buttons</a></li>
                                    <li><a href="elements-titles.html" class="site-nav">Titles</a></li>
                                    <li><a href="elements-banner-styles.html" class="site-nav">Banner Styles</a></li>
                                    <li><a href="elements-testimonial.html" class="site-nav">Testimonial</a></li>
                                    <li><a href="elements-accordions.html" class="site-nav">Accordions</a></li>
                                    <li><a href="elements-icons.html" class="site-nav">Icons</a></li>
                                    <li><a href="elements-blog-posts.html" class="site-nav">Blog Posts</a></li>
                                    <li><a href="elements-product.html" class="site-nav">Product</a></li> 
                                    <li><a href="elements-product-tab.html" class="site-nav">Product Tab</a></li> 
                                    <li><a href="elements-top-info-bar.html" class="site-nav">Top Info Bar</a></li>
                                    <li><a href="elements-top-promo-bar.html" class="site-nav last">Top Promo Bar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="#">Pages <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="aboutus-style1.html" class="site-nav">About Us <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="aboutus-style1.html" class="site-nav">About Us Style1</a></li>
                                    <li><a href="aboutus-style2.html" class="site-nav">About Us Style2</a></li>
                                    <li><a href="aboutus-style3.html" class="site-nav last">About Us Style3</a></li>
                                </ul>
                            </li>
                            <li><a href="contact-style1.html" class="site-nav">Contact Us <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="contact-style1.html" class="site-nav">Contact Us Style1</a></li>
                                    <li><a href="contact-style2.html" class="site-nav last">Contact Us Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="lookbook-2columns.html" class="site-nav">Lookbook <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="lookbook-2columns.html" class="site-nav">2 Columns</a></li>
                                    <li><a href="lookbook-3columns.html" class="site-nav">3 Columns</a></li>
                                    <li><a href="lookbook-4columns.html" class="site-nav">4 Columns</a></li>
                                    <li><a href="lookbook-5columns.html" class="site-nav">5 Columns + Fullwidth</a></li>
                                    <li><a href="lookbook-shop.html" class="site-nav last">Lookbook Shop</a></li>
                                </ul>
                            </li>
                            <li><a href="faqs-style1.html" class="site-nav">FAQs <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="faqs-style1.html" class="site-nav">FAQs Style1</a></li>
                                    <li><a href="faqs-style2.html" class="site-nav last">FAQs Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="brands-style1.html" class="site-nav">Brands <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="brands-style1.html" class="site-nav">Brands Style1</a></li>
                                    <li><a href="brands-style2.html" class="site-nav last">Brands Style2</a></li>
                                </ul>
                            </li>
                            <li><a href="my-account.html" class="site-nav">My Account <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="my-account.html" class="site-nav">My Account</a></li>
                                    <li><a href="login-sliding-style.html" class="site-nav">Login Sliding Slideshow</a></li>
                                    <li><a href="login.html" class="site-nav">Login</a></li>
                                    <li><a href="register.html" class="site-nav">Register</a></li>
                                    <li><a href="forgot-password.html" class="site-nav">Forgot Password</a></li>
                                    <li><a href="change-password.html" class="site-nav last">Change Password</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="site-nav">Empty Pages <i class="an an-plus-l"></i></a>
                                <ul class="dropdown">
                                    <li><a href="empty-category.html" class="site-nav">Empty Category</a></li>
                                    <li><a href="empty-cart.html" class="site-nav">Empty Cart</a></li>
                                    <li><a href="empty-compare.html" class="site-nav">Empty Compare</a></li>
                                    <li><a href="empty-wishlist.html" class="site-nav">Empty Wishlist</a></li>
                                    <li><a href="empty-search.html" class="site-nav last">Empty Search</a></li>
                                </ul>
                            </li>
                            <li><a href="error-404.html" class="site-nav">Error 404 </a></li>
                            <li><a href="cms-page.html" class="site-nav">CMS Page</a></li>
                            <li><a href="elements-icons.html" class="site-nav">Icons</a></li>
                            <li><a href="coming-soon.html" class="site-nav last">Coming soon <span class="lbl nm_label2">New</span></a></li>
                        </ul>
                    </li>
                    <li class="lvl1 parent megamenu"><a href="blog-left-sidebar.html">Blog <i class="an an-plus-l"></i></a>
                        <ul>
                            <li><a href="blog-left-sidebar.html" class="site-nav">Left Sidebar</a></li>
                            <li><a href="blog-right-sidebar.html" class="site-nav">Right Sidebar</a></li>
                            <li><a href="blog-fullwidth.html" class="site-nav">Fullwidth</a></li>
                            <li><a href="blog-masonry.html" class="site-nav">Masonry Blog Style</a></li>
                            <li><a href="blog-2columns.html" class="site-nav">2 Columns</a></li>
                            <li><a href="blog-3columns.html" class="site-nav">3 Columns</a></li>
                            <li><a href="blog-4columns.html" class="site-nav">4 Columns</a></li>
                            <li><a href="blog-single-post.html" class="site-nav last">Article Page</a></li>
                        </ul>
                    </li>
                    <li class="acLink"></li>
                    <li class="lvl1 bottom-link"><a href="login.html">Login</a></li>
                    <li class="lvl1 bottom-link"><a href="register.html">Signup</a></li>
                    <li class="lvl1 bottom-link"><a href="my-wishlist.html">Wishlist</a></li>
                    <li class="lvl1 bottom-link"><a href="compare-style1.html">Compare</a></li>
                    <li class="help bottom-link"><b>NEED HELP?</b><br>Call: +41 525 523 5687</li>
                </ul>
            </div>
            <!--End Mobile Menu-->

            <!--Body Container-->
            <div id="page-content">
                <!--Home Slider-->
                <section class="slideshow slideshow-wrapper">
                    <div class="home-slideshow">
                        <div class="slide slide1">
                            <div class="slideshow--large bg-size">
                                <img class="bg-img blur-up lazyload" data-src="resources/assets/images/slideshow/demo20-banner1.jpg" src="resources/assets/images/slideshow/demo20-banner1.jpg" alt="slideshow" title="" />
                                <div class="container">
                                    <div class="slideshow-content slideshow-overlay middle container d-flex justify-content-center align-items-center">
                                        <div class="slideshow-content-in text-center">
                                            <div class="wrap-caption animation style2 whiteText">
                                                <p class="ss-small-title mb-1">FRESH ADDITION</p>
                                                <h2 class="mega-title ss-mega-title">Billy A Dream</h2>
                                                <span class="mega-subtitle ss-sub-title">Furniture that works for you with best price</span>
                                                <div class="ss-btnWrap">
                                                    <a class="btn btn-lg rounded-0 btn-outline-primary" href="shop-right-sidebar.html">BUY FURNITURE</a>
                                                    <a class="btn btn-lg rounded-0 btn-outline-primary ms-2 ms-md-3" href="shop-right-sidebar.html">RENT FURNITURE</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!--End Home Slider-->

                <!--Store Feature-->
                <!-- <section class="section store-features">
                    <div class="container">
                        <div class="row store-info">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-3 my-lg-0">
                                <a class="d-flex clr-none" href="#">
                                    <div class="icon"><img class="w-100 blur-up lazyload" data-src="resources/assets/images/icon-img/70x70.png" src="resources/assets/images/icon-img/70x70.png" alt="image" width="60" /></div>
                                    <div class="detail">
                                        <h5 class="fs-6 fw-bold mb-1 body-font">Assured Quality</h5>
                                        <p class="sub-text">We provide quality products and sale after service</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-3 my-lg-0">
                                <a class="d-flex clr-none" href="#">
                                    <div class="icon"><img class="w-100 blur-up lazyload" data-src="resources/assets/images/icon-img/70x70.png" src="resources/assets/images/icon-img/70x70.png" alt="image" width="60" /></div>
                                    <div class="detail">
                                        <h5 class="fs-6 fw-bold mb-1 body-font">Free Maintenance</h5>
                                        <p class="sub-text">We don't charge for normal wear and tear</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-3 mb-md-0 my-lg-0">
                                <a class="d-flex clr-none" href="#">
                                    <div class="icon"><img class="w-100 blur-up lazyload" data-src="resources/assets/images/icon-img/70x70.png" src="resources/assets/images/icon-img/70x70.png" alt="image" width="60" /></div>
                                    <div class="detail">
                                        <h5 class="fs-6 fw-bold mb-1 body-font">1 Million Customers</h5>
                                        <p class="sub-text">We provide quality products and sale after service</p>
                                    </div>
                                </a>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-0 my-lg-0">
                                <a class="d-flex clr-none" href="#">
                                    <div class="icon"><img class="w-100 blur-up lazyload" data-src="resources/assets/images/icon-img/70x70.png" src="resources/assets/images/icon-img/70x70.png" alt="image" width="60" /></div>
                                    <div class="detail">
                                        <h5 class="fs-6 fw-bold mb-1 body-font">Multiple Award Winner</h5>
                                        <p class="sub-text">We provide quality products and sale after service</p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </section> -->
                <!--End Store Feature-->
					
                <!--Banner Masonary-->
                <!-- 
                <section class="section collection-banners style8 mt-0">
                    <div class="container">
                        <div class="grid-masonary banner-grid grid-mr-20">
                            <div class="grid-sizer col-12 col-sm-12 col-md-6 col-lg-6 mw-100"></div>
                            <div class="row mx-0">
                                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mw-100 cl-item banner-item">
                                    <div class="collection-grid-item banner1">
                                        <a href="shop-right-sidebar.html">
                                            <div class="img"><img class="rounded-2 blur-up lazyload" data-src="resources/assets/images/collection/demo20-dining-set.jpg" src="resources/assets/images/collection/demo20-dining-set.jpg" alt="collection" title="" /></div>
                                            <div class="details center-left bg-transparent">
                                                <div class="inner">
                                                    <p class="subtitle fs-5 lh-1 mb-3">To make bond over meals</p>
                                                    <h3 class="title lh-1 fw-bold">Dining Set</h3>
                                                    <span class="btn--link mt-4 small--hide">BUY NOW</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mw-100 cl-item banner-item">
                                    <div class="collection-grid-item banner2">
                                        <a href="shop-right-sidebar.html">
                                            <div class="img"><img class="rounded-2 blur-up lazyload" data-src="resources/assets/images/collection/demo20-modular-furniture.jpg" src="resources/assets/images/collection/demo20-modular-furniture.jpg" alt="collection" title="" /></div>
                                            <div class="details center-right bg-transparent">
                                                <div class="inner text-black">
                                                    <h3 class="title lh-1 fw-bold">Modular <br> Furniture</h3>
                                                    <p class="subtitle lh-1 mt-3 mb-0">FLAT 30% OFF</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-12 col-md-6 col-lg-6 mw-100 cl-item banner-item">
                                    <div class="collection-grid-item banner3">
                                        <a href="shop-right-sidebar.html">
                                            <div class="img"><img class="rounded-2 blur-up lazyload" data-src="resources/assets/images/collection/demo20-sofa-cumbed.jpg" src="resources/assets/images/collection/demo20-sofa-cumbed.jpg" alt="collection" title="" /></div>
                                            <div class="details top-left bg-transparent">
                                                <div class="inner">
                                                    <h3 class="title lh-1 fw-bold">Sofa cum Bed</h3>
                                                    <p class="subtitle lh-1 mb-0">Up to 40% Off</p>
                                                    <span class="btn--link mt-4 small--hide">SHOP NOW</span>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                 -->
                <!--End Banner Masonary-->
                
                
                <%	
				//파일이 업로드 된 곳에 접근해서 가져오고 싶을 땐 jsp에서는 application 객체를 사용항
				//컨트롤러 java 파일에서 업로드 하고자 하는 경로를 얻고싶을 땐 ServletContext 타입의 참조변수를 Autowired해서 사용
				String apath = application.getContextPath() + "/resources";
				// /ex/resources
				%>
				
              	 <%--  
               	<img src="<%=apath%>/0bbdc39f-dc1f-4dee-bc5b-2fa396f5a9b5_샤인머스켓.PNG" width="180px" height="180px"/>
				<img src="<%=apath%>/defb4815-5245-46fe-baa6-080795050e2a_사과.jpg" width="180px" height="180px"/> 
				--%>

				<%-- ${fn:length(recentProductList)}

				<c:forEach var="rProduct" items="${recentProductList}">
					${rProduct.images}

					<img src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" width="180px" height="180px"/>					
					
										
					
				</c:forEach> --%>
				
				
				<!-- <div class="container">
				  <div class="row">
				    <div class="col">
				    col
				    </div>
				    
				    <div class="col">
				    col
				    </div>
				    
				    <div class="col">
				    col
				    </div>
				    
				    <div class="col">
				    col
				    </div>
				  </div>
				</div>	 -->
					
					
				
				<div class="container">
				
					<div class="section-header">
                            <h2 style="font-family: 'Poppins',Arial,Tahoma !important; font-weight: 700!important; font-size:25px  ;color: black; margin-top:50px">최근 올라온 상품</h2>
                    </div>
                     
					<c:set var="notCeiledQuotient" value="${fn:length(recentProductList)/4}"/> 
					<%-- notCeiledQuotient : ${notCeiledQuotient} <br> --%>
					<c:set var="ceiledQuotient" value="${(notCeiledQuotient + (1 - (notCeiledQuotient % 1)) % 1)}"/> 
					<%-- ceiledQuotient : ${ceiledQuotient} <br> --%>
					
					<c:forEach var="i" begin="1" end="${ceiledQuotient * 4}" step="1">
						<c:if test="${i % 4 eq 1}">
							<div class="grid-products row">
						</c:if>
							
						<!-- 비어있는 이미지 출력 -->
						<c:if test="${i > fn:length(recentProductList)}">
							<div class="item col">
	                        </div>
						</c:if>
						
						<!-- 정상적인 이미지 출력 -->
						<c:if test="${i <= fn:length(recentProductList)}">
							<div class="item col">
	                        	<!--Start Product Image-->
	                            <div class="product-image">
	                                    <!--Start Product Image-->
	                                    <a href="productdetail.prd?no=${recentProductList[i-1].no}" class="product-img">
	                                        <!--Image-->
	                                        <img class="primary blur-up lazyload" data-src="<%=apath%>/${fn:split(recentProductList[i-1].images,',')[0]}" src="<%=apath%>/${fn:split(recentProductList[i-1].images,',')[0]}" alt="image" title="" style="height:300px"/>
	                                        <!--End Image-->
	                                        <!--Hover Image-->
	                                        <img class="hover blur-up lazyload" data-src="<%=apath%>/${fn:split(recentProductList[i-1].images,',')[0]}" src="<%=apath%>/${fn:split(recentProductList[i-1].images,',')[0]}" alt="image" title="" style="height:300px"/>
	                                        <!--End Hover Image-->
	                                    </a>
	                                    <!-- End Product Image -->
	                                    
	                                    <!--Product label-->
	                                    <div class="product-labels"><span class="lbl on-sale rounded-2" style="background:#489CFF">New</span></div>
	                                    <!--End Product label-->
	                                    
	                                    <!--Product Button-->
	                                    <div class="button-set style0 d-none d-md-block">
	                                        <ul>
	                                            <!--Cart Button-->
	                                            <li><a class="btn-icon btn cartIcon pro-addtocart-popup" href="#pro-addtocart-popup"><i class="icon an an-cart-l"></i> <span class="tooltip-label top">Add to Cart</span></a></li>
	                                            <!--End Cart Button-->
	                                            <!--Quick View Button-->
	                                            <li><a class="btn-icon quick-view-popup quick-view" href="javascript:void(0)" data-toggle="modal" data-target="#content_quickview"><i class="icon an an-search-l"></i> <span class="tooltip-label top">Quick View</span></a></li>
	                                            <!--End Quick View Button-->
	                                            <!--Wishlist Button-->
	                                            <li><a class="btn-icon wishlist add-to-wishlist" href="my-wishlist.html"><i class="icon an an-heart-l"></i> <span class="tooltip-label top">Add To Wishlist</span></a></li>
	                                            <!--End Wishlist Button-->
	                                            <!--Compare Button-->
	                                            <li><a class="btn-icon compare add-to-compare" href="compare-style2.html"><i class="icon an an-sync-ar"></i> <span class="tooltip-label top">Add to Compare</span></a></li>
	                                            <!--End Compare Button-->
	                                        </ul>
	                                    </div>
	                                    <!--End Product Button-->
	                                </div>
	                                <!-- End Product Image -->
	                                
	                                
	                                
	                                <!--Start Product Details-->
	                                <div class="product-details text-center">
	                                    <!--Product Name-->
	                                    <div class="product-name">
	                                        <a class="text-uppercase fw-normal" href="product-layout1.html">${recentProductList[i-1].name}</a>
	                                    </div>
	                                    <!--End Product Name-->
	                                    <!--Product Price-->
	                                    <div class="product-price">
	                                        <span class="old-price"><fmt:formatNumber value="${recentProductList[i-1].original_day_price}" pattern="#,###" />원/일</span> 
	                                        <%-- <span class="old-price" style="text-decoration : none">${recentProductList[i-1].add1_sido} ${recentProductList[i-1].add2_sigungu} ${recentProductList[i-1].add3_eubmyeon} ${recentProductList[i-1].add4_donglee}</span> --%>
	                                        <span class="price"><fmt:formatNumber value="${recentProductList[i-1].discounted_day_price}" pattern="#,###" />원/일</span> 
	                                    </div>
	                                    <!-- End Product Price-->
	                                    <!--Product Review-->
	                                    <div class="product-review m-0">
	                                    <!-- <i class="an an-star"></i><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star-o"></i><i class="an an-star-o"></i> -->
	                                    <span class="old-price" style="text-decoration : none">
	                                    
	                                    <c:if test="${recentProductList[i-1].add1_sido ne ''}">
	                                    	${recentProductList[i-1].add1_sido}
	                                    </c:if>
	                                    
	                                    <c:if test="${recentProductList[i-1].add2_sigungu ne ''}">
	                                    	${recentProductList[i-1].add2_sigungu}
	                                    </c:if>
	                                    
	                                    <c:if test="${recentProductList[i-1].add3_eubmyeon ne ''}">
	                                    	${recentProductList[i-1].add3_eubmyeon}
	                                    </c:if>
	                                    
	                                    <c:if test="${recentProductList[i-1].add4_donglee ne ''}">
	                                    	${recentProductList[i-1].add4_donglee}
	                                    </c:if>
	                                    
	                                    <%-- ${recentProductList[i-1].add1_sido} ${recentProductList[i-1].add2_sigungu} ${recentProductList[i-1].add3_eubmyeon} ${recentProductList[i-1].add4_donglee} --%>
	                                    </span>
	                                    </div>
	                                    <!--End Product Review-->
	                                </div>
	                                <!--End Product Details-->
                           		 </div>
						</c:if>
						
						<c:if test="${i % 4 eq 0}">
							</div>
						</c:if>	
						
					</c:forEach>
				</div>
				
				
				
				<div class="container">
				
					<div class="section-header">
                            <h2 style="font-family: 'Poppins',Arial,Tahoma !important; font-weight: 700!important; font-size:25px  ;color: black; margin-top:50px">인기 상품</h2>
                    </div>
                    
					<c:set var="notCeiledQuotient" value="${fn:length(popularProductList)/4}"/> 
					<%-- notCeiledQuotient : ${notCeiledQuotient} <br> --%>
					<c:set var="ceiledQuotient" value="${(notCeiledQuotient + (1 - (notCeiledQuotient % 1)) % 1)}"/> 
					<%-- ceiledQuotient : ${ceiledQuotient} <br> --%>
					
					<c:forEach var="i" begin="1" end="${ceiledQuotient * 4}" step="1">
						<c:if test="${i % 4 eq 1}">
							<div class="grid-products row">
						</c:if>
							
						<!-- 비어있는 이미지 출력 -->
						<c:if test="${i > fn:length(popularProductList)}">
							<div class="item col">
	                        </div>
						</c:if>
						
						<!-- 정상적인 이미지 출력 -->
						<c:if test="${i <= fn:length(popularProductList)}">
							<div class="item col">
	                        	<!--Start Product Image-->
	                            <div class="product-image">
	                                    <!--Start Product Image-->
	                                    <a href="productdetail.prd?no=${popularProductList[i-1].no}" class="product-img">
	                                        <!--Image-->
	                                        <img class="primary blur-up lazyload" data-src="<%=apath%>/${fn:split(popularProductList[i-1].images,',')[0]}" src="<%=apath%>/${fn:split(popularProductList[i-1].images,',')[0]}" alt="image" title="" style="height:300px"/>
	                                        <!--End Image-->
	                                        <!--Hover Image-->
	                                        <img class="hover blur-up lazyload" data-src="<%=apath%>/${fn:split(popularProductList[i-1].images,',')[0]}" src="<%=apath%>/${fn:split(popularProductList[i-1].images,',')[0]}" alt="image" title="" style="height:300px"/>
	                                        <!--End Hover Image-->
	                                    </a>
	                                    <!-- End Product Image -->
	                                    
	                                    <!--Product label-->
	                                    <div class="product-labels"><span class="lbl on-sale rounded-2">Hot</span></div>
	                                    <!--End Product label-->
	                                    
	                                    <!--Product Button-->
	                                    <div class="button-set style0 d-none d-md-block">
	                                        <ul>
	                                            <!--Cart Button-->
	                                            <li><a class="btn-icon btn cartIcon pro-addtocart-popup" href="#pro-addtocart-popup"><i class="icon an an-cart-l"></i> <span class="tooltip-label top">Add to Cart</span></a></li>
	                                            <!--End Cart Button-->
	                                            <!--Quick View Button-->
	                                            <li><a class="btn-icon quick-view-popup quick-view" href="javascript:void(0)" data-toggle="modal" data-target="#content_quickview"><i class="icon an an-search-l"></i> <span class="tooltip-label top">Quick View</span></a></li>
	                                            <!--End Quick View Button-->
	                                            <!--Wishlist Button-->
	                                            <li><a class="btn-icon wishlist add-to-wishlist" href="my-wishlist.html"><i class="icon an an-heart-l"></i> <span class="tooltip-label top">Add To Wishlist</span></a></li>
	                                            <!--End Wishlist Button-->
	                                            <!--Compare Button-->
	                                            <li><a class="btn-icon compare add-to-compare" href="compare-style2.html"><i class="icon an an-sync-ar"></i> <span class="tooltip-label top">Add to Compare</span></a></li>
	                                            <!--End Compare Button-->
	                                        </ul>
	                                    </div>
	                                    <!--End Product Button-->
	                                </div>
	                                <!-- End Product Image -->
	                                
	                                
	                                
	                                <!--Start Product Details-->
	                                <div class="product-details text-center">
	                                    <!--Product Name-->
	                                    <div class="product-name">
	                                        <a class="text-uppercase fw-normal" href="product-layout1.html">${popularProductList[i-1].name}</a>
	                                    </div>
	                                    <!--End Product Name-->
	                                    <!--Product Price-->
	                                    <div class="product-price">
	                                        <span class="old-price"><fmt:formatNumber value="${popularProductList[i-1].original_day_price}" pattern="#,###" />원/일</span> 
	                                        <%-- <span class="old-price" style="text-decoration : none">${popularProductList[i-1].add1_sido} ${popularProductList[i-1].add2_sigungu} ${popularProductList[i-1].add3_eubmyeon} ${popularProductList[i-1].add4_donglee}</span> --%>
	                                        <span class="price"><fmt:formatNumber value="${popularProductList[i-1].discounted_day_price}" pattern="#,###" />원/일</span> 
	                                    </div>
	                                    <!-- End Product Price-->
	                                    <!--Product Review-->
	                                    <div class="product-review m-0">
	                                    <!-- <i class="an an-star"></i><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star-o"></i><i class="an an-star-o"></i> -->
	                                    <span class="old-price" style="text-decoration : none">
	                                    
	                                    <c:if test="${popularProductList[i-1].add1_sido ne ''}">
	                                    	${popularProductList[i-1].add1_sido}
	                                    </c:if>
	                                    
	                                    <c:if test="${popularProductList[i-1].add2_sigungu ne ''}">
	                                    	${popularProductList[i-1].add2_sigungu}
	                                    </c:if>
	                                    
	                                    <c:if test="${popularProductList[i-1].add3_eubmyeon ne ''}">
	                                    	${popularProductList[i-1].add3_eubmyeon}
	                                    </c:if>
	                                    
	                                    <c:if test="${popularProductList[i-1].add4_donglee ne ''}">
	                                    	${popularProductList[i-1].add4_donglee}
	                                    </c:if>
	                                    
	                                    <%-- ${popularProductList[i-1].add1_sido} ${popularProductList[i-1].add2_sigungu} ${popularProductList[i-1].add3_eubmyeon} ${popularProductList[i-1].add4_donglee} --%>
	                                    </span>
	                                    </div>
	                                    <!--End Product Review-->
	                                </div>
	                                <!--End Product Details-->
                           		 </div>
						</c:if>
						
						<c:if test="${i % 4 eq 0}">
							</div>
						</c:if>	
						
					</c:forEach>
				</div>
				
				
				
				
                <%-- <!--Product Slider-->
                <section class="section product-slider pt-0">
                    <div class="container">
                    
                        <div class="section-header">
                            <h2>최근 올라온 상품</h2>
                        </div>
                        
                        <div class="productSlider grid-products">
                        
                        	<c:forEach var="rProduct" items="${recentProductList}" varStatus="status">
								${rProduct.images}
		
								<img src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" width="180px" height="180px"/>					
							
							
							 	<div class="item">
                                <!--Start Product Image-->
                                <div class="product-image">
                                    <!--Start Product Image-->
                                    <a href="product-layout1.html" class="product-img">
                                        <!--Image-->
                                        <img class="primary blur-up lazyload" data-src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" alt="image" title="" />
                                        <!--End Image-->
                                        <!--Hover Image-->
                                        <img class="hover blur-up lazyload" data-src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" src="<%=apath%>/${fn:split(rProduct.images,',')[0]}" alt="image" title="" />
                                        <!--End Hover Image-->
                                    </a>
                                    <!-- End Product Image -->
                                    
                                    <!--Product label-->
                                    <div class="product-labels"><span class="lbl on-sale rounded-2">New</span></div>
                                    <!--End Product label-->
                                    
                                    <!--Product Button-->
                                    <div class="button-set style0 d-none d-md-block">
                                        <ul>
                                            <!--Cart Button-->
                                            <li><a class="btn-icon btn cartIcon pro-addtocart-popup" href="#pro-addtocart-popup"><i class="icon an an-cart-l"></i> <span class="tooltip-label top">Add to Cart</span></a></li>
                                            <!--End Cart Button-->
                                            <!--Quick View Button-->
                                            <li><a class="btn-icon quick-view-popup quick-view" href="javascript:void(0)" data-toggle="modal" data-target="#content_quickview"><i class="icon an an-search-l"></i> <span class="tooltip-label top">Quick View</span></a></li>
                                            <!--End Quick View Button-->
                                            <!--Wishlist Button-->
                                            <li><a class="btn-icon wishlist add-to-wishlist" href="my-wishlist.html"><i class="icon an an-heart-l"></i> <span class="tooltip-label top">Add To Wishlist</span></a></li>
                                            <!--End Wishlist Button-->
                                            <!--Compare Button-->
                                            <li><a class="btn-icon compare add-to-compare" href="compare-style2.html"><i class="icon an an-sync-ar"></i> <span class="tooltip-label top">Add to Compare</span></a></li>
                                            <!--End Compare Button-->
                                        </ul>
                                    </div>
                                    <!--End Product Button-->
                                    
                                </div>
                                <!-- End Product Image -->
                                
                                <!--Start Product Details-->
                                <div class="product-details text-center">
                                    <!--Product Name-->
                                    <div class="product-name">
                                        <a class="text-uppercase fw-normal" href="product-layout1.html">Black Flower Vase</a>
                                    </div>
                                    <!--End Product Name-->
                                    <!--Product Price-->
                                    <div class="product-price">
                                        <span class="old-price">$100.00</span> <span class="price">$70.00</span>
                                    </div>
                                    <!-- End Product Price-->
                                    <!--Product Review-->
                                    <div class="product-review m-0"><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star"></i><i class="an an-star-o"></i><i class="an an-star-o"></i></div>
                                    <!--End Product Review-->
                                </div>
                                <!--End Product Details-->
                           		 </div>
							</c:forEach>
                        </div>
                        
                        
                    </div>
                </section>
                <!--End Product Slider--> --%>

                <!--Collections Grid-->
                <!-- 
                <section class="section collection-grids pt-0">
                    <div class="container">
                        <div class="section-header">
                            <h2 class="text-transform-none">Shop Your Favorite</h2>
                            <p>Impressive Collection for Your Dream Home</p>
                        </div>
                        <div class="row grid-categorys">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6 category-grid-item mb-3">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-carpet.jpg" src="resources/assets/images/collection/demo20-carpet.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0">
                                            <div class="inner">
                                                <h3 class="category-title">Carpets and Rugs</h3>
                                                <p class="mt-1">Matching carpets for every occasion.</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6 category-grid-item mb-3">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-carpet.jpg" src="resources/assets/images/collection/demo20-carpet.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0">
                                            <div class="inner">
                                                <h3 class="category-title">Prefect Mattress</h3>
                                                <p class="mt-1">Give your body the comfort it deserves</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 category-grid-item mb-3">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-book.jpg" src="resources/assets/images/collection/demo20-book.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0">
                                            <div class="inner">
                                                <h3 class="category-title">Book Shelves</h3>
                                                <p class="mt-1">Perfectly clean cabinet that will reflect your style</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 category-grid-item mb-3">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-book.jpg" src="resources/assets/images/collection/demo20-book.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0">
                                            <div class="inner">
                                                <h3 class="category-title">Study Tables</h3>
                                                <p class="mt-1">Provides the assurance of comfort</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 category-grid-item mb-3">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-book.jpg" src="resources/assets/images/collection/demo20-book.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0">
                                            <div class="inner">
                                                <h3 class="category-title">Lamps &amp; Lightings</h3>
                                                <p class="mt-1">Ideal solutions for your dark evenings</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-8 col-lg-8 category-grid-item mb-3 mb-sm-0">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-traditional.jpg" src="resources/assets/images/collection/demo20-traditional.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0 pb-md-0">
                                            <div class="inner">
                                                <h3 class="category-title">Traditional Furniture</h3>
                                                <p class="mt-1">Old furniture is always gold</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-4 col-lg-4 category-grid-item mb-0">
                                <div class="category-item zoomscal-hov">
                                    <a href="shop-left-sidebar.html" class="category-link text-center clr-none">
                                        <div class="zoom-scal"><img class="blur-up lazyload" data-src="resources/assets/images/collection/demo20-home-decor.jpg" src="resources/assets/images/collection/demo20-home-decor.jpg" alt="collection" title="" /></div>
                                        <div class="details text-left px-0 pb-md-0">
                                            <div class="inner">
                                                <h3 class="category-title">Home DÃ©cor</h3>
                                                <p class="mt-1">All you need to create your space</p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                 -->
                <!--End Collections Grid-->

                <!--Testimonial Slider-->
                <!-- 
                <section class="section testimonial-slider style1">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 section-header style1">
                                <div class="section-header-left">
                                    <h2>Their Words, Our Pride</h2>
                                </div>
                            </div>
                        </div>
                        <div class="quote-wraper">
                            
                            <div class="quotes-slider arwOut3">
                                <div class="quotes-slide">
                                    <blockquote class="quotes-slider__text text-center">             
                                        <div class="testimonial-image"><img class="blur-up lazyload" data-src="resources/assets/images/testimonial-photo1.jpg" src="resources/assets/images/testimonial-photo1.jpg" alt="Shetty Jamie" title="Shetty Jamie" /></div>
                                        <div class="rte-setting"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p></div>
                                        <div class="product-review">
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                        </div>
                                        <p class="authour">Shetty Jamie,</p>
                                        <p class="cmp-name">Kollision</p>
                                    </blockquote>
                                </div>
                                <div class="quotes-slide">
                                    <blockquote class="quotes-slider__text text-center">             
                                        <div class="testimonial-image"><img class="blur-up lazyload" data-src="resources/assets/images/testimonial-photo1.jpg" src="resources/assets/images/testimonial-photo1.jpg" alt="Sara Colinton" title="Sara Colinton" /></div>
                                        <div class="rte-setting"><p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software PageMaker including versions readable content page.</p></div>
                                        <div class="product-review">
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                        </div>
                                        <p class="authour">Sara Colinton,</p>
                                        <p class="cmp-name">Pel</p>
                                    </blockquote>
                                </div>
                                <div class="quotes-slide">
                                    <blockquote class="quotes-slider__text text-center">             
                                        <div class="testimonial-image"><img class="blur-up lazyload" data-src="resources/assets/images/testimonial-photo1.jpg" src="resources/assets/images/testimonial-photo1.jpg" alt="Hamlet Tuong" title="Hamlet Tuong" /></div>
                                        <div class="rte-setting"><p>Scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic of remaining essentially 1960s.</p></div>
                                        <div class="product-review">
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star gray-star"></i>
                                        </div>
                                        <p class="authour">Hamlet Tuong,</p>
                                        <p class="cmp-name">OPL</p>  
                                    </blockquote>
                                </div>
                                <div class="quotes-slide">
                                    <blockquote class="quotes-slider__text text-center">             
                                        <div class="testimonial-image"><img class="blur-up lazyload" data-src="resources/assets/images/testimonial-photo1.jpg" src="resources/assets/images/testimonial-photo1.jpg" alt="Shetty Jamie" title="Shetty Jamie" /></div>
                                        <div class="rte-setting"><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum.</p></div>
                                        <div class="product-review">
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star"></i>
                                            <i class="an an-star gray-star"></i>
                                        </div>
                                        <p class="authour">Happy Customer,</p>
                                        <p class="cmp-name">CPL</p>
                                    </blockquote>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </section>
                 -->
                <!--End Testimonial Slider-->

                <!--Brand Logo Slider-->
                <!-- 
                <section class="section logo-section">
                    <div class="container">
                        <div class="section-header">
                            <h2>Corporate Clientele</h2>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="logo-bar">
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                    <div class="logo-bar__item">
                                        <a href="brands-style2.html"><img class="blur-up lazyload" data-src="resources/assets/images/logo/brandlogo1.png" src="resources/assets/images/logo/brandlogo1.png" alt="brand" title="" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                -->
                <!--End Brand Logo Slider-->
            </div>
            <!--End Body Container-->

            <!--Footer-->
            <div class="footer footer-1">
                <div class="footer-top clearfix">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
                                <h4 class="h4 body-font">Informations</h4>
                                <ul>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="aboutus-style1.html">About us</a></li>
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="privacy-policy.html">Privacy policy</a></li>
                                    <li><a href="#">Terms &amp; condition</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-2 footer-links">
                                <h4 class="h4 body-font">Quick Shop</h4>
                                <ul>
                                    <li><a href="#">Women</a></li>
                                    <li><a href="#">Men</a></li>
                                    <li><a href="#">Kids</a></li>
                                    <li><a href="#">Sportswear</a></li>
                                    <li><a href="#">Sale</a></li>
                                </ul>
                            </div>
                            <div class="col-12 col-sm-12 col-md-4 col-lg-3 footer-links">
                                <h4 class="h4 body-font">Customer Services</h4>
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
                                            <label class="h4 body-font">NEWSLETTER SIGN UP</label>
                                            <p>Enter Your Email To Receive Daily News And Get 20% Off Coupon For All Items.</p>
                                            <div class="input-group">
                                                <input type="email" class="brounded-start input-group__field newsletter-input rounded-0 mb-0" name="EMAIL" value="" placeholder="Email address" required>
                                                <span class="input-group__btn">
                                                    <button type="submit" class="btn newsletter__submit rounded-0" name="commit" id="Subscribe"><i class="an an-envelope-l"></i></button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <ul class="list-inline social-icons mt-3 pt-1">
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Facebook"><i class="an an-facebook" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Twitter"><i class="an an-twitter" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Pinterest"><i class="an an-pinterest-p" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Instagram"><i class="an an-instagram" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="TikTok"><i class="an an-tiktok" aria-hidden="true"></i></a></li>
                                    <li class="list-inline-item"><a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Whatsapp"><i class="an an-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 mt-4 mt-lg-5">
                                <h4 class="h4 body-font text-transform-none">One-Stop Destination for All Your Needs</h4>
                                <p>India's largest home shopping destination offering a wide range of home and office furniture online. Choosing the right furniture for your home online will add elegance and functionality to your interior decor, while it will also be cost effective and long lasting at the same time. Enjoy fast shipping as well as cash on delivery at our online store.</p>
                            </div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-6 mt-4 mt-lg-5">
                                <h4 class="h4 body-font text-transform-none">How to Shop for Furniture Online in a Smart Way?</h4>
                                <p>Decorating and furnishing the home is an experimental fun way to give your space the personal flair that is required. But it can cost a lot of money if not properly planned. Itâs obvious to get confused by the overwhelming and attractive options that go well in your latest needs without breaking a bank.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom clearfix">
                    <div class="container">
                        <div class="d-flex-center flex-column justify-content-md-between flex-md-row-reverse">
                            <img src="resources/assets/images/payment.png" alt="Paypal Visa Payments"/>
                            <div class="copytext text-uppercase">&copy; 2022 Optimal. All Rights Reserved.</div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Footer-->

            <!--Scoll Top-->
            <span id="site-scroll"><i class="icon an an-chevron-up"></i></span> 
            <!--End Scoll Top-->

            <!--MiniCart Drawer-->
            <div class="minicart-right-drawer modal right fade" id="minicart-drawer">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div id="cart-drawer" class="block block-cart">
                            <div class="minicart-header">
                                <a href="javascript:void(0);" class="close-cart" data-bs-dismiss="modal" aria-label="Close"><i class="an an-times-r" aria-hidden="true" data-bs-toggle="tooltip" data-bs-placement="left" title="Close"></i></a>
                                <h4 class="fs-6">관심 상품 </h4>
                            </div>
                            <div class="minicart-content">
                                <ul class="m-0 clearfix">
                                    <li class="item d-flex justify-content-center align-items-center">
                                        <a class="product-image" href="product-layout1.html">
                                            <img class="blur-up lazyload" src="resources/assets/images/products/cart-product-img1.jpg" data-src="resources/assets/images/products/cart-product-img1.jpg" alt="image" title="" />
                                        </a>
                                        <div class="product-details">
                                            <a class="product-title" href="product-layout1.html">Black Flower Vase</a>
                                            <div class="variant-cart my-1">Black / XL</div>
                                            <div class="priceRow">
                                                <div class="product-price">
                                                    <span class="money">$59.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="qtyDetail text-center">
                                            <div class="wrapQtyBtn">
                                                <div class="qtyField">
                                                    <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon an an-minus-r" aria-hidden="true"></i></a>
                                                    <input type="text" name="quantity" value="1" class="qty rounded-0">
                                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon an an-plus-l" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <a href="#" class="edit-i remove"><i class="icon an an-edit-l" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                            <a href="#" class="remove"><i class="an an-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                        </div>
                                    </li>
                                    <li class="item d-flex justify-content-center align-items-center">
                                        <a class="product-image" href="product-layout1.html">
                                            <img class="blur-up lazyload" src="resources/assets/images/products/cart-product-img1.jpg" data-src="resources/assets/images/products/cart-product-img1.jpg" alt="image" title="" />
                                        </a>
                                        <div class="product-details">
                                            <a class="product-title" href="product-layout1.html">Cushioned Office Chair</a>
                                            <div class="variant-cart my-1">Blue / XL</div>
                                            <div class="priceRow">
                                                <div class="product-price">
                                                    <span class="money">$199.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="qtyDetail text-center">
                                            <div class="wrapQtyBtn">
                                                <div class="qtyField">
                                                    <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon an an-minus-r" aria-hidden="true"></i></a>
                                                    <input type="text" name="quantity" value="1" class="qty rounded-0">
                                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon an an-plus-l" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <a href="#" class="edit-i remove"><i class="icon an an-edit-l" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"></i></a>
                                            <a href="#" class="remove"><i class="an an-times-r" data-bs-toggle="tooltip" data-bs-placement="top" title="Remove"></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="minicart-bottom">
                                <div class="shipinfo text-center mb-3 text-uppercase">
                                    <p class="freeShipMsg"><i class="an an-truck fs-5 me-2 align-middle"></i>SPENT <b>$99.00</b> MORE FOR FREE SHIPPING</p>
                                </div>
                                <div class="subtotal">
                                    <span>Total:</span>
                                    <span class="product-price">$258.00</span>
                                </div>
                                <a href="checkout-style2.html" class="w-100 px-2 py-2 lh-base my-2 my-2 btn btn-outline-primary proceed-to-checkout">Proceed to Checkout</a>
                                <a href="cart-style2.html" class="w-100 btn btn-primary py-2 lh-base cart-btn">View Cart</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End MiniCart Drawer-->
            <div class="modalOverly"></div>

            <!--Quickview Popup-->
            <div class="loadingBox"><div class="an-spin"><i class="icon an an-spinner4"></i></div></div>
            <div id="quickView-modal" class="mfp-with-anim mfp-hide">
                <button title="Close (Esc)" type="button" class="mfp-close">Ã</button>
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 mb-3 mb-md-0">
                        <!--Model thumbnail -->
                        <div id="quickView" class="carousel slide">
                            <!-- Image Slide carousel items -->
                            <div class="carousel-inner">
                                <div class="item carousel-item active" data-bs-slide-number="0">
                                    <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1.jpg" src="resources/assets/images/products/product-1.jpg" alt="image" title="" />
                                </div>
                                <div class="item carousel-item" data-bs-slide-number="1">
                                    <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                </div>
                                <div class="item carousel-item" data-bs-slide-number="2">
                                    <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                </div>
                                <div class="item carousel-item" data-bs-slide-number="3">
                                    <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                </div>
                                <div class="item carousel-item" data-bs-slide-number="4">
                                    <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                </div>
                            </div>
                            <!-- End Image Slide carousel items -->
                            <!-- Thumbnail image -->
                            <div class="model-thumbnail-img">
                                <!-- Thumbnail slide -->
                                <div class="carousel-indicators list-inline">
                                    <div class="list-inline-item active" id="carousel-selector-0" data-bs-slide-to="0" data-bs-target="#quickView">
                                        <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1.jpg" src="resources/assets/images/products/product-1.jpg" alt="image" title="" />
                                    </div>
                                    <div class="list-inline-item" id="carousel-selector-1" data-bs-slide-to="1" data-bs-target="#quickView">
                                        <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                    </div>
                                    <div class="list-inline-item" id="carousel-selector-2" data-bs-slide-to="2" data-bs-target="#quickView">
                                        <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                    </div>
                                    <div class="list-inline-item" id="carousel-selector-3" data-bs-slide-to="3" data-bs-target="#quickView">
                                        <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                    </div>
                                    <div class="list-inline-item" id="carousel-selector-4" data-bs-slide-to="4" data-bs-target="#quickView">
                                        <img class="blur-up lazyload" data-src="resources/assets/images/products/product-1-1.jpg" src="resources/assets/images/products/product-1-1.jpg" alt="image" title="" />
                                    </div>
                                </div>
                                <!-- End Thumbnail slide -->
                                <!-- Carousel arrow button -->
                                <a class="carousel-control-prev carousel-arrow" href="#quickView" data-bs-target="#quickView" data-bs-slide="prev"><i class="icon an-3x an an-angle-left"></i><span class="visually-hidden">Previous</span></a>
                                <a class="carousel-control-next carousel-arrow" href="#quickView" data-bs-target="#quickView" data-bs-slide="next"><i class="icon an-3x an an-angle-right"></i><span class="visually-hidden">Next</span></a>
                                <!-- End Carousel arrow button -->
                            </div>
                            <!-- End Thumbnail image -->
                        </div>
                        <!--End Model thumbnail -->
                        <div class="text-center mt-3"><a href="product-layout1.html">VIEW MORE DETAILS</a></div>
                    </div>
                    <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                        <h2 class="product-title">Product Quick View Popup</h2>
                        <div class="product-review d-flex-center mb-2">
                            <div class="rating"><i class="icon an an-star"></i><i class="icon an an-star"></i><i class="icon an an-star"></i><i class="icon an an-star"></i><i class="icon an an-star-o"></i></div>
                            <div class="reviews ms-2"><a href="#">5 Reviews</a></div>
                        </div>
                        <div class="product-info">
                            <p class="product-vendor">Vendor:  <span class="fw-normal"><a href="#" class="fw-normal">Optimal</a></span></p>  
                            <p class="product-type">Product Type: <span class="fw-normal">Tops</span></p> 
                            <p class="product-sku">SKU:  <span class="fw-normal">50-ABC</span></p>
                        </div>
                        <div class="pro-stockLbl my-2">
                            <span class="d-flex-center stockLbl instock"><i class="icon an an-check-cil"></i><span> In stock</span></span>
                            <span class="d-flex-center stockLbl preorder d-none"><i class="icon an an-clock-r"></i><span> Pre-order Now</span></span>
                            <span class="d-flex-center stockLbl outstock d-none"><i class="icon an an-times-cil"></i> <span>Sold out</span></span>
                            <span class="d-flex-center stockLbl lowstock d-none" data-qty="15"><i class="icon an an-exclamation-cir"></i><span> Order now, Only  <span class="items">10</span>  left!</span></span>
                        </div>
                        <div class="pricebox">
                            <span class="price old-price">$400.00</span><span class="price product-price__sale">$300.00</span>
                        </div>
                        <div class="sort-description">Optimal Multipurpose Bootstrap 5 Html Template that will give you and your customers a smooth shopping experience which can be used for various kinds of stores such as fashion.. </div>
                        <form method="post" action="#" id="product_form--option" class="product-form">
                            <div class="product-options d-flex-wrap">
                                <div class="swatch clearfix swatch-0 option1">
                                    <div class="product-form__item">
                                        <label class="label d-flex">Color:<span class="required d-none">*</span> <span class="slVariant ms-1 fw-bold">Black</span></label>
                                        <ul class="swatches-image swatches d-flex-wrap list-unstyled clearfix">
                                            <li data-value="Black" class="swatch-element color available active">
                                                <label class="rounded-0 swatchLbl small color black" title="Black"></label>
                                                <span class="tooltip-label top">Black</span>
                                            </li>
                                            <li data-value="Green" class="swatch-element color available">
                                                <label class="rounded-0 swatchLbl small color green" title="Green"></label>
                                                <span class="tooltip-label top">Green</span>
                                            </li>
                                            <li data-value="Orange" class="swatch-element color available">
                                                <label class="rounded-0 swatchLbl small color orange" title="Orange"></label>
                                                <span class="tooltip-label top">Orange</span>
                                            </li>
                                            <li data-value="Blue" class="swatch-element color available">
                                                <label class="rounded-0 swatchLbl small color blue" title="Blue"></label>
                                                <span class="tooltip-label top">Blue</span>
                                            </li>
                                            <li data-value="Red" class="swatch-element color available">
                                                <label class="rounded-0 swatchLbl small color red" title="Red"></label>
                                                <span class="tooltip-label top">Red</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="swatch clearfix swatch-1 option2">
                                    <div class="product-form__item">
                                        <label class="label">Size:<span class="required d-none">*</span> <span class="slVariant ms-1 fw-bold">XS</span></label>
                                        <ul class="swatches-size d-flex-center list-unstyled clearfix swatch-1 option2">
                                            <li data-value="XS" class="swatch-element xs available active">
                                                <label class="swatchLbl rounded-0 medium" title="XS">XS</label>
                                                <span class="tooltip-label">XS</span>
                                            </li>
                                            <li data-value="S" class="swatch-element s available">
                                                <label class="swatchLbl rounded-0 medium" title="S">S</label>
                                                <span class="tooltip-label">S</span>
                                            </li>
                                            <li data-value="M" class="swatch-element m available">
                                                <label class="swatchLbl rounded-0 medium" title="M">M</label>
                                                <span class="tooltip-label">M</span>
                                            </li>
                                            <li data-value="L" class="swatch-element l available">
                                                <label class="swatchLbl rounded-0 medium" title="L">L</label>
                                                <span class="tooltip-label">L</span>
                                            </li>
                                            <li data-value="XL" class="swatch-element xl available">
                                                <label class="swatchLbl rounded-0 medium" title="XL">XL</label>
                                                <span class="tooltip-label">XL</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-action d-flex-wrap w-100 mb-3 clearfix">
                                    <div class="quantity">
                                        <div class="qtyField rounded">
                                            <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon an an-minus-r" aria-hidden="true"></i></a>
                                            <input type="text" name="quantity" value="1" class="product-form__input qty rounded-0">
                                            <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon an an-plus-l" aria-hidden="true"></i></a>
                                        </div>
                                    </div>                                
                                    <div class="add-to-cart ms-3 fl-1">
                                        <button type="button" class="btn button-cart rounded-0"><span>Add to cart</span></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="wishlist-btn d-flex-center">
                            <a class="add-wishlist d-flex-center text-uppercase me-3" href="my-wishlist.html" title="Add to Wishlist"><i class="icon an an-heart-l me-1"></i> <span>Add to Wishlist</span></a>
                            <a class="add-compare d-flex-center text-uppercase" href="compare-style1.html" title="Add to Compare"><i class="icon an an-random-r me-2"></i> <span>Add to Compare</span></a>
                        </div>
                        <!-- Social Sharing -->
                        <div class="social-sharing share-icon d-flex-center mx-0 mt-3">
                            <span class="sharing-lbl me-2">Share :</span>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-facebook" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Facebook"><i class="icon an an-facebook mx-1"></i><span class="share-title d-none">Facebook</span></a>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-twitter" data-bs-toggle="tooltip" data-bs-placement="top" title="Tweet on Twitter"><i class="icon an an-twitter mx-1"></i><span class="share-title d-none">Tweet</span></a>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-pinterest" data-bs-toggle="tooltip" data-bs-placement="top" title="Pin on Pinterest"><i class="icon an an-pinterest-p mx-1"></i> <span class="share-title d-none">Pin it</span></a>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-linkedin" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on Instagram"><i class="icon an an-instagram mx-1"></i><span class="share-title d-none">Instagram</span></a>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-whatsapp" data-bs-toggle="tooltip" data-bs-placement="top" title="Share on WhatsApp"><i class="icon an an-whatsapp mx-1"></i><span class="share-title d-none">WhatsApp</span></a>
                            <a href="#" class="d-flex-center btn btn-link btn--share share-email" data-bs-toggle="tooltip" data-bs-placement="top" title="Share by Email"><i class="icon an an-envelope-l mx-1"></i><span class="share-title d-none">Email</span></a>
                        </div>
                        <!-- End Social Sharing -->
                    </div>
                </div>
            </div>
            <!--End Quickview Popup-->

		<!-- 카카오톡 상담하기 -->
		<div style = "position: fixed;right: 80px; bottom: 50%; top: 850px;" onclick="kakaoTalk()"><img src="resources/assets/images/kakaoicon.png" width="40px" height="40px"></img></div>

		<!--Addtocart Added Popup-->
		<div id="pro-addtocart-popup" class="mfp-with-anim mfp-hide">
                <button title="Close (Esc)" type="button" class="mfp-close">Ã</button>
                <div class="addtocart-inner text-center clearfix">
                    <h4 class="title mb-3 text-success">Added to your shopping cart successfully.</h4>
                    <div class="pro-img mb-3">
                        <img class="img-fluid blur-up lazyload" src="resources/assets/images/products/add-to-cart-popup.jpg" data-src="resources/assets/images/products/add-to-cart-popup.jpg" alt="Added to your shopping cart successfully." title="Added to your shopping cart successfully." />
                    </div>
                    <div class="pro-details">   
                        <h5 class="pro-name body-font mb-0">Cushioned Office Chair</h5>
                        <p class="sku my-2">Color: Gray</p>
                        <p class="mb-0 qty-total">1 X $113.88</p>
                        <div class="addcart-total bg-light mt-3 mb-3 p-2">
                            Total: <b class="price">$113.88</b>
                        </div>
                        <div class="button-action">
                            <a href="checkout-style1.html" class="btn btn-primary view-cart mx-1 py-2 rounded-0">Go To Checkout</a>
                            <a href="index.html" class="btn btn-outline-primary py-2 rounded-0">Continue Shopping</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Addtocart Added Popup-->


            <!-- Including Jquery -->
            <script src="resources/assets/js/vendor/jquery-min.js"></script>
            <script src="resources/assets/js/vendor/js.cookie.js"></script>
            <!--Including Javascript-->
            <script src="resources/assets/js/plugins.js"></script>
            <script src="resources/assets/js/main.js"></script>

        </div>
        <!--End Page Wrapper-->
    </body>
</html>