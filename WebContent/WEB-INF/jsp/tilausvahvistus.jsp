<%@ page import="fi.pizzablue.bean.Pizza"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/grayscale.css" rel="stylesheet">

<!-- Team Blue CSS -->
<link href="css/teamblue_styles.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<title>Tilausvahvistus</title>
</head>

<body>
	<!-- Tilauksen lähetys -->
	<section id="tilauksenLähetys"
		class="container content-section text-center"
		style="padding-top: 50px !important;">
		<div class="row">
			<div class="col-lg-12">
				<h1>Tilausvahvistus</h1>
				<p>Vahvista syöttämäsi tiedot ennen tilauksen vahvistamista:</p>
				<p>Yhteissumma: 1000.00 €<%-- <c:out value="${}"/>--%></p>
				<a href="http://proto297.haaga-helia.fi:8080/pizzablue/toimitustiedot.jsp" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-arrow-left" aria-hidden="true"></span>  Edellinen sivu</a>
					<button class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal" type="submit" value="Submit">Vahvista tilaus</button>
				<a href="tyhjenna_ostoskori" class="btn btn-default btn-lg tyhjenna">Peruuta tilaus</a>
			</div>
			<!-- Tilausvahvistuksen pop-up ikkuna -->
			<div id="myModal" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<a class="pop-up"> <i class="fa"> <img style="height: 45px; margin-right:7px;" src="img/pienilogo_nega.png">
								</i>Pizza Blue
							</a>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<h3 style="color: #42DCA3; margin-top: 5px;">Kiitos tilauksestanne!</h3>
							<p style="color: black;"> Tilauksenne on lähetetty ravintolalle. <br> <br>
								<!-- Tilausnumero tähän -->
								Tilausnumeronne on: <span class="tilausnumero"></span> <br>
								<br> Otathan tilausnumeron talteen mahdollista
								ongelmatilannetta varten<span class="glyphicon glyphicon-heart"
									style="margin-left: 5px; color: #FF1975;" aria-hidden="true"></span>
							</p>
						</div>
						<div class="modal-footer center-block" style="text-align: center;">
							<a href="http://proto297.haaga-helia.fi:8080/pizzablue/frontpage.jsp"
								class="btn btn-default btn-lg">Etusivulle</a> 
								<a href="http://proto297.haaga-helia.fi:8080/pizzablue/frontpage.jsp#yhteystiedot"
								class="btn btn-default btn-lg">Anna palautetta</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- Footer -->
	<footer>
		<div class="container text-center">
			<p>Copyright &copy; Ryhmä Blue 2015</p>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="js/jquery.easing.min.js"></script>

	<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/grayscale.js"></script>

	<script>
		$(document).ready(function() {

			$("#tabs").tabs();

		});
	</script>


</body>

</html>