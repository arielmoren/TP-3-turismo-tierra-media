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
	<main>
			<c:if test="${flashBy != null}">
				<div class="alert alert-danger" style="color: red;">
					<p>
						<c:out value="${flashBy}" />
					</p>
				</div>
			</c:if>
			
		<section style="background: -webkit-linear-gradient(to left, rgb(34, 32, 31), rgb(3, 22, 30));
    background: linear-gradient(to left, rgb(34, 32, 31), rgb(3, 22, 30));">
			
			<div class="row row-cols-1 row-cols-md-3 mb-3 b">

				<c:forEach items="${attractions}" var="attraction">
					<div class="col">
						<div class="card mb-4 rounded-3 shadow-sm " style="background: -webkit-linear-gradient(to right, rgb(34, 32, 31), rgb(3, 22, 30));
    background: linear-gradient(to right, rgb(34, 32, 31), rgb(3, 22, 30)); color: rgb(240, 152, 38);">
							<div class="card-header py-3">
								<h4 class="my-0 fw-normal text-center" id="font-color-dorado"><c:out value="${attraction.name}"></c:out></h4>
							</div>
							<div id="content-fondo">
								<img id="img-fondo" alt="img" src="/tierraMedia/assert/img/ring.png">						
							</div>
							<div class="card-body">
								<ul class="list-unstyled mt-3 mb-4" >
									<li><p><c:out value="${attraction.description}"></c:out></p></li>
									<li>Genero: <c:out value="${attraction.type}"></c:out></li>
									<li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-exchange" viewBox="0 0 16 16">
										  <path d="M0 5a5.002 5.002 0 0 0 4.027 4.905 6.46 6.46 0 0 1 .544-2.073C3.695 7.536 3.132 6.864 3 5.91h-.5v-.426h.466V5.05c0-.046 0-.093.004-.135H2.5v-.427h.511C3.236 3.24 4.213 2.5 5.681 2.5c.316 0 .59.031.819.085v.733a3.46 3.46 0 0 0-.815-.082c-.919 0-1.538.466-1.734 1.252h1.917v.427h-1.98c-.003.046-.003.097-.003.147v.422h1.983v.427H3.93c.118.602.468 1.03 1.005 1.229a6.5 6.5 0 0 1 4.97-3.113A5.002 5.002 0 0 0 0 5zm16 5.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0zm-7.75 1.322c.069.835.746 1.485 1.964 1.562V14h.54v-.62c1.259-.086 1.996-.74 1.996-1.69 0-.865-.563-1.31-1.57-1.54l-.426-.1V8.374c.54.06.884.347.966.745h.948c-.07-.804-.779-1.433-1.914-1.502V7h-.54v.629c-1.076.103-1.808.732-1.808 1.622 0 .787.544 1.288 1.45 1.493l.358.085v1.78c-.554-.08-.92-.376-1.003-.787H8.25zm1.96-1.895c-.532-.12-.82-.364-.82-.732 0-.41.311-.719.824-.809v1.54h-.005zm.622 1.044c.645.145.943.38.943.796 0 .474-.37.8-1.02.86v-1.674l.077.018z"/>
										</svg> <c:out value="${attraction.cost}"></c:out></li>
									<li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hourglass" viewBox="0 0 16 16">
										  <path d="M2 1.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-1v1a4.5 4.5 0 0 1-2.557 4.06c-.29.139-.443.377-.443.59v.7c0 .213.154.451.443.59A4.5 4.5 0 0 1 12.5 13v1h1a.5.5 0 0 1 0 1h-11a.5.5 0 1 1 0-1h1v-1a4.5 4.5 0 0 1 2.557-4.06c.29-.139.443-.377.443-.59v-.7c0-.213-.154-.451-.443-.59A4.5 4.5 0 0 1 3.5 3V2h-1a.5.5 0 0 1-.5-.5zm2.5.5v1a3.5 3.5 0 0 0 1.989 3.158c.533.256 1.011.791 1.011 1.491v.702c0 .7-.478 1.235-1.011 1.491A3.5 3.5 0 0 0 4.5 13v1h7v-1a3.5 3.5 0 0 0-1.989-3.158C8.978 9.586 8.5 9.052 8.5 8.351v-.702c0-.7.478-1.235 1.011-1.491A3.5 3.5 0 0 0 11.5 3V2h-7z"/>
										</svg> <c:out value="${attraction.duration}"></c:out> hs</li>
									<li><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-ticket" viewBox="0 0 16 16">
										  <path d="M0 4.5A1.5 1.5 0 0 1 1.5 3h13A1.5 1.5 0 0 1 16 4.5V6a.5.5 0 0 1-.5.5 1.5 1.5 0 0 0 0 3 .5.5 0 0 1 .5.5v1.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 11.5V10a.5.5 0 0 1 .5-.5 1.5 1.5 0 1 0 0-3A.5.5 0 0 1 0 6V4.5ZM1.5 4a.5.5 0 0 0-.5.5v1.05a2.5 2.5 0 0 1 0 4.9v1.05a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-1.05a2.5 2.5 0 0 1 0-4.9V4.5a.5.5 0 0 0-.5-.5h-13Z"/>
										</svg> <c:out value="${attraction.capacity}"></c:out></li>
								</ul>
								<div>
				
									<div>
									<a href="/tierraMedia/attractions/buy.do?id=${attraction.id}"
									class="w-100 btn btn-lg btn-style text-center" role="button">Comprar</a>
										<!-- <button type="button" class="w-100 btn btn-lg btn-style text-center">Comprar</button> -->
									</div>								
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>

	</main>
</body>
</html>
