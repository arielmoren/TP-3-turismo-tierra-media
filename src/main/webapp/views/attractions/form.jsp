<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="modal-body">
	<div class="mb-3">
		<label for="name" class="col-form-label">Nombre:</label> <input
			type="text" class="form-control" id="name" name="name"
			required value="${attraction.name}">
	</div>
	<div class="mb-3">
		<label for="cost"
			class='col-form-label ${attraction.errors.get("cost") != null ? "is-invalid" : "" }'>Costo:</label>
		<input class="form-control" type="number" id="cost" name="cost"
			required value="${attraction.cost}"></input>
		<div class="invalid-feedback">
			<c:out value='${attraction.errors.get("cost")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="duration"
			class='col-form-label ${attraction.errors.get("duration") != null ? "is-invalid" : "" }'>Duration:</label>
		<input class="form-control" type="number" id="duration" name="duration"
			required value="${attraction.duration}"></input>
		<div class="invalid-feedback">
			<c:out value='${attraction.errors.get("duration")}'></c:out>
		</div>
	</div>
	<div class="mb-3">
		<label for="capacity"
			class='col-form-label ${attraction.errors.get("capacity") != null ? "is-invalid" : "" }'>Capacity:</label>
		<input class="form-control" type="number" id="capacity" name="capacity"
			required value="${attraction.capacity}"></input>
		<div class="invalid-feedback">
			<c:out value='${attraction.errors.get("capacity")}'></c:out>
		</div>
	</div>
<!-- 	<div class="mb-3"> -->
<!-- 		<label for="type" -->
<%-- 			class='col-form-label ${attraction.errors.get("type") != null ? "is-invalid" : "" }'>Type:</label> --%>
<!-- 		<input class="form-control" type="text" id="type" name="type" -->
<%-- 			required value="${attraction.type}"></input> --%>
<!-- 		<div class="invalid-feedback"> -->
<%-- 			<c:out value='${attraction.errors.get("type")}'></c:out> --%>
<!-- 		</div> -->
	
<!-- 	</div> -->
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
		<label for="description"
			class='col-form-label ${attraction.errors.get("description") != null ? "is-invalid" : "" }'>Type:</label>
		<input class="form-control" type="text" id="description" name="description"
			required value="${attraction.description}"></input>
		<div class="invalid-feedback">
			<c:out value='${attraction.errors.get("description")}'></c:out>
		</div>
	</div>
</div>
<div>
	<button type="submit" class="btn btn-primary">Guardar</button>
	<a onclick="window.history.back();" class="btn btn-secondary"
		role="button">Cancelar</a>
</div>
