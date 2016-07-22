$(document).on('ready', function () {

	$('#disappear').on('click', function () {
		$('.container').fadeOut();

	});

	$('#reappear').on('click', function () {
		$('.container').fadeIn();

	});

	$('#unicorn-mode').on('click', function () {
		$('body').toggleClass("unicorn-mode");
		$('button').toggleClass("unicorn-mode");
		$('button').toggleClass("unicorn-mode");

	});

	$('#form').on('submit', function (event) {
		event.preventDefault()

	});



});


 $('.hello-button').on('click', function () {
        alert('hello world')
      })
      