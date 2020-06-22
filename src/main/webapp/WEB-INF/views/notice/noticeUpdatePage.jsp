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

	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
</head>
<body>

<div class="container">

 <br><h4 class="text-center">수정</h4><br>  
    <form>
	    <div class="form-group">
	      	<label for="inputTitle">제목</label>
	      	<input type="text" class="form-control" id="inputTitle" placeholder="제목" name="title" value="title">
	    </div>
	    <div class="form-group">
    		<label for="txaContent">내용</label>
    		<textarea class="form-control" id="txaContent" rows="10" name="content">content</textarea>
  		</div>
	</form>
	<button id="btnUpdate" type="button" class="btn btn-primary">수정하기</button>
  
</div>
<form id="formUpdate" name="updatePage" method="POST">
	<input type="hidden" name="action" value="update">
	<input type="hidden" name="boardId" id="hiddenBoardId" value="id">
	<input type="hidden" name="title" id="hiddenTitle">
	<input type="hidden" name="content" id="hiddenContent">
</form>			
<script>
$(document).ready(function(){
	$("#btnUpdate").click(function(){
		var $form = $("#formUpdate");
		$("#hiddenTitle").val( $("#inputTitle").val() );
		$("#hiddenContent").val( $("#txaContent").val() );
		$form.attr("action", "${root}/notice.do");
		$form.submit();
	});
});

</script>

</body>
</html>