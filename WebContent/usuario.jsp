<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aplicaci�n Gestion de Usuarios</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 
</head> 
<body>   
	<header>
		<nav class="navbar navbar-expand-md navbar-dark" style="background-color:tomato">
			<div>
				<a href="#" class="navbar-brand">Gesti�n de Usuarios 1</a>
			</div>
			<ul class="navbar-nav">
				<li> <a href="<%=request.getContextPath()%>/list" class= "nav-link">Usuarios</a> </li>		
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			
				<c:if test="${usuario != null }">
					<form action="update" method="post">
				</c:if>
				<c:if test="${usuario == null }">
					<form action="insert" method="post">
				</c:if>
				
				<caption>
					<h2>
						<c:if test="${usuario != null }">
							Editar Usuario
						</c:if>
						<c:if test="${usuario == null }">
							Agregar Nuevo Usuario
						</c:if>
					</h2>	
				</caption>
				
				<c:if test="${usuario != null }">
					<input type="hidden" name="id" value="<c:out value='${usuario.id}'/>" />
				</c:if>
				
				<fieldset class="form-group">
					<label>Nombre de Usuario:</label> <input type="text" value="<c:out value ='${usuario.nombre}'/>" class="form-control" name="nombre" required="required">
					<label>Email de Usuario:</label> <input type="text" value="<c:out value ='${usuario.email}'/>" class="form-control" name="email">
					<label>Pa�s de Usuario:</label> <input type="text" value="<c:out value ='${usuario.pais}'/>" class="form-control" name="pais" > 
				</fieldset>
				<button type="submit" class="btn btn-success">Guardar</button>
				</form>	
			</div>
		</div>
	</div>	
</body>
</html>