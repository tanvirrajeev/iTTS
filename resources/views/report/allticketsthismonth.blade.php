@extends('layouts.app')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-10">
        <div class="card">
            <div class="card-header bg-dark text-light text-center"><h3>Total Ticket Raised This Month</h3></div>
            <div class="card-body">
                <div class="float-right text-danger"><h4>Total Ticket: {{ $totalcount }}</h4></div>
                {{-- <div class="float-right text-danger"><h4>Total Ticket Opend This Month: {{ $totalcount }}</h4></div> --}}
                <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead class="bg-warning text-center">
                        <tr>
                            <th>System</th>
                            <th>Division</th>
                            <th>Count</th>
                        </tr>
                    </thead>
                    @foreach ($monthdiv as $item)
                            <tbody class="text-center">
                                <tr>
                                    <td>{{ $item->sysname }}</td>
                                    <td>{{ $item->divname }}</td>
                                    <td> {{ $item->count }}</td>
                                </tr>
                            </tbody>
                            @endforeach
                </table>
            </div>
    </div>
</div>
</div>
@endsection
