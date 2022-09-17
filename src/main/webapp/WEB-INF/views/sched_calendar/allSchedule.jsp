<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="${path}/resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<style type="text/css">
#pjtable {
	width: 100%;
	font-family: Public Sans;
}

.thead {
	font-size: 15px;
	color: #696cff;
	border-bottom: solid 1px #696cff;
	border-radius: 25px;
}

#pjtable th:first-child {
	border-top-left-radius: 25px;
	border-bottom-left-radius: 25px;
}

#pjtable th:last-child {
	border-top-right-radius: 25px;
	border-bottom-right-radius: 25px;
}

#pjtable th {
	padding: 8px;
	text-align: center;
}

#pjtable td {
	padding: 15px 12px;
	text-align: center;
	font-size: 14px;
}



.only-btn {
	height: 35px;
	border: none;
	font-size: 14px;
	font-weight: 700;
	background-color: white;
	border-radius: 25px;
	padding: 5px 10px;
	margin-right: 7px;
	margin-bottom: 7px;
}

.pm-md-btn {
	display: inline-block;
	padding: 6.5px 11px;
	border-radius: 25px;
	margin: 10px 3px;
	cursor: pointer;
	font-size: 14px;
}

.tprogress {
	padding: 8px 10px;
	border-radius: 25px;
	margin: 0 3px;
	cursor: pointer;
}

.t-req {
	border: solid 1px #80ccff;
	color: #80ccff;
}

.t-req:hover {
	background-color: #80ccff;
	color: white;
}

.t-proc {
	border: solid 1px #99bbff;
	color: #99bbff;
}

.t-proc:hover {
	background-color: #99bbff;
	color: white;
}

.t-hold {
	border: solid 1px #ffb3d9;
	color: #ffb3d9;
}

.t-hold:hover {
	background-color: #ffb3d9;
	color: white;
}

.t-comp {
	border: solid 1px#bababa;
	color: #bababa;
}

.t-comp:hover {
	background-color: #bababa;
	color: white;
}

.t-ref {
	border: 1px solid #ff9980;
	color: #ff9980;
}

.t-ref:hover {
	background-color: #ff9980;
	color: white;
}

.t-conf {
	border: solid 1px black;
	color: black;
}

.t-conf:hover {
	background-color: black;
	color: white;
}

.t-confirm {
	border: solid 1px #ff9999;
	color: #ff9999;
}

.t-confirm:hover {
	background-color: #ff9999;
	color: white;
}

.t-all {
	border: solid 1px #696cff;
	color: #696cff;
}

.t-all:hover {
	background-color: #696cff;
	color: white;
}

.pick-pg {
	background-color: white;
	position: absolute;
	box-shadow: 3px 3px 3px 3px rgba(0, 0, 255, .2);
	width: 250px;
	height: 58px;
	border-radius: 20px;
	padding: 10px;
}

.pg-wrapper {
	position: relative;
	margin-top: 8px;
}

.modal-div {
	width: 500px;
	height: 250px;
	background-color: white;
	position: absolute;
	box-shadow: 5px 5px 5px 5px rgba(0, 0, 255, .2);
	border-radius: 20px;
	padding: 20px;
	top: 20%;
	left: 30%;
}

.modal-div2 {
	width: 500px;
	height: 200px;
	background-color: white;
	position: absolute;
	box-shadow: 5px 5px 5px 5px rgba(0, 0, 255, .2);
	border-radius: 20px;
	padding: 20px;
	top: 25%;
	left: 30%;
}

.modal-div3 {
	width: 500px;
	height: 200px;
	background-color: white;
	position: absolute;
	box-shadow: 5px 5px 5px 5px rgba(0, 0, 255, .2);
	border-radius: 20px;
	padding: 20px;
	top: 25%;
	left: 30%;
}

.card-body {
	position: relative;
}

.cf-span {
	font-size: 14px;
	display: inline-block;
	background-color: #696cff;
	color: white;
	padding: 5px 12px;
	text-align: center;
	border-radius: 25px;
	margin: 10px 0;
}

[type=file] {
	margin: 10px 0;
}

.cf-btn {
	border: none;
	box-shadow: 2px 2px 2px 2px rgba(0, 0, 255, .2);
	margin: 10px 0;
	color: #696cff;
	background-color: white;
	border-radius: 25px;
	padding: 3px 12px;
	font-size: 14px;
}

