<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<jsp:include page="partials/hear.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/nav.css" defer>
</head>
<body >
	<jsp:include page="partials/nav.jsp"></jsp:include>
	<header>
		<div id="carouselExampleCaptions"  class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators" >
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner" style="height: 400px">
				<div class="carousel-item active">
					<img src="/tierraMedia/assert/img/inicio/catarata.jpg"
						class="d-block w-100" alt="...">
					
				</div>
				<div class="carousel-item">
					<img src="/tierraMedia/assert/img/inicio/montaña.jpg"
						class="d-block w-100" alt="...">
					
				</div>
				<div class="carousel-item">
					<img src="/tierraMedia/assert/img/inicio/paisaje.jpg"
						class="d-block w-100" alt="...">
	
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</header>
	
	<main style="background: brack;">
	
		<div style="width: 100%; background: linear-gradient(to right, rgb(34, 32, 31), rgb(3, 22, 30));; ">
			<p style="color: rgb(240, 152, 38); font-size: 50px; margin-left: 30%;">¡BIENVENIDOS A LA DIVERSIÓN!</p>
			<div class="container px-4 py-5" id="custom-cards">

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('/tierraMedia/assert/img/inicio/comida.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" style="color: rgb(240, 152, 38);">¿Estas listo para disfrutar los deliciosos platos?</h2>
            
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('/tierraMedia/assert/img/inicio/paisajeCuadrada.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" style="color: rgb(240, 152, 38);">¿Sabias que... observaras los mas bellos paisajes?</h2>
            
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg" style="background-image: url('/tierraMedia/assert/img/inicio/aventura.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold" style="color: rgb(240, 152, 38);">Preparate para vivir las mejores aventuras</h2>
            
          </div>
        </div>
      </div>
    </div>
  </div>
					
		</div>
	
	</main>
</body>
</html>