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
			<div class="col-3"></div>
			<div class="col-6 central styleBody-1">
				<form method="GET">
					<h3 id="legend-register">Modulo di prenotazione</h3>
						<p>Nome:</p>
						<p>Cognome:</p>
						<p>Indirizzo:</p>
						<p>Codice Fiscale:</p>
						<p>
						Ospedale
						</p>
					<button type="submit" class="btn btn-primary">Prenota</button>
				</form>
			</div>
		</div>
	</div>
	<%@include file="footer.html"%>
</body>
</html>