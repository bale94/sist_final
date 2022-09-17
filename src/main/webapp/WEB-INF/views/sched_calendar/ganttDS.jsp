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
<script src="${path}/resources/assets/js/config.js"></script>
<script src="${path}/a00_com/gantt/codebase/sources/dhtmlxgantt12.js"></script>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min4.css">
<!-- modal -->
<script src="${path}/a00_com/jquery.min.js"></script>
<!-- modal -->
<link
	href="${path}/a00_com/gantt/codebase/sources/skins/dhtmlxgantt_skyblue.css"
	rel="stylesheet">

<style type="text/css">
body {
	height: 200px;
	padding: 0;
	font-family: Public Sans;
	font-size: 15px;
	background-color: #f5f5f9;
	color: #9999ff;
}

.app-brand-text {
	font-family: Public Sans;
}

#gantt_here {
	width: 100%;
	height: 200px;
	background-color: white;
	margin-bottom: 20px;
}


.top-div {
	width: 100%;
	display: flex;
	justify-content: center;
}

.top-inner {
	width: 100%;
}

#modal-want {
	border: none;
	font-size: 14px;
	font-weight: 700;
	background-color: white;
	color: #9999ff;
	border-radius: 25px;
	padding: 5px 10px;
	margin-bottom: 7px;
	border: 1px #9999ff dashed;
}

.col {
	padding: 5px;
}

#exampleModalLongTitle {
	font-size: 15px;
}

.card{
	   border-radius: 0.5rem;
}


</style>

</head>

