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

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="${path}/resources/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${path}/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${path}/resources/assets/js/config.js"></script>
    
    <!-- Page CSS -->
    <style type="text/css">
	.col-lg-7{
		width: 66%;
	}
	#chat-search{
		padding: 1rem;
	}
	#chat-list{
		position: relative;
		height: 500px;
		overflow-y: hidden;
	}
	#chat-id{
		font-size: 1.1rem;
	}
	#chat-conn-name{
		padding-top: 19px;
		padding-bottom: 19px;
	}
	#chat-contents{
		position: relative;
		height: 480px;
		overflow-y: hidden;
	}
	#schBtn{
		padding-left: 7px; 
		padding-right: 7px;
	}
	#invBtn{
		float: right;
	}
	#exitBtn{
		float: right;
		padding-left: 7px; 
		padding-right: 7px;
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
            <a href="goDS.do" class="app-brand-link">
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
              <span class="app-brand-text demo menu-text fw-bolder ms-2">4pro</span>
            </a>

            <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
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
            <li class="menu-item">
              <a href="${path}/PM.do" class="menu-link">
                <i class="menu-icon tf-icons bx bx-detail"></i>
                <div data-i18n="프로젝트 관리">프로젝트 관리</div>
              </a>
            </li>
            <!-- 파일 관리 -->
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
            <li class="menu-item active">
              <a href="${path}/directMessage.do" class="menu-link">
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
              <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">의사소통관리 /</span> 채팅</h4>
              
            <!-- DM --> 
            <div class="row mb-5" id="chat">
                <div class="col-md-6 col-lg-4">
                  <div class="card mb-4">
                    <div class="card-body" id="chat-search">
		              <div class="nav-item d-flex align-items-center">
		                <input v-model="schMem.name" @keyup="search"
		                  class="form-control border-0 shadow-none"
		                  placeholder="Search..."
		                />
		                <button @click="schBtn" class="btn btn-outline-primary btn-sm" type="button" id="schBtn">
							<i class="bx bx-search fs-4 lh-0"></i>
						</button>
		              </div>
                    </div>                   
                  </div>
                  <div class="card mb-4">
                    <div class="card-body" id="chat-list">
                    	<div class="card-text" id="chat-name" v-for="(mem, idx) in memberList">
                    		<span id="conn-id">{{mem.name}}</span>&nbsp;[{{mem.empno}}]
	                    	<button @click="invBtn" class="btn btn-outline-info btn-sm" type="button" id="invBtn">
	                    		접속
	                    	</button>
							<hr>
                    	</div>
                    </div>
                  </div>
                </div>               
                <div class="col-md-12 col-lg-7">
                  <div class="card mb-4">
                    <div class="card-body" id="chat-conn-name">
                      <span class="card-title" id="chat-id"></span>
			          <button class="btn btn-outline-primary btn-sm" id="exitBtn">
			            <i class="bx bx-exit"></i>
			          </button>
                    </div>
                    <hr class="m-0">
                    <div class="card-body" id="chat-area">
                      <div class="card-text" id="chat-contents">
                      	<div style="text-align: center">
                      		<span class="badge rounded-pill bg-label-secondary" id="chat-date"> </span>
                      	</div>
                      </div>
                    </div>
                    <hr class="m-0">
                    <div class="card-body">
                      <div class="input-group" id="chat-bottom">
	                    <input type="text" id="chat-input" class="form-control" placeholder="메세지를 입력하세요."/>
                      	<button type="button" id="sendBtn" class="btn btn-outline-primary">전송</button>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            </div>
            <!--/ DM -->            
			 
            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
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
    <script src="${path}/resources/assets/js/ui-modals.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script type="text/javascript">
    	var wsocket;
    	var now = new Date();
		var current = now.getFullYear() + "년 " + (now.getMonth()+1) + "월 " + now.getDate() + "일 ";
		var chatInput = document.getElementById("chat-input");
		var chatContents = document.getElementById("chat-contents");
		var ps;
		var curSession= "${member}"; // 현재 세션에 로그인 한 사람
		var conSession; // 연결된 사람
		
    	$(document).ready(function(){
    		
    		var vm = new Vue({
    			el:"#chat",
    			data: {
    				schMem:{name:""},
    				memberList:[]
    			},
    			methods:{
    				search:function(){
    					if(event.keyCode==13){
    						if( this.schMem.name.trim().length > 0 ){
    							this.showList()	
    						}else{
    							alert("검색할 사원명을 입력하세요")
    						}
    						
    					}
    				},
    				schBtn: function(){
    					if( this.schMem.name.trim().length > 0 ){
							this.showList()	
						}else{
							alert("검색할 사원명을 입력하세요")
						}
    				},
    				invBtn: function(){
    					conn();
    				},
    				showList: function(){
    					var vm = this
    					$.ajax({
    						url:"/4PRO/searchMember.do",
    						data: vm.schMem,
    						dataType: "json",
    						success: function(data){ 
    							vm.memberList = data.memberList
    							ps = new PerfectScrollbar("#chat-list", {
    				    			wheelPropagation: true
    				    		});	
    						},
    						error: function(err){
    							console.log(err)
    						} 
    					});
    				} 				
    			}
    			
    		});
    		
    		//loadingMsg();

    		$("#exitBtn").click(function(){
    			if(confirm("대화를 종료하시겠습니까?")){
    				wsocket.send("msg:" + curSession + "님이 대화를 종료했습니다.")
    				wsocket.close();
    			}
    		});
    		
    		// 전송 버튼을 클릭시에 메시지 전송
    		$("#chat-input").keyup(function(){
				if(event.keyCode==13){
					wsocket.send("msg:" + curSession + " : "+$(this).val())
					//restoreMsg();
					$(this).val("").focus()
				}
			});
			$("#sendBtn").click(function(){
				wsocket.send("msg:" + curSession + " : "+$("#chat-name").val())
				//restoreMsg();
				$("#chat-input").val("").focus()					

			});
			
    	});
    	
    	function conn(){
    		wsocket = new WebSocket("ws:49.236.178.36:7080/${path}/chat-ws.do");
    		//wsocket = new WebSocket("ws:localhost:7080/${path}/chat-ws.do");
    		
    		wsocket.onopen = function(evt){
    			conSession = $("#conn-id").html() 
    			$("#chat-date").html(current);
	    		$("#chat-id").html(conSession);
				wsocket.send(conSession + "님이 대화를 시작하였습니다.")
	    		console.log("info : connection opened")
    		}
    		 
    		wsocket.onmessage=function(evt){
    			var msg = evt.data
    			
	    		ps = new PerfectScrollbar("#chat-contents", {
	    			wheelPropagation: true
	    		});			
    			var cc = parseInt($("#chat-contents").height());	
    			
    			if(msg.substring(0,4)=="msg:"){
    				var revMsg = msg.substring(4)
    				console.log("#메세지#" + msg)
    				$("#chat-contents").append(revMsg+"<br>")
    				$("#chat-contents").scrollTop(cc+=1000);
    			}

    		}
    		
    		wsocket.onclose=function(){
    			$("#conn-id").html() +"님이 대화를 종료하였습니다.";
    			$("#conn-id").html("")
    			$("#conn-id").html("").focus();
    			console.log("info : connection closed")
    		}
    		
    		wsocket.onerror = function(err) {
    			console.log("Err : ", err)
    		}
    	
    	}
    	
    	function restoreMsg(){
    		console.log("#저장#")
    		/*
    		console.log(localStorage.getItem("chat"))
    		if(localStorage.getItem("chat")==null){
    		     localStorage.setItem("chat", JSON.stringify([]));
    		}
    		*/
    		var chatHistory = JSON.parse(localStorage.getItem("chat"));
    		var send = document.querySelector("#sendBtn");
    		console.log(chatHistory)
    	    var message = {
    	         name : userName,
    	         text : document.querySelector("#chat-input").value,
    	         dateTime : new Date().toLocaleTimeString('ko-kr')
    	    };
    	    chatHistory.push(message);
    	    document.querySelector("#chat-input").value = "";
    	    localStorage.setItem("chat", JSON.stringify(chatHistory));
    	}
    	
    	function loadingMsg(){
	         localData = localStorage.getItem("chat");
	         localData = JSON.parse(localData);   	
	         var i = 0;
	         if(localStorage.getItem("chat") != null){  	 
		         while( i < Object.keys(localData).length ){
	    	         var templateDiv =
	    	             "<div>" 
	    	             + "<p>" 
	    	             + localData[i].name 
	    	             + "<br>" 
	    	             + localData[i].text  
	    	             + localData[i].dateTime 
	    	             + "</p>"
	    	             + "</div>";
	    	         i++;
	    	         //console.log(templateDiv)
		         }
	         chatContents.innerHTML += templateDiv;   		   		
	         }
    	}
    	
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