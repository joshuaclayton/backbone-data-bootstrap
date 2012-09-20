$.fn.template = (name) ->
  template = JST[name]

  if template
    @html template
  else
    throw "No such template: #{name}"
