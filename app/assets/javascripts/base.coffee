@App =
  Models: {}
  Views: {}
  Collections: {}
  bootstrap: (key) ->
    json = document.createElement('div')
    json.innerHTML = $('#bootstrap').text()
    $.parseJSON(json.innerHTML)[key]
