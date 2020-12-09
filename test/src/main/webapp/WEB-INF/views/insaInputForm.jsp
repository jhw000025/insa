<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 조회 폼</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style>
	.row {
		width : 100%;
		margin : 0px;
	}

	.inputFile {
		position :relative;
		overflow : hidden;
	}
	.inputFile input[type = file] {
		position : absolute;
		top : 0;
		right : 0;
		min-width : 100%;
		min-height : 100%;
		font-size : 100%;
		text-align : center;
		filter: alpha(opacity=0);
		opacity: 0;
		outline: none;
		background: white;
		cursor: inherit;
		display: block;
	}
</style>
</head>
<body>
<h4>직원 상세 정보</h4>
<div class = "container-fluid">
	<form method = "post" id = "form1">
		<div class = "d-flex justify-content-end">
			<button type = "button" class = "btn btn-primary">등록</button>
			<button type = "button" class = "btn btn-primary">전화면</button>
		</div>
		
		<table style = "width : 100%;">
			<tbody>
				<tr>
					<td rowspan = "5" style = "text-align : center">
						<!-- 일단 이렇게 정리해야됨. -->
						<img id = "img" src = "resources/img/people.png" style = "width : 200px; height : 200px;" alt = "img">
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>사번</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "sabun" style = "width : 100%" readonly>
							</div>
						</div>
					</td>
					<td>
						<div class = "row">
							<div class = "col-3" style = "text-align : center;">
								<label>한글성명</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "name" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>영문성명</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "engName" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>아이디</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "id" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>패스워드</label>
							</div>
							<div class = "col-9">
								<input type = "password" id = "pwd" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>패스워드<br/>확인</label>
							</div>
							<div class = "col-9">
								<input type = "password" id = "pwd1" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>전화번호</label>
							</div>
							<div class = "col-9">
								<input type = "tel" id = "phone" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>핸드폰번호</label>
							</div>
							<div class = "col-9">
								<input type = "tel" id = "hp" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>주민번호</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "regNo" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>				
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>연령</label>
							</div>
							<div class = "col-9">
								<input type = "text" id = "years" style = "width : 100%">
							</div>
						</div>
					</td>
					<td colspan = "2">
						<div class = "row">
							<div class = "col-5 row">
								<div class = "col-3" style = "text-align : center;">
									<label>이메일</label>
								</div>
								<div class = "col-9">
									<input type = "email" id = "email" style = "width : 100%">
								</div>
							</div>
							<div class = "col-4 row">
								<div class = "col-3" style = "text-align : center;">
									<label>작종체크</label>
								</div>
								<div class = "col-9">
									<select name = "joinGbnCode" style = "width : 90%">
										<option>(선택)</option>
										<option value = "y">Y</option>
										<option value = "n">N</option>
									</select>
								</div>
							</div>
							<div class = "col-3 row">
								<div class = "col-3" style = "text-align : center;">
									<label>성별</label>
								</div>
								<div class = "col-9">
									<select name = "sex" style = "width : 90%">
										<option>(선택)</option>
										<option value = "F">여성</option>
										<option value = "M">남성</option>
									</select>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan = "3">
						<div class = "row">
							<div class = "col-1" style = "text-align : center;">
								<label>주소</label>
							</div>
							<div class = "col-11 row">
								<div class = "col-4 row">
									<div class = "col-7">
										<input type = "number" name = "zip" placeholder="우편번호"  style = "width : 100%"/>
									</div>
									<div class = "col-5">
										<button class = "btn btn-dark">주소 검색</button>
									</div>
								</div>
								<div class = "col-4">
									<input type = "text" name = "addr1" placeholder="주소"  style = "width : 100%"/>
								</div>
								<div class = "col-4">
									<input type = "text" name = "addr2" placeholder="상세 주소"  style = "width : 100%"/>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td style = "text-align : center">
						<label class = "inputFile btn btn-dark">					
							<i class="fas fa-camera"></i> 사진 올리기<input type = "file" id = "inputFile" name = "profileImage" accept = "image/jsp,image/png,image/jpeg"/>
						</label>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>직위	</label>
							</div>
							<div class = "col-9">
								<select name = "posGbnCode" style = "width : 90%">
									<option>(선택)</option>
									<option value = "F">여성</option>
									<option value = "M">남성</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class = "row">
							<div class = "col-3" style = "text-align : center;">
								<label>부서</label>
							</div>
							<div class = "col-9">
								<select name = "deptCode" style = "width : 90%">
									<option>(선택)</option>
									<option value = "F">여성</option>
									<option value = "M">남성</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>연봉(만원)</label>
							</div>
							<div class = "col-9">
								<input type = "number" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				
				
				
				
				
				
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<select name = "joinType" style = "width : 90%">
									<option>(선택)</option>
									<option value = "F">여성</option>
									<option value = "M">남성</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>등급</label>
							</div>
							<div class = "col-9">
								<select name = "gartLevel" style = "width : 90%">
									<option>(선택)</option>
									<option value = "F">여성</option>
									<option value = "M">남성</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>투입여부</label>
							</div>
							<div class = "col-9">
								<select name = "putYn" style = "width : 90%">
									<option>(선택)</option>
									<option value = "F">여성</option>
									<option value = "M">남성</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>군필여부</label>
							</div>
							<div class = "col-9">
								<select name = "putYn" style = "width : 90%">
									<option value = "Y">군필</option>
									<option value = "N" selected="selected">미필</option>
								</select>
							</div>
						</div>
					</td>
				</tr>
				
				<tr id = "mil">
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>군별</label>
							</div>
							<div class = "col-9">
								<select name = "putYn" style = "width : 90%">
									<option value = "Y">군필</option>
									<option value = "N">미필</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>계급</label>
							</div>
							<div class = "col-9">
								<select name = "putYn" style = "width : 90%">
									<option value = "Y">군필</option>
									<option value = "N">미필</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입영일자</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "milStartDay" id = "milStartDay" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>전역일자</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "milEndDay" id = "milEndDay" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				
				
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>KOSA등록</label>
							</div>
							<div class = "col-9">
								<select name = "kosa" style = "width : 90%">
									<option value = "Y">군필</option>
									<option value = "N">미필</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>KOSA등급</label>
							</div>
							<div class = "col-9">
								<select name = "putYn" style = "width : 90%">
									<option value = "Y">군필</option>
									<option value = "N">미필</option>
								</select>
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사일자</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "joinDay" id = "joinDay" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>퇴사일자</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "retireDay" id = "retireDay" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>사업자번호</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "cmpRegNo" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>업체명</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
					<td>
						<div class ="row">
							<div class = "col-3" style = "text-align : center;">
								<label>입사구분</label>
							</div>
							<div class = "col-9">
								<input type = "text" name = "salary" placeholder="(만원)" style = "width : 100%">
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
	</form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(document).ready(function(){
		$("#inputFile").change(function(){
			LoadURL(this);
		});
	});
</script>
<script>
	function LoadURL(input) {
		if(input.files && input.files[0]) {
			var reader = new FileReader();
				
			reader.onload = function(e) {
				$("#img").attr("src",e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<script>
$(document).ready(function(){
	$("#milStartDay").datepicker({
		 dateFormat: 'yy-mm-dd',
		 onClose: function() {
			$("#milEndDay").datepicker({
				dateFormat: 'yy-mm-dd',
				minDate: new Date($("#milStartDay").val())
			});
		}
	});
	$("#joinDay").datepicker({
		 dateFormat: 'yy-mm-dd',
		 onClose: function() {
			$("#retireDay").datepicker({
				dateFormat: 'yy-mm-dd',
				minDate: new Date($("#joinDay").val())
			});
		}
	});
});
</script>
</body>
</html>