<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오개팅</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/fiveTing/css/main.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/fiveTing/css/board.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/fiveTing/css/login.css"
	type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<script type="text/javascript">
	function sendIt() {

		var f = document.searchForm;

		f.action = "${pageContext.request.contextPath}/five/list.do";
		f.submit();
	}
</script>


</head>
<body>
<jsp:include page="/fiveTing/header.jsp" flush="false"/>

		<br />


		<div class="content" align="center">

			<form name="searchForm" method="post" class="content">
				<table style="width: 40%">
					<thead>
						<tr>
							<th align="left" width="15%"><select name="searchKey"
								class="selectFiled">
									<option value="subject">제목</option>
									<option value="name">작성자</option>
									<option value="content">내용</option>
							</select></th>
							<th><input type="text" name="searchValue" class="textFiled" width="5%"/>
							</th>
							<th style="vertical-align: bottom;">
							<img src="${pageContext.request.contextPath}/fiveTing/image/search.png"
								onclick="sendIt();" /></th>
							<th style="vertical-align: bottom;">
							<c:if test="${empty sessionScope.MemberInfo.id }">
							<br/>
							</c:if>
							<c:if test="${!empty sessionScope.MemberInfo.id }">
							<a href="<%=cp %>/five/rawrite.do?pageNum=${pageNum }">
							<img src="${pageContext.request.contextPath}/fiveTing/image/write.png" align="top" ></a>
							</c:if>
							</th>
							</tr>
							</thead>
				</table>
			</form>
			
			
			

			<div class="table-wrapper">
				<table>
					<thead>
						<tr>
							<th class="num" style="width: 10%; font-size: 15pt;'">번호</th>
							<th class="subject" style="width: 40%; font-size: 15pt;">제목</th>
							<th class="name" style="width: 20%; font-size: 15pt;">작성자</th>
							<th class="created" style="width: 20%; font-size: 15pt;">작성일</th>
							<th class="hitCount" style="width: 10%; font-size: 15pt;">조회</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="revdto" items="${revlists }">
							<tr>
								<td class="num">${revdto.num }</td>
								<td class="subject"><a
									href="${articleUrl }&num=${revdto.num}"> ${revdto.subject }</a>
								</td>
								<td class="name">${revdto.name }</td>
								<td class="created">${revdto.created }</td>
								<td class="hitCount">${revdto.hitCount }</td>
							</tr>
						</c:forEach>

						
					</tbody>


				</table>
				<table>
				<tr align="center">
							<td colspan="3">${pageIndexList }</td>
				</tr>
				</table>

			</div>
		</div>
	
	<br/><br/>


	<!-- Footer -->
				<section id="footer">
					<div class="container">
						<div class="row">							
							<div class="col-4 col-6-medium col-12-small">
								<section>
									<header>
										<h2>Introduce</h2>
									</header>
									<ul class="divided">
										<li>Oh Gating is a place for those who want to have love<br/>
										 	for both young and old.<br/>
											It is hard to meet new people with busy daily life<br/>
											If you want to meet but do not know <br/>
											where to meet People around you are overburdened
											We will provide you with a symbol to meet <br/>
											 new people.<br/>
											A new relationship, not alone, boyfriend, girlfriend Anyone can be "together"</li>
									</ul>
								</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<section>
									<header>
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
								<section>
									<header>
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
											<p>아이티윌 6강의실
											</p>
										</li>
										<li>
											<h3>Mail</h3>
											<p><a href="#">55555@55.555</a></p>
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