 $(function () {

var meData = JSON.parse($("#workouts_chart").attr("data-workouts"));

   Morris.Line({
    element: 'workouts_chart',
    data: meData,
    xkey: 'date',
    ykeys: ['length', 'strength_length', 'cardio_length'],
    labels: ['Total length', 'strength length', 'cardio length'],
    preUnits: '$',
    
  });
 });