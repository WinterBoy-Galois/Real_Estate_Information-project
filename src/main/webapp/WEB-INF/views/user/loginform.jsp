<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h4>로그인</h4>
	<hr>
	<form action="login" method="POST">
		<table style="border: 1px; margin: auto; text-align: center;">
			<tbody>
				<tr><td>ID</td><td><input type="text" name="id"></td></tr>
				<tr><td>Password</td><td><input type="password" name="password"></td></tr>
				<tr><td colspan="2"><button type="submit">로그인</button></td></tr>
			</tbody>
		</table>
	</form>
<%
	String result = request.getParameter("result");
	if( "fail".equals(result) ){
%>
	<script>alert("아이디 또는 패스워드가 올바르지 않습니다.")</script>
<%
	}
%>

<%-- <c:if test="${param.result eq 'fail'}"> --%>
<!-- 	<script>alert("아이디 또는 패스워드가 올바르지 않습니다.")</script> -->
<%-- </c:if> --%>

</body>
</html>