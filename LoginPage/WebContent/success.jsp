<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div align="right">

		<a href="logout.app"><input type="submit" value="Logout"></a>
	</div>

	<jstl:if test="${sessionScope.username!=null }">
		<h4>Hello ${sessionScope.username}</h4>

	</jstl:if>

	<jstl:if test="${sessionScope.username==null }">
		<jstl:redirect url="Login.jsp"></jstl:redirect>

	</jstl:if>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>