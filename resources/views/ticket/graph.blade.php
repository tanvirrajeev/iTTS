@extends('layouts.app')

@section('content')
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
    var analytics = <?php echo $system_id; ?>

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable(analytics);

      var options = {
        // title: 'Todays Ticket'
        // pieSliceText: 'value',
        pieSliceText: 'value-and-percentage',
        is3D: true
      };

      var chart = new google.visualization.PieChart(document.getElementById('piechart'));
    //   var barchart = new google.visualization.BarChart(document.getElementById('barchart'));

      chart.draw(data, options);
    //   barchart.draw(data, options);
    }
  </script>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header bg-dark text-light text-center"><h3>Today's Ticket By System ID</h3></div>
                  <div class="row">
                    <div class="col-md-4 mb-3"></div>
                    <div class="col-md-4 mb-3 text-danger">
                      <h4>Total Ticket: {{ $totalcount }}</h4>
                    </div>
                    <div class="col-md-4 mb-3"></div>
                  </div>
                    <div id="piechart" style="width: 900px; height: 500px;"></div>
                        {{-- {{ $system_id }} --}}
                        

                <div class="card-body">

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
