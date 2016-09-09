var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];
var bumpyArr = ["hello", "maytag", [[[["sigmonster"]], "swizzle"]]];
var uncompactedArr = [ "hello", false, NaN, undefined, "quantom bogo-sort" ];

var arrToTransform = [[ "age", "location" ], [ NaN, undefined ]];

// Create an array of every five numbers between 30 and 101

var array5 = _.range(30, 101, 5);
console.log( array5 );

// Turn bumpyArr into one flat array (no nested arrays)

var flatten = _.flatten(bumpyArr);
console.log( flatten );

// Remove all of the falsey elements in the uncompactedArr

var removeFalse = _.compact(uncompactedArr);
console.log( removeFalse );

// Find all of the unique elements in the following arrays - [ 1, 25, 100 ], [ 1, 14, 25 ] and 24, Infinity, -0

var unique = _.union([1, 25, 100], [1, 14, 25], [24, Infinity, -0]);
console.log( unique );

// Find the index of the first element in numbers that is over 7 and is even

var myTest = function(n) {
  return ((n > 7) && ((n % 2) === 0));
};
var index = _.findIndex( numbers, myTest );
console.log( index );

// Turn arrToTransform into an object that looks like this - { age: NaN, location: undefined }

var unzipped = _.unzip(arrToTransform);
console.log(unzipped);
var transformed = _.object(arrToTransform);
console.table(transformed);
