<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/decreuptable.css">
<title>Book Comics</title>
<style>
</style>
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
	<div id="main_page" class="detail_table">
		<strong>▶ 책 상세</strong>
		<table id="main_table">
			<colgroup>
				<col width="30%" />
				<col width="70%" />
			</colgroup>
			<tbody>
				<tr>
					<td><p>제목</p></td>
					<td>${ data.title }</td>
				</tr>
				<tr>
					<td><p>카테고리</p></td>
					<td>${ data.category }</td>
				</tr>
				<tr>
					<td><p>국가</p></td>
					<td>${ data.nation }</td>
				</tr>
				<tr>
					<td><p>장르</p></td>
					<td>${ data.genre }</td>
				</tr>
				<tr>
					<td><p>가격</p></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="3"
							value="${data.price}" /> 원</td>
				</tr>
				<tr>
					<td><p>입력일
						<p></td>
					<td><fmt:formatDate value="${data.insert_date}"
							pattern="yyyy.MM.dd HH:mm:ss" /></td>
				</tr>
			</tbody>
		</table>
		<input type="button" value="수정" class="move_btn"
			onClick="window.location.href='/update?bookId=${bookId}'" />
		<form method="POST" action="/delete" class="move_btn">
			<input type="hidden" name="bookId" value="${bookId}" class="move_btn" />
			<input type="submit" value="삭제" class="move_btn" style="border: 1px;" />
		</form>
			<a href="/" style="position:absolute; margin-top:20px">목록으로</a>
		<br/>
	</div>
</body>
</html>