<body>
	<!-- Layout wrapper -->
	
			 <div class="content-wrapper">
				<div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                  <div class="card">
                        <div class="card-body pb-0 px-0 px-md-4 mb-4">
				
				<div class="c-wrapper">

					<div id="gantt_here"></div>
					<h2 data-toggle="modal" id="modalBox"
						data-target="#exampleModalCenter" style="display: none;">모달창
						로딩</h2>

					<!-- 특정한 data-target="#exampleModalCenter"로 된 DOM을 클릭시, 모달창이 로딩.. 모달 창 로딩.. -->

					<div class="modal" id="exampleModalCenter" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalCenterTitle">
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
										<input type="hidden" class="form-control"
											data-bs-toggle="tooltip" title="배경색상" value="#8b8bfd"
											name="backgroundColor"> <input type="hidden"
											class="form-control" data-bs-toggle="tooltip" title="글자색상"
											value="#ffffff" name="textColor">
										<input type="hidden" name="id" value="0">
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" id="regBtn" class="btn btn-primary">일정등록</button>
									<button type="button" id="uptBtn" class="btn btn-info">일정수정</button>
									<button type="button" id="delBtn" class="btn btn-danger">일정삭제</button>
									<button type="button" id="cloBtn" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- 모달 끝 -->
					 </div>
              </div>
              
            </div>
				</div>
					<!-- / Layout page -->
				</div>
				
			</div>
			
		<!-- / Layout wrapper -->

		<!-- Core JS -->
		<!-- build:js assets/vendor/js/core.js -->


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

		<script type="text/javascript">
		var auth = "${auth}";
		$(document).ready(function(){
			
			if(auth=="user"||auth=="pm"){
				var todolists
				var projectlists
				$.ajax({
					type : "post",
					url : "${path}/ganList.do",
					dataType : "json",
					traditional : true,
					success : function(data) {
						
						todolists=data.todolist
						projectlists=data.projectlist
						if(projectlists=="N"){
							
						}else{
						var ptitle, ttitle;
						var st,sdate;
						var edate;
						var duration;
						var dt = [];
						var idd;
						var bgcolor, textcolor;
						
				    		 ptitle=projectlists.title
				    		 st=projectlists.start
				    		 sdate=st.substring(8,10)+"-"+st.substring(5,7)+"-"+st.substring(0,4)
				    		 edate=projectlists.end
				    		 duration=(Number)(projectlists.duration)
				    		 idd=(Number)(projectlists.id)
				    		 bgcolor=projectlists.backgroundColor
				    		 textcolor=projectlists.textColor
				    		 console.log(idd)
				    		 dt.push({ "id": "10", "text": ptitle, "start_date": sdate, "duration": duration, "order": 10, "progress": 0.4, "open": true, "pt_no":idd, "sdate":st, "edate":edate, "title":ptitle, "bc": bgcolor, "tc":textcolor });
						
						$(todolists).each(function(index,item){
							
							ptitle=item.title
							st=item.start
							sdate=st.substring(8,10)+"-"+st.substring(5,7)+"-"+st.substring(0,4)
							edate=item.end
							duration=(Number)(item.duration)
							idd=(Number)(item.id)
							bgcolor=item.backgroundColor
				    		textcolor=item.textColor
							dt.push({ "id": index+1, "text": ptitle, "start_date": sdate, "duration": duration, "order": (index+1)*10, "progress": 0.6, "parent": "10", "pt_no":idd, "sdate":st, "edate":edate, "title":ptitle, "bc": bgcolor, "tc":textcolor })
							
						});
						
						const tasks = {
						    "data": dt
						,
						    
						}
						gantt.init("gantt_here");
						gantt.parse(tasks);
						}
						
					},
					error : function(err) {
						console.log(err)
					}

				});
			}else{
				var projectlists
				$.ajax({
					type : "post",
					url : "${path}/ganList2.do",
					dataType : "json",
					traditional : true,
					success : function(data) {
						
						projectlists=data.projectlist
						if(projectlists=="N"){
							
						}else{
						var ptitle;
						var st,sdate;
						var edate;
						var duration;
						var dt = [];
						var idd;
						var bgcolor, textcolor;
						
						$(projectlists).each(function(index,item){
				    		 ptitle=item.title
				    		 st=item.start
				    		 sdate=st.substring(8,10)+"-"+st.substring(5,7)+"-"+st.substring(0,4)
				    		 edate=item.end
				    		 duration=(Number)(item.duration)
				    		 idd=(Number)(item.id)
				    		 bgcolor=item.backgroundColor
				    		 textcolor=item.textColor
				    		 dt.push({ "id": (index+1)*10, "text": ptitle, "start_date": sdate, "duration": duration, "order": 10, "progress": 0.4, "open": true, "pt_no":idd, "sdate":st, "edate":edate, "title":ptitle, "bc": bgcolor, "tc":textcolor });
						
						});
						
						
						const tasks = {
						    "data": dt
						,
						    
						}
						gantt.init("gantt_here");
						gantt.parse(tasks);
						}
						
					},
					error : function(err) {
						console.log(err)
					}

				});
				
			}
			
			
	    });
		
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
						$("#frm01").attr("action", "${path}/projectInsert2.do");
					} else {
						$(".selectpt").attr("name", "todo_no")
						$("#frm01").attr("action", "${path}/todoInsert2.do");
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
						$("#frm01").attr("action", "${path}/todoUpdate3.do");
					} else {
						$("#frm01").attr("action", "${path}/projectUpdate3.do");
					}
					
					$("#frm01").submit();
				}
				
			}
		});
		
		$("#delBtn").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				if ($(".defaultop").text().charAt(1) == "업") {
					$("#frm01").attr("action", "${path}/todoDelete2.do");
				} else {
					$("#frm01").attr("action", "${path}/projectDelete2.do");
				}
				$("#frm01").submit();
			}
		});
		
		$("#cloBtn").click(function(){
			$(".modal").hide();
		});
		
		$(".close").click(function(){
			$(".modal").hide();
		});
		function wantmodal(){
			if(auth=="pm"||auth=="user"){
			$(".modal").show();
			}
			$("#regBtn").show()
			$("#uptBtn").hide()
			$("#delBtn").hide()
			$("#exampleModalLongTitle").text("일정등록");
			$(".selectpt").removeAttr("disabled");
			$("#frm01 [name=start]").attr("type", "Date")
			$("#frm01 [name=end]").attr("type", "Date")
			$("#frm01")[0].reset();
			if(auth=="pm"){
				$(".defaultop").text("#프로젝트/업무 선택#");
			}else{
				$(".defaultop").text("#업무 선택#");
			}
		}
		function wantclick(e){
			if(auth=="pm"||auth=="user"){
			if (($(e).attr("aria-label")).charAt(8) == "업") {
				var checkE
				$.ajax({
					type : "post",
					url : "${path}/ckempno.do?id="+$(e).attr("pt_no"),
					dataType : "json",
					success : function(data) {					
						checkE=data.check
						if(checkE=="Y"){					    	
							$(".modal").show();
							$("#regBtn").hide()
							$("#uptBtn").show()
							$("#delBtn").show()
							$("#exampleModalLongTitle").text("일정상세");
							$(".defaultop").text($(e).attr("title"));
							$(".selectpt").attr("disabled","disabled");
							
				$("#frm01 [name=id]").val((Number)($(e).attr("pt_no")))
				$("#frm01 [name=start]").attr("type", "Date")
				$("#frm01 [name=end]").attr("type", "Date")
				$("#frm01 [name=start]").val($(e).attr("sdate"))
				$("#frm01 [name=end]").val($(e).attr("edate"))
				$("#frm01 [name=backgroundColor]").val($(e).attr("backgroundColor"))
				$("#frm01 [name=textColor]").val($(e).attr("textColor"))
				}else{
					alert("본인 업무 외 다른 업무의 일정은 변경할 수 없습니다.")
				}
				},
				error : function(err) {						console.log(err)
				}
				});
				} else {
				var checkE
				$.ajax({
				type : "post",							url : "${path}/ckpm.do",
				dataType : "json",
				success : function(data) {
				checkE=data.checkpm
				if(checkE=="Y"){
				$(".modal").show();
				$("#regBtn").hide()
				$("#uptBtn").show()
				$("#delBtn").show()
				$("#exampleModalLongTitle").text("일정상세");
				$(".defaultop").text($(e).attr("title"));
				$(".selectpt").attr("disabled","disabled");

				//formData(arg.event)
				
				$("#frm01 [name=id]").val((Number)($(e).attr("pt_no")))
				$("#frm01 [name=start]").attr("type", "Date")
				$("#frm01 [name=end]").attr("type", "Date")
				$("#frm01 [name=start]").val($(e).attr("sdate"))
				$("#frm01 [name=end]").val($(e).attr("edate"))
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
			
		}

		
</script>
</body>

</html>
