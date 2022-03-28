<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Checkout example · Bootstrap v5.1</title>

<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/checkout/">



<!-- Bootstrap core CSS -->
<link
	href=" ${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.size{
width:461px;
height:51px;
margin-top: 10px;
margin-bottom: 10px;
}

.content{
 	width:500px;
    height:100%;
    margin:0 auto;
}

.go{
margin-top: 20px;
}
</style>
<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
</head>
<title>회원정보</title>
<body>


<div class="content">
	<h1 style="text-align:center;">회원정보</h1>
	<form name="board" action="/board/mget" method="post">	
		<div class="form-group">
			<label>아이디</label> <input type="text" name="userid" 
			class="form-control size" value='<sec:authentication property="principal.member.userid"/>' readonly="readonly">
		</div>
		<div class="form-group">
			<label>비밀번호</label> <input type="password" name="userpw"
			class="form-control size" value='' >
		</div>
		<div class="form-group">
			<label>이름</label> <input type="text" name="userName"
			class="form-control size" value='<sec:authentication property="principal.member.userName"/>' readonly="readonly">
		</div>
		<div class="form-group">
			<label>이메일</label> <input type="text" name="userEmail"
			class="form-control size" value='<sec:authentication property="principal.member.userEmail"/>' readonly="readonly">
		</div>
		<div class="form-group">
			<label>주소</label> <input type="text" name="userAddr"
			class="form-control size" value='<sec:authentication property="principal.member.userAddr"/>' readonly="readonly">
		</div>
		</form>
</div>


<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<script src="form-validation.js"></script>
</body>
</html>