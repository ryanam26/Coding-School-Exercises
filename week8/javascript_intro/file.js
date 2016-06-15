



var numbers = "80:70:90:100";
 
 function avarageColon(string) {
 	var array = string.split (":");
 	console.log(array);

 	
 	var add = array.reduce(function (prev, num) {
 		return parseInt(prev) + parseInt(num);
 	})
 	return (add/array.length); ///(array.length)
 }  
 
console.log(avarageColon(numbers));