.cf-btn2 {
	display: inline-block;
	border: none;
	box-shadow: 2px 2px 2px 2px rgba(0, 0, 255, .2);
	margin: 10px 0;
	color: #696cff;
	background-color: white;
	border-radius: 25px;
	padding: 3px 12px;
	font-size: 14px;
}

.color-99 {
	display: inline-block;
	color: #696cff;
	font-size: 14px;
	margin: 10px 0;
	padding: 3px 12px;
}

.top-div {
	width: 100%;
	display: flex;
	justify-content: center;
}

.top-inner {
	width: 100%;
	display: flex;
	justify-content: space-between;
	margin-bottom: 8px;
}


#td-req-btn {
	border: none;
	font-size: 14px;
	font-weight: 700;
	height: 35px;
	background-color: white;
	color: #696cff;
	border-radius: 25px;
	padding: 5px 10px;
	margin-left: 7px;
	margin-bottom: 7px;
	margin-top: 8px;
	border: 1px #696cff dashed;
}



.td-req-btn{
	height: 35px;
	border: none;
	font-size: 14px;
	font-weight: 700;
	color: white;
	border-radius: 25px;
	padding: 5px 10px;
	margin-right: 7px;
	margin-bottom: 7px;
	background-color: #696cff;
}

.only-btn-wrapper {
	display: flex;
	justify-content: center;
	width: 550px;
	margin-bottom: 10px;
	box-shadow: 2px 2px 2px 2px rgba(0, 0, 255, .2);
	border-radius: 25px;
	padding-top: 5px;
}

.req-btn-wrapper {
	display: flex;
	justify-content: flex-start;
	
}

.todo-ta{
	width: 460px;
	height: 85px;
	margin-top: 3px;
	border-radius: 5px;
}

.center-div{
	display: flex;
	justify-content: center;
}
</style>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>pms</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${path}/resources/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${path}/resources/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${path}/resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="${path}/resources/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${path}/resources/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="${path}/resources/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${path}/resources/assets/js/config.js"></script>
<script src="${path}/resources/assets/vendor/libs/jquery/jquery.js"></script>

