<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<link rel="stylesheet" href="css/contact.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="text/javascript" src="../java/contact.js">
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
	<%@include file="nav.html"%>
	<form name="module">

		<div class="container-fluid contatti col-5">
			<div>
				Nome: <input type="text" name="name" size="30" maxlength="30"
					placeholder="Inserisci il tuo nome" required>
			</div>
			<div>
				Cognome: <input type="text" name="b" size="30" maxlength="30"
					placeholder="Inserisci il tuo cognome" required>
			</div>
			<div>
				Indirizzo e-mail: <input type="text" id="email" name="email"
					size="30" maxlength="30" pattern="[^@]+@[^@]+\.[a-zA-Z]{2,}"
					placeholder="Inserisci la tua mail" required required>
			</div>
			<div>
				CAP: <input type="text" name="d" size="15" maxlength="15"
					placeholder="Inserisci il tuo CAP" required>
			</div>
			<input type="reset" value="Reset">

			<div>
				La tua richiesta:<br> <input size="100" maxlength="100"
					name="msg" type="text" onfocus="this.value=''"
					value="Inserisci una breve descrizione della tua richiesta!">
				<!-- <textarea name="comment" onfocus="cancelContent(this)" id="text" >Inserisci una breve descrizione della tua richiesta, un nostro operatore ti ricontatterà! </textarea> -->
			</div>

			<input type="submit" value="Invia richiesta"
				onClick="validationMail()">
		</div>

		</div>
	</form>
	</div>
	<hr>
<%@include file="footer.html"%>
</body>

</html>