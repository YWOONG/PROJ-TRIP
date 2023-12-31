<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>TRIP</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap1.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min1.css">

</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">

		<div class="container-fluid">
			<a class="navbar-brand" href="memberInfo.me">TRIP</a> 
			<span class="nav-link active">${user.MEMBER_ID }님</span>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarColor03"
				aria-controls="navbarColor03" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			
			<div class="collapse navbar-collapse" id="navbarColor03">
				<div class="navbar-nav ms-auto">
					<ul class="navbar-nav me-auto">
						<li class="nav-item">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
							href="#" role="button" aria-haspopup="true" aria-expanded="false">detailed
								menu</a>
							<div class="dropdown-menu">
								
								<c:if test="${ id == 'admin' }">
									<a class="dropdown-item" href="getTravelSpotList.do">TravelList</a>
								</c:if>
								<c:if test="${ id != 'admin' }">
									<a class="dropdown-item" href="getTravelSpotListuser.do">TravelList</a>
								</c:if>
								
								<c:if test="${ id != 'admin' }">
								<div class="dropdown-divider"></div>
								<a class="dropdown-item"
									href="bookmarklist.do?user_seq=${user.MEMBER_SEQ }">MyList</a>
								</c:if>	
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="memberdetail.me">MyInfo</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="logout.me">Logout</a>
							</div></li>
					</ul>
				</div>

			</div>
		</div>
	</nav>

	<!-- Page Header-->

	<header class="masthead"
		style="background-image: url('./images/111.jpg')">
		<!-- -->
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="site-heading">


						<h1>TRIP</h1>
						<form class="d-flex" action="getTravelList.do" method="get">
							<select name="searchCondition">
								<option value="PLACE">관광지</option>
								<option value="CONTENT">주소</option>
							</select> <input class="form-control me-sm-2" type="text"
								placeholder="Search" name="searchKeyword"> <input
								class="btn btn-secondary my-2 my-sm-0" type="submit"
								value="Search">
						</form>
					</div>
					
					<div class="kontainer">
						<c:if test="${ id == 'admin' }">
							<div class="boxz" style="background-color: #00ff0000;">
								<a href="getTravelSpotList.do" style="text-decoration: none;">
									<!-- <img src=".//images/1.jpg" alt="Image 1"> -->
									<div class="content">
										<h1 style="color: white;">TRIPLIST</h1>
									</div>
								</a>
							</div>
						</c:if>

						<c:if test="${ id != 'admin' }">
							<div class="boxz" style="background-color: #00ff0000;">
								<a href="getTravelSpotListuser.do"
									style="text-decoration: none;"> <!-- <img src=".//images/1.jpg" alt="Image 1"> -->
									<div class="content">
										<h1 style="color: white;">TRIPLIST</h1>
									</div>
								</a>
							</div>
						</c:if>
						
						<div class="boxz" style="background-color: #00ff0000;">
							<a href="passwordCheck.me" style="text-decoration: none;"> <!--  <img src=".//images/3.jpg"> -->
								<div class="content">
									<h1 style="color: white;">MY INFO</h1>
								</div>
							</a>
						</div>
						<div class="boxz" style="background-color: #00ff0000;">
							<a href="logout.me" style="text-decoration: none;"> <!-- <img src=".//images/2.jpg"> -->
								<div class="content">
									<h1 style="color: white;">LOGOUT</h1>
								</div>
							</a>
						</div>
					</div>

					<style>
.kontainer {
	display: flex;
	width: 100%;
	padding: 4% 2%;
	box-sizing: border-box;
	height: 45vh;
	max-width: 2000px; /* 최대 넓이 */
	margin-left: auto; /* 좌우 여백 자동 조절 */
	margin-right: auto;
}

.boxz {
	flex: 1;
	overflow: hidden;
	transition: 1s;
	/* box-shadow: 0 20px 30px rgba(0,0,0,.1);*/
	line-height: 0;
	display: flex;
	align-items: center;
	justify-content: center; /* 가운데 정렬 */
	font-family: 'Nanum Gothic', sans-serif;
}

.boxz>img {
	height: 70vh; /* 높이 조정 */
	object-fit: cover;
	transition: 1s;
}

.boxz>.content {
	height: 20vh;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	background-color: rgba(0, 0, 0, 0.6);
	opacity: 0;
	transition: opacity 0.5s ease;
}

.boxz>.content>span {
	font-size: 3.8vh;
	display: block;
	text-align: center;
	line-height: 2.6;
	color: white;
	text-transform: uppercase;
}

.boxz:hover {
	flex: 1 1 50%;
}

.boxz:hover>img {
	width: 100%;
	height: 100%;
}

.boxz:hover>.content {
	opacity: 1;
}
</style>
				</div>
			</div>
		</div>

	</header>
	<div class="container px-4 px-lg-5">

		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7">
				<!-- Post preview-->
				<!-- <div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">ex1</h2>
						<h3 class="post-subtitle">Problems look mighty small from 150
							miles up</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on September 24, 2023
					</p>
				</div>
				Divider
				<hr class="my-4" />
				Post preview
				<div class="post-preview">
					<a href="post.html"><h2 class="post-title">ex2</h2></a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on September 18, 2023
					</p>
				</div>
				Divider
				<hr class="my-4" />
				Post preview
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">ex3</h2>
						<h3 class="post-subtitle">We predict too much for the next
							year and yet far too little for the next ten.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on August 24, 2023
					</p>
				</div>
				Divider
				<hr class="my-4" />
				Post preview
				<div class="post-preview">
					<a href="post.html">
						<h2 class="post-title">ex4</h2>
						<h3 class="post-subtitle">Many say exploration is part of our
							destiny, but it’s actually our duty to future generations.</h3>
					</a>
					<p class="post-meta">
						Posted by <a href="#!">Start Bootstrap</a> on July 8, 2023
					</p>
				</div> -->
				<!-- Divider
				<hr class="my-4" />-->
				<!-- Pager
				<div class="d-flex justify-content-end mb-4">
					<a class="btn btn-primary text-uppercase b"
						href="getTravelSpotNonUser.do">사이트 둘러보기 →</a>-->
				</div>
			</div>
		</div>
	</div>

	<!-- Main Content-->


	<!-- partial:index.partial.html -->
	<div class="container px-4 px-lg-5">

		<article class="wrapper">
			<div class="marquee">
				<div class="marquee__group">
					<svg>
                  <image
							href="${pageContext.request.contextPath}/boardUpload/admin/우도1.jpg" style="height:200px;"/>
               </svg>
					<svg>
                  <image
							href="${pageContext.request.contextPath}/boardUpload/admin/캐리비안베이1.jpg" style="height:200px;"/>
               </svg>
					<svg>
                  <image
							href="${pageContext.request.contextPath}/boardUpload/admin/에버랜드1.jpg" style="height:200px;"/>
               </svg>
					<svg>
                  <image
							href="${pageContext.request.contextPath}/boardUpload/admin/한라산1.jpg" style="height:200px;"/>
               </svg>
					<svg>
                  <image
							href="${pageContext.request.contextPath}/boardUpload/admin/함덕해수욕장1.jpg" style="height:200px;"/>
               </svg>
				</div>
			</div>
		</article>

	</div>

	<!-- Footer-->
	<footer class="border-top">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<div class="small text-center text-muted fst-italic">Copyright
						&copy; Your Website 2023</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="<c:url value="/resources/js/scripts.js"/>" />
	<script
		src="${pageContext.request.contextPath}/resources/css/script.js"></script>
</body>
</html>