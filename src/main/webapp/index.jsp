<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Green Hospital</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&family=Dancing+Script:wght@600&family=Gayathri&family=Pacifico&family=Russo+One&display=swap')
	;
</style>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="java/index.js" defer>
	
</script>
</head>

<body>
	<%@include file="nav.html"%>
	<c:if test="${correctLog}">
		<div class="row" style="background-color: white;">
			<div class="col-9"></div>
			<div class="col-2">
				<p class="formLog">Logged in as: ${username}</p>
			</div>
			<div class="col">
				<form action="logout">
					<input type="submit" class="btn btn-primary" name="buttonLogout" data-toggle="button" aria-pressed="false" value="Logout">
				</form>
			</div>
		</div>
	</c:if>
	<div class="row">
		<div class="col-1"></div>
		<div class="col-4">
			<div class="jumbotron index-jumbo">
				<c:if test="${!correctLog}">
					<h2>Diventa dei nostri</h2>
					<p>Le tue informazioni sono al sicuro, non dovrai più
						preoccuparti di nulla. Cosa aspetti?</p>
					<p>
						Esegui il <a href="login.jsp">login</a> o <a href="register.jsp">registrati</a>
						al sito
					</p>
				</c:if>
				<c:if test="${correctLog}">
					<h2>Grazie per il tuo supporto</h2>
					<p>Ciao <i class="formLog">${username}</i>, grazie per il tuo supporto! Esplora il
						nostro sito per scoprirne tutte le potenzialità, le tue
						prenotazioni non saranno più le stesse.</p>
				</c:if>
			</div>
		</div>
		<div class="col-1"></div>
		<div class="col-5">
			<div class="jumbotron index-jumbo">
				<h2>Prenditi cura di te</h2>
				<img src="./pictures/medici_associati.jpg" width="450px">
				<p id="jumbo-text">GreenHospital è un progetto rivoluzionario
					nell'assistenza medica: non perdere tempo, prenota ora la tua
					visita medica da casa, gratis! Potrai scegliere in quale ospedale
					recarti o scegliere quello in cui è possibile prenotare prima.</p>
			</div>
		</div>

	</div>
</body>
<footer>
	<div class="row">
		<div class="col-1"></div>
		<div class="col">
			<h2 style="color: white; margin-bottom: 40px;">GreenHospital</h2>
		</div>
	</div>
	<div class="row">
		<div class="col-1"></div>
		<div class="col">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237860.0021151943!2d-157.93916189823634!3d21.328295616689577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c00183b8cc3464d%3A0x4b28f55ff3a7976c!2sHonolulu%2C%20Hawaii%2C%20Stati%20Uniti!5e0!3m2!1sit!2sit!4v1599323575839!5m2!1sit!2sit"
				width="200" height="150" frameborder="0" style="border: 0;"
				allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
		<div class="col-3">
			<p style="color: darkgray; font-size: small;">Accesso riservato</p>
		</div>
	</div>
</footer>



</html>