@extends('layouts.app')

@section('content')

<div class="container">

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card bg-light">
                <div class="card-header bg-dark text-light text-center"><h3>All Ticket by {{ Auth::user()->name }}</h3></div>

                <div class="card-body">

                    {{-- Date Filter --}}
                    {{-- <form action="/allticketsbyuser/:from/:to" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03">From</label>    
                                <i class="fa fa-calendar-alt"></i>
                            <input type="text" class="datepicker" name="from" id="from" required>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03">To</label>    
                                <i class="fa fa-calendar-alt"></i>
                                <input type="text" class="datepicker" name="to" id="to" required>
                            </div>
                            <div class="col-md-4 mb-3"><button class="btn btn-danger" type="submit">Filter</button></div>
                        </div>
                    </form> --}}
                    {{-- !! Date Filter --}}

                    {{-- Ticket view Table --}}
                    <div class="container mb-5">
                        <div class="text-danger float-right"><h4>Total Ticket Raised: {{ $ticket->total() }}</h4></div>
                        <table id="datatable111" class="table table-striped table-bordered hover" style="width:100%">
                            <thead class="bg-warning">
                                <tr>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Raised By</th>
                                    <th>Raised At</th>
                                    <th>Severity</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            @foreach ($ticket as $item)
                            <tbody>
                                <tr>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->description }}</td>
                                    <td>{{ $item->raised_by }}</td>
                                    <td>{{ $item->created_at }}</td>
                                    <td>
                                        @if ($item->severity === "LOW")
                                            <div class="d-flex justify-content-center"><span class="badge badge-info">LOW</span></div>
                                        @elseif ($item->severity === 'MEDIUM')
                                            <div class="d-flex justify-content-center"><span class="badge badge-success">MEDIUM</span></div>
                                        @elseif ($item->severity === 'HIGH')
                                            <div class="d-flex justify-content-center"><span class="badge badge-warning">HIGH</span></div>
                                        @elseif ($item->severity === 'CRITICAL')
                                            <div class="d-flex justify-content-center"><span class="badge badge-danger ">CRITICAL</span></div>
                                        @endif
                                    </td>
                                    <td>
                                        @if ($item->statuses_id === 1)
                                        <div class="d-flex justify-content-center"><span class="badge badge-success">Done</span></div>
                                        @elseif ($item->statuses_id === 2)
                                        <div class="d-flex justify-content-center"><span class="badge badge-warning">On Progress</span></div>
                                        @else
                                        <div class="d-flex justify-content-center"><span class="badge badge-danger ">Hold</span></div>
                                        @endif
                                    </td>
                                </tr>
                            </tbody>
                            @endforeach

                        </table>
                        <div class="row float-right">
                          <div class="col-md-4 mb-3">
                            {{ $ticket->links() }}                           	
                          </div>
                        </div>
                    </div>
                    {{--!! Ticket view Table --}}


                </div>
            </div>
        </div>
    </div>
</div>

<script >
  // $(document).ready(function() {
  // $('#datatable111').DataTable();
  // } );
</script>
@endsection
