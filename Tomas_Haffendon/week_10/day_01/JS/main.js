(function ( $ ) {

    // var tom = [T, O, M, "", I, S, "", P, R, E, T, T, Y, ""];
    var tom = "Tomas is just the most lovely man that ever lived.";
    var negTom = "Tomas is such a pick, only he would pervet this task to be about him"

    $.fn.makePretty = function() {
        this.each(function(){
        var $currentEl = $(this);
        $currentEl.text(tom);
        });
        return this;
    };

    $.fn.makeTomBig = function() {
        this.css({
            fontSize: 30
        });
        return this;
    };

    $.fn.negTom = function() {
        this.each(function(){
        var $currentEl = $(this);
        $currentEl.text(negTom);
        });
        return this;
    };


})( jQuery );


// $.fn.makeRebeccaPurple = function() {
//     // console.log("REBECCA PURPLE", this);
//     this.css({
//         color: color
//     });
//     return this;
// };
//
// $.fn.addRandomNumber = function () {
//     this.each(function (){
//     var $currentListItem = $(this);
//     var currentText = $currentListItem.text();
//     $currentListItem.text( currentText + " - " + Math.random() );
//     });
//     return this;
// };

$(document).ready(function() {

    //$("p").makePretty();
});
