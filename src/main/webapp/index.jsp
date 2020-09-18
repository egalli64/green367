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

<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:wght@700&display=swap"
	rel="stylesheet">
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
	<%@include file="nav.jsp"%>
	<c:if test="${correctLog}">
		<div class="row" style="background-color: white;">
			<div class="col-9"></div>
			<div class="col-2">
				<p class="formLog">Logged in as: ${username}</p>
			</div>
			<div class="col">
				<form action="logout">
					<input type="submit" class="btn btn-primary" name="buttonLogout"
						data-toggle="button" aria-pressed="false" value="Logout">
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
					<p>
						Ciao <i class="formLog">${username}</i>, grazie per il tuo
						supporto! Esplora il nostro sito per scoprirne tutte le
						potenzialità, le tue prenotazioni non saranno più le stesse.
					</p>
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
<%@include file="footer.jsp"%>



</html>