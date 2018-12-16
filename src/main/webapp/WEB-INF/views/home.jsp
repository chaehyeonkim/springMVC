<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<table>
	
	<tr><td>
		<a href="${pageContext.request.contextPath}/subjects_by_semester">학기별 이수 학점 조회</a>
	</td>
	
	<tr><td>
		<a href="${pageContext.request.contextPath}/enrolment">수강 신청하기</a>
	</td>
	<td>
		<a href="${pageContext.request.contextPath}/select_enrolment?year=2019&semester=1">수강 신청 조회 메뉴</a>
	</td></tr>
	<tr><td>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
	</c:if>
	</td></tr>
	</table>
	<form id="logout" action="<c:url value="/logout" />" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
		<c:if test="${success != null}">
		<br/>
		<c:out value="성공!"></c:out>
		<br/>
	</c:if>
</body>
</html>