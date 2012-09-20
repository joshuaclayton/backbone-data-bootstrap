@App =
  Models: {}
  Views: {}
  Collections: {}
  debug: false
  postWaitTime: 500
  bootstrap: (key) ->
    json = document.createElement('div')
    json.innerHTML = $('#bootstrap').text()
    $.parseJSON(json.innerHTML)[key]
