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
    ykeys: ['length'],
    labels: ['Total length'],
    lineColors: ['yellow'],
    
    
    
  });
  
 });
  
 $(function () {

var meData = JSON.parse($("#workouts_chart").attr("data-workouts"));
    Morris.Bar({
    element: 'workouts_bar_chart',
    
    gridTextColor: 'white',
    data: meData,
    xkey: 'date',
    ykeys: ['strength_length', 'cardio_length'],
    labels: ['Strength', 'Cardio'],
    barColors: ['red', 'green']
    
    
  });
  });