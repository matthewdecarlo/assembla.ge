$(document).ready(function() {

  var response = $.ajax({ url: "/posts",
                          method: "get"});

  response.done()
});
