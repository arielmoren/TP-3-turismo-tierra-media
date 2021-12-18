<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-md navbar-style navbar-dark bg-dark ">
	<div class="container-fluid ">
				<button class="navbar-toggler clotorButon" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon "></span>
		</button>
		<div class="collapse navbar-collapse separador" id="navbarNav">
			<div class="navBar1">
				<div >
					<a class="navbar-brand" href="/tierraMedia/index.jsp"><img class="icon" alt="img" src="/tierraMedia/assert/img/ring.png"></a>
				</div>
				<div>
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-a-color"
							aria-current="page" href="/tierraMedia/index.jsp">Home</a>
						</li>
						<li class="nav-item"><a class="nav-a-color" href="/tierraMedia/attractions/index.jsp">Atracciones</a>
						</li>
						<c:if test="${login != null}">
						<li class="nav-item"><a class="nav-a-color" href="/tierraMedia/itinerary/index.jsp">Itinerary</a>
						</li>
						</c:if>
						<c:if test="${login.admin}">
							<li class="nav-item"><a class="nav-a-color" href="/tierraMedia/admin/index.admin">Administracion</a>
						</li>
						</c:if>
					</ul>
				</div>
			</div>

			<div class="User">
				<c:choose>
					<c:when test="${login != null}">
						<ul class="navbar-nav">
							<li class="nav-item dropdown">
								<a class=" dropdown-toggle nav-a-color"
								id="navbarDarkDropdownMenuLink " role="button"
								data-bs-toggle="dropdown" aria-expanded="false"><c:out value="${login.username}"/></a>
								<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
				                  <li><a class="dropdown-a" href="#">monedas:<c:out value="${login.coins}"/></a></li>
				                  <li><a class="dropdown-a" href="#">tiempo:<c:out value="${login.time}"/></a></li>
				                  <li><a class="dropdown-a" href="/tierraMedia/logout">Salir</a></li>
				                  
				                </ul>
							</li>
						</ul>
					</c:when>
					<c:otherwise>
						<a class="nav-a-color" href="/tierraMedia/login.jsp">Ingresar</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</nav>