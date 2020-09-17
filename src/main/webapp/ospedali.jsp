<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hospital List</title>
    <link rel="stylesheet" href="css/ospedali.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<%@include file="nav.html"%>
	<div class="col-4"></div>
	<div class="col-4">
		<legend id="legend-register">Lista Ospedali</legend>
		<ul class="list-group">
			<li class="list-group-item" ><a href="l_ospedali/ospedale1.jsp">
					OSPEDALE DI VIZZOLO PREDABISSI</a>
		
					<form action="booking">
					<button class="btn btn-success" name="1" value="1">Prenota</button>
					</form>
			</li>
					
					
			<li class="list-group-item"  ><a href="l_ospedali/ospedale2.jsp">
					OSPEDALE BOLOGNINI - SERIATE </a>
					<form action="booking">
					<button class="btn btn-success"  name="2" value="2">Prenota</button>
					</form>
			</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale3.jsp">
					OSPEDALE SERBELLONI - GORGONZOLA </a>
					<form action="booking">
					<button class="btn btn-success"  name="3" value="3">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale4.jsp">
					OSPEDALE CROTTA OLTROCCHI-VAPRIO D'ADDA </a>
					<form action="booking">
					<button class="btn btn-success"  name="4" value="4">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale5.jsp">
					OSP. GENERALE PROVINCIALE - SARONNO </a>
					<form action="booking">
					<button class="btn btn-success"  name="5" value="5">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale6.jsp">
					OSPEDALE PESENTI FENAROLI - ALZANO L. </a>
					<form action="booking">
					<button class="btn btn-success"  name="6" value="6">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale7.jsp">
					PRESIDIO OSPEDALIERO DI ROVATO </a>
					<form action="booking">
					<button class="btn btn-success"  name="7" value="7">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale8.jsp">
					OSPEDALE S. MARIA DELLE STELLE MELZO </a>
					<form action="booking">
					<button class="btn btn-success"  name="8" value="8">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale9.jsp">
					OSPEDALE UBOLDO - CERNUSCO S/NAVIGLIO </a>
					<form action="booking">
					<button class="btn btn-success"  name="9" value="9">Prenota</button>
					</form>
					</li>
			<li class="list-group-item"><a href="l_ospedali/ospedale10.jsp">
					OSPEDALE S. PAOLO - MILANO </a>
					<form action="booking">
					<button class="btn btn-success"  name="10" value="10">Prenota</button>
					</form>
					</li>
		</ul>
	</div>
	</div>


	<%@include file="footer.html"%>

</body>
</html>