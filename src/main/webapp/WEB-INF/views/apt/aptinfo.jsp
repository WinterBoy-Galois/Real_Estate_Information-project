<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core-json" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
</head>
<body>
	<div class="container" align="center" style=" width : 800px;">
		<br><h2>주택정보</h2>
		<table class="table table-borderless">
			<tr>
				<td align="left">
				<th align="right" colspan="4">
<!-- 					<input type="checkbox" id="check1" name="chk_info1" value="1"} />아파트 매매
					<input type="checkbox" id="check2" name="chk_info2" value="2"} />아파트 전월세 <br>
					<input type="checkbox" id="check3" name="chk_info3" value="3"} />다세대 매매 
					<input type="checkbox" id="check4" name="chk_info4" value="4"} />다세대 전월세 
					 -->
					<select name="searchField" id="searchField">
						<option value="LIST" >전체</option>
						<option value="DONG" >법정동</option>
						<option value="APTNAME" >아파트이름</option>
						<option value="PRICE" >가격(이하)</option>
					</select>
					
					<input type="text" id="searchText" name="searchText"> 
					<!-- <input type="submit" value="검색"> -->
					<button class = "btn btn-primary" id ="search">검색</button>
				</th>
			</tr>
		</table>
		
			<div class="table-responsive"  style="width : 800px;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>법정 동명</th>
							<th>아파트이름</th>
							<th>아파트가격</th>
						</tr>
					</thead>
					<tbody id ="houseList">
					
					
					</tbody>

				</table>
				  <!-- The Modal : 주택정보 -->
					  <div class="modal fade" id="aptDetail">
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
										<th>법정 동명</th>
										<th>아파트이름</th>
										<th>아파트가격</th>
								      </tr>
								    </thead>
								    <tbody id = "aptDetailDisc">
								    
								    </tbody>
								  </table>								  							  
					        </div>
			        		<div id = "addBody">
			        		
			        		</div>
					        <!-- Modal footer -->
					        <div class="modal-footer" >
					        	<div id=aptDetailFooter>
					        	</div>
					          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					        </div>
					      </div>
					    </div>
					  </div>
								
			</div>
		</div>
	
