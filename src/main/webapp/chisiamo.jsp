<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi siamo</title>
<link rel="stylesheet" type="text/css" href="css/chisiamo.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<%@include file="nav.html"%>
	<div class="central">
	<div class="row"> 
	<div class="col-3"> </div>
	<div class="col-6 text"> 
		<h1>Chi siamo</h1>

		<h3>Benvenuto nella piattaforma regionale per la prenotazione dei
			servizi ospedalieri</h3>
		<p>Qui potrai prenotare le prestazioni ospedaliere che desideri,
			scegliendo l'ospedale che preferisci. Accedere ai servizi è molto
			semplice!</p>

		<ul>
			<li>Compila il <a href="./register.jsp"> form di
					registrazione </a></li>
			<li>Effettua il <a href="./login.jsp">login</a>con le tue
				credenziali
			</li>
			<li>Scegli l'ospedale dalla nostra <a href="./ospedali.jsp"></a>
				lista </a>
			</li>


		</ul>


		<p>
			Se dovessi riscontrare problemi nella compilazione del form o nella
			scelta dell'ospedale, o per qualsiasi dubbio, non esitare a <a
				href="./contact.jsp"> contattarci </a> !
		</p>

		</div>
		<div class="col-3"> </div>
		</div>
	</div>
</body>
</html>