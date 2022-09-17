<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">타이틀</h2>

</div>
<div class="container">

  <div class="jumbotron text-center">
		<h2 class="plogo">프로젝트 등록 페이지</h2>
	</div>
	<form id="frm01" enctype="multipart/form-data" action="${path}/FileInsertPM.do" 
		 class="form"  method="post"style="border: solid;">
<div class="input-group mb-2 ">
			<div class="input-group-prepend ">
				<span class="text-center input-group-text ">글번호:</span>
			</div>
		<input type="text" name="project_no" class="form-control" 
				value="${pmboard.project_no}" readonly/>
		 	
			
		 </div>
			
			
			
			
		<!-- 
				
			
		 
			<!--
			<div class="input-group-prepend">
				<span class="text-center input-group-text">상위글번호</span>
			</div>
			<input name="refno" class="form-control" 
				value="${pmboard.refno}" readonly/>	
			 -->
			
		


			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">프로젝트 명:</span>
				</div>
				<input name="pname" class="form-control" value="${pmboard.pname}"
					placeholder="프로젝트 제목을 입력하세요" />
			</div>

			
			<!-- ${pcategory} ${pmboard.progress}-->
			
			<div class="input-group-prepend">
				<span class="text-center input-group-text">프로젝트 유형: ${pmboard.pcategory}</span>
			</div>
		
			<select name="pcategory">
				<option value="시작">시작</option>
				<option value="정상진행">정상진행</option>
				<option value="종료">종료</option>
				<option value="취소">취소</option>
			</select>
			<div class="input-group-prepend">
				<span class="text-center input-group-text">진행도: ${pmboard.progress}%</span>
			</div>
			
			<select name="progress">

				<option value=0>0</option>
				<option value=10>10</option>
				<option value=20>20</option>
				<option value=30>30</option>
				<option value=40>40</option>
				<option value=50>50</option>
				<option value=60>60</option>
				<option value=70>70</option>
				<option value=80>80</option>
				<option value=90>90</option>
				<option value=100>100</option>

			</select>
			<!-- 
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">담당자:</span>
				</div>
				<select name="auth">
					<option value="">CEO</option>
					<option value="admin">Admin</option>
					<option value="pm">PM</option>
					<option value="user">user</option>
				</select>
			</div>
			
			 -->
			
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="text-center input-group-text">내 용</span>
				</div>
				<textarea name="content" rows="10" class="form-control"
					placeholder="내용 입력하세요">${pmboard.content}</textarea>
			</div>
<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="text-center input-group-text">파일첨부</span>
			</div>
			<input type="file" name="report" class="form-control" 
				placeholder="파일을 첨부하세요" />	
		</div>

			<div class="text-right" align="right">
				<button type="button" onclick="updateProc()" class="btn btn-success">수정</button>
			<button type="button" onclick="deleteProc()" class="btn btn-danger">삭제</button>
			<button type="button" onclick="goMain()" class="btn btn-info">메인화면</button>
			</div>
		</form>
	</div>
	

<script type="text/javascript">
function insertProc() {
	if (confirm("등록하시겠습니까?")) {
		var subjectVal = $("[name=pname]").val();
		if (subjectVal == "") {
			alert("프로젝트 제목을 등록하세요");
			$("[name=pname]").focus();
			return; // 프로세스를 중단 처리
		}
		var writerVal = $("[name=writer]").val();
		if (writerVal == "") {
			alert("작성자를 등록하세요");
			$("[name=writer]").focus();
			return; // 프로세스를 중단 처리
		}
		document.querySelector("form").submit();
	}
}
</script>

	<script type="text/javascript">
	function updateProc(){
		if(confirm("수정하시겠습니까?")){
			// 유효성 check updateBoard.do
			var subjectVal = $("[name=project_no]").val();
		if (subjectVal == "") {
			alert("글번호를 입력하세요");
			$("[name=project_no]").focus();
			return; // 프로세스를 중단 처리
		}	
				
			$("form").attr("action","${path}/updateBoard.do");
			$("form").submit();
		}
	}
	function deleteProc(){
		if(confirm("삭제하시겠습니까?")){
			var subjectVal = $("[name=project_no]").val();
			if (subjectVal == "") {
				alert("글번호를 입력하세요");
				$("[name=project_no]").focus();
				return; // 프로세스를 중단 처리
			}	
			$("form").attr("action","${path}/deleteBoard.do");
			$("form").submit();		
		}
	}
	var proc = "${proc}"
		if(proc=="pmb"){
			if(confirm("수정성공!\n조회리스트화면으로 이동하시겠습니까?")){
				location.href="${path}/PM.do";
			}
		}
		if(proc=="del"){
			alert("삭제성공\n조회 리스트화면으로 이동!")
			location.href="${path}/PM.do";
		}	
		function goMain() {
			location.href = "${path}/PM.do";
		}
		
	</script>

</body>
</html>