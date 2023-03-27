select_list = {
	대한민국: ["순정만화", "소년만화", "성인만화", "기획도서", "만화잡지"],
	일본: ["순정만화", "소년만화", "성인만화", "기획도서"],
	미국: ["DC 코믹스마블", "코믹스리터러리", "그래픽노블"],
};

var nation = document.getElementById("select_nation");
change_genre();
nation.addEventListener("change", change_genre);

function change_genre() {
	nation = document.getElementById("select_nation");
	var new_genre_list = select_list[nation.options[nation.selectedIndex].value];
	var new_genre_select = "";
	new_genre_list.forEach((option_value) => {
		console.log(option_value);
		var new_genre = `<option value="${option_value}">${option_value}</option>`;
		new_genre_select += new_genre;
	});
	document.getElementById("select_genre").innerHTML = new_genre_select;
}
