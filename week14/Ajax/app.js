$(document).on('ready', function () {
			function showCharacters (response) {
			var charactersArray = response;

			charactersArray.forEach(function (theCharacter) {
				var html = `
				<li>
				<h2>${theCharacter.name}<h2>
				</li>
				<li>
				${theCharacter.occupation}
				</li>
				<li>
				${theCharacter.weapon}
				</li>
				`;
				
				$('#character_list').append(html);
			});

		};

		

	$('#my_button').on('click', function () {
		$.ajax({
			type: "GET",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: showCharacters,
			error: function (error) {
				console.log("Error");
				console.log(error.responseText);
			}

		});



	});



	$('#my_form').on('submit', function (event) {
		var counter = 0
		event.preventDefault()

		$('.require').each(function(index, element){
			if ($(element).val() === "") {
				counter++;
			}
		});

		console.log(counter)
		if (counter === 0) {
			$.ajax({
			type: "POST",
			url: "https://ironhack-characters.herokuapp.com/characters",
			data: newCharacter,
			success: showCharacters,
			error: handleError
			})
		} else {
			alert("you fucked up");
		};

	});

	var newCharacter = {
		name: $('.js-c-name').val(),
		occupation: $('.js-c-occupation').val(),
		weapon: $('.js-c-weapon').val()
	}

	// $('#submit_button').on('click', function () {
	// 	$.ajax({
	// 		type: "POST",
	// 		url: "https://ironhack-characters.herokuapp.com/characters",
	// 		success: showCharacters,
	// 		data: newCharacter,
	// 		success: updateList,
	// 		error: handleError
	// 		})

	



})


