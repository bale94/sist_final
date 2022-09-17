<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="${path}/resources/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>pms</title>


    <meta name="description" content="" />


    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="${path}/resources/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="${path}/resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="${path}/resources/assets/css/demo.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Helpers -->
    <script src="${path}/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${path}/resources/assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <!-- Page CSS -->
     <script src="${path}/resources/assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    
    <script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style type="text/css">
	.divgrey{background:#999999; height:1px;}

.collapse {
  &:not(.show) {
    display: none;
  }
}

.collapsing {
  height: 0;
  overflow: hidden;
  @include transition($transition-collapse);
}

#progress {
    appearance: none;
}
#progress::-webkit-progress-bar {
    background:#f0f0f0;
    border-radius:10px;
    box-shadow: inset 3px 3px 10px #ccc;
}
#progress::-webkit-progress-value {
    border-radius:10px;
    background: #8470FF;
    background: -webkit-linear-gradient(to right,#FFFAFA, #D8BFD8);
    background: linear-gradient(to right, #8470FF,#D8BFD8);
}
.wrap1 {
  position: relative;
  padding: 2%;
}

.container1 {
  align:center;  
  display: flex;
  gap: 10px;
  margin-bottom: 10px;
}

.chart {
  position: relative;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  transition: 0.1s;
}

span.center1 {
  background: #fff;
  
  position: absolute;
  top: 50%;
  left: 50%;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  text-align: center;
  line-height: 40px;
  font-size: 15px;
  transform: translate(-50%, -50%); //가운데 위
}

button {
  width: 80px;
  position: absolute;
  left: 0;
  right: 0;
  margin: 0 auto;
}
.Acontainer{

border:solid;
width:300px;
height:300px;
margin:auto;
}
.plogo{
font-size:30px;
background-color:#7B68EE;
color:black;
font-family:fantasy;
margin-top:50px;
padding-left:40px;

}
.btnss {
  background-color: #7B76FA;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}

/* Darker background on mouse-over */
.btnss:hover {
  background-color:#9676FA;
}
/*the container must be positioned relative:*/
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: #7B76FA;
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: #7B76FA;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}


    </style>
  </head>

  <body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
      <div class="layout-container">
        <!-- Menu -->

          <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
          <div class="app-brand demo">
            <a href="${path}/login.do" class="app-brand-link">
              <span class="app-brand-logo demo">
                <svg
                  width="25"
                  viewBox="0 0 25 42"
                  version="1.1"
                  xmlns="http://www.w3.org/2000/svg"
                  xmlns:xlink="http://www.w3.org/1999/xlink"
                >
                  <defs>
                    <path
                      d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                      id="path-1"
                    ></path>
                    <path
                      d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                      id="path-3"
                    ></path>
                    <path
                      d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                      id="path-4"
                    ></path>
                    <path
                      d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                      id="path-5"
                    ></path>
                  </defs>
                  <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                      <g id="Icon" transform="translate(27.000000, 15.000000)">
                        <g id="Mask" transform="translate(0.000000, 8.000000)">
                          <mask id="mask-2" fill="white">
                            <use xlink:href="#path-1"></use>
                          </mask>
                          <use fill="#696cff" xlink:href="#path-1"></use>
                          <g id="Path-3" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-3"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                          </g>
                          <g id="Path-4" mask="url(#mask-2)">
                            <use fill="#696cff" xlink:href="#path-4"></use>
                            <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                          </g>
                        </g>
                        <g
                          id="Triangle"
                          transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) "
                        >
                          <use fill="#696cff" xlink:href="#path-5"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                        </g>
                      </g>
                    </g>
                  </g>
                </svg>
              </span>
              <span href="${path}/login.do"  class="app-brand-text demo menu-text fw-bolder ms-2">4pro</span>
            </a>

            <a href="${path}/login.do" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
              <i class="bx bx-chevron-left bx-sm align-middle"></i>
            </a>
          </div>

          <div class="menu-inner-shadow"></div>

          <ul class="menu-inner py-1">
            <!-- Dashboard -->
            <li class="menu-item">
              <a href="${path}/goDS.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-home-circle"></i>
                <div data-i18n="대시보드">대시보드</div>
              </a>
            </li>
             <!--로그아웃 -->
            <li class="menu-item logout-li">
            	<div class="menu-link">
                <i class="menu-icon tf-icons bx bx-log-out"></i>
                <div data-i18n="로그아웃" onclick="logOut()">로그아웃</div>
                </div>
            </li>
            <!-- 프로젝트 관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">프로젝트관리</span></li>
            <li class="menu-item active">
              <a href="${path}/PM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="프로젝트 관리">프로젝트 관리</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="${path}/FM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="파일 관리">파일 관리</div>
              </a>
            </li>
            
             
            
              
             
			<!-- 일정관리 -->
            <li class="menu-header small text-uppercase">
              <span class="menu-header-text">일정관리</span>
            </li>
            <!-- 캘린더 -->
            <li class="menu-item">
              <a href="${path}/calendar.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-table"></i>
                <div data-i18n="캘린더">캘린더</div>
              </a>
            </li>
            <!-- 간트차트 -->
            <li class="menu-item">
              <a href="${path}/gantt.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-dock-top"></i>
                <div data-i18n="간트차트">간트차트</div>
              </a>
            </li>
            <!-- 업무관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">업무관리</span></li>
            <!-- 전체 업무 -->
            <li class="menu-item">
              <a href="${path}/allSchedule.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="전체 업무">전체 업무</div>
              </a>
            </li>
           
            <!-- 리스크관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">리스크관리</span></li>
            <li class="menu-item">
              <a href="${path}/RM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-error"></i>
                <div data-i18n="리스크 관리">리스크 관리</div>
              </a>
            </li> 

            <!-- 인적자원관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">인적자원관리</span></li>
            <!-- Forms -->
            <li class="menu-item">
              <a href="${path}/hresList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원정보조회">사원정보조회</div>
              </a>
            </li>
            
            <li class="menu-item">
              <a href="${path}/hresPrjList.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원정보조회">업무인원관리</div>
              </a>
              </li>
              
              <li class="menu-item ">
              <a href="${path}/join.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="사원등록">사원등록</div>
              </a>
              </li>
              
              <li class="menu-item ">
              <a href="${path}/hresInfo.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="개인정보수정">개인정보수정</div>
              </a>
              </li>
          
             <!-- 의사소통관리 -->
            <li class="menu-header small text-uppercase"><span class="menu-header-text">의사소통관리</span></li>

            <li class="menu-item ">
              <a href="${path}/directMessage.do" target="_blank" class="menu-link">


                <i class="menu-icon tf-icons bx bx-message"></i>
                <div data-i18n="채팅">채팅</div>
              </a>
            </li>
            <li class="menu-item">
              <a href="${path}/minutes.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-clipboard"></i>
                <div data-i18n="회의록">회의록</div>
              </a>
            </li>
          </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
          
          <!-- Content wrapper -->
          <div class="content-wrapper">
          
            <!-- Communication Management -->
            <div class="container-xxl flex-grow-1 container-p-y">
              <h4 class="fw-bold py-3 mb-4" style="margin-top:20px;margin-left:50px;"><span class="text-muted fw-light">프로젝트 관리 /</span> 내 프로젝트</h4>
              
              <c:if test="${auth=='ceo'}">
              <h3 style="margin-left:50px;">내 권한 : [${auth}]</h3>
              </c:if>
              <c:if test="${auth=='pm'}">
              <h3 style="margin-left:50px;">내 권한 : [${auth}]</h3>
              </c:if>
              <c:if test="${auth=='admin'}">
              <h3 style="margin-left:50px;">내 권한 : [${auth}]</h3>
              </c:if>
              <c:if test="${auth=='user'}">
              <h3 style="margin-left:50px;">내 권한 : [${auth}]</h3>
              </c:if>
           
           	
            <!-- DM --> 
                  
  <script type="text/javascript">
function goInsert(project_no){
		window.open("${path}/boardInsertForm.do",
				"파일 등록 상세페이지","width=700,height=600");
	
}

function goDetail(project_no){
	location.href="${path}/selectPM.do?project_no="+project_no;
}	
function goUpdate(project_no){
	location.href="${path}/updatePM1.do?project_no="+project_no;
}	



</script>


	<div class="container" >
	
	<div class="card">
	
	<!-- 
	form action="호출할 controller url"
	   name="subject"  name="writer"    -->
	<form id="frm01" class="form"  method="post">
		<input type="hidden" name="curPage" value="0" style="text-align:right;"><!-- 하단에 js에 의해서 현재페이지 번호를 전송 -->

  	
  	<!--  
	    <input class="form-control mr-sm-2" name="writer" placeholder="작성자" 
	    	value="${boardSch.writer}"/> 
	    	
	    	
  		<input class="btn btn-outline-primary" type="submit" value="검색" />
  		-->
  		
	    <!-- <input class="btn btn-primary" type="button" onclick="goInsert()" value="등록"/> -->
		<!-- 위치및 이미지로 변경 -->	    	


	    		

		
		<div class="divgrey"></div>

		<br>
		 <c:if test="${auth!='user'}">
		<nav class="navbar navbar-expand-sm" style="margin-left:1050px;margin-bottom:10px;" onclick="goInsert()">
		<button class="btnss">+ <i class="fa fa-folder"></i></button>
		</nav>
		</c:if>

		
		<nav class="navbar navbar-expand-sm">
		
	<div class="input-group lb-3">
		<div class="input-group-append">
			<span class="text-center input-group-text">총 프로젝트 수: ${PMBoardSch.count }건</span>
		</div>
			<input class="form-control" style="width:600px;"readonly />
						<div class="input-group-append">
									
								<div class="input-group-append" style="margin-left: auto;">
									<span class="text-center input-group-text">페이지 크기</span>
									
								</div>
								
						</div>
		<select aria-label="Small select" name="pageSize" class="form-select form-select-sm">
										<option>3</option>
										<option>5</option>
										<option>10</option>
										<option>20</option>
										<option>30</option>
									</select>
		
			
			
			
			
			
			<script type="text/javascript">
			// 선택된 페이지 크기 설정..
			$("[name=pageSize]").val("${PMBoardSch.pageSize}");
			// 페이지 크기 변경시 마다, controller 단호출..
			$("[name=pageSize]").change(function(){
				$("[name=curPage]").val("1");
				$("form").submit();
			});
		</script>	
		
			</div>
			</nav>
			<!-- </nav> -->
			
		</form>
		
	
		
		<script type="text/javascript">
		
var x, i, j, l, ll, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
</script>
	 	
	
	
	</div> 	
	
	<br>
	
		<div class="divgrey"></div>
		
		<div class="divgrey"></div>
		
		
		<script type="text/javascript">
//카카오 api를 활용 , 수정 클릭시 메시지 전송

	function updatePM(project_no){
		 location.href="${path}/updateBoard.do?project_no="+project_no;
}
  function sendTo() {
	
	 
	Kakao.init("896f10f5046b7f5d4481bcd8074bf97e");
    Kakao.Auth.login({
      scope: 'PROFILE_NICKNAME,TALK_MESSAGE',
      success: function() {
        Kakao.API.request({
          url: '/v2/api/talk/memo/default/send',
          data: {
            template_object: {
              object_type: 'text',
              text:
                '\t*보안 경고*\n 프로젝트에 접근이 시도됐습니다.',
                link: {
                	mobile_web_url: 'https://developers.kakao.com',
                    web_url: 'https://developers.kakao.com',
                  },},},
          success: function(res) {
            alert('success: ' + JSON.stringify(res))
          },
          fail: function(err) {
            alert('error: ' + JSON.stringify(err))
          },})},
      fail: function(err) {
        alert('failed to login: ' + JSON.stringify(err))
      },})}
</script>
		

	
		<table class="table table-hover table-striped" style="margin-bottom:100px;">
   	<col width="10%">
   	<col width="30%">
   	<col width="15%">
   	<col width="10%">
   	<col width="10%">
   	
    <thead>
      <tr width="850" class="table table-sm table-hover" style="text-align:center;">
        <th style="color:black">No.</th>
        <th style="color:black">프로젝트 명</th>
        <th style="color:black">작성자</th>        
        <th style="color:black">상태</th>
        <th style="color:black">진행도</th>
        <th style="color:black">조회수</th>
        <th></th>
        
      </tr>
    </thead>
<tbody>
    	<c:forEach var="bd" items="${blist}">

    	 <tr style="text-align:center;"ondblclick="goDetail(${bd.project_no})">
	<c:forEach begin="1" end="${bd.level}" varStatus="sts">
    		 		&nbsp;&nbsp;
    		 		<c:if test="${sts.count!=1 and sts.last}">
    		 			<img src="${path}/a01_img/re.PNG" width="25px" height="25px"/>
    		 		</c:if>
    		 	</c:forEach>
    	 
    	 <!-- p.auth = m.auth -->
 
 	 
      <th>${bd.project_no }</th>
      <th >${bd.pname }</th><!-- badge bg-info text-dark -->
      <th>${bd.name }</th>
      <th><span class="badge bg-label-primary me-1">${bd.pcategory}</span></th>
      <th><progress id="progress" value="${bd.progress}" min="0" max="100"></progress>${bd.progress}%</th>
      <th>${bd.readcnt}</th>
      
      
      <th>
      <c:if test="${auth=='pm'}">
      <input type="button" class="btn btn-outline-primary" style="align:right;"
      value="수정" id="send-to-btn" onclick="goUpdate(${bd.project_no})"/>
      </c:if>
      <!--  <input type="button" class="btn btn-danger" value="삭제" id="send-to-btn" onclick="deleteProc();"/>-->
      </th>
      
      
      </tr>
      
    	</c:forEach>
    </tbody>
	</table>
	
</div>

	       
	<ul class="pagination justify-content-center">
	  <li class="page-item">
	  <a class="page-link" href="javascript:goPage(${PMBoardSch.startBlock-1})">Previous</a></li>
	  <c:forEach var="cnt" begin="${PMBoardSch.startBlock}" end="${PMBoardSch.endBlock}">
	  	<li class="page-item ${PMBoardSch.curPage==cnt?'active':''}">
	  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
	  </c:forEach>
	  <li class="page-item">
	  	<a class="page-link" href="javascript:goPage(${PMBoardSch.endBlock+1})">Next</a></li>
	</ul>    
</div>	
	<script type="text/javascript">
		function goPage(cnt){
			// 요청값으로 현재 클릭한 페이지를 설정하고, 서버에 전달..
			$("[name=curPage]").val(cnt);
			$("form").submit();
		}
		
		
	</script>  
	<!-- 
	<c:if test="${auth=='pm'}">
 		<c:forEach var="pml" items="${pmList}">
 		<h1>${pml.name} </h1>
 		<h1>${pml.pcategory} </h1>
 		<h1>${pml.name} </h1>
 		</c:forEach>
 		</c:if>
	
	 -->	
 		
		<script type="text/javascript">
		
		function openWin(){
			window.open("http://localhost:7080/4PRO/InsertPM.do",
					"파일 업로드 상세페이지","width=700,height=600");
		}
		
		
	
		//var ret = window.open(url,name, specs, replace);
		//http://localhost:7080/4PRO/uploadPM.do
		
		//WEB-INF\views\FileManagement\uploadPM.jsp
		
		//<img src="${path}\PMpng\folder.png" style=size:weight:90px;width:90px;>
		//<img src="${path}\PMpng\plus.png" style=size:weight:90px;width:90px; onclick="openWin()">
		

		</script>



			 <!-- DM -->
            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  Copyright ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  All rights reserved by 4Pro
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
    <script src="${path}/resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${path}/resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="${path}/resources/assets/vendor/js/bootstrap.js"></script>
    <script src="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${path}/resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="${path}/resources/assets/vendor/libs/masonry/masonry.js"></script>

    <!-- Main JS -->
    <script src="${path}/resources/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="${path}/resources/assets/js/ui-modals.js"></script>
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
</html>