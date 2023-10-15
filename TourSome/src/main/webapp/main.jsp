<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String user = request.getParameter("name");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<%
		if(user != null){
	%>
	<%=user %>님 환영합니다!
	<input type="button" value="로그아웃">
	<%
		} else{
	%>
	<form action="/membership/login">
		<input type="submit" value="로그인">
	</form>
	<%
		}
	%>
	
	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	console.log("<c:out value = "${login.id}" />");
</script>
</html>