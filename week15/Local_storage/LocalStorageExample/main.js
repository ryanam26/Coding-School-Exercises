$(document).ready(function(){

	if(window.localStorage.getItem("images")){
		
	var savedImages = JSON.parse(window.localStorage.getItem("images"));
		
		savedImages.forEach(function(the_image){

			var image = `
			<img src=${the_image}>
			`

			
			$("#image-container").append(image);

		});
		// get the urls
		// Append them to page

	} else {
		window.localStorage.setItem("images", "[]");
	}

	$('.other_button').on("click", function(){
	var imageUrl = prompt('Enter an image URL');
	// $(".image-container").append(imageUrl)
	var myImage = `
	<img src=${imageUrl}>
	`;
	$("#image-container").append(myImage);

	var storedImages = JSON.parse(window.localStorage.getItem("images"));

	storedImages.push(imageUrl);

	localStorage.setItem("images", JSON.stringify(storedImages));
});

	var $color_button = $('.color-changer');

function changeColor(event){
  var color = $(event.target).data('color');
  $("body").css("background-color", color);
  window.localStorage.setItem("bg-color", color);
  
}
$color_button.on("click", changeColor);



});

function loadDefaultColor(){
  if (window.localStorage.getItem("bg-color")){
    var savedColor = window.localStorage.getItem("bg-color");
    $("body").css("background-color", savedColor);
  }
}

loadDefaultColor();

// $color_button.on("click", changeColor);


// var newpromt = prompt("enter your favorite website!");

// $(.other_button).on("click", function(){
// 	var imageUrl = prompt('Enter an image URL');
// 	console.log(imageUrl);
// })


