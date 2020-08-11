#= require "jquery"
#= require "retina.min"

$(document).ready ->
  initHeaderScroll()

onHeaderScroll= (e) ->
  element = $(e.currentTarget)
  if element.scrollLeft() > 10
    element.addClass "scroll"
  else
    element.removeClass "scroll"

initHeaderScroll= -> $("header.c-header").scroll(onHeaderScroll)
