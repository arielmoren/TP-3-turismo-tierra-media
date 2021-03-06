<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="/partials/hear.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="/tierraMedia/assert/css/nav.css" defer>
<link rel="stylesheet" type="text/css"
	href="/tierraMedia/assert/css/attractions.css" defer>
</head>
<body>
	<jsp:include page="/partials/nav.jsp"></jsp:include>

	<main class="container">

		 <%-- <c:if test="${users != null && !users.isValid()}">
			<div class="alert alert-danger">
				<p>Se encontraron errores al actualizar la atracci?n.</p>
			</div>
		</c:if>  --%>

		<form action="/tierraMedia/admin/create.admin" method="post">
			<jsp:include page="/views/admin/form.jsp"></jsp:include>
		</form>
	</main>
</body>
</html>
