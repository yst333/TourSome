<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<body>
	<c:if test="${login.id != null}">
		<c:out value="${login.id}" />님 환영합니다!		
		<form action="/" method="post" role="form" id="actionForm">
			<input type="submit" value="로그아웃">
		</form>
	</c:if>
	<c:if test="${login.id == null}">
		<form action="/membership/register">
			<input type="submit" value="로그인">
		</form>
	</c:if>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	console.log("<c:out value = "${login.id}" />");
</script>
</html>