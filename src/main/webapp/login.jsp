<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="partials/hear.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="assert/css/login.css">
</head>
<body>

	<div class="col-lg-5 mx-auto p-3 py-md-5">

		<main class="main-form">
			
        <form action="login" method="post"> 
            <div>
                <img class="mb-4" src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" >
                <h1 class="h3 mb-3 fw-normal">Turismo en la Tierra Media</h1>
            </div>

            <div class="form-floating">
                <input name="username" type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div>

            <div class="form-floating">
                <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div> 
                
           
            
            <div>
                <button class="w-100 btn btn-lg btn-style" type="submit">Ingresar</button>
            </div>

			<div>
				<c:if test="${flash != null}">
				<div class="alert alert-danger">
					<p>
						<c:out value="${flash}" />
					</p>
				</div>
			</c:if>
			
			</div>

        </form>
		
		

    </main>

	</div>
</body>
</html>