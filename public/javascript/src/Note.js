console.log("")

function Note() {

}

Note.prototype = {
  getCurrentNote: function(callback) {
    console.log('called 2');
    $.get('/note', function(response) {

      var data = JSON.parse(response)
      callback(data);
    });
  }

}
