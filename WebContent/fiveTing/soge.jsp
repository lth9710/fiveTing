<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>5조 소개</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/fiveTing/css/main.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
</head>

<script type="text/javascript"></script>

<body class="homepage is-preload">
<jsp:include page="/fiveTing/header.jsp" flush="false"/>
	
	<br/><br/>
	<h1 align="center"> &nbsp;&nbsp;5조 &nbsp;소개</h1>
	
	<br/><br/><br/>
	<table align="center" style="font-size: 15pt; padding-top: 100px; text-align: center;">
		
		<tr>
			<td>
				<b>안녕하세요</b>
			</td>
		</tr>
		<br />
		<tr>
			<td>
				<b>조장 조기현, 이양규, 임단비, 류정아, 이태현으로 구성된 5조 입니다.</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>저희 조는 현재 많이 사용하고 있는 소개팅 어플을 생각하며 오개팅(매칭서비스)을 만들었습니다.</b>
			</td>
		</tr>

		<tr>
			<td>
				<b>누구나 부담없이 사용할 수 있으며, 꼭 인연이 아닌 친구를 만들수도 있는 사이트입니다.</b>
			</td>
		</tr>

		<tr>
			<td>
				<b>감사합니다</b>
			</td>
		</tr>
	</table>
	
	<br/><br/>
	<!-- Footer -->
	<section id="footer">
	<div class="container">
		<div class="row">
			<div class="col-4 col-6-medium col-12-small">
				<section> <header>
				<h2>Introduce</h2>
				</header>
				<ul class="divided">
					<li>Oh Gating is a place for those who want to have love<br /> for both young and old.<br /> It is hard to meet new people with busy daily life<br /> If you want to meet but do not know <br /> where to meet People around you are overburdened We will provide you with a symbol to meet <br /> new people.<br /> A new relationship, not alone, boyfriend, girlfriend Anyone can be "together"
					</li>
				</ul>
				</section>
			</div>
			<div class="col-4 col-6-medium col-12-small">
				<section> <header>
				<h2>Partner</h2>
				</header>
				<ul class="divided">
					<li><a href="http://www.kodachaya.com/home/intro.html">Kodachaya</a></li>
					<li><a href="http://www.panasia-food.com/">Panasia</a></li>
					<li><a href="http://mies-container.com/">MIES_container</a></li>
					<li><a href="http://www.seogaandcook.com">Seogaandcook</a></li>
					<li><a href="http://ontheborder.co.kr">Ontheborder</a></li>
				</ul>
				</section>
			</div>
			<div class="col-4 col-12-medium">
				<section> <header>
				<h2>오개팅</h2>
				</header>
				<ul class="social">
					<li><img src="${pageContext.request.contextPath}/fiveTing/image/facebook.png" width="40" height="40"></li>
					<li><img src="${pageContext.request.contextPath}/fiveTing/image/twitter.png" width="40" height="40"></li>
					<li><img src="${pageContext.request.contextPath}/fiveTing/image/instargram.png" width="40" height="40"></li>
				</ul>
				<ul class="contact">
					<li>
						<h3>Address</h3>
						<p>아이티윌 6강의실</p>
					</li>
					<li>
						<h3>Mail</h3>
						<p>
							<a href="#">55555@55.555</a>
						</p>
					</li>
					<li>
						<h3>Phone</h3>
						<p>(02) 000-0000</p>
					</li>
				</ul>
				</section>
			</div>
			<div class="col-12">

				<!-- Copyright -->
				<div id="copyright">
					<ul class="links">
						<li>&copy; Untitled. All rights reserved.</li>
						<li>Made by Team 5</a></li>
					</ul>
				</div>

			</div>
		</div>
	</div>
	</section>

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/fiveTing/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/fiveTing/js/jquery.dropotron.min.js"></script>
	<script src="${pageContext.request.contextPath}/fiveTing/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/fiveTing/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/fiveTing/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/fiveTing/js/main.js"></script>
</body>
</html>