

$(document).ready(function() {
  var newNote = new Note();

  updateNote();


  function updateNote() {
    newNote.getCurrentNote(function(data) {
      $('#random-note').text(data["note"]);
    })
  }

  $('#generate').on('click', updateNote);



  $('#save').on('click', function() {

    var text =document.getElementById('textarea').value;
    $.post('/note', { saved_note: text}, function(response) {
      var data = JSON.parse(response);
      if (data.status == 200) {
        updateNote();
      }

    })


  } )
})

  //
