$(document).ready(function(){

	$('.js-artist-form').on("submit", function(event){
		event.preventDefault();

		var searchTerm = $(".js-artist-input").val();

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=track&query=${searchTerm}`,
			success: playSong,
			error: playError,
		})
	})

$('.btn-play').on('click', function(event){
       $('.btn-play').toggleClass('playing');    

       if ($('.btn-play').hasClass('playing')){

           $('.js-player').trigger('play')    

       } else {
           $('.js-player').trigger('pause')
       }
   });
   // $('.js-player').trigger('pause');
   // $('.js-player').prop('currentTime');
})












function playSong(response){
	console.log("Response", response);
	var newTrack = response.tracks.items[0];
	console.log(newTrack);
	var newArtist = newTrack.artists[0].name;
	$(".author").text(newArtist);
	var newName = newTrack.name;
	$(".title").text(newName);
	var newPic = response.tracks.items[0].album.images[0];
	$(".the_image").prop('src',newPic.url);
	var newSong = response.tracks.preview_url;
	$(".js-player").trigger('play');

	



}

function playError(error){
	console.log(error);
}