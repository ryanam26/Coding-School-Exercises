



var numbers = "80:70:90:100";
 
 function avarageColon(string) {
 	var array = string.split (":"); // turns string into an array
 

 	
 	var add = array.reduce(function (prev, num) {  // adds all the numbers in the array.
 		return parseInt(prev) + parseInt(num);     // converts it to an interger
 	})

 	return (add/array.length); 
 }  
 
console.log(avarageColon(numbers));

//new code here_______________________________//

var numbers = "90:40:50:60";

function avarage(numbers) {
	var array = numbers.split (":");

	var add = array.reduce(function(prev,num){
		return parseInt(prev) + parseInt(num);
	})
	return (add/array.length);
}

console.log(avarage(numbers));




