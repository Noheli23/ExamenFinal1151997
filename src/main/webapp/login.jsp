<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<div class="container col-md-8 col-md-offset-3" style="overflow: auto">
		<h1>Login Form</h1>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<div class="form-group">
				<label for="uname">Usuario:</label> <input type="text"
					class="form-control" id="username" placeholder="Usuario"
					name="username" required>
			</div>
			<fieldset class="form-group">
					<label>Rol</label> <select class="form-control"
						name="isDone">
						<option value="1">Usuario</option>
						<option value="2">Administrador</option>
					</select>
				</fieldset>
			<div class="form-group">
				<label for="uname">Email:</label> <input type="email"
					class="form-control" id="username" placeholder="Email"
					name="username" required>
			</div>

			<div class="form-group">
				<label for="uname">Password:</label> <input type="password"
					class="form-control" id="password" placeholder="Password"
					name="password" required>
			</div>


			<button type="submit" class="btn btn-primary">Entrar</button>
		</form>
	</div>
</body>
</html>