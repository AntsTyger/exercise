# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  Morris.Line
    element: 'workouts_chart'
    data: $('#workouts_chart').data('workouts')
    xkey: 'date'
    ykeys: ['length', 'strength_length', 'cardio_length']
    labels: ['Total length', 'strength length', 'cardio length']
    preUnits: '$'