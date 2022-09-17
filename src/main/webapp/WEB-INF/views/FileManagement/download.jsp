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
  <style>
  input:required {
  border: 1px dashed red;
}
label {
  display: block;
  margin: 1px;
  padding: 1px;
}

.field {
  margin: 1px;
  padding: 1px;
}

input:required {
  border-color: #800000;
  border-width: 3px;
}

input:required:invalid {
  border-color: #c00000;
}
  </style>
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
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="${path}/resources/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="${path}/resources/assets/js/config.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <!-- Page CSS -->
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
      $("[name=fname]").click(function(){
    	  
			if(confirm("다운로드하시겠습니까?")){
				if($(this).val()==""){
					alert("해당 목록에 파일이 없습니다.");
					return;
				}
				alert("다운로드성공!");
				location.href="${path}/download.do?fname="+$(this).val()
			}
		});
   });
</script>
</head>

<body>
  <!-- Communication Management -->
            <div class="container-xxl flex-grow-1 container-p-y">
               <h4 class="fw-bold py-3 mb-4" style="margin-top:20px;"><span class="text-muted fw-light">산출물 관리 /</span> 다운로드</h4>
               </div>
<div class="container"> 
<div class="card" style="border:solid;">
   <form id="frm01" action="${path}/InsertPM.do" class="form"  method="post">
   
     <nav class="navbar navbar-expand-sm navbar-dark">
     <div class="input-group-prepend ">
				<span class="text-center input-group-text ">글 번호:</span>
			</div>
			<input name="no" class="form-control" id="fevent"
				value="${pmboard.project_no}" readonly/>
					
				
	<div class="input-group-prepend ">
				<span class="text-center input-group-text ">담당자 명:</span>
			</div>
			<input name="name" class="form-control" id="fevent"
				value="${pmboard.name}" readonly />			
				
		
    </nav>
    <br>
    <div class="input-group-prepend ">
				<span class="text-center input-group-text ">프로젝트 명:</span>
			</div>
			<input name="pname" class="form-control" id="fevent"
				value="${pmboard.pname}" readonly />
    <br>
    
 <div class="input-group-prepend">
				<span class="text-center input-group"><a style=color:red;>*</a>첨부파일</span>
			</div>
			<input name="fname" class="form-control" 
				value="${pmboard.fname}" placeholder="첨부파일이 없습니다" required/>
			<br>
   </form>
   </div>
    
   </div>
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
 
          <!-- Content wrapper -->
 
        <!-- / Layout page -->


      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>

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
    <script type="text/javascript">
		function logOut(){
			if(confirm("로그아웃 하시겠습니까?")){
				alert("로그아웃 되었습니다. 로그인 페이지로 이동합니다");
				location.href="${path}/logout.do";
			}
		}
	</script>
   
</body>
</html>