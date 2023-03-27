  selectSubmitBtn = document.getElementById("submit_btn");
  selectSubmitBtn.addEventListener("click", function (e) {
    e.preventDefault();
    let formData = new FormData(document.getElementById("search_place"));
    let selectOption = document.getElementById("category_select");
    formData.append("category_value", selectOption.value);
  });