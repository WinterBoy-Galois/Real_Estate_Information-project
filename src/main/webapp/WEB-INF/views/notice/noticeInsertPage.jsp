<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="root" value="${pageContext.request.contextPath}"/>   
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Board</title>
</head>
<body>

<div class="container">

  <br><h4 class="text-center">공지사항 작성</h4><br>
  
    <form>
	    <div class="form-group">
	      	<label for="inputTitle">제목</label>
	      	<input type="text" class="form-control" id="inputTitle" placeholder="제목" name="title">
	    </div>
	    <div class="form-group">
    		<label for="txaContent">내용</label>
    		<textarea class="form-control" id="txaContent" rows="10" name="content"></textarea>
  		</div>
  		<input type="hidden" name="username" id = "username" value="${userinfo.id}">
	</form>
	<button id="btnInsert" type="button" class="btn btn-primary">등록하기</button>
  
</div>

<form id="formInsert" name="insert" method="POST" action="${root}/notice.do">
	<input type="hidden" name="action" value="insert">
	<input type="hidden" name="title" id="hiddenTitle">
	<input type="hidden" name="content" id="hiddenContent">
	<input type="hidden" name="username" id = "username" value="${userinfo.id}">
</form>


<script>
	$(document).ready(function(){
		$("#btnInsert").click(function(){
			console.log("insert");
			insert();
		});
	});

	function insert(){
		alert("??");
		$.ajax(
				{
			        type : 'post',
			        url : '<%=contextPath%>/noticeInsert',
			        dataType : 'json',
			        data : 
					{
						userName: $("#username").attr('value'),
						title : $("#inputTitle").val(),
						content : $("#txaContent").val(),
						regDt : new Date(),
						readCount : 0
					},
			        success : function(data, status, xhr) { 
						console.log(data);
						alert("등록 되었습니다.");
			        }, 
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
			        	console.log(jqXHR.responseText); 
			        }
			    });
		
	}
	
</script>

</body>
</html>