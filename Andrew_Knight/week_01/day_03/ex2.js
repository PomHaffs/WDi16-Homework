console.log("Ahoy");
// Create a function called DrEvil. It should take a single argument, an amount,
// and return ' dollars', except it will add '(pinky)' at the end if the amount is 1 million.
// For example:
  // DrEvil(10): 10 dollars
  // DrEvil(1000000): 1000000 dollars (pinky)

var drEvil = function ( x ) {
  if ( x === 1000000 ) {
    console.log("$" + x + " pinky");
  } else {
    console.log("$" + x );
  };
};
drEvil (1000000);
