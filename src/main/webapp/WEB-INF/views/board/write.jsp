<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function() {
	$(".cancelBtn").click(function() {
		history.back();
	});
});
</script>

</head>
<body>
	<div class="container">
		<h2>게시글 작성</h2>
		<form method="post" class="form-group">
		<table class="table">
			<tr>
				<th>제목</th><td><input class="form-control" name="b_title" /></td>
			</tr>
			<tr>
				<th>내용</th><td><textarea class="form-control" name="b_content"></textarea></td>
			</tr>
			<tr>
				<th>작성자</th><td><input class="form-control" name="b_id" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button>등록</button>
					<button type="reset">새로입력</button>
					<button type="button" class="cancelBtn">취소</button>
				</td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>