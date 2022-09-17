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
<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
</head>

<body>
<a id="send-to-btn" href="#" onclick="sendTo();">
  <img src="//k.kakaocdn.net/14/dn/btqc6xrxbuT/7VJk7YSWITkz9K9pbXEffk/o.jpg" alt="나에게 보내기 버튼" />
</a>
<script type="text/javascript">
//카카오 api를 활용 , 수정 클릭시 메시지 전송
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
                '*보안 경고* 프로젝트에 접근이 시도됐습니다.',
                link: {
                	mobile_web_url: 'https://developers.kakao.com',
                    web_url: 'https://developers.kakao.com',
                  },
            },
          },
          success: function(res) {
            alert('success: ' + JSON.stringify(res))
          },
          fail: function(err) {
            alert('error: ' + JSON.stringify(err))
          },
        })
      },
      fail: function(err) {
        alert('failed to login: ' + JSON.stringify(err))
      },
    })
  }
</script>
<!-- ---------------------------------------------------------------- -->
<input type="button" onClick="sendLinkCustom();" value="Custom"/>
<input type="button" onClick="kakao()" value="kakao"/>
    <input type="button" onClick="sendLinkDefault();" value="Default"/>

<script type="text/javascript">
    function sendLinkCustom() {
        Kakao.init("896f10f5046b7f5d4481bcd8074bf97e");
        Kakao.Link.sendCustom({
            templateId: 81097
        });
    }
</script>

<script type="text/javascript">

Kakao.API.request({
	  url: '/v2/api/talk/memo/default/send',
	  data: {
	    template_object: {
	      object_type: 'feed',
	      content: {
	        title: '카카오톡 링크 4.0',
	        description: '디폴트 템플릿 FEED',
	        image_url:
	          'https://mud-kage.kakao.com/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
	        link: {
	          web_url: 'https://developers.kakao.com',
	          mobile_web_url: 'https://developers.kakao.com',
	        },
	      },
	      item_content: {
	        profile_text: 'Kakao',
	        profile_image_url: 'https://mud-kage.kakao.com/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
	        title_image_url: 'https://mud-kage.kakao.com/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
	        title_image_text: 'Cheese cake',
	        title_image_category: 'Cake',
	        items: [
	          {
	            item: 'Cake1',
	            item_op: '1000원',
	          },
	          {
	            item: 'Cake2',
	            item_op: '2000원',
	          },
	          {
	            item: 'Cake3',
	            item_op: '3000원',
	          },
	          {
	            item: 'Cake4',
	            item_op: '4000원',
	          },
	          {
	            item: 'Cake5',
	            item_op: '5000원',
	          },
	        ],
	        sum: 'Total',
	        sum_op: '15000원',
	      },
	      social: {
	        like_count: 100,
	        comment_count: 200,
	      },
	      button_title: '바로 확인',
	    },
	  },
	  success: function(response) {
	    console.log(response);
	  },
	  fail: function(error) {
	    console.log(error);
	  },
	});

</script>



</body>
</html>