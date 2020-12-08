<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>메인화면</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class = "h-100">

<div class = "h-100 container d-flex flex-wrap justify-content-center align-content-center">
	<div>
		<div>인사관리 시스템</div>
		<p style = "display : inline">인사정보를 입력하시겠습니다.</p>
		<button class = "btn btn-dark" onclick = "javascript:onclickIn()">입력</button><br/>
		<p style = "display : inline">인사정보를 조회하겠습니다.</p>
		<button class = "btn btn-dark" onclick = "javascript:onclickLU()">조회</button>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script type = "text/javascript">
	function onclickIn() {
		window.location.href = "insaInputForm.do";
	}
	
	function onclickLU() {
		window.location.href = "insaListForm.do";
	}
</script>


</body>
</html>
