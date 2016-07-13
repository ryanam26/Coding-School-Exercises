var Viking = function(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;

	this.attack = function(viking2) {
		// this.strength 
		viking2.health = viking2.health - this.strength

	};
}
	






var viking1 = new Viking("Josh", 100, 8);
var viking2 = new Viking("Faraz", 100, 5);

viking1.attack(viking2);

console.log(viking2.health);

// 92