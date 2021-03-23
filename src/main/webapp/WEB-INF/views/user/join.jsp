<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>회원가입</title>
<!-------- 부트스트랩,jQuery 라이브러리 -------->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-------- 부트스트랩,jQuery 라이브러리 -------->

<style>
@import "bourbon";

body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-join {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  
}
.form-join-heading{
	position: relative;
  	font-size: 30px;
 	height: auto;
  	padding: 10px;
	@include box-sizing(border-box);
	&:focus {
	  z-index: 2;
	}
}
.form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
	@include box-sizing(border-box);

	&:focus {
	  z-index: 2;
	}
}

#id {
  	margin-bottom: -1px;
  	border-bottom-left-radius: 0;
  	border-bottom-right-radius: 0;
}
#nick {
  	margin-bottom: -1px;
  	margin-top: -1px;
  	border-bottom-left-radius: 0;
  	border-bottom-right-radius: 0;
  	border-top-left-radius: 0;
  	border-top-right-radius: 0;
}

#pwd {
  	margin-bottom: 20px;
  	border-top-left-radius: 0;
  	border-top-right-radius: 0;
}
}
</style>
<script type="text/javascript">
$(function() {
	$("#cancelBtn").click(function() {
		history.back();
	});
});
</script>
</head>
<body>

<div class="wrapper">
  <form class="form-join" method="post">       
    <h2 class="form-join-heading">회원가입</h2>
    <input type="text" class="form-control" id="id" name="id" placeholder="아이디 입력" required="required" autofocus="autofocus" />
    <input type="text" class="form-control" id="nick" name="nick" placeholder="닉네임 입력" required="required" autofocus="autofocus" />
    <input type="password" class="form-control" id="pwd" name="pwd" placeholder="비밀번호 입력" required="required" />      
    <button class="btn btn-info btn-lg btn-block" type="submit">회원가입</button>
    <button class="btn btn-warning btn-lg btn-block" type="button" id="cancelBtn">취소</button>
  </form>
</div>
</body>
</html>
