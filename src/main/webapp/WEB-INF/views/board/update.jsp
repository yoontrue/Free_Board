<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(function() {
	$("#cancelBtn").click(function() {
		history.back();
	});
});
</script>

</head>
<body>
	<div class="container">
		<h2>게시글 수정</h2>
		<form method="post" class="form-group">
			<table class="table">
				<tr>
					<th>제목</th>
					<td><input type="text" class="form-control" id="title"
						name="b_title" required="required" pattern=".{1,30}"
						maxlength="30" value="${vo.b_title}" /></td>
				</tr>
				<tr>
					<th>글번호</th>
					<td><input type="text" class="form-control" id="b_no"
						name="b_no" readonly="readonly" value="${vo.b_no}" /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea class="form-control" id="content"
							name="b_content" required="required" maxlength="1000">${vo.b_content}</textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" class="form-control" id="id"
						name="b_id" required="required" pattern="[a-zA-Z0-9]{2,15}"
						maxlength="15" value="${vo.b_id}" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-default">수정</button>
						<button class="btn btn-default" type="reset">초기화</button>
						<button class="btn btn-default" type="button" id="cancelBtn">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>