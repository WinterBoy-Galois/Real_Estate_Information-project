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
	<title>Detail</title>
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/alertify.min.js"></script>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/alertify.min.css"/>
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.12.0/build/css/themes/default.min.css"/>
</head>
<body>

<div class="container">

	<br><h4 class="text-center">Detail View</h4><br>
  
	<table class="table table-hover">
		<tbody>
	    	<tr><td>글번호</td><td id="tdBoardId" data-boardId='id'>id</td></tr>
			<tr><td>제목</td><td>title</td></tr>
			<tr><td>내용</td><td>content</td></tr>
			<tr><td>작성자</td><td>username</td></tr>
			<tr><td>작성일시</td><td>regdt</td></tr>
		</tbody>
	</table>

	<c:if test="${userinfo.isAdmin eq 'admin'}">
	<button id="btnUpdatePage" type="button" class="btn btn-info">수정</button>
	<button id="btnDelete" type="button" class="btn btn-warning">삭제</button>
	</c:if>

	<button id="btnMain" type="button" class="btn btn-primary">목록 보기</button>
</div>

<form id="formUpdatePage" name="updatePageForm" method="POST">
	<input type="hidden" name="boardId" id="hiddenBoardId" value="id">
	<input type="hidden" name="title" value="title">
	<input type="hidden" name="content" value="content">	
	<input type="hidden" name="action" value="updatePage">
</form>		
<form id="formDelete" name="deleteForm" method="POST">
	<input type="hidden" name="boardId" id="hiddenBoardId" value="id">
	<input type="hidden" name="action" value="delete">
</form>
<script>
$(document).ready(function(){
	$("#btnMain").click(function(){
		location.href="${root}/notice.do?action=main";
	});

	$("#btnUpdatePage").click(function(){
		$("#formUpdatePage").attr("action", "${root}/notice.do");
		$("#formUpdatePage").submit();
	});
	
	$("#btnDelete").click(function(){
		if( confirm("글을 삭제하시겠습니까?") ){
			$("#formDelete").attr("action", "${root}/notice.do");
			$("#formDelete").submit();
		}
	});
});

</script>

</body>
</html>