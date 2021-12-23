<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/custom.css">
<title>상품 등록</title>
<style>
* {
	text-align: center;
}
<<<<<<< HEAD

table {
	width: 100%;
	height: 500px;
=======
table{
width: 100%;
height: 500px;
}
table>tr{
height: 50px;
}
textarea{
width: 100%;
    height: 100%;
	font-size: 25px;
    resize: none;
>>>>>>> branch 'main' of https://github.com/NaWonYeop/shopping.git
}

table>tr {
	height: 50px;
}
<<<<<<< HEAD

textarea {
	width: 100%;
	height: 100%;
	resize: none;
}

input {
	height: 30%;
	width: 200px;
}

div#insert {
	margin-top: 30px;
=======
input[type="text"],input[type="number"]{
font-size:100%;}
div#insert{
div#insert{
margin-top:30px;
>>>>>>> branch 'main' of https://github.com/NaWonYeop/shopping.git
}
</style>

</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("loginUser") != null) {
		userID = (String) session.getAttribute("user_id");
	}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs=example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="../main.jsp">메인</a></li>
				<li><a href="../ItemList.do">상품게시판</a></li>
				<li><a href="../BoardList.do">게시판</a></li>
			</ul>
			<%
			if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="member/login.jsp">로그인</a>
						<li><a href="member/join.jsp">회원가입</a>
					</ul></li>
			</ul>
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="member/logoutAction.jsp">로그아웃</a>
					</ul></li>
			</ul>
			<%
			}
			%>
		</div>
	</nav>
	
	<h1>상품 등록</h1>
	<form action="../insertItem.do" enctype="multipart/form-data"
		method="post">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="iTitle"></td>
			</tr>

			<tr>
				<td>상품가격</td>
				<td><input type="number" name="iPrice"></td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><textarea name="iContent" id="iContent"></textarea></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type="file" name="iImg"></td>
			</tr>
		</table>


		<div id="insert">
			<input type="submit" value="저장"> <input type="reset"
				value="취소">
		</div>

	</form>
</body>
</html>