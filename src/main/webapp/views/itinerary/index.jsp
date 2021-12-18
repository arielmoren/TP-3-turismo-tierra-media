<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
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
	<main>
			<c:if test="${flashBy != null}">
				<div class="alert alert-danger" style="color:  #00722e;">
					<p>
						<c:out value="${flashBy}" />
					</p>
				</div>
			</c:if>
			
		<section style="background: -webkit-linear-gradient(to left, rgb(34, 32, 31), rgb(3, 22, 30));
    background: linear-gradient(to left, rgb(34, 32, 31), rgb(3, 22, 30));">
			
		<div class="row mb-3" style="color: rgb(240, 152, 38);">
			<div class="col-3 themed-grid-col">NOMBRE</div>
			<div class="col-3 themed-grid-col">COSTO</div>
			<div class="col-3 themed-grid-col">DURACION</div>
			<div class="col-3 themed-grid-col">GENERO</div>
			
			<c:forEach items="${attractionItinerary}" var="attraction">		
				<div class="col-3 themed-grid-col"><c:out value="${attraction.name}"></c:out></div>
				<div class="col-3 themed-grid-col"><c:out value="${attraction.cost}"></c:out></div>
				<div class="col-3 themed-grid-col"><c:out value="${attraction.duration}"></c:out></div>
				<div class="col-3 themed-grid-col"><c:out value="${attraction.type}"></c:out></div>
				
			</c:forEach>
		</div>
		</section>
	
	</main>
</body>
</html>

