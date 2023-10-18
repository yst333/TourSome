<!-- /*
* Template Name: Sterial
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap5" />

<link rel="stylesheet" href="/resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="/resources/css/tiny-slider.css">
<link rel="stylesheet" href="/resources/css/aos.css">
<link rel="stylesheet" href="/resources/css/flatpickr.min.css">
<link rel="stylesheet" href="/resources/css/glightbox.min.css">
<link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<link rel="stylesheet" href="/resources/css/style.css">
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.9/index.global.min.js"></script>

<title>Toursome</title>
</head>
<body>
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav mt-3">


		<div class="container">

			<div class="site-navigation">
				<div class="row">
					<div class="col-6 col-lg-3">

						<a href="index.html" class="logo m-0 float-start"><div
								style="height: inherit;">
								<img src="/resources/img/Group 42.png" alt="" class="logoimg"
									width="100%" style="float: left; height: 100%;">
							</div></a>
					</div>
					<div
						class="col-lg-6 d-none d-lg-inline-block text-center nav-center-wrap">
						<ul class="js-clone-nav  text-center site-menu p-0 m-0">
							<li class="active"><a>Free Board</a></li>
							<li><a href="/board/list">Community</a></li>
							<li><a>Q&AMP;A</a></li>

						</ul>
					</div>
					<div class="col-6 col-lg-3 text-lg-end">
						<ul class="js-clone-nav d-none d-lg-inline-block text-end site-menu ">
							<c:if test="${session.name != null}">
								<li class="cta-button" style="margin-top:-28px; padding:5px; font-size: 15px;font-family: 'ghanachoco';">
									<c:out value="${session.name}" /> Welcome!
									<form class="btn_resize" action="/membership/logout" method="post" role="form" style=" margin-bottom: 10px;">
										<input class="main_btn logout" class="logout" type="submit" value="Logout">
									</form>
									<form class="btn_resize" action="/membership/modify"  style="margin-bottom: 10px;">
										<input class="main_btn" type="submit" value="Edit">
									</form>
									<form class="btn_resize" action="/membership/remove_account" method="post"
										role="form" id="remove_acount"  style="margin-bottom: 10px;">
										<input type="hidden" value="${session.id}" name="id">
										<input class="main_btn remove_acount" type="submit" value="Withdrawal">
									</form>
								</li>
							</c:if>
							<c:if test="${session.name == '' || session.name == null}">
								<li class="cta-button1">
									<form action="/membership/login">
										<input class="main_btn" type="submit" value="Login">
									</form>
								</li>
							</c:if>
						</ul>

						<a href="#"
							class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
							data-toggle="collapse" data-target="#main-navbar"> <span></span>
						</a>
					</div>
				</div>
			</div>

		</div>
	</nav>



	<div class="hero overlay">
		<div class="img-bg rellax"
			style="position: absolute; left: 0; width: 100vw;">
			<iframe
				src="https://www.youtube.com/embed/lsPz7pKdpiA?si=llzmAR5rxxe2PAif&controls=1&autoplay=1&mute=1&loop=1&autopause=0"
				title="YouTube video player"
				allow="accelerometer; autoplay; clipboard-write; muted; encrypted-media; gyroscope; picture-in-picture; web-share"
				allowfullscreen class="img-fluid1"></iframe>
		</div>

		<div class="container">
			<div class="row align-items-center justify-content-start">
				<div class="col-lg-5">
					<h1 class="heading" data-aos="fade-up">Tour with someone, Too
						awesome</h1>
				</div>
			</div>
		</div>
	</div>


	<div class="section section-2">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-lg-6 order-lg-2 mb-5 mb-lg-0">
					<div class="image-stack mb-5 mb-lg-0">
						<div class="image-stack__item image-stack__item--bottom"
							data-aos="fade-up">
							<img src="/resources/img/Russia Saint Basil's Cathedral.jpg"
								alt="Image" class="img-fluid rellax ">
						</div>
						<div class="image-stack__item image-stack__item--top"
							data-aos="fade-up" data-aos-delay="100"
							data-rellax-percentage="0.5">
							<img src="/resources/img/Russia2.png" alt="Image"
								class="img-fluid">
						</div>
					</div>

				</div>
				<div class="col-lg-4 order-lg-1">

					<div>
						<h2 class="heading mb-3" data-aos="fade-up" data-aos-delay="100">Russia</h2>

						<p data-aos="fade-up" data-aos-delay="200">
							<strong class="bold"> &lang; Red Square &rang; </strong> <br>
							&nbsp;&nbsp; Red Square is one of the oldest and largest squares
							in Moscow, the capital of Russia. It is located in Moscow's
							historic centre, in the eastern walls of the Kremlin. It is the
							city landmark of Moscow, with famous buildings such as Saint
							Basil's Cathedral, Lenin's Mausoleum and the GUM. In addition, it
							has been a UNESCO World Heritage Site since 1990.
						</p>

						<p data-aos="fade-up" data-aos-delay="300">
							<strong class="bold"> &lang; Saint Basil's Cathedral
								&rang;</strong> <br> &nbsp;&nbsp; Is an Orthodox church in Red
							Square of Moscow, and is one of the most popular cultural symbols
							of Russia. The building, now a museum, is officially known as the
							Cathedral of the Intercession of the Most Holy Theotokos on the
							Moat, or Pokrovsky Cathedral. It was the city's tallest building
							until the completion of the Ivan the Great Bell Tower in 1600.
						</p>

						<p class="my-4" data-aos="fade-up" data-aos-delay="300">
							<a href="#" class="btn btn-primary">Reservation</a>
						</p>
					</div>
				</div>

			</div>

		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<div class="col-lg-5 mb-4 mb-lg-0" data-aos="fade-up">
					<img src="/resources/img/Norway.jpg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-5 order-lg-2" data-aos="fade-up"
					data-aos-delay="100">
					<h2 class="heading mb-4">Norway</h2>
					<p>Attractive and dramatic scenery and landscape are found
						throughout Norway. The west coast of southern Norway and the coast
						of northern Norway present some of the most visually impressive
						coastal sceneries in the world. National Geographic has listed the
						Norwegian fjords as the world's top tourist attraction. The
						country is also home to the natural phenomena of the Midnight sun
						(during summer), as well as the Aurora borealis known also as the
						Northern lights.</p>
					<p>The main attractions of Norway are the varied landscapes
						that extend across the Arctic Circle. It is famous for its
						coastline and its mountains, ski resorts, lakes and woods. Much of
						the nature of Norway remains unspoiled, and thus attracts numerous
						hikers and skiers. In the cities, cultural idiosyncrasies such as
						the Holmenkollen ski jump attract many visitors, as do landmarks
						such as Bergen's Bryggen and Oslo's Vigeland Sculpture Park.</p>
					<p class="my-4" data-aos="fade-up" data-aos-delay="200">
						<a href="#" class="btn btn-primary">Reservation</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="section">
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<div class="col-lg-5 mb-4 mb-lg-0 order-lg-2" data-aos="fade-up">
					<img src="/resources/img/Germany1.jpg" alt="Image"
						class="img-fluid mb-3"> <img
						src="/resources/img/Germany3.jpg" alt="Image" class="img-fluid">
				</div>
				<div class="col-lg-5" data-aos="fade-up" data-aos-delay="100">
					<h2 class="heading mb-4">Germany</h2>
					<p data-aos="fade-up" data-aos-delay="200">
						<strong class="bold"> &lang; Neuschwanstein Castle &rang;
						</strong> <br> &nbsp;&nbsp; Neuschwanstein Castle is a 19th-century
						historicist palace on a rugged hill of the foothills of the Alps
						in the very south of Germany, just north of Austria.
						Neuschwanstein Palace on the remote northern edges of the Alps as
						a retreat but also in honour of composer Richard Wagner, whom he
						greatly admired. The castle was intended to serve as a private
						residence for the king but he died in 1886, and it was opened to
						the public shortly after his death. More than 1.3 million people
						visit annually, with as many as 6,000 per day in the summer.
					</p>

					<p data-aos="fade-up" data-aos-delay="300">
						<strong class="bold"> &lang; Brandenburg Gate &rang;</strong> <br>
						&nbsp;&nbsp; The Brandenburg Gate is an 18th-century neoclassical
						monument in Berlin, built on the orders of Prussian king Frederick
						William II after restoring the Orangist power by suppressing the
						Dutch popular unrest. One of the best-known landmarks of Germany,
						it was built on the site of a former city gate that marked the
						start of the road from Berlin to the town of Brandenburg an der
						Havel, which used to be the capital of the Margraviate of
						Brandenburg. The gate is the monumental entry to Unter den Linden,
						a boulevard of linden trees which led directly to the royal City
						Palace of the Prussian monarchs, and the Berlin Cathedral.
						Throughout its existence, the Brandenburg Gate was often a site
						for major historical events and is today considered not only a
						symbol of the tumultuous histories of Germany and Europe, but also
						of European unity and peace.
					</p>
					<p class="my-4" data-aos="fade-up" data-aos-delay="200">
						<a href="#" class="btn btn-primary">Reservation</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="section section-3" data-aos="fade-up" data-aos-delay="100">
		<div class="container">
			<div class="row align-items-center justify-content-between mb-5">
				<div class="col-lg-5" data-aos="fade-up">
					<h2 class="heading mb-4">Review</h2>
					<p>Best photos and reviews from Toursome users.</p>
				</div>
				<div class="col-lg-5 text-md-end" data-aos="fade-up"
					data-aos-delay="100">
					<div id="destination-controls">
						<span class="prev me-3" data-controls="prev"> <span
							class="icon-chevron-left"></span>

						</span> <span class="next" data-controls="next"> <span
							class="icon-chevron-right"></span>

						</span>
					</div>
				</div>
			</div>

		</div>


		<div class="destination-slider-wrap mb-5">
			<div class="destination-slider">
				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/China.jpg" alt="China" class="img-fluid">
						<div class="price">China</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Hong'ensi Forest Park</a>
						</h3>
						<span class="meta">Very clean and nice mountain park with
							beautiful temple!!</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/France1.jpg" alt="France"
							class="img-fluid">
						<div class="price">France</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Eiffel Tower</a>
						</h3>
						<span class="meta">A must-visit place~&hearts;</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/Swiss1.jpg" alt="Swiss" class="img-fluid">
						<div class="price">Swiss</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Lake Thun</a>
						</h3>
						<span class="meta"> Heaven on Earth!! One of the most
							picturesque places in the world~!!</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/Japan2.jpg" alt="Image" class="img-fluid">
						<div class="price">Japan</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Osaka Castle</a>
						</h3>
						<span class="meta">Osaka's "Landmarks"! I strongly
							recommend the sunset and night view.</span>
					</div>
				</div>


				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/Argentina4.jpg" alt="Image"
							class="img-fluid">
						<div class="price">Argentina</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">El Chalten</a>
						</h3>
						<span class="meta">!! A nice little town to walk around in
							!!</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/Bolivia.jpg" alt="Image"
							class="img-fluid">
						<div class="price">Bolivia</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Copacabana</a>
						</h3>
						<span class="meta">A picturesque view, a cute A!L!P!A!C!A!</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/Italia.jpg" alt="Image" class="img-fluid">
						<div class="price">Italia</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Venice - Gondola</a>
						</h3>
						<span class="meta"> The route was beautiful. Recommend
							going 30 min-1 hour before the sunset.</span>
					</div>
				</div>

				<div class="destination">
					<div class="thumb">
						<img src="/resources/img/united arab emirates1.jpg" alt="Image"
							class="img-fluid">
						<div class="price">Arab Emirates</div>
					</div>
					<div class="mt-4">
						<h3>
							<a href="#">Burj Al Arab Jumeirah</a>
						</h3>
						<span class="meta">Amazing hotel. an exaggerated luxury of
							a size that is not easy to see, reception service of the highest
							level!!!!</span>
					</div>
				</div>

			</div>
		</div>

	</div>



	<div class="container">
		<div class="row">
			<div class="row align-items-center justify-content-between mb-5">
				<div class="col-lg-5" data-aos="fade-up">
					<h2 class="heading mb-4">Festival Calendar</h2>
				</div>
				<div id='calendar' data-aos="fade" data-aos-duration="2000"
					class="mb-5"></div>
			</div>
		</div>


		<div class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h3>About Toursome.</h3>
						<p>Tour with someone, Too awesome!<br> Toursome will be with you for a perfect trip</p>
					</div> <!-- /.widget -->
					<div class="widget">
						<h3>Connect</h3>
						<ul class="list-unstyled social">
							<li><a href="#"><span class="icon-instagram"></span></a></li>
							<li><a href="#"><span class="icon-twitter"></span></a></li>
							<li><a href="#"><span class="icon-facebook"></span></a></li>
							<li><a href="#"><span class="icon-linkedin"></span></a></li>
							<li><a href="#"><span class="icon-pinterest"></span></a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

				<div class="col-lg-2 ml-auto">
					<div class="widget">
						<h3>Members</h3>
						<ul class="list-unstyled float-left links">
							<li><a href="#">Yu Seung Tae</a></li>
							<li><a href="#">Kim Sung Woo</a></li>
							<li><a href="#">Lee Jae Bin</a></li>
						</ul>
						<ul class="list-unstyled float-left links order-lg-2">
							<li><a href="#">Kim Jee Eun</a></li>
							<li><a href="#">Jeong Dae Won</a></li>
							<li><a href="#">Jeong Ju I</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

				<div class="col-lg-3">
					<div class="widget">
						<h3>Contact</h3>
						<address>557, Gyeongin-ro, Guro-gu, Seoul. HiMedia Academy Guro</address>
						<ul class="list-unstyled links mb-4">
							<li><a href="tel://11234567890">010-3456-7890</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

			</div> <!-- /.row -->

			<div class="row mt-5">
				<div class="col-12 text-center">
					<p class="mb-0">Copyright &COPY;; 2023 All Rights Reserved.</p>
				</div>
			</div> <!-- /.container -->
		</div> <!-- /.site-footer -->

		<!-- Preloader -->
		<div id="overlayer"></div>
		<div class="loader">
			<div class="spinner-border text-primary" role="status">
				<span class="visually-hidden">Loading...</span>
			</div>
		</div>

			<script src="/resources/js/bootstrap.bundle.min.js"></script>
			<script src="/resources/js/tiny-slider.js"></script>
			<script src="/resources/js/aos.js"></script>
			<script src="/resources/js/navbar.js"></script>
			<script src="/resources/js/counter.js"></script>
			<script src="/resources/js/rellax.js"></script>
			<script src="/resources/js/flatpickr.js"></script>
			<script src="/resources/js/glightbox.min.js"></script>
			<script src="/resources/js/custom.js"></script>

			<!--var calendar = new Calendar(calendarEl, {
  now: <?php echo json_encode($datetime_string) ?>
});-->
			<script>
				//calender
				var calendarEl = document.getElementById('calendar');
				var calendar = new FullCalendar.Calendar(
						calendarEl,
						{
							initialView : 'dayGridMonth',
							aspectRatio : 1.7,
							selectable : true,
							locale : 'en',
							editable : false,
							eventLimit : true,
							events : [
									{
										title : "Seoul International Fireworks Festival",
										start : "2023-10-07",
										color : "#cae7b9",
										textColor : "#333",
									},
									{
										title : "Oktoberfest",
										start : "2023-09-16",
										end : "2023-10-03",
										color : "#f3de8a",
										textColor : "#333",
									},
									{
										title : "MassKara Festival",
										start : "2023-10-01",
										end : "2023-10-22",
										color : "#eb9486",
										textColor : "#333",
									},
									{
										title : "Festival Internacional Cervantino, El Cervantino",
										start : "2023-10-11",
										end : "2023-10-29",
										color : "#7e7f9a",
										textColor : "#333",
									}, {
										title : "Dia de los Muertos",
										start : "2023-10-31",
										end : "2023-11-02",
										color : "#f0f0c9",
										textColor : "#333",
									}, {
										title : "Christmas",
										start : "2023-12-25",
										color : "#6e0e0a",
									}, {
										title : "Sapporo white illumination",
										start : "2023-11-22",
										end : "2024-03-14",
										color : "#a5be00",
										textColor : "#333",
									}, ],
						});
				calendar.render();
			</script>
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script type="text/javascript">
				var session_id = "<c:out value = "${session.id}" />";
				console.log(session_id);
				$(document).ready(function() {
					$(".logout").on("click", function() {
						alert("로그아웃이 완료되었습니다!");
					});

					$(".remove_acount").on("click", function() {
						alert("회원탈퇴가 완료되었습니다!");
						$("#remove_acount").submit();
					});
				});
			</script>
</body>
</html>
