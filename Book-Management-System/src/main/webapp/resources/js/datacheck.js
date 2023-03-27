submitBtn = document.getElementById("submitBtn");
submitBtn.addEventListener("click", function(e) {
	a = document.getElementsByClassName("formInputData");
	for (var i = 0; i < a.length; i++) {
		if (a[i].value == "") {
			e.preventDefault();
			alert("빈칸을 입력해 주세요");
			break;
		}
	}
});