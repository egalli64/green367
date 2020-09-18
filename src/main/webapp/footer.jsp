<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Footer -->
<footer class="page-footer font-small stylish-color-dark pt-4">

	<!-- Footer Links -->
	<div class="container text-center text-md-left">

		<!-- Grid row -->
		<div class="row">

			<!-- Grid column -->
			<div class="col-md-4 mx-auto">

				<!-- Content -->
				<h5 class="font-weight-bold text-uppercase mt-3 mb-4"margin-bottom: 40px;">GreenHospital</h5>
				<p>
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d237860.0021151943!2d-157.93916189823634!3d21.328295616689577!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7c00183b8cc3464d%3A0x4b28f55ff3a7976c!2sHonolulu%2C%20Hawaii%2C%20Stati%20Uniti!5e0!3m2!1sit!2sit!4v1599323575839!5m2!1sit!2sit"
						width="200" height="150" frameborder="0" style="border: 0;"
						allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
				</p>

			</div>
			<!-- Grid column -->

			<hr class="clearfix w-100 d-md-none">

			<!-- Grid column -->
			<div class="col-md-2 mx-auto">
				<c:if test="${correctLog}">
					<!-- Links -->
					<h5 class="font-weight-bold text-uppercase mt-3 mb-4">Scorciatoie</h5>

					<ul class="list-unstyled">
						<li><a href="booking.jsp" class="text-success">Prenotazione</a>
						</li>
						<li><a href="service.jsp" class="text-success">Servizi
								disponibili</a></li>
						<li><a href="ospedali.jsp" class="text-success">Ospedali
								disponibili</a></li>

					</ul>
				</c:if>
			</div>
			<!-- Grid column -->

			<hr class="clearfix w-100 d-md-none">

			<!-- Grid column -->
			<div class="col-md-2 mx-auto">

				<!-- Links -->
				<h5 class="font-weight-bold text-uppercase mt-3 mb-4">Utilità</h5>

				<ul class="list-unstyled">
					<li><a href="contact.jsp" class="stretched-link text-danger">Contattaci</a>
					</li>
					<li><a href="chisiamo.jsp" class="stretched-link text-danger">Chi
							Siamo</a></li>
				</ul>

			</div>
			<!-- Grid column -->

			<hr class="clearfix w-100 d-md-none">

			<!-- Grid column -->
			<div class="col-md-2 mx-auto">

				<!-- Links -->
				<h5 class="font-weight-bold text-uppercase mt-3 mb-4">Area
					Riservata</h5>

				<ul class="list-unstyled">
					<li><a href="login.jsp" class="text-warning stretched-link">Login
							Admin</a></li>
				</ul>

			</div>
			<!-- Grid column -->

		</div>
		<!-- Grid row -->

	</div>
	<!-- Footer Links -->

	<hr>
<c:if test="${!correctLog}">
	<!-- Call to action -->
	<ul class="list-unstyled list-inline text-center py-2">
		<li class="list-inline-item">
			<h5 class="mb-1">Registrati è gratuito!</h5>
		</li>
		<li class="list-inline-item"><a href="register.jsp"
			class="btn btn-danger btn-rounded">Sign up!</a></li>
	</ul>
	<!-- Call to action -->

	<hr>
</c:if>
</footer>
<!-- Footer -->