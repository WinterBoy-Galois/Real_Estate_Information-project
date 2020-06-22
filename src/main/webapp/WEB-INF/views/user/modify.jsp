<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"></c:set>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content=""> 
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>
		#container {
			display: flex;
			justify-content: center;
			transform:translateY(10%);
		}	
	</style>
	<title>로그인</title>
</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
	<div id="container">
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:30px;">
			<h2 class="card-title text-center" style="color:#113366;">HappyHouse</h2>
		</div>
		<div class="card-body">
			<form class="form-signup" id="joinform" > <%-- method="PUT" action="${root}/user/modify" --%>

				<h5 class="form-signup-heading">회원 정보 수정</h5>
				<label for="inputId" class="sr-only">Your ID</label>
				<input type="text" name="uid" id="uid" class="form-control" placeholder="ID" value=${userinfo.id} required autofocus><br>
				
				<label for="inputPassword" class="sr-only">Password</label>
				<input type="password" name= "upw" id="upw" class="form-control" placeholder="Password" required><br>
				
				<label for="inputName" class="sr-only">Name</label>
				<input type="text" name= "uname" id="uname" class="form-control" placeholder="Name" value=${userinfo.name} required><br>
				
				<label for="inputAddress" class="sr-only">Address</label>
				<input type="text" name= "uaddress" id="uaddress" class="form-control" placeholder="Address" value=${userinfo.address} required><br>
				
				<label for="inputPhone" class="sr-only">Phone</label>
				<input type="text" name= "uphone" id="uphone" class="form-control" placeholder="Phone" value=${userinfo.phone} required><br>
				
				<label for="inputQuestion" class="sr-only">Question</label>
				<input type="text" name= "uquestion" id="uquestion" class="form-control" placeholder="Question" value=${userinfo.question} required><br>
				
				<label for="inputAnswer" class="sr-only">Answer</label>
				<input type="text" name= "uanswer" id="uanswer" class="form-control" placeholder="Answer" value=${userinfo.answer} required><br>
								
				<button id="btn-Yes" class="btn btn-lg btn-primary btn-inline" >수정</button>
				<button id="btn-delete" class="btn btn-lg btn-primary btn-inline" type="button" onclick="func()">탈퇴</button>
			</form>
		</div>
	</div>
	</div>
	<div class="modal">
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!--
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	-->
	<!-- Bootstrap CSS -->
	<script type="text/javascript">
		
		$(document).ready(function(){
			$("#btn-Yes").click(function(){
				updateInfo();
			})
			
		});
	
		function func(){
			if(confirm("탈퇴하시겠습니까?")){
				location.href="${root}/user.do?action=delete&uid=${userinfo.id}";
			}
		}
		
		function updateInfo(){
			alert("??");
			var info = { id:$("#uid").val(), password:$("#upw").val(), name:$("#uname").val(), address:$("#uaddress").val(), phone:$("#uphone").val(), question:$("#uquestion").val(), answer:$("#uanswer").val()  };
			
			$.ajax(
			{
		        type : 'put',
		        url : '<%=contextPath%>/user/modify',
		        dataType : 'json',
		        data : JSON.stringify( info ),
		        contentType : 'application/json',
		        success : function(data, status, xhr) { 
		        	alert("수정완료됐습니다.");
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