<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="${path}/resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
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

<link href='${path}/a00_com/lib/main2.css' rel='stylesheet' />
<script src='${path}/a00_com/lib/main3.js'></script>
<!-- calendar -->
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min4.css">
<!-- modal -->
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<!-- modal -->
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script
	src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api"
	type="text/javascript"></script>
<style type="text/css">
body {
	margin: 40px 10px;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	
	background-color: #f5f5f9;
	color: #9999ff;
}
.app-brand-text{
    	 font-family: Public Sans;
    	}
#calendar {
	width: 1300px;
	background-color: white;
	padding: 40px;
	border-radius: 0.5rem;
	font-size: 14px;
	box-shadow: 0 2px 6px 0 rgb(67 89 113 / 12%);
}
	

.c-wrapper {
	width: 100%;
	display: flex;
	justify-content: center;
	
}

.col {
	padding: 5px;
}
.layout-page{
display: inline-block;

}
</style>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
	
	// 초기 화면 로딩 날짜 오늘 날짜로 설정
	var date2 = new Date()
	//var date = date2.toISOString().split("T")[0]
	var offset = date2.getTimezoneOffset() * 60000; //ms단위라 60000곱해줌
	var dateOffset = new Date(date2.getTime() - offset);
	var date = dateOffset.toISOString().split("T")[0]
	console.log(date)
	var auth = "${auth}";
	var mclick = "${mclick}";
	$(".selectpt").attr("abled","abled");
	var calendarEl = document.getElementById('calendar');

	var calendar = new FullCalendar.Calendar(calendarEl, {
		headerToolbar : {
			left : 'prev,next today',
			center : 'title',
			right : 'dayGridMonth,timeGridWeek,timeGridDay'
		},
		initialDate : date,
		navLinks : true, // can click day/week names to navigate views
		selectable : true,
		selectMirror : true,
		select : function(arg) {
			$("#regBtn").show()
			$("#uptBtn").hide()
			$("#delBtn").hide()
			
			if(auth=="pm"){
				$(".defaultop").text("#프로젝트/업무 선택#");
				$(".selectpt").removeAttr("disabled");
				$("#frm01 [name=start]").attr("type", "Date")
				$("#frm01 [name=end]").attr("type", "Date")
				$("#exampleModalLongTitle").text("일정등록");
				$("#frm01")[0].reset(); // 기존 등록된 데이터 삭제 처리..
				$("#modalBox").click(); // 팝업창 로딩:이벤트를 하지 않더라도 코드에 의해 강제 실행 처리..
			}else if(auth=="user"){
				$(".defaultop").text("#업무 선택#");
				$(".selectpt").removeAttr("disabled");
				$("#frm01 [name=start]").attr("type", "Date")
				$("#frm01 [name=end]").attr("type", "Date")
				$("#exampleModalLongTitle").text("일정등록");
				$("#frm01")[0].reset(); // 기존 등록된 데이터 삭제 처리..
				$("#modalBox").click(); // 팝업창 로딩:이벤트를 하지 않더라도 코드에 의해 강제 실행 처리..
			}else{
				
			}
			
		},
		// 있는 데이터를 클릭시, (상세 내용을 보고 수정/삭제..)
	      eventClick: function(arg) {
	    	  if(auth=="user" || auth=="pm"){
	    	  if (arg.event.title.charAt(1) == "업") {
	    		  var checkE
	    		  $.ajax({
						type : "post",
						url : "${path}/ckempno.do?id="+arg.event.id,
						dataType : "json",
						success : function(data) {
							checkE=data.check
							if(checkE=="Y"){
								  
				    			  $("#regBtn").hide()
						    	  $("#uptBtn").show()
						    	  $("#delBtn").show()
						    	 $("#exampleModalLongTitle").text("일정상세");

						    	 $(".defaultop").text(arg.event.title);
						    	  $(".selectpt").attr("disabled","disabled");
						    	  
						    	  $("#modalBox").click(); // 모달창 로딩.. 
						    	  formData(arg.event)
						    	  $("#frm01 [name=start]").attr("type", "Date")
							      $("#frm01 [name=end]").attr("type", "Date")
							      var offset = (arg.event.start).getTimezoneOffset() * 60000; //ms단위라 60000곱해줌
								  var dateOffset = new Date((arg.event.start).getTime() - offset);
							      $("#frm01 [name=start]").val(dateOffset.toISOString().substr(0,10))
							      $("#frm01 [name=end]").val((arg.event.end).toISOString().substr(0,10))
				    		  }else{
				    			  alert("본인 업무 외 다른 업무의 일정은 변경할 수 없습니다.")
				    		  }
						},
						error : function(err) {
							console.log(err)
						}

					});
	    		  
				} else {
					var checkE
		    		  $.ajax({
							type : "post",
							url : "${path}/ckpm.do",
							dataType : "json",
							success : function(data) {
								checkE=data.checkpm
								if(checkE=="Y"){

					    			  $("#regBtn").hide()
							    	  $("#uptBtn").show()
							    	  $("#delBtn").show()
							    	 $("#exampleModalLongTitle").text("일정상세");

							    	 $(".defaultop").text(arg.event.title);
							    	  $(".selectpt").attr("disabled","disabled");
							    	  
							    	  $("#modalBox").click(); // 모달창 로딩.. 
							    	  formData(arg.event)
							    	  $("#frm01 [name=start]").attr("type", "Date")
								      $("#frm01 [name=end]").attr("type", "Date")
								      
								      $("#frm01 [name=start]").val((arg.event.start).toISOString().substr(0,10))
								      $("#frm01 [name=end]").val((arg.event.end).toISOString().substr(0,10))
					    		  }else{
					    			  alert("PM 외 프로젝트 일정은 변경할 수 없습니다.")
										
					    		  }
							},
							error : function(err) {
								console.log(err)
							}

						});
				}
	    	  
	    	  }
	    	  else{
	    		  
	    	  }

	      },
		eventDrop : function(info) {
			// 일정을 클릭해서 드랍처리 시, 날짜 변경
			if(auth=="user"||auth=="pm"){ // 권한이 user, pm일 때 일정 드랍 시
			 if (info.event.title.charAt(1) == "업") { // 클릭하여 드랍한 일정이 업무일 때
	    		  var checkE
	    		  $.ajax({
						type : "post",
						url : "${path}/ckempno.do?id="+info.event.id, // 자신의 업무인지 체크
						dataType : "json",
						success : function(data) {
							checkE=data.check
							if(checkE=="Y"){ // 자신의 업무가 맞는 경우 update
								formData(info.event)
								$("#frm01").attr("action", "${path}/todoUpdate.do");
								$("#frm01").submit();
				    		  }else{ // 자신의 업무가 아닌 경우 update 불가, 창 새로고침
				    			  alert("본인 업무 외 다른 업무의 일정은 변경할 수 없습니다.")
				    			  location.href="calendar.do"
				    		  }
						}
					});
				} else {  // 클릭하여 드랍한 일정이 프로젝트일 때
			    		  var checkE
			    		  $.ajax({
								type : "post",
								url : "${path}/ckpm.do", // 현재 접속한 계정이 pm인지 확인
								dataType : "json",
								success : function(data) {
									checkE=data.checkpm
									if(checkE=="Y"){ // pm이 맞는 경우 변경 가능
										formData(info.event)
										$("#frm01").attr("action", "${path}/projectUpdate.do");
										$("#frm01").submit();
						    		  }else{ // pm이 아닌 경우 변경 불가, 창 새로고침
						    			  alert("PM 외 프로젝트 일정은 변경할 수 없습니다.")
											location.href="calendar.do"
						    		  }
								}
							});
				}
			}
			else{ // 권한이 ceo, admin 일 때 일정 드랍 시 database update 없음, 창 새로고침
				location.href="calendar.do"
			}	
		},
		
		
		eventResize : function(info) {
			// 시간일정을 늘리거나 줄일때..
			formData(info.event)
			if (info.event.title.charAt(1) == "업") {
				$("#frm01").attr("action", "${path}/todoUpdate.do");
			} else {
				$("#frm01").attr("action", "${path}/projectUpdate.do");
			}

			$("#frm01").submit();
		},

		editable : true,
		dayMaxEvents : true, // allow "more" link when too many events
		events : function(info, successCallback, failureCallback) {
			if(auth=="pm"||auth=="user"){
				if(mclick=="Y"){
					$.ajax({
						type : "post",
						url : "${path}/calList3.do",
						dataType : "json",
						success : function(data) {
							successCallback(data.projectlist)
							   $("#m-a-btn").removeClass("mysch-btn");
				               $("#m-a-btn").addClass("allsch-btn");
				               $("#m-a-btn").text("전체 일정");
						},
						error : function(err) {
							console.log(err)
						}

					});
					   
				}
				else{
					$.ajax({
						type : "post",
						url : "${path}/calList.do",
						dataType : "json",
						success : function(data) {
							successCallback(data.projectlist)
							 $("#m-a-btn").removeClass("allsch-btn");
				               $("#m-a-btn").addClass("mysch-btn");
				               $("#m-a-btn").text("내 일정");
						},
						error : function(err) {
							console.log(err)
						}

					});
				}
				
			
			
			}else{
				$.ajax({
					type : "post",
					url : "${path}/calList2.do",
					dataType : "json",
					success : function(data) {
						successCallback(data.projectlist)
					},
					error : function(err) {
						console.log(err)
					}

				});
			}
		} //events 끝
		
		
	});

	calendar.render();
	if(auth=="user"){
		$(".fc-toolbar-chunk").first().append("<button class='fc-button fc-button-primary mysch-btn' id='m-a-btn' type='button'>내 일정</button>")
	}
	$("#m-a-btn").click(function(){
		if($(this).hasClass("mysch-btn")){
			$("[name=ma]").val("0")
			$("#macal").submit();
		}else{
			$("[name=ma]").val("1")
			$("#macal").submit();
		}
		
		
	});
	
});