</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="${path}/login.do" class="app-brand-link"> <span
						class="app-brand-logo demo"> <svg width="25"
								viewBox="0 0 25 42" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
                  <defs>
                    <path
									d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
									id="path-1"></path>
                    <path
									d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
									id="path-3"></path>
                    <path
									d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
									id="path-4"></path>
                    <path
									d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
									id="path-5"></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1"
									fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo"
									transform="translate(-27.000000, -15.000000)">
                      <g id="Icon"
									transform="translate(27.000000, 15.000000)">
                        <g id="Mask"
									transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g id="Triangle"
									transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF"
									xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
					</span> <span class="app-brand-text demo menu-text fw-bolder ms-2">4PRO</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item"><a href="${path}/goDS.do"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="대시보드">대시보드</div>
					</a></li>
					  <!--로그아웃 -->
		            <li class="menu-item logout-li">
		            	<div class="menu-link">
		                <i class="menu-icon tf-icons bx bx-log-out"></i>
		                <div data-i18n="로그아웃" onclick="logOut()">로그아웃</div>
		                </div>
		            </li>
					<!-- 프로젝트 관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">프로젝트관리</span></li>
					<li class="menu-item"><a href="${path}/PM.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="프로젝트 관리">프로젝트 관리</div>
					</a></li>
					<li class="menu-item">
		            <a href="${path}/FM.do" class="menu-link">
		                <i class="menu-icon tf-icons bx bx-detail"></i>
		                <div data-i18n="파일 관리">파일 관리</div>
		              </a>
		            </li>
					<!-- 일정관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">일정관리</span></li>
					<!-- 캘린더 -->
					<li class="menu-item"><a href="${path}/calendar.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-table"></i>
							<div data-i18n="캘린더">캘린더</div>
					</a></li>
					<!-- 간트차트 -->
					<li class="menu-item"><a href="${path}/gantt.do"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="간트차트">간트차트</div>
					</a></li>
					<!-- 업무관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">업무관리</span></li>
					<!-- 전체 업무 -->
					<li class="menu-item active"><a href="${path}/allSchedule.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="전체 업무">전체 업무</div>
					</a></li>

					<!-- 리스크관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">리스크관리</span></li>
					<li class="menu-item"><a href="${path}/RM.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-error"></i>
							<div data-i18n="리스크 관리">리스크 관리</div>
					</a></li>

					<!-- 인적자원관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">인적자원관리</span></li>
					<!-- Forms -->
					<li class="menu-item"><a href="${path}/hresList.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="사원정보조회">사원정보조회</div>
					</a></li>

					<li class="menu-item"><a href="${path}/hresPrjList.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="사원정보조회">업무인원관리</div>
					</a></li>

					<li class="menu-item "><a href="${path}/join.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="사원등록">사원등록</div>
					</a></li>

					<li class="menu-item "><a href="${path}/hresInfo.do"
						class="menu-link"> <i class="menu-icon tf-icons bx bx-detail"></i>
							<div data-i18n="개인정보수정">개인정보수정</div>
					</a></li>

					<!-- 의사소통관리 -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">의사소통관리</span></li>
					<li class="menu-item"><a href="${path}/directMessage.do"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-message"></i>
							<div data-i18n="채팅">채팅</div>
					</a></li>
					<li class="menu-item"><a href="${path}/minutes.do"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-clipboard"></i>
							<div data-i18n="회의록">회의록</div>
					</a></li>
				</ul>

			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->


				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="container-xxl flex-grow-1 container-p-y">
					<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">업무관리 /</span> 전체 업무 &nbsp;&nbsp; [${fn:toUpperCase(auth)}]</h4>
						<div class="row">
							<div class="card">
								<div class="card-body pb-0 px-0 px-md-4 mb-4">

									<div class="top-div">
										<div class="top-inner">
											<div class="req-btn-wrapper">
												<c:if test="${auth=='pm'}">
													<button id="td-req-btn" class="md3" onclick="todoReq()">+ 업무요청</button>
												</c:if>
											</div>
											<div class="only-btn-wrapper">
												<button class="only-btn t-all" onclick="reqOnly(this)">전체보기</button>
												<button class="only-btn t-req" onclick="reqOnly(this)">요청됨</button>
												<button class="only-btn t-proc" onclick="reqOnly(this)">진행중</button>
												<button class="only-btn t-hold" onclick="reqOnly(this)">보류</button>
												<button class="only-btn t-comp" onclick="reqOnly(this)">완료</button>
												<button class="only-btn t-ref" onclick="reqOnly(this)">반려</button>
												<c:if test="${auth=='pm'}">
													<button class="only-btn t-confirm" onclick="reqOnly(this)">결재요청됨</button>
												</c:if>
												<c:if test="${auth=='user'}">
													<button class="only-btn t-conf" onclick="reqOnly(this)">결재중</button>
												</c:if>
											</div>
										</div>
									</div>

									<table id="pjtable">

										<tr class="thead">

											<th>프로젝트명</th>
											<th>업무명</th>
											<th>시작일정</th>
											<th>종료일정</th>
											<th>업무진행상태</th>
											<th>담당자</th>

										</tr>
										<c:if test="${todolist==null||todolist eq ''}">
											<tr>
												<td colspan="6"></td>
											</tr>
											<tr>
												<td colspan="6">등록된 일정이 없습니다.</td>
											<tr>
											<tr>
												<td colspan="6"></td>
											</tr>
										</c:if>
										<c:forEach var="p" items="${todolist}">
											<tr>
												<td>${p.pname}</td>
												<td>${p.tname}</td>
												<c:if test="${p.sdate == null}">
													<td>일정 없음</td>
												</c:if>
												<c:if test="${p.sdate != null}">
													<td>${p.sdate}</td>
												</c:if>
												<c:if test="${p.edate == null}">
													<td>일정 없음</td>
												</c:if>
												<c:if test="${p.edate != null}">
													<td>${p.edate}</td>
												</c:if>
												<c:choose>
													<c:when test="${auth == 'pm' && p.progress=='결재중'}">
														<td class="pg-td"><span class="md2 ttp tprogress tp"
															tno="${p.todo_no }" pg="${p.progress}">결재요청됨</span></td>
													</c:when>
													<c:otherwise>
														<td class="pg-td"><span class="ttp tprogress tp"
															tno="${p.todo_no }" pg="${p.progress}">${p.progress}</span></td>
													</c:otherwise>
												</c:choose>
												<td>${p.name}</td>
											</tr>
										</c:forEach>

									</table>
									<form enctype="multipart/form-data" method="post"
										action="confirm.do" id="conf-form">
										<input type="hidden" name="progress" /> <input type="hidden"
											name="todo_no" />
										<c:if test="${auth eq 'user' }">
										<div class='modal-div md'>
											<span class='cf-span md'>결재파일</span><br> <input
												type='file' name="report" class='md form-control' /> <span
												class='cf-span md'>아래 버튼을 클릭하면 업무가 결재요청 됩니다</span><br>
											<button class='btn rounded-pill btn-outline-primary md' type="button" onclick="conf()" style="margin-top:10px;padding:4px 10px;">결재요청</button>
										</div>
										</c:if>
										<c:if test="${auth eq 'pm' }">
										<div class='modal-div2 md2'>
											<span class="md2 color-99">결재파일:</span>
											<button class='md2 cf-btn md' id="dw-btn" type="button"
												onclick="filedown()"></button>
											<span class='md2 cf-btn2' id="dw-btn2">결재할 파일 없음</span><br>
											<span class='md2 cf-span'>선택한 업무의 상태를 변경해 주세요</span><br>
											<span class="md2 t-ref pm-md-btn" id="pm-ref">반려</span> <span
												class="md2 t-comp pm-md-btn" id="pm-comp">완료</span> <span
												class="md2 t-comp pm-md-btn" id="pm-cancel">X 취소</span>
										</div>
										</c:if>
									</form>
									<form action="downloadC.do" method="post"
										enctype="multipart/form-data" id="down-form">
										<input type="hidden" value="" name="fname" class="downfname" />
									</form>
									<c:if test="${auth eq 'pm' }">
									<div class='modal-div3 md3'>
										<select class="md3 form-control selectemp" data-bs-toggle="tooltip"
											title="담당자">
											<option class="md3 defaultop" value="" selected>#담당자 선택#</option>

											<c:forEach var="m" items="${memlist}">
												<option class="md3 nameval" value="${m.empno}">
													${m.name}</option>
											</c:forEach>
										</select>
										<textarea class="md3 todo-ta" style="border:solid 1px lightgray;" placeholder="업무내용을 작성해 주세요"></textarea>
										<div class="md3 center-div">
										<button class="md3 td-req-btn" type="button" onclick="tdReqSub()">등록</button>
										
										</div>
										</div>
										<form action="insertRequest.do" method="post" id="insertR">
										<input type="hidden" name="empno" />
										<input type="hidden" name="tname" />
										</form>
									</c:if>
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-- / Content -->

					<!-- Footer -->
					<footer class="content-footer footer bg-footer-theme">
						<div
							class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
							<div class="mb-2 mb-md-0">
								©
								<script>
									document.write(new Date().getFullYear());
								</script>
								, made with ❤️ by <a href="https://themeselection.com"
									target="_blank" class="footer-link fw-bolder">team2</a>
							</div>
							
						</div>
					</footer>
					<!-- / Footer -->

					<div class="content-backdrop fade"></div>
				</div>
				<!-- Content wrapper -->
			</div>
			<!-- / Layout page -->
		</div>

		<!-- Overlay -->
		<div class="layout-overlay layout-menu-toggle"></div>
	</div>
	<!-- / Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->


	<script src="${path}/resources/assets/vendor/libs/popper/popper.js"></script>
	<script src="${path}/resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="${path}/resources/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->
	<script
		src="${path}/resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

	<!-- Main JS -->
	<script src="${path}/resources/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="${path}/resources/assets/js/dashboards-analytics.js"></script>
	<script type="text/javascript">
		function logOut(){
			if(confirm("로그아웃 하시겠습니까?")){
				alert("로그아웃 되었습니다. 로그인 페이지로 이동합니다");
				location.href="${path}/logout.do";
			}
		}
	</script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
