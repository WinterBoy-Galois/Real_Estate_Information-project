<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${root}/resources/css/style.css" type="text/css"/>
</head>
<script type="text/javascript">
$(document).ready(function(){
	if($('#id').val()==''){
		alert('아이디 입력');
		return;
	}else if($('password').val() ==''){
		alert('아이디 입력');
		return;
	}else{
		$(#'joinform').attr('action', '${root}/user/register').submit();
		
	}
});
</script>
 <body>
  <center>
	<h3>회원가입</h3>
	<form name ="joinform" method="post" action="">
	 <table width="780" height="700" cellspacing="4" cellpadding="5">
	 
	 		<tr>
			 <td class="td2">아이디(ID)<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="id" id="id" value="" size="12" onkeyup="javascript:idcheck();">
			  <div id="idresult"></div>
			 </td>
			</tr>
	 
			<tr>
			 <td class="td1">비밀번호입력<font color="red">*</font></td> 
	         <td class="td3"><input type="password" name="password" id="password" size="12" maxlength="12">&nbsp;&nbsp;<font color="#3cb371">6~12</font>자리의 영문(대소문자 구별)이나 숫자</td>
			</tr>

			
			<tr>
			 <td class="td1">이름<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="name" id="name" value="" size="12"></td>
			</tr>
			
			
			<tr>
			 <td class="td2">주소<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="address" id="address" size="100"></td>
			</tr>

		    <tr>
			 <td class="td2">전화번호<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="phone" id="phone" size="100"></td>
			</tr>
             <td colspan="2" align="center">
             <button id="registerBtn">회원가입</button>
&nbsp;&nbsp;
	          <input type="reset" value="취소">
	         </td>
	   		</tr>
   </table>
   </form>
  </center>
 </body>
</html>