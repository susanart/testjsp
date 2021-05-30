<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aplicación Gestion de Usuarios</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"  style="background-color:tomato">
			<div>
				<a href="#" class="navbar-brand">Gestión de Usuarios</a>
			</div>
			<ul class="navbar-nav">
				<li> <a href="<%=request.getContextPath()%>/list" class= "nav-link">Usuarios</a> </li>		
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='messege'>{{messege}}</div> -->
		<div class="container">
			<h3 class="text-center">Listado de Usuarios</h3>
			<hr>
			<div class="container text-left">
				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar Nuevo Usuario</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead >
					<tr>
						<th>ID</th>
						<th>Nombre</th>
						<th>Email</th>
						<th>País</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<!-- for (Todo todo:todos){ // lo siguiente es jstl, usuario recibe a listUsuario  -->
					<c:forEach var="usuario" items="${listUsuarios}">
					<tr>
						<td>
							<c:out value="${usuario.id}" />
						</td>
						<td>
							<c:out value="${usuario.nombre}" />
						</td>
						<td>
							<c:out value="${usuario.email}" />
						</td>
						<td>
							<c:out value="${usuario.pais}" />
						</td>
						<td><a href="edit?id=<c:out value='${usuario.id}' />">Editar</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="delete?id=<c:out value='${usuario.id}'/>">Eliminar</a></td>
						</tr>
						</c:forEach>
						<!-- } -->						
				</tbody> 
			</table>
		</div>
	</div>	
</body>
</html>