<script type="text/javascript">
	
	var auth = "${auth}"
	$(".modal-div").hide();
	$(".modal-div2").hide();
	$(".modal-div3").hide();
	$(".tprogress")
			.each(
					function() {
						if ($(this).attr("pg") == "요청됨") {
							$(this).addClass("t-req");
						} else if ($(this).attr("pg") == "진행중") {
							$(this).addClass("t-proc");
						} else if ($(this).attr("pg") == "보류") {
							$(this).addClass("t-hold");
						} else if ($(this).attr("pg") == "완료") {
							$(this).addClass("t-comp");
						} else if ($(this).attr("pg") == "반려") {
							$(this).addClass("t-ref");
						} else if ($(this).attr("pg") == "결재중") {
							if (auth == "user") {
								$(this).addClass("t-conf");
							} else {
								$(this).addClass("t-confirm");
							}

						}
						if (auth == "user") {
							$(this)
									.parent()
									.append(
											"<div class='pick-pg ttp'><div class='ttp pg-wrapper'><span class='ttp stp tprogress t-proc' pg='진행중'>진행중</span><span class='ttp stp tprogress t-hold' pg='보류'>보류</span><span class='md ttp stp tprogress t-confirm' pg='결재요청'>결재요청</span></div></div>");
						}
					});
	$(".pick-pg").hide();

	$(".tp").click(function() {
		if (auth == "user") {

			$(".pick-pg").hide();

			if ($(this).attr("pg") == "완료" || $(this).attr("pg") == "결재중") {

			} else {
				$(this).parent().children().show();
			}
		} else {
			$(".pick-pg").hide();

			if ($(this).attr("pg") != "결재중") {

			} else {
				$(".modal-div2").show();
				var tno = $(this).attr("tno");
				$("[name=todo_no]").val($(this).attr("tno"));
				$.ajax({
					type : "post",
					url : "${path}/getFname.do?todo_no=" + tno,
					dataType : "json",
					success : function(data) {
						if (data.fname == "N") {
							$("#dw-btn").hide();
							$("#dw-btn2").show();
						} else {
							$("#dw-btn").text(data.fname)
							$(".downfname").val(data.fname)
							$("#dw-btn2").hide();
							$("#dw-btn").show();
							
						}
					}
				});

			}
		}

	});

	$(".stp").click(
			function() {

				if ($(this).attr("pg") == "진행중" || $(this).attr("pg") == "보류") {
					if (confirm("업무진행상태를 바꾸시겠습니까?")) {
						alert("업무진행상태를 업데이트 했습니다.")
						$("[name=progress]").val($(this).attr("pg"));
						$("[name=todo_no]").val(
								$(this).parent().parent().parent().children()
										.first().attr("tno"));
						$("#conf-form").attr("action", "progress.do");
						$("#conf-form").submit();
					} else {
						return;
					}
				} else {
					$(".modal-div").show();
					$(".pick-pg").hide();
					$("[name=progress]").val($(this).attr("pg"));
					$("[name=todo_no]").val(
							$(this).parent().parent().parent().children()
									.first().attr("tno"));

				}
			});

	$("#pm-ref").click(function() {
		if (confirm("업무진행상태를 <반려>로 바꾸시겠습니까?")) {
			alert("업무진행상태를 업데이트 했습니다.")
			$("[name=progress]").val("반려");
			$("#conf-form").attr("action", "progress.do");
			$("#conf-form").submit();
		}

	});

	$("#pm-comp").click(function() {
		if (confirm("업무진행상태를 <완료>로 바꾸시겠습니까?")) {
			alert("업무진행상태를 업데이트 했습니다.")
			$("[name=progress]").val("완료");
			$("#conf-form").attr("action", "progress.do");
			$("#conf-form").submit();
		}

	});

	$("#pm-cancel").click(function() {
		$(".modal-div2").hide();
	});

	function conf() {
		if(confirm("결재요청 하시겠습니까?")){
			alert("결재요청이 완료되었습니다.")
			$("#conf-form").attr("action", "confirm.do");
			$("#conf-form").submit();
		}
		
	}

	function filedown() {
		$("#down-form").submit();
	}
	$('html').click(function(e) {
		if (auth == "user") {
			if (!$(e.target).hasClass("ttp")) {
				$(".pick-pg").hide();
			}
			if (!$(e.target).hasClass("md")) {
				$(".modal-div").hide();
			}
		} else {
			if (!$(e.target).hasClass("md2")) {
				$(".modal-div2").hide();
			}
			if (!$(e.target).hasClass("md3")) {
				$(".modal-div3").hide();
			}
		}

	});

	function reqOnly(e) {
		if ($(e).text() == "전체보기") {
			$("tr").show();
		} else if ($(e).text() == "결재요청됨") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "결재중") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "보류") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "보류") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "요청됨") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "요청됨") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "진행중") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "진행중") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "반려") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "반려") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "완료") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "완료") {
					$(this).parent().parent().hide();
				}

			});
		} else if ($(e).text() == "결재중") {
			$("tr").show();
			$(".tp").each(function() {
				if ($(this).attr("pg") != "결재중") {
					$(this).parent().parent().hide();
				}

			});
		}
	}
	
	function todoReq(){
		$(".modal-div3").show();
	}
	
	function tdReqSub(){
		if($(".todo-ta").val()==""){
			alert("업무 내용을 입력해 주세요")
		}else if($(".selectemp").val()==""){
			alert("담당자를 선택해 주세요")
		}else{
			if(confirm("업무를 요청하시겠습니까?")){
				alert("요청이 완료되었습니다.")
				$("[name=empno]").val($(".selectemp").val());
				$("[name=tname]").val($(".todo-ta").val());
				$("#insertR").submit();
			}
			
		}
		
	}
</script>
</html>