function formData(event) {

	$("#frm01 [name=id]").val(event.id)
	//$("#frm01 [name=title]").val(event.title)
	$("#frm01 [name=start]").attr("type", "text")
	$("#frm01 [name=start]").val((event.start).toISOString())
	if (event.end != null) {
		$("#frm01 [name=end]").attr("type", "text")
		$("#frm01 [name=end]").val(event.end.toISOString())
	} else {
		$("#frm01 [name=end]").attr("type", "text")
		$("#frm01 [name=end]").val(event.start.toISOString())
	}
	$("#frm01 [name=backgroundColor]").val(event.backgroundColor)
	$("#frm01 [name=textColor]").val(event.textColor)
}

</script>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			
       
          
			<!-- Layout container -->
			<div class="layout-page">
				<div class="c-wrapper">
				
					<div id='calendar'></div>
					<h2 data-toggle="modal" id="modalBox"
						data-target="#exampleModalCenter" style="display: none;">모달창
						로딩</h2>

					<!-- 특정한 data-target="#exampleModalCenter"로 된 DOM을 클릭시, 모달창이 로딩.. 모달 창 로딩.. -->

					<div class="modal fade" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form id="frm01" class="form" method="post">
										<input type="hidden" name="id" value="0" />
										<div class="row">
											<div class="col">
												<select class="form-control selectpt"
													data-bs-toggle="tooltip" title="프로젝트/일정">
													<option class="defaultop" value="" selected>#프로젝트/업무
														선택#</option>

													<c:forEach var="p" items="${project}">
														<option class="projectval" value="${p.project_no}">[프로젝트]
															${p.pname}</option>
													</c:forEach>
													<option value="">------------------------------</option>

													<c:forEach var="t" items="${todo}">
														<option class="todoval" value="${t.todo_no}">[업무]
															${t.tname}</option>
													</c:forEach>

												</select>

											</div>

										</div>
										<div class="row">
											<div class="col">
												<input type="date" class="form-control sdt"
													data-bs-toggle="tooltip" title="시작일" name="start">
											</div>
											<div class="col">
												<input type="date" class="form-control edt"
													data-bs-toggle="tooltip" title="종료일" name="end">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="color" class="form-control"
													data-bs-toggle="tooltip" title="배경색상" value="#8b8bfd"
													name="backgroundColor">
											</div>
											<div class="col">
												<input type="color" class="form-control"
													data-bs-toggle="tooltip" title="글자색상" value="#ffffff"
													name="textColor">
											</div>
										</div>


									</form>
								</div>
								<div class="modal-footer">
									<button type="button" id="regBtn" class="btn btn-primary">일정등록</button>
									<button type="button" id="uptBtn" class="btn btn-info">일정수정</button>
									<button type="button" id="delBtn" class="btn btn-danger">일정삭제</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 모달 끝 -->
					
				</div>
			

		</div>
		<!-- / Layout wrapper -->
	</div>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script type="text/javascript">
	$("#regBtn").click(function() {
		if (confirm("등록하시겠습니까?")) {
			if ($(".selectpt").val() == "") {
				alert("프로젝트/일정을 선택해 주세요.");
				return;
			} else if ($(".sdt").val() == "") {
				alert("시작일을 선택해 주세요.");
				return;
			} else if ($(".edt").val() == "") {
				alert("종료일을 선택해 주세요.");
				return;
			} else {

				if ($(".selectpt option:selected").hasClass("projectval")) {
					$(".selectpt").attr("name", "project_no");
					$("#frm01").attr("action", "${path}/projectInsert.do");
				} else {
					$(".selectpt").attr("name", "todo_no")
					$("#frm01").attr("action", "${path}/todoInsert.do");
				}
				$("#frm01").submit();
			}
		}
	});
	$("#uptBtn").click(function() { 
		if (confirm("수정하시겠습니까?")) {
			if ($(".sdt").val() == "") {
				alert("시작일을 선택해 주세요.");
				return;
			} else if ($(".edt").val() == "") {
				alert("종료일을 선택해 주세요.");
				return;
			} else {
				
				if ($(".defaultop").text().charAt(1) == "업") {
					$("#frm01").attr("action", "${path}/todoUpdate2.do");
				} else {
					$("#frm01").attr("action", "${path}/projectUpdate2.do");
				}
				
				$("#frm01").submit();
			}
			
		}
	});
	
	$("#delBtn").click(function() {
		if (confirm("삭제하시겠습니까?")) {
			if ($(".defaultop").text().charAt(1) == "업") {
				$("#frm01").attr("action", "${path}/todoDelete.do");
			} else {
				$("#frm01").attr("action", "${path}/projectDelete.do");
			}
			$("#frm01").submit();
		}
	});
	</script>
	<script src="${path}/resources/assets/vendor/libs/jquery/jquery.js"></script>
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

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>

</body>
</html>
