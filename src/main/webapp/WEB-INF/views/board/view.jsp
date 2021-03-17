<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
$(function(){
	$("#deleteBtn").click(function(){
		// 나중에 아이디 입력 대신 현재 로그인한 세션 id로 바꿔줄것..
		var id = prompt("본인 아이디 입력:");
		
		if(id == $("#deleteID").val()) {
			$("#deleteForm").submit();
			alert("삭제되었습니다.");
			return;
		}
		alert("작성자만 삭제할 수 있습니다.");
		
		// 화면 이동 막는다.
		return false;
	});
});
</script>
</head>
<body>
<div class="container">
<h1>게시판 글보기</h1>
<table class="table">
<tr>
	<th>번호</th>
	<td>${vo.b_no }</td>
</tr>
<tr>
	<th>제목</th>
	<td>${vo.b_title }</td>
</tr>
<tr>
	<th>내용</th>
	<td><pre style="border:none">${vo.b_content }</pre></td>
</tr>
<tr>
	<th>작성자</th>
	<td>${vo.b_id }</td>
</tr>
<tr>
	<th>작성일</th>
	<td>
		<fmt:formatDate value="${vo.b_date }" pattern="yyyy.MM.dd"/>
	</td>
</tr>
<tr>
	<th>조회수</th>
	<td>${vo.b_view }</td>
</tr>
<tr>
	<td colspan="2">
		<a href="update.do?b_no=${vo.b_no }" class="btn btn-default">수정</a>
		<a href="#" class="btn btn-default" id="deleteBtn">삭제</a>
		<a href="list.do" class="btn btn-default">리스트</a>
	</td>
</tr>
</table>
</div>
<!-- 삭제용 폼 -->
<form action="delete.do" method="post" id="deleteForm">
	<input type="hidden" name="b_no" value="${vo.b_no}" />
	<input type="hidden" name="b_id" value="${vo.b_id}" id="deleteID"/>
</form>
</body>
</html>