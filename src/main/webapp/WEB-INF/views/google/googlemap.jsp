<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="root" value="${pageContext.request.contextPath}"/>   
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<!-- google map -->
<!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
 --><script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js"></script>
<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQPWqfw5RJTUVBtG-d3LLe3zua9S0bvNU&callback=getMapData"></script>
<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 100%;
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}
.scrollable-menu {
    height: auto;
    max-height: 200px;
    overflow-x: hidden;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>지도 부분</h1>
	 <div class="form-group">
    <select class="custom-select" required id = "doe">
      <option value="">도/광역시</option>
    </select>
    
    <select class="custom-select" required id = "si">
      <option value="">시/구/군</option>
    </select>
    
    <select class="custom-select" required id = "dong">
      <option value="">동</option>
    </select>
    
    <div style="text-align : right; margin-top: 20px;">
		<button type="button"  class="btn btn-primary" id="search">검색</button>
    </div>
    
  	</div>
	
	
	<div id="map" style="width: 100%; margin-top:50px; height: 400px; position: relative; overflow: hidden;" ></div>


	<!-- The Modal : 주택정보 -->
  <div class="modal fade" id="aptDetail">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"> 최근 거래 내역 </h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <table class="table table-bordered table-sm">
            	<div id="imgDiv">
            	
            	</div>
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
        <!-- Modal footer -->
        <div class="modal-footer" >
        	<div id=aptDetailFooter>
        	</div>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</body>
<script>

	var findDong = "사직동";
	
	$(document).ready(function(){
		
		selectList();
		
		$("#doe").change(function(){
			var doe = $(this).find(":selected").val();
			
			if(doe == ""){
				selectList();
			}else{
				guDongChange(doe);				
			}
		});
		
		$("#si").change(function(){
			var si = $(this).find(":selected").val();
			
			if(doe == ""){
				selectList();
			}else{
				dongChange(si);				
			}
		});		
		
		$("#search").click(function(){
			
			var dong = $("#dong").find(":selected").val();
			mapSearch(dong);
		});	
	});
	
	function mapSearch(dong){
		findDong = dong;
		getMapData();
	}
	
	function guDongChange(doe){
		$.ajax({
	        type : 'get',
	        url : '<%= contextPath%>/google/guDongList/'+doe,
	        dataType : 'json',
	        data : 
			{
			},
	        success : function(data, status, xhr) {
	        	makeGuDongListHtml(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	alertify.notify(
           			'Opps!! 글 Map data를 받는 과정에 문제가 생겼습니다.', 
           			'error', //'error','warning','message'
           			3, //-1
           			function(){
           				console.log(jqXHR.responseText); 
           			}
           		);
	        }
		});
		
	}
	
	function dongChange(si){
		$.ajax({
	        type : 'get',
	        url : '<%= contextPath%>/google/dongList/'+si,
	        dataType : 'json',
	        data : 
			{
			},
	        success : function(data, status, xhr) {
	        	makeDongListHtml(data);
	        }, 
	        error: function(jqXHR, textStatus, errorThrown) 
	        { 
	        	alertify.notify(
           			'Opps!! 글 Map data를 받는 과정에 문제가 생겼습니다.', 
           			'error', //'error','warning','message'
           			3, //-1
           			function(){
           				console.log(jqXHR.responseText); 
           			}
           		);
	        }
		});	
	}
	
	function makeGuDongListHtml(data){
		$("#si").html("");
		$("#dong").html("");
		
		var siHtml = '<option value="">시/구/군</option>';
		var dongHtml = '<option value="">동</option>';
		
		for(var i = 0 ; i < data['si'].length; i++){
			siHtml += '<option value="'+data['si'][i]+'">'+data['si'][i]+'</option>';
		}
		
		for(var i = 0 ; i < data['dong'].length; i++){
			dongHtml += '<option value="'+data['dong'][i]+'">'+data['dong'][i]+'</option>';
		}
		
		$("#si").html(siHtml);
		$("#dong").html(dongHtml);	
	}
	
	function makeDongListHtml(data){
		$("#dong").html("");
		
		var dongHtml = '<option value="">동</option>';
		
		
		for(var i = 0 ; i < data['dong'].length; i++){
			dongHtml += '<option value="'+data['dong'][i]+'">'+data['dong'][i]+'</option>';
		}
		
		$("#dong").html(dongHtml);	
	}
	function selectList(){

		$.ajax({
			        type : 'get',
			        url : '<%= contextPath%>/google/list',
			        dataType : 'json',
			        data : 
					{
					},
			        success : function(data, status, xhr) {
			        	makeSelectListHtml(data);
			        }, 
			        error: function(jqXHR, textStatus, errorThrown) 
			        { 
			        	alertify.notify(
		           			'Opps!! 글 Map data를 받는 과정에 문제가 생겼습니다.', 
		           			'error', //'error','warning','message'
		           			3, //-1
		           			function(){
		           				console.log(jqXHR.responseText); 
		           			}
		           		);
			        }
		});
	}
	
	function makeSelectListHtml(data){
		
		$("#doe").html("");
		$("#si").html("");
		$("#dong").html("");
		
		var doeHtml = '<option value="">도/광역시</option>';
		var siHtml = '<option value="">시/구/군</option>';
		var dongHtml = '<option value="">동</option>';
		
		for(var i = 0 ; i < data['doe'].length; i++){
			doeHtml += '<option class="doeOption" value="'+data['doe'][i]+'">'+data['doe'][i]+'</option>';
		}
		
		for(var i = 0 ; i < data['si'].length; i++){
			siHtml += '<option value="'+data['si'][i]+'">'+data['si'][i]+'</option>';
		}
		
		for(var i = 0 ; i < data['dong'].length; i++){
			dongHtml += '<option value="'+data['dong'][i]+'">'+data['dong'][i]+'</option>';
		}
		
		$("#doe").html(doeHtml);
		$("#si").html(siHtml);
		$("#dong").html(dongHtml);			
	}
	

	
	// 구글맵 ########################################################################
	
    var INFO_WINDOW_HTML = 
    	'<div class="card" style="width:200px">' +
		'<div class="card-body" style="width:400px>' +
		'<h4 class="card-title">^APT_NAME</h4>' +
		'<p class="card-text">^DONG</p>' +
		'<button class="btn btn-primary detail" id="detail" apt ="^aptname" dong ="^dong" onclick="detailClick();">자세히 보기</button>' +
		'</div>' +
		'</div>';
			
		
		
		function detailClick(){
			var aptName = $(".detail").attr('apt');
			var dong = $(".detail").attr('dong');
			console.log("#"+aptName+":"+dong);
			detail(aptName, dong);
		}
		
		function detail(aptName, dong){
			
			$.ajax({
		        type : 'get',
		        url : '<%= contextPath%>/google/detail/'+aptName+'/'+dong,
		        dataType : 'json',
		        data : 
				{
				},
		        success : function(data, status, xhr) {
		        	makeHtmlList(data);
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	alertify.notify(
	           			'Opps!! 글 Map data를 받는 과정에 문제가 생겼습니다.', 
	           			'error', //'error','warning','message'
	           			3, //-1
	           			function(){
	           				console.log(jqXHR.responseText); 
	           			}
	           		);
		        }
			});
		}
		
		function makeHtmlList(data){
	        $('#aptDetailDisc').html('');	        
	        var listHtml = "";
	        for(var i = 0 ; i < data.length; i++){
	        	listHtml += "<tr style='cursor:pointer' data-id=" +  data[i].no +"><td>"+data[i].no+"</td> <td>"+ data[i].dong +"</td> <td>"+ data[i].aptName +"</td> <td>"+ data[i].dealAmount +"</td> </tr>"
	        }
	        $('#aptDetailDisc').html(listHtml);
	        $('#aptDetail').modal('show');
		}
		
	    function initMap() {
	
			var map = new google.maps.Map(
				document.getElementById('map'), 
				{
	        		zoom: 10,
	        		center: {
	        			lat: parseFloat(locations[0].lat), lng: parseFloat(locations[0].lng)
	        		}
	      		}
			);
	
			var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
			var markers = locations.map(
	
				function(location, i) {
	        		return new google.maps.Marker(
	     				{
	       					position: { lat: parseFloat(location.lat), lng: parseFloat(location.lng) },	// should be float, not string
	       					label: labels[i % labels.length],
	       					aptName: location.aptName,
	       					dong: location.dong
	     				}
	        		);
	     		 }
			);
	
			var markerCluster = new MarkerClusterer(
				map,
				markers,
				{
					imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'
				}
			);
			
			// ***
			markers.map(
				function(marker, i){
					marker.addListener('click', function() {
						var infowindow = new google.maps.InfoWindow({
						    content: INFO_WINDOW_HTML.replace('^APT_NAME', marker.aptName).replace('^DONG', marker.dong).replace('^aptname', marker.aptName).replace('^dong', marker.dong)
						});					
						infowindow.open(map, marker);			
					});
				}
			);
	    }
	 
		var locations;
		
		function getMapData(){
			$.ajax(
			{
		        type : 'get',
		        url : '<%= contextPath%>/google/' + findDong,
		        dataType : 'json',
		        data : 
				{
				},
		        success : function(data, status, xhr) {
		        	//alert("여기는?");
		        	console.log(data);
		        	locations = data;
		        	initMap();
		        }, 
		        error: function(jqXHR, textStatus, errorThrown) 
		        { 
		        	alertify.notify(
	           			'Opps!! 글 Map data를 받는 과정에 문제가 생겼습니다.', 
	           			'error', //'error','warning','message'
	           			3, //-1
	           			function(){
	           				console.log(jqXHR.responseText); 
	           			}
	           		);
		        }
		    });
		}
		
		
		
		
		
	</script> 
</html>