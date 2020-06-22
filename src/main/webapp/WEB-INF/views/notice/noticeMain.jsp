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

	<br><h2 class="text-center">공지사항</h2><br>
	
	<table class="table table-hover">
		<thead>
       		<tr>
				<th>#</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일시</th>
				<th>조회수</th>
			</tr>
     	</thead>
     	<tbody id="boardTbody">
     
     	</tbody>
   	</table>
   	
   	 <!-- The Modal : 주택정보 -->
					  <div class="modal fade" id="noticeDetail">
					    <div class="modal-dialog">
					      <div class="modal-content">
					      
					        <!-- Modal Header -->
					        <div class="modal-header">
					          <h4 class="modal-title"> </h4>
					          <button type="button" class="close" data-dismiss="modal">×</button>
					        </div>
					        
					        <!-- Modal body -->
					        <div class="modal-body">
					            <table class="table table-bordered table-sm">
								    <thead>
								      <tr>
										<th>#</th>
										<th>제목</th>
										<th>작성자</th>
										<th>작성일시</th>
										<th>조회수</th>
								      </tr>
								    </thead>
								    <tbody id = "noticeDetailDisc">
								    
								    </tbody>

								  </table>								  							  
					        </div>
					        <h3> 내용 </h3>
			        		<div id ="content">
						    
						    </div>
					        <!-- Modal footer -->
					        <div class="modal-footer" >
					          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					        </div>
					      </div>
					    </div>
					  </div>
					  
	<c:if test="${userinfo.isAdmin eq 'admin'}">
		<a class="btn btn-sm btn-primary" id="btnInsertPage" href="${root}/noticeInsertPage">글쓰기</a>		
	</div>
	</c:if>

<form id="formSearchWord" name="searchWordForm" method="POST">
	<input type="hidden" name="searchWord" id="hiddenSearchWord">
</form>
<form id="formBoardDetail" name="boardDetailForm" method="POST">
	<input type="hidden" name="boardId" id="hiddenBoardId">
	<input type="hidden" name="action" value="detail">
</form>
<script>
	$(document).ready(function(){
		
		list();
		
	});
	
	function list(){
        $.ajax({
                type : 'get',
                url : '<%=contextPath%>/noticeList',
                dataType : 'json',
                data : 
                {
                },
                success : function(data, status, xhr) { 
                	console.log(data);
                	makeHtmlList(data);
                }, 
                error: function(jqXHR, textStatus, errorThrown) 
                { 
                    console.log(jqXHR.responseText); 
                }
        });
	}
									
	
	function makeHtmlList(data){
        $('#boardTbody').html('');
        var listHtml = "";
        for(var i = 0 ; i < data.length; i++){
        	listHtml +='<tr class="boardItem" style="cursor:pointer" data-boardId="'+(i+1)+'"><td>'+(i+1)+'</td><td>'+data[i].title+'</td><td>'+data[i].userName+'</td><td>'+data[i].regDt+'</td><td>'+data[i].readCount+'</td></tr>'; 
        }
        $('#boardTbody').html(listHtml);
        
        makeHtmlEventHandler();
	}

	function makeHtmlEventHandler(){
		$("#boardTbody tr").click(function(){
			var id = $(this).attr("data-boardId");
			detail(id);
		});
	}
	
	function detail(id){
		//alert(id);
		$.ajax(
		{
	        type : 'get',
	        url : '<%=contextPath%>/noticeDetail/' + id,
	        dataType : 'json',
	        data : 
			{
			},
	        success : function(data, status, xhr) { 
				console.log(data);
	        	makeDetailHtml(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
	
	function makeDetailHtml(detail){
		$("#noticeDetailDisc").html("");

		var modalHtml ="";
		modalHtml += "<tr><td>"+detail.noticeId+"</td> <td>"+ detail.title +"</td> <td>"+ detail.userName +"</td> <td>"+ detail.regDt +"</td><td>"+ detail.readCount +"</td> </tr> ";
		
		$("#noticeDetailDisc").html(modalHtml);
		$("#content").html( detail.content);
		$("#noticeDetail").modal();
	}
</script>

</body>
</html>