var car = function(model , noise) {
	this.model = model;
	this.noise = noise;
	this.wheel = 4;

	this.makeNoise = function () {
		console.log(this.noise + "!!!");
	};
}


var bmw = new car ("i8", "bbrrrr")
bmw.makeNoise();
console.log(bmw.model);

// exercise

var call = [1,10,13,22,6]

var evens = call.filter(function(item){
	return item % 2 === 0
});

console.log(evens);