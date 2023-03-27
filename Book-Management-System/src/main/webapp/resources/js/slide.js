var slides = document.querySelector(".slides"),
	slide = document.querySelectorAll(".slides li"),
	currentIdx = 0,
	slideCount = slide.length,
	slideWidth = 140,
	slideMargin = 30,
	prevBtn = document.querySelector(".prev"),
	nextBtn = document.querySelector(".next");

makeClone();

function makeClone() {
	for (var i = 0; i < slideCount; i++) {
		// a.cloneNode(), a.cloneNode(true)
		var cloneSlide = slide[i].cloneNode(true);
		cloneSlide.classList.add("clone");
		// a.appendChild(b)
		slides.appendChild(cloneSlide);
	}
	for (var i = slideCount - 1; i >= 0; i--) {
		var cloneSlide = slide[i].cloneNode(true);
		cloneSlide.classList.add("clone");
		// a.prepend(b)
		slides.prepend(cloneSlide);
	}
	updateWidth();
	setInitialPos();
	setTimeout(function() {
		slides.classList.add("animated");
	}, 100);
}

function updateWidth() {
	var currentSlides = document.querySelectorAll(".slides li");
	var newSlideCount = currentSlides.length;

	var newWidth =
		(slideWidth + slideMargin) * newSlideCount - slideMargin + "px";
	slides.style.width = newWidth;
}

function setInitialPos() {
	var initialTranslateValue = -(slideWidth + slideMargin) * slideCount;
	// slides { transform:translateX(-1000px); }
	slides.style.transform = "translateX(" + initialTranslateValue + "px)";
}

nextBtn.addEventListener("click", function() {
	moveSlide(currentIdx + 1);
});
prevBtn.addEventListener("click", function() {
	moveSlide(currentIdx - 1);
});

function moveSlide(num) {
	slides.style.left = -num * (slideWidth + slideMargin) + "px";
	currentIdx = num;
	console.log(currentIdx, slideCount);
	if (currentIdx == slideCount || currentIdx == -slideCount) {
		setTimeout(function() {
			slides.classList.remove("animated");
			slides.style.left = "0px";
			currentIdx = 0;
		}, 700);
		setTimeout(function() {
			slides.classList.add("animated");
		}, 800);
	}
}

// 드래그(스와이프) 이벤트를 위한 변수 초기화
let startPoint = 0;
let endPoint = 0;

// PC 클릭 이벤트 (드래그)
slides.addEventListener("mousedown", (e) => {
	startPoint = e.pageX; // 마우스 드래그 시작 위치 저장
});

slides.addEventListener("mouseup", (e) => {
	endPoint = e.pageX; // 마우스 드래그 끝 위치 저장
	if (startPoint < endPoint) {
		// 마우스가 오른쪽으로 드래그 된 경우
		moveSlide(currentIdx - 1);
	} else if (startPoint > endPoint) {
		// 마우스가 왼쪽으로 드래그 된 경우
		moveSlide(currentIdx + 1);
	}
});

// 모바일 터치 이벤트 (스와이프)
slides.addEventListener("touchstart", (e) => {
	startPoint = e.touches[0].pageX; // 터치가 시작되는 위치 저장
});
slides.addEventListener("touchend", (e) => {
	endPoint = e.changedTouches[0].pageX; // 터치가 끝나는 위치 저장
	if (startPoint < endPoint) {
		// 오른쪽으로 스와이프 된 경우
		moveSlide(currentIdx - 1);
	} else if (startPoint > endPoint) {
		// 왼쪽으로 스와이프 된 경우
		moveSlide(currentIdx + 1);
	}
});

// 기본적으로 슬라이드 루프 시작하기
let loopInterval = setInterval(() => {
	moveSlide(currentIdx + 1);
}, 3000);

// 슬라이드에 마우스가 올라간 경우 루프 멈추기
slides.addEventListener("mouseover", () => {
	clearInterval(loopInterval);
});

// 슬라이드에서 마우스가 나온 경우 루프 재시작하기
slides.addEventListener("mouseout", () => {
	loopInterval = setInterval(() => {
		moveSlide(currentIdx + 1);
	}, 3000);
});
