# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'turbolinks:load', ->
  $('#buttonJobHistory').click ->
    $(this).toggleClass 'btn-default btn-success '
    return
  $('#buttonEducation').click ->
    $(this).toggleClass 'btn-default btn-success '
    return
  $('#buttonAchievements').click ->
    $(this).toggleClass 'btn-default btn-success '
    return
  return