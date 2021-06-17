<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aplicación</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color:#4a148c">
			<div>
				<a href="" class="navbar-brand"> Registro de usuarios</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Editar usuario
            		</c:if>
						<c:if test="${user == null}">
            			Agregar nuevo usuario
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Usuario</label> <input type="text"
						value="<c:out value='${user.usuario}' />" class="form-control"
						name="name" required="required" minlength="5">
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="email"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" minlength="5">
				</fieldset>
				<fieldset class="form-group">
					<label>Password</label> <input type="password"
						value="<c:out value='${user.pass}' />" class="form-control"
						name="email" minlength="5">
				</fieldset>
				<fieldset class="form-group">
					<label>Rol</label> <select class="form-control"
						name="isDone" value="<c:out value='${user.role}' />">
						<option value="1">Usuario</option>
						<option value="2">Administrador</option>
					</select>
				</fieldset>

				<fieldset class="form-group">
					<input type="text"
						value="<c:out value='${user.state}' />" class="form-control"
						name="country" required="required" minlength="5" hidden>
				</fieldset>
				

				<button type="submit" class="btn btn-success" style="background-color:#4a148c; border-color:#4a148c">Guardar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>