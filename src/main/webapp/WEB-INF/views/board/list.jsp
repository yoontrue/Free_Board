<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="pageObject" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>

<!-------- 부트스트랩,jQuery 라이브러리 -------->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-------- 부트스트랩,jQuery 라이브러리 -------->

<style type="text/css">
.dataRow:hover { 
	background: #ddd;
	cursor: pointer;
}
</style>

<script type="text/javascript">
	$(function() {
		$(".dataRow").click(function() {
			var b_no = $(this).find(".b_no").text();
			location = "view.do?b_no=" + b_no + "&inc=1"
		});
	});
</script>
</head>
<body>
	<div class="container">
		<h2>게시판 리스트</h2>
		<table class="table">
			<tr>
				<td colspan="5">
					<a href="write.do" class="btn btn-default">글쓰기</a>
				</td>
			</tr>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<!-- 데이터 없을 때 -->
			<c:if test="${empty list }">
			<tr>
				<td colspan="5">데이터가 존재하지 않습니다.</td>
			</tr>
			</c:if>
			<!-- 데이터 있을 때 -->
			<c:if test="${!empty list }">
				<c:forEach items="${list }" var="vo">
					<tr class="dataRow">
						<td class="b_no">${vo.b_no }</td>
						<td>${vo.b_title }</td>
						<td>${vo.b_id }</td>
						<td><fmt:formatDate value="${vo.b_date }" pattern="yyyy.MM.dd"/></td>
						<td>${vo.b_view }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${pageObject.totalPage > 1 }">
				<tr>
					<td colspan="5">
						<pageObject:pageNav pageObject="${pageObject }" listURI="list.do" />
					</td>
				</tr>
			</c:if>
		</table>
		<div>
			<form class="navbar-form">
				<div class="input-group">
					<div class="form-group navbar-left">
						<select name="key" class="form-control">
							<!-- selected="select" or selected -->
							<option value="t" ${(pageObject.key == "t")? " selected ":"" }>제목</option>
							<option value="c" ${(pageObject.key == "c")? " selected ":"" }>내용</option>
							<option value="tc" ${(pageObject.key == "tc")? " selected ":"" }>제목+내용</option>
							<option value="w" ${(pageObject.key == "w")? " selected ":"" }>글쓴이</option>
						</select>
						<input type="text" class="form-control" placeholder="Search" name="word" value="${pageObject.word }">
					</div>
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>