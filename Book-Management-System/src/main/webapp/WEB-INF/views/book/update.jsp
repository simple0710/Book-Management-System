<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/decreuptable.css">
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

	<div id="main_page">
		<strong>▶ 책 수정</strong>
		<form method="POST">
			<table id="main_table">
				<colgroup>
					<col width="30%" />
					<col width="70%" />
				</colgroup>
				<tr>
					<td>제목</td>
					<td><input class="formInputData" type="text" name="title" value="${ data.title }" /></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td><input class="formInputData" type="text" name="category"
						value="${ data.category }" /></td>
				</tr>
				<tr>
					<td>국가</td>
					<td><select id="select_nation" class="formInputData" name="nation">
							<option value="대한민국">대한민국</option>
							<option value="일본">일본</option>
							<option value="미국">미국</option>
					</select></td>
				</tr>
				<tr>
					<td>장르</td>
					<td><select id="select_genre" class="formInputData" name="genre">

					</select></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input class="formInputData" type="text" name="price" value="${ data.price }" /></td>
				</tr>
			</table>
			<input id="submitBtn" type="submit" value="저장" />
			
		</form>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/select.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/datacheck.js"></script>
</body>
</html>