<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chi siamo</title>
<link rel="stylesheet" type="text/css" href="css/chisiamo.css">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
	<%@include file="nav.jsp"%>
	<div class="central">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 text">
				<h1>Chi siamo</h1>

				<h3>Benvenuto nella piattaforma regionale per la prenotazione
					dei servizi ospedalieri</h3>
				<p>Qui potrai prenotare le prestazioni ospedaliere che desideri,
					scegliendo l'ospedale che preferisci. Accedere ai servizi è molto
					semplice!</p>

				<ul>
					<li>Compila il <a href="./register.jsp"> form di
							registrazione </a></li>
					<li>Effettua il <a href="./login.jsp">login</a> con le tue
						credenziali
					</li>
					<li>Scegli l'ospedale dalla nostra <a href="./ospedali.jsp"></a>
						lista
					</li>


				</ul>


				<p>
					Se dovessi riscontrare problemi nella compilazione del form o nella
					scelta dell'ospedale, o per qualsiasi dubbio, non esitare a <a
						href="./contact.jsp"> contattarci </a> !
				</p>
				<hr>
				<h2 align="center">Ecco il nostro team!</h2>
				
			</div>
			<div class="col-3"></div>
		</div>
		<div class="row" >
			<div class="col-3"></div>
			<div class="col">
				<figure>
					<a href="davideCV/myCB.html"><img src="davideCV/davideLapi.jpg" alt="Davide Lapi"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Davide Lapi --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col">
				<figure>
					<a href=" "><img src=" " alt="Francesco Fasciano"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Francesco Fasciano --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col">
				<figure>
					<a href=" "><img src=" " alt="Mauro Forte"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Mauro Forte --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col-2"></div>
		</div>
		<div class="row" >
		<div class="col-3"></div>
			<div class="col">
				<figure>
					<a href=" "><img src=" " alt="Elisa Mani"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Elisa Mani --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col">
				<figure>
					<a href=" "><img src=" " alt="Emilia Faraci"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Emilia Faraci --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col">
				<figure>
					<a href=" "><img src=" " alt="Patrizia Gironi"
						width="150"></a>
					<figcaption >
						<h5 class="NameId">-- Patrizia Gironi --</h5>
					</figcaption>
				</figure>
			</div>
			<div class="col-2"></div>
		</div>
		<p align="center">Cliccando sulle immagini potrai trovare informazioni su ogniuno di loro</p>
	</div>
	<%@include file="footer.html"%>

</body>
</html>