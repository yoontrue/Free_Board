<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<!-------- 부트스트랩,jQuery 라이브러리 -------->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-------- 부트스트랩,jQuery 라이브러리 -------->
<script type="text/javascript">
$(function() {
	/* 
	<c:if test="${processResult == 'update success'}">
		alert("수정 완료 되었습니다.");
	</c:if>
	 */
	$("#deleteBtn").click(function(){
		// 나중에 아이디 입력 대신 현재 로그인한 세션 id로 바꿔줄것..
		var id = prompt("본인 아이디 입력:");
		
		if(id == $("#deleteID").val()) {
			$("#deleteForm").submit();
			return;
		}
		alert("작성자만 삭제할 수 있습니다.");
		
		// 화면 이동 막는다.
		return false;
	});
});
</script>
<style>
.writer {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.title {
    font-family: 'SDSamliphopangche_Outline';
    font-size: 30px;
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'SDSamliphopangche_Outline';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/SDSamliphopangche_Outline.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.hit, .write_date{
	color: #8a8a8a;
}
</style>
</head>
<body>
	<div class="container">
		<h2>&nbsp;</h2>

		<table class="table">
			<tr>
				<th class="title">${vo.b_title }</th>
			</tr>
			<tr>
				<td>
					<span class="writer">${vo.b_id }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span class="hit">조회 ${vo.b_view }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span class="write_date"><fmt:formatDate value="${vo.b_date }" pattern="yyyy.MM.dd" /></span>
				</td>
			</tr>
			<c:if test="${!empty vo.fileName }">
				<tr>
					<td><img src="${vo.fileName }" style="height: 200px;" /></td>
				</tr>
			</c:if>
			<tr>
				<td>
					<pre style="border: none">${vo.b_content }</pre>
				</td>
			</tr>
			<tr>
				<td colspan="2"><a href="update.do?b_no=${vo.b_no }"
					class="btn btn-default">수정</a> <a href="#" class="btn btn-default"
					id="deleteBtn">삭제</a> <a href="list.do" class="btn btn-default">리스트</a>
				</td>
			</tr>
		</table>
	</div>
	<!-- 삭제용 폼 -->
<form action="delete.do" method="post" id="deleteForm">
	<input type="hidden" name="b_no" value="${vo.b_no}" />
	<input type="hidden" name="b_id" value="${vo.b_id}" id="deleteID" />
	<input type="hidden" name="fileName" id="fileName" />
</form>
</body>
</html>