$(document).ready(function() {
  var $signup = $('#signup')
  $signup.hide();

  $('#signup-link').on("click", function(event) {
    event.preventDefault();
    $signup.show();

  }); // end signup click

  var $player = $('#add_player')

  $player.on("submit", function(event){
    event.preventDefault();

    // debugger
    var url = $player.attr("action");
    var type = $player.attr("method");
    var data = $player.serialize();

    var ajaxRequest = $.ajax({

      type: type,
      url: url,
      data: data

    }); // end ajax


    ajaxRequest.done(addplayer);
    ajaxRequest.fail(error);

  }); //end player on

}); // end document on ready

function error(err) {

  $("#show-err").html("PROBLEM SAVING");
}

function addplayer(response) {
  var player = JSON.parse(response)
  var num = player.average.toString();

  var html = "<tr> <td>" + player.name + "</td>" + "<td>" + player.position + "</td>" + "<td>" + num +"</td></tr>"

  $('#my_table').append(html);
}
