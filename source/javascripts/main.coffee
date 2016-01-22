#= require "jquery"
#= require "tools/bootstrap-custom"
#= require "tools/retina.min"

$(document).ready ->
  initMenuToggle()

initMenuToggle= ->
  header = $(".c-header")
  header.find(".c-header__menu-btn").on "click", ->
    header.toggleClass("expanded")

  header.find("a").on "click", ->
    header.removeClass('expanded')

  $("section, footer").on "click", ->
    header.removeClass("expanded")
