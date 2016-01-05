#= require "jquery"
#= require "tools/bootstrap-custom"
#= require "tools/retina.min"

$(document).ready ->
  initMenuToggle()

initMenuToggle= ->
  header = $(".c-header")
  header.find(".c-header__menu-btn").on "click", ->
    header.toggleClass("expanded")

  # Remove expand when link is clicked
  header.find("a").on "click", ->
    header.removeClass('expanded')

  # Remove expand when anything on the page is clicked
  $("section").on "click", ->
    header.removeClass("expanded")
