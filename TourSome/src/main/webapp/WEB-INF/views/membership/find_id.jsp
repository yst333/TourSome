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
	<div>
		<c:if test="${result.id == null}">
			검색조건에 일치하는 결과가 없습니다!
		</c:if>
		<c:if test="${result.id != null}">
			검색결과 : 아이디는 <c:out value="${result.id}" /> 입니다!
		</c:if>
	</div>

<!-- 
	<form action="/membership/find_id" method="get">
		이름 : <input type="text" name="name">
		이메일 : <input type="text" name="email">
		<input type="submit" value="아이디 찾기">
		<input type="reset" value="초기화">
	</form>
-->
</body>
</html>