<script>
	$(document).ready(function(){
		list();
		
		$("#search").click(function(){
			var _cate = $("#searchField").find(":selected").val();
			var _text = $("#searchText").val();
			//var _checkList = new Array();
			//var idx = 0;
			/* if($("input:checkbox[name=chk_info1]").is(":checked") == true) {
				_checkList[idx] = $("input:checkbox[name=chk_info1]").attr("value");
				  idx+=1;
			}
			if($("input:checkbox[name=chk_info2]").is(":checked") == true) {
				_checkList[idx] = $("input:checkbox[name=chk_info2]").attr("value");
				  idx+=1;
			}
			if($("input:checkbox[name=chk_info3]").is(":checked") == true) {
				_checkList[idx] = $("input:checkbox[name=chk_info3]").attr("value");
				  idx+=1;
			}
			if($("input:checkbox[name=chk_info4]").is(":checked") == true) {
				_checkList[idx] = $("input:checkbox[name=chk_info4]").attr("value");
				  idx+=1;
			} */
			search(_cate, _text);
		});
	});
	
	
	function search(_cate, _text){
		$.ajax(
	                {
	                    type : 'get',
	                    url : '<%=contextPath%>/search/'+_cate+'/'+_text,
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
	
	function list(){
        $.ajax(
                {
                    type : 'get',
                    url : '<%=contextPath%>/aptinfo',
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
        $('#houseList').html('');
        var listHtml = "";
        for(var i = 0 ; i < data.length; i++){
        	listHtml += "<tr style='cursor:pointer' data-id=" +  data[i].no +"><td>"+data[i].no+"</td> <td>"+ data[i].dong +"</td> <td>"+ data[i].aptName +"</td> <td>"+ data[i].dealAmount +"</td> </tr>"
        }
        $('#houseList').html(listHtml);
        
        makeListHtmlEventHandler();
	}
	
	function makeListHtmlEventHandler(){
		$("#houseList tr").click(function(){
			var id = $(this).attr("data-id");
			$('#addBody').html('');
			detail(id);
		});
	}
	
	function detail(id){
		$.ajax(
		{
	        type : 'get',
	        url : '<%=contextPath%>/aptinfo/' + id,
	        dataType : 'json',
	        data : 
			{
			},
	        success : function(data, status, xhr) { 

	        	makeDetailHtml(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	console.log(jqXHR.responseText); 
	        }
	    });
	}
	
	function makeDetailHtml(detail){
		$("#aptDetailDisc").html("");
		$("#aptDetailFooter").html("");
		
		var modalHtml ="";
		var modalFooter ="";
		
		modalHtml += "<tr><td>"+detail.no+"</td> <td>"+ detail.dong +"</td> <td>"+ detail.aptName +"</td> <td>"+ detail.dealAmount +"</td> </tr> ";
		
		modalFooter += '<button class="btn btn-primary near" id="near" dong = '+detail.dong+'> near </button> <button class="btn btn-warning info" id="info"  dong = '+detail.dong+'> info </button>';

		$("#aptDetailDisc").html(modalHtml);
		$("#aptDetailFooter").html(modalFooter);
		$("#aptDetail").modal();
		
		makeDetailButtonEventHandler();
	}

	function makeDetailButtonEventHandler(){	

		$(".near").click(function(){
			var dong = $(this).attr("dong");
			near(dong);
		});
		
		$(".info").click(function(){
			var dong = $(this).attr("dong");
			green(dong);
		});
	}

	function near(dong){

		$.ajax(
				{
			        type : 'get',
			        url : '<%=contextPath%>/aptinfo/near/' + dong,
			        dataType : 'json',
			        data : 
					{
					},
			        success : function(data, status, xhr) { 
			        	makeNearHtml(data);
			        }, 
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
			        	console.log(jqXHR.responseText); 
			        }
			    });
	}
	
	function makeNearHtml(data){
        $('#addBody').html('');
        var listHtml = "<h5> 주변 상권 정보 </h5> <div class='table-responsive'> <table class='table table-bordered'> <thead> <tr> <th>#</th> <th>가게이름</th> <th>대분류</th> <th>소분류</th> <th>주소</th> </tr> </thead> <tbody>";
	   	 for(var i = 0 ; i < data.length ; i++){
		    	 listHtml += " <tr> <td>"+ ""+ (i+1) + "</td> <td>" + data[i]['shopname'] + "</td> <td> " + data[i]['codename1'] + "</td> <td> " + data[i]['codename2'] + " </td> <td> " + data[i]['address'] + "</td> </tr>";
	   	 }
        $('#addBody').html(listHtml);
	}
	
	function green(dong){

		$.ajax(
				{
			        type : 'get',
			        url : '<%=contextPath%>/aptinfo/green/' + dong,
			        dataType : 'json',
			        data : 
					{
					},
			        success : function(data, status, xhr) { 
			        	makeGreenHtml(data);
			        }, 
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
			        	console.log(jqXHR.responseText); 
			        }
			    });
	}
	
	function makeGreenHtml(data){

		$('#addBody').html('');
        var listHtml = "<h5> 주변 환경 정보 </h5> <div class='table-responsive'> <table class='table table-bordered'> <thead> <tr> <th>#</th> <th>업체명</th> <th>코드번호</th> <th>통과여부</th> <th>주소</th> </tr> </thead> <tbody>";

		if(data.length == 0){
			listHtml += "<tr> <td colspan='5' >해당 지역 정보가 없습니다 </td></tr>";
		}else{
		   	 for(var i = 0 ; i < data.length ; i++){
			    	 listHtml += " <tr> <td>"+ ""+ data[i].num + "</td> <td>" + data[i]['name'] + "</td> <td> " + data[i]['code'] + "</td> <td> " + data[i]['pass'] + " </td> <td> " + data[i]['address'] + "</td> </tr>";
		   	 }
		}
		
        $('#addBody').html(listHtml);

	}
	
</script>	
</body>

</html>
