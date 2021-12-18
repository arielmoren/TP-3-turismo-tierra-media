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
	promociones
	<main style="color: rgb(240, 152, 38);">
		<a href="/tierraMedia/attractions/create.admin"
		class=" text-center" role="button" >Nueva Atraccion</a>
		<div class="row mb-3">
			<div class="col-2 themed-grid-col">NOMBRE</div>
			<div class="col-2 themed-grid-col">COSTO</div>
			<div class="col-2 themed-grid-col">DURACION</div>
			<div class="col-2 themed-grid-col">CAPACIDAD</div>
			<div class="col-2 themed-grid-col">GENERO</div>
			<div class="col-2 themed-grid-col"></div>
			<c:forEach items="${attractionsAct}" var="attraction">		
				<div class="col-2 themed-grid-col"><c:out value="${attraction.name}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.cost}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.duration}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.capacity}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.type}"></c:out></div>
				<div class="col-2 themed-grid-col">
					<a  href="/tierraMedia/attractions/edit.admin?id=${attraction.id}"
									class=" text-center" style="color: rgb(240, 152, 38);" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>
									<a href="/tierraMedia/attractions/desactive.admin?id=${attraction.id}"
									class=" text-center" style="color: red;" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
</svg></a>
				</div>
			</c:forEach>
		</div>
		<div class="row mb-3">
			<div class="col-2 themed-grid-col">-----------------------</div>
			<div class="col-2 themed-grid-col">-----------------------</div>
			<div class="col-2 themed-grid-col">-----------------------</div>
			<div class="col-2 themed-grid-col">-----------------------</div>
			<div class="col-2 themed-grid-col">-----------------------</div>
			<div class="col-2 themed-grid-col">-----------------------</div>
			<c:forEach items="${attractionsDes}" var="attraction">		
				<div class="col-2 themed-grid-col"><c:out value="${attraction.name}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.cost}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.duration}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.capacity}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${attraction.type}"></c:out></div>
				<div class="col-2 themed-grid-col">
					<a href="/tierraMedia/attractions/edit.admin?id=${attraction.id}"
									class=" text-center" style="color: rgb(240, 152, 38);" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>
									<a href="/tierraMedia/attractions/active.admin?id=${attraction.id}"
									class=" text-center" style="color:#00722e;" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.235.235 0 0 1 .02-.022z"/>
</svg></a>
				</div>
			</c:forEach>
		</div>
		<a href="/tierraMedia/admin/create.admin"
		class=" text-center" role="button">Nuevo Usuario</a>
		<div class="row mb-3">
			<div class="col-2 themed-grid-col">NOMBRE</div>

			<div class="col-2 themed-grid-col">MONEDAS</div>
			<div class="col-2 themed-grid-col">TIEMPO DISPONIBLE</div>
			<div class="col-2 themed-grid-col">GENERO PREFERIDO</div>
			<div class="col-2 themed-grid-col"></div>
			<div class="col-2 themed-grid-col"></div>
			<c:forEach items="${usersAct}" var="users">
				<div class="col-2 themed-grid-col"><c:out value="${users.username}"></c:out></div>				
				<div class="col-2 themed-grid-col"><c:out value="${users.coins}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${users.time}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${users.type}"></c:out></div>
				<div class="col-2 themed-grid-col"></div>
				<div class="col-2 themed-grid-col">
					<a href="/tierraMedia/admin/editUser.admin?id=${users.id}"
					class=" text-center" style="color: rgb(240, 152, 38);" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>
			<c:if test="${login.id != users.id}">
			
			
					<a href="/tierraMedia/admin/desactive.admin?id=${users.id}"
					class=" text-center" style="color: red;" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
</svg></a>
				</c:if>	
				
				</div>
			</c:forEach>
		</div>
		<div class="row mb-3">
			<div class="col-2 themed-grid-col">--------------------</div>
			<div class="col-2 themed-grid-col">--------------------</div>
			<div class="col-2 themed-grid-col">--------------------</div>
			<div class="col-2 themed-grid-col">--------------------</div>
			<div class="col-2 themed-grid-col">--------------------</div>
			<div class="col-2 themed-grid-col">--------------------</div>			
			
			<c:forEach items="${usersDes}" var="usersdes">
				<div class="col-2 themed-grid-col"><c:out value="${usersdes.username}"></c:out></div>				
				<div class="col-2 themed-grid-col"><c:out value="${usersdes.coins}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${usersdes.time}"></c:out></div>
				<div class="col-2 themed-grid-col"><c:out value="${usersdes.type}"></c:out></div>
				<div class="col-2 themed-grid-col"></div>
				<div class="col-2 themed-grid-col">
					<a href="/tierraMedia/admin/editUser.admin?id=${usersdes.id}"
					class=" text-center" style="color: rgb(240, 152, 38);" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg></a>			
					
									<a href="/tierraMedia/admin/active.admin?id=${usersdes.id}"
									class=" text-center" style="color:#00722e;" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-square" viewBox="0 0 16 16">
				  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  <path d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.235.235 0 0 1 .02-.022z"/>
				</svg></a>
				</div>
			</c:forEach>
		</div>
		
	</main>
</body>
</html>