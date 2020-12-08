<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 조회 폼</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<style>
	tr, th{
		text-align : center;
		border : 1px solid black;
	}
	td {
		text-align : center;
		border : 1px solid gray;
	} 
</style>
</head>
<body>

<div class = "container-fluid">
	<form id = "form1">
		<h4 style = "border-bottom: 1px solid black">직원리스트</h4>
		<div class = "col-12 row">
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>사번</label>
				</div>
				<div class = "col-9">
					<input type = "text" name = "sabun" style = "width : 90%"/>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>성명</label>
				</div>
				<div class = "col-9">
					<input type = "text" name = "name" style = "width : 90%"/>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>입사구분</label>
				</div>
				<div class = "col-9">
					<select name = "gubun" style = "width : 90%">
						<option>(선택)</option>
						<option value = "y">Y</option>
						<option value = "n">N</option>
					</select>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>투입여부</label>
				</div>
				<div class = "col-9">
					<select name = "putYn" style = "width : 90%">
						<option>(선택)</option>
						<option value = "y">Y</option>
						<option value = "n">N</option>
					</select>
				</div>
			</div>
		</div>
		<div class = "col-12 row">
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>직위</label>
				</div>
				<div class = "col-9">
					<select name = "posGbnCode" style = "width : 90%">
						<option>(선택)</option>
						<option value = "y">Y</option>
						<option value = "n">N</option>
					</select>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>입사일자</label>
				</div>
				<div class = "col-9">
					<input type="text" id="datepicker" name = "joinDay" style = "width : 90%"/>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>퇴사일자</label>
				</div>
				<div class = "col-9">
					<input type="text" id="datepicker1" name = "retireDay" style = "width : 90%"/>
				</div>
			</div>
			<div class = "col-md-6 col-lg-3 col-12 row">
				<div class = "col-3 d-flex justify-content-center">
					<label>직종분류</label>
				</div>
				<div class = "col-9">
					<select name = "joinGbnCode" style = "width : 90%">
						<option>(선택)</option>
						<option value = "y">Y</option>
						<option value = "n">N</option>
					</select>
				</div>
			</div>
		</div>
		<br/>
		<div class = "d-flex justify-content-end">
			<button type = "button" class = "btn btn-primary" id = "submit">검색</button>
			<button type = "reset" class = "btn btn-primary">초기화</button>
			<button type = "button" class = "btn btn-primary" id = "prev">이전</button>
		</div>
	</form>
	<br/><br/>
	<table style = "width : 100%">
		<tbody>
			<tr>
				<th style = "width : 10%">사번</th>
				<th style = "width : 10%">성명</th>
				<th style = "width : 15%">주민번호</th>
				<th style = "width : 15%">핸드폰번호</th>
				<th style = "width : 10%">직위</th>
				<th style = "width : 10%">입사일자</th>
				<th style = "width : 10%">퇴사일자</th>
				<th style = "width : 10%">투입여부</th>
				<th style = "width : 10%">연봉</th>
			</tr>
			<c:choose>
				<c:when test="${not empty insaList}">
					<c:forEach var="name" items="${insaList}">
						<tr>
							<td style = "width : 10%">
								<a href = "#"></a>
							</td>
							<td style = "width : 10%"></td>
							<td style = "width : 15%"></td>
							<td style = "width : 15%"></td>
							<td style = "width : 10%"></td>
							<td style = "width : 10%"></td>
							<td style = "width : 10%"></td>
							<td style = "width : 10%"></td>
							<td style = "width : 10%"></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan = "9" style = "border : 1px solid black">검색결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type = "text/javascript">
$(document).ready(function(){
	
	 $("#datepicker").datepicker({
		 dateFormat: 'yy-mm-dd',
		 onClose: function() {
			$("#datepicker1").datepicker({
				dateFormat: 'yy-mm-dd',
				minDate: new Date($("#datepicker").val())
			});
		}
	});
});
</script>
</body>
</html>