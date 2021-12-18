<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal-body">
	 <div class="mb-3">
		<label for="username" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="username" name="username"
			required value="${users.username}" >
	</div>
	<div class="mb-3">
		<label for="password" class="col-form-label">Pasword:</label> <input
			type="password" class="form-control" id="password" name="password"
			required value="${users.password}" >
	</div>
	 <div class="mb-3">
		<label for="coins"
			class='col-form-label ${users.errors.get("coins") != null ? "is-invalid" : "" } '>Monedas:</label>
		<input class="form-control" type="number" id="coins" name="coins"
			 required value="${users.coins}" ></input>
		<div class="invalid-feedback">
			<c:out value='${users.errors.get("coins")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="time"
 			class='col-form-label ${user.errors.get("time") != null ? "is-invalid" : "" }'>Tiempo Disponible:</label> 
		<input class="form-control" type="number" id="time" name="time"
			required value="${users.time}"></input>
		<div class="invalid-feedback">
			<c:out value='${users.errors.get("time")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="type"
			class='col-form-label ${attraction.errors.get("type") != null ? "is-invalid" : "" }'>Type:</label>
	           <select name="type" id="type" required value="degustacion" class="form-control">
	           <option value="aventura">aventura</option>
	           <option value="degustacion">degustacion</option>
	           <option value="paisaje">paisaje</option>
	           </select>
		<div class="invalid-feedback">
			<c:out value='${attraction.errors.get("type")}'></c:out>
		</div>
	
	</div>
	
	<div class="mb-3">
		<label for="admin"
			class='col-form-label ${users.errors.get("admin") != null ? "is-invalid" : "" }'>Administrdor:</label>
	           <select name="admin" type="text" id="admin" class="form-control">
	           <option value="SI">SI</option>
	           <option value="NO">NO</option>
	           </select>
		<div class="invalid-feedback">
			<c:out value='${users.errors.get("admin")}'></c:out>
		</div>
	
	</div>
	
</div> 
<div>
	<button type="submit" class="btn btn-primary">Guardar</button>
	<a onclick="window.history.back();" class="btn btn-secondary"
		role="button">Cancelar</a>
</div>
