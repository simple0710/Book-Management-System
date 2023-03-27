<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/slide.css">
<title>Book Comics</title>
</head>
<body>
	<header>
		<h1>Book Comics</h1>
		<nav id="title_header" class="menu_wrap">
			<ul class="dep1">
				<li><a href="/">HOME</a></li>
				<li><a href="#">국내 만화</a>
					<ul class="dep2">
						<li><a href="/list?category_select=genre&keyword=순정만화">순정만화</a></li>
						<li><a href="list?category_select=genre&keyword=소년만화">소년만화</a></li>
						<li><a href="/list?category_select=genre&keyword=성인만화">성인만화</a></li>
						<li><a href="/list?category_select=genre&keyword=기획만화">기획도서</a></li>
						<li><a href="/list?category_select=genre&keyword=만화잡지">만화잡지</a></li>
					</ul></li>
				<li><a href="#">일본 만화</a>
					<ul class="dep2">
						<li><a href="/list?category_select=genre&keyword=순정만화">순정만화</a></li>
						<li><a href="/list?category_select=genre&keyword=소년만화">소년만화</a></li>
						<li><a href="/list?category_select=genre&keyword=성인만화">성인만화</a></li>
						<li><a href="/list?category_select=genre&keyword=기획도서">기획도서</a></li>
					</ul></li>
				<li><a href="#">미국 만화</a>
					<ul class="dep2">
						<li><a href="/list?category_select=genre&keyword=DC 코믹스마블">DC
								코믹스마블</a></li>
						<li><a href="/list?category_select=genre&keyword=코믹스리터러리">코믹스리터러리</a></li>
						<li><a href="/list?category_select=genre&keyword=그래픽노블">그래픽노블</a></li>
					</ul></li>
			</ul>
		</nav>
	</header>
	<br />
	<div class="slide_div">
		<strong>▶ 추천도서</strong>
		<div class="slide_wrapper">
			<ul class="slides">
				<li><img class="fit-picture"
					src="${pageContext.request.contextPath}/resources/img/1.jpg" /></li>
				<li><img class="fit-picture"
					src="${pageContext.request.contextPath}/resources/img/2.jpg" /></li>
				<li><img class="fit-picture"
					src="${pageContext.request.contextPath}/resources/img/3.jpg" /></li>
				<li><img class="fit-picture"
					src="${pageContext.request.contextPath}/resources/img/4.jpg" /></li>
				<li><img class="fit-picture"
					src="${pageContext.request.contextPath}/resources/img/5.jpg" /></li>
			</ul>
			<div class="controls">
				<div class="prev slide_button">◀</div>
				<div class="next slide_button">▶</div>
			</div>
		</div>
	</div>
	<br />
	<div id="main_page">
		<input type="button" value="생성" class="move_btn"
			onClick="window.location.href='/create'" />
		<form id="search_place">
			<select name="category_select">
				<option value="title">제목</option>
				<option value="category">카테고리</option>
				<option value="genre">장르</option>
			</select> <input type="text" placeholder="검색" name="keyword"
				value="${keyword}" maxlength="30" /> <input type="submit"
				value="검색" class="move_btn" />
		</form>
		<table id="main_table">
			<colgroup>
				<col width="50%" />
				<col width="30%" />
				<col width="20%" />
			</colgroup>
			<thead>
				<tr>
					<td>제목</td>
					<td>카테고리</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="row" items="${data}">
					<tr>
						<td><a href="/detail?bookId=${row.book_id}"> ${row.title}
						</a></td>
						<td>${row.category}</td>
						<td><fmt:formatNumber type="number" maxFractionDigits="3"
								value="${row.price}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/slide.js"></script>
</body>
</html>