/*jshint multistr:true */

var text = "ryan blah blah blah blah ryan\
ryan blah blah blah blah ryan";

var myName = "ryan";

var hits = [];

for (var i = 0; i < text.length; i++) {
    if(text[i] === "r") {
        for (var j = i; j < myName.length + i; j++) {
          hits.push(text[j]);
            }
        }
    };
    
    if(hits === 0) {
    console.log("Your name wasn't found!");
    } else {
        console.log(hits);
        };