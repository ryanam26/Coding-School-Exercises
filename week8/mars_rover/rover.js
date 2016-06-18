var planet = 	[ [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],
				  [ , , , , , , , , , , ],

];

 var rover = {
  	position: [0,0], 
  	direction: 'N'
}


planet[2][0] = "@"
planet[2][5] = "@"


// var roverPosition  =  rover.position
// var roverDirection = rover.direction

function move( rover, direction ) {
	var array = direction.split('');
		array.forEach(function(letters){
			switch(letters) {
				case 'N' :
					if (rover.position[0] > 0) {
						if (planet[2][0] !== "@"){
							rover.position[0]++
						}
					}
						
					
					break;
				case 'S' :
					if (rover.position[0] < 9 && planet[2][0] !== "@") {
						rover.position[0]--
					}
					break;
				case 'E' :
					if (rover.position[1] < 9)
					rover.position[1]++
					break
				case 'W' :
					if (rover.position[1] > 0)
					rover.position[1]--
					break;

			}
		});
}

 move(rover, "SSSEEEE")

  planet[rover.position[0]][rover.position[1]] = "R"


  console.log(planet);

  console.log(rover.position);

 // console.log(rover.position[1]);



















