<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prenotazione</title>
<link rel="stylesheet" href="css/register-css.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<%@include file="nav.html"%>
	
	
	<div class="container-fluid" style="margin-top: 20px;">
	<div class="row">
	<div class="col-5"></div>
	<b>
	${osp}
	</b>
	</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 central styleBody-1">
				<form method="GET">
					<h3 id="legend-register">Modulo di prenotazione</h3>
						<Label for="first_name">Nome:</Label>
						<input type="text" id="first name" name="first_name" value ="${firstName}">
						<Label for="last_name">Cognome:</Label>
						<input type="text" id="last name" name="last_name" value = "${lastName}">
						<Label for="address">Indirizzo:</Label>
						<input type="text" id="address" name="address">
						<Label for="cf">Codice fiscale:</Label>
						<input type="text" id="cf" name="cf" value = "${fiscalCode}">
						<Label for="hospital">Ospedale:</Label>
						<input type="text" id="hospital" name="hospital" value="${osp}">
						<Label for="date"> Data della visita:</Label>
						<input type="date" id="date" name="date">
					<button type="submit" class="btn btn-primary">Prenota</button>
				</form>
			</div>
		</div>
	</div>
	<%@include file="footer.html"%>
</body>
</html>