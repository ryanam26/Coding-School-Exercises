$(document).on('ready', function() {


	// $('h1,h2,h3').hide();

	$('h2,h3,h4').css('border', 'solid 1px blue');

	// $('div#container').css('border', 'solid 1px red');

	// $('p.lead').css('border', 'solid 1px red');

	// $('li:first').css('border', 'solid 1px red');

	$('div em').css('border', 'solid 1px orange');

	$( "ul li:nth-child(2)" ).css('border', 'solid 1px red');

	// $('div > p').css('border', 'solid 1px red');

	// $(':header').css('border', 'solid 1px red');

	$('div:contains("Ryan")').css('border', 'solid 1px red');



});