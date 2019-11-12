#= require "jquery"
#= require "tools/bootstrap-custom"
#= require "tools/retina.min"

$(document).ready ->
  initSmoothScroll()

initSmoothScroll= ->
  # Targets all links with class .scroll
  $("body .scroll").on 'click', (e)->
    if $(@hash).length
      e.preventDefault()
      top = $(@hash).offset().top - 120
      $("html,body").animate
        scrollTop: top
      , 700
