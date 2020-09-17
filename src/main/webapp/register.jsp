<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<link rel="stylesheet" href="css/register-css.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<%@include file="nav.jsp"%>
	<div class="container-fluid" style="margin-top: 20px;">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 central styleBody-1">
				<form method="GET" action="registrationForm">
					<h3 id="legend-register">Registration form</h3>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="name-register">Name*</label> <input type="text"
								id="name-register" name="firstName" class="form-control" required>
						</div>
						<div class="form-group col-md-6">
							<label for="surname-register">Surname*</label> <input type="text"
								id="surname-register" name="surname" class="form-control" required>
						</div>
					</div>
					<div class="form-group">
						<label for="email-register">Email*</label> <input type="email"
							id="email-register" name="email" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="username-register">Username*</label> <input type="username"
							id="username-register" name="username" class="form-control" required>
					</div>
					<div class="form-group">
						<label for="code-register">Codice Fiscale*</label> <input
							type="text" id="code-register" name="fiscalCode" class="form-control" required>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Indirizzo</label> <input type="text"
								class="form-control" id="inputIndirizzo">
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">N°</label> <input type="number"
								id="N-indirizzo" class="form-control" required>
						</div>
						<div class="form-group col-md-4">
							<label for="inputCity">Città</label> <input type="text"
								class="form-control" id="inputCity">
						</div>

					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">Provincia</label> <input type="text"
								class="form-control" id="inputProvincia">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">Stato</label> <select id="inputState"
								class="form-control">
								<option selected>Italia</option>
								<option>Inghilterra</option>
								<option>Francia</option>
								<option>Germania</option>
								<option>Svizzera</option>
								<option>Austria</option>
								<option>Spagnia</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">CAP*</label> <input type="number"
								id="cap-register" name="cap" class="form-control" required>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="password1-register">Password*</label> <input
								type="password" id="password1-register" name="password" class="form-control"
								required>
						</div>
						<div class="form-group col-md-6">
							<label for="password2-register">Repeat Password*</label> <input
								type="password" id="password2-register" class="form-control"
								required>
						</div>
					</div>
					<div class="form-group">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="gridCheck">
							<label class="form-check-label" for="gridCheck">
								Ricordami </label>
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Sign in</button>
				</form>
			</div>
		</div>
	</div>
	<%@include file="footer.html"%>
</body>
</html>