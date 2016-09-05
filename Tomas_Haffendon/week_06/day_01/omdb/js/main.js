window.onload = function () {

    var request = new XMLHttpRequest();
    // this comes FIRST to load everything

    request.onreadystatechange = function () {
      var readyState = request.readyState;
      console.log( "The readyState is now: " + readyState );
      if (readyState !== 4) {
        return false;
      }
      var resultsAsString = request.responseText;
      var resultsAsObject = JSON.parse( resultsAsString );
      console.log( resultsAsObject );
      var Title = resultsAsObject.Title;
      var Plot = resultsAsObject.Plot;
      var Poster = resultsAsObject.Poster;

      var image = document.createElement("img");
      image.setAttribute("src", Poster);
      image.setAttribute("height", "500");
      image.setAttribute("width", "500");

      var test = document.getElementById("div1").appendChild(image);


      var para = document.createElement("h2");
      var node = document.createTextNode(Title);
      para.appendChild(node);

      var element = document.getElementById("div1");
      element.appendChild(para);

    };

    var btn = document.querySelector("button");

    btn.addEventListener("click", function () {
        var input = document.getElementById("search").value;
        console.log(input);

        var searchTerm = document.getElementById("search").value;
        // this creates request
        request.open( "GET", "http://omdbapi.com?t=" + searchTerm );
        // send the request
        request.send();
    });

};



// console.log(request);
