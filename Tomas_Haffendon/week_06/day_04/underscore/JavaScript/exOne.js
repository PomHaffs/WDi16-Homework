
var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];

var people = [
  { id: 1, username: "A", active: true,  age: 20 },
  { id: 2, username: "B", active: false, age: 35 },
  { id: 3, username: "C", active: false, age: 50 },
  { id: 4, username: "D", active: true,  age: 65 },
  { id: 5, username: "E", active: true,  age: 80 },
  { id: 6, username: "E", active: true,  age: 95 },
];

// Iterate through numbers and log each number to the console
_.map( numbers, function( num ) {
  console.log( num );
});

// Iterate through numbers and multiply each one of them by 5
var multiplyByFive = _.map( numbers, function( num ) {
  return num * 5;
});
console.log( multiplyByFive);

// Iterate through numbers and reduce it by adding them together

var sumOfNum = _.reduce( numbers, function( sum, num ) {
  return num + sum;
}, 0);
console.log( sunOfNum );

// Get an array of all of the people in people that have the username "E"

var personE  = _.where( people, { username: "E" } );
console.log( personE );

// Find the first object in people that has the id of 3

var first3 = _.findwhere( people, { id: 3} );
console.log( first3 );

// Find the first person who has an age of less than 50

var lessThan50 = _.find( people, function (person) {
  return lessThan50 < 50;
});

// Get an array of all of the people with an age of over 60
 var over60 = _.filter( people, function ( person ) {
   return over60.age > 60;
 });

// Remove all of the people with an age less than 40

var lewssThan40 = _.reject( people, function (person) )
