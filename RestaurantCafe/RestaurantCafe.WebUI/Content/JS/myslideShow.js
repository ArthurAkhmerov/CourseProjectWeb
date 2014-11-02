$(document).ready(function() {
	$("#slider>img#1").fadeIn(300);
	currentSlide = 1;
	startSlider();
});

function startSlider() {
	count = $("#slider>div").size();
	loop = setInterval(function() {
		if (currentSlide >= count) {
			currentSlide = 0;
		}
		currentSlide++;
		showSlide();
	
	}, 3000);
}

function stopSlider() {
	window.clearInterval(loop);
}

function showSlide() {
	console.log(currentSlide);
	$("#slider>div").fadeOut(300);
	$("#slider>div#slide" + currentSlide).fadeIn(300);
}


function prev() {
	if (currentSlide == 1) {
		currentSlide = count;
	} else {
		currentSlide  = currentSlide - 1;
	}
	stopSlider();
	showSlide();
	startSlider();
}

function next() {
	if (currentSlide >= count) {
		currentSlide = 1;
	} else {
		currentSlide = currentSlide + 1;
	}
	stopSlider();
	showSlide();
	startSlider();
}


