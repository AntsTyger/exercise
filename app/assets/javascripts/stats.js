 $(function () {

var meData = JSON.parse($("#workouts_chart").attr("data-workouts"));

   Morris.Line({
    element: 'workouts_chart',
    hoverCallback: function(index, options, content) {
        return(content);
    },
    gridTextColor: 'white',
    data: meData,
    xkey: 'date',
    ykeys: ['length', 'strength_length', 'cardio_length'],
    labels: ['Total length', 'strength length', 'cardio length'],
    lineColors: ['yellow', 'green', 'red'],
    
    
    
  });
 });