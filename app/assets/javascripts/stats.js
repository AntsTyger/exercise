  $(function () {
    // workout data //
    var data = [
     {"date": "2013-01", "up_body": 6, "low_body": 24, "abs": 9},
     {"date": "2013-02", "up_body": 2, "low_body": 13, "abs": 8},
     {"date": "2013-03", "up_body": 11, "low_body": 12, "abs": 7},
     {"date": "2013-04", "up_body": 16, "low_body": 22, "abs": 6},
     {"date": "2013-05", "up_body": 17, "low_body": 11, "abs": 5},
     {"date": "2013-06", "up_body": 18, "low_body": 13, "abs": 7},
     {"date": "2013-07", "up_body": 12, "low_body": 12, "abs": 5},
     {"date": "2013-08", "up_body": 11, "low_body": 2, "abs": 5},
     {"date": "2013-09", "up_body": 8, "low_body": 12, "abs": 7},
     {"date": "2013-10", "up_body": 10, "low_body": 8, "abs": 7},
     {"date": "2013-11", "up_body": 20, "low_body": 5, "abs": 6},
     {"date": "2013-12", "up_body": 12, "low_body": 15, "abs": 8}
    ];
    Morris.Line({
      element: 'workout-stats',
      hideHover: 'auto',
      data: data,
      xkey: 'date',
      xLabels: 'month',
      ykeys: ['up_body', 'low_body', 'abs'],
      postUnits: ' min',
      labels: ['up_body', 'low_body', 'abs'],
      resize: true,
      lineColors: ['#A52A2A','#72A0C1','#7BB661']
      //yLabelFormat: function(y) { return y.toString() + ' min'; }
    });
    
   
   
   
    // workout goals //
    Morris.Donut({
      element: 'todays-workout',
      hideHover: 'auto',
      resize: true,
      data: [
        {label: 'Upper body', value: 18 },
        {label: ' Lower body', value: 40 },
        {label: 'Abdominals', value: 0 },
      ],
      colors: ['#7BB661','#72A0C1', '#A52A2A'],
      formatter: function (y) { return y + " mins" }
    });

  });