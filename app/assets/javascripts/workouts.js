 $(function () {
console.log("This here");
   Morris.Line({
    element: 'workouts_chart',
    data: $('#workouts_chart').data('data-workouts'),
    xkey: 'date',
    ykeys: ['length', 'strength_length', 'cardio_length'],
    labels: ['Total length', 'strength length', 'cardio length'],
    ,
  });
 });
    
    