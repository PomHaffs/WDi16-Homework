var objectToMap = {
  start:  100,
  middle: 853,
  end:    912
};

// Multiply each value in objectToMap by a random number and return an object with the changed values

var multiply = _.mapObject( objectToMap, function (value, key) {
  return value * _.random(1, 101);
});
console.log( multiply );

// Get an array version of objectToMap that looks like this - [["start", 100], ["middle", 853], ["end", 912]]

var createArray = _.pairs( objectToMap );
console.log( createArray );

// Flip objectToMap around so that it looks like this - { "100" : "start", "853" : "middle", "912" : "end" }

var flippy = _.invert( objectToMap );
console.log( flippy );

// Remove the "start" key from objectToMap in two different ways

var remove = _.omit( objectToMap, "start" );
console.log( remove );

var keep = _.pick( objectToMap, "middle", "end" );
console.log( keep );

var createArray2 = _.pairs( objectToMap );
var remove2 = _.rest( createArray2 );
console.log( _.object(remove2) );
