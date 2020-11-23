
@extends('layouts.app')

@section('content')


{{-- <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" rel="stylesheet"> --}}

{{-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"  ></script> --}}
{{-- <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"  defer></script> --}}

<div class="container">

        <!-- Styles -->

        {{-- <link href="{{ asset('css/overlay.css') }}" rel="stylesheet"> --}}
        <!-- Scripts -->

        <script src="{{ asset('js/overlay.js') }}" defer></script>

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card bg-light">
                <div class="card-header bg-dark text-light text-center"><h3>Ticket Header</h3></div>

                <div class="card-body">

                    {{-- Ticket view Form --}}

                    <div class="container mb-5">
                        <table id="datatable111" class="table table-striped table-bordered hover" style="width:100%">
                            <thead class="bg-warning">
                                <tr>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Raised By</th>
                                    {{-- <th>Division</th> --}}
                                    <th>Severity</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                    {{-- <th>Delete</th> --}}
                                </tr>
                            </thead>
                            @foreach ($ticket as $item)
                            <tbody>
                                <tr>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->description }}</td>
                                    <td>{{ $item->raised_by }}</td>
                                    {{-- <td>{{ $item->division_id }}</td> --}}
                                    {{-- <td>{{ $user = App\User::find($item->user_id)->name }}</td> --}}
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
                                    {{-- <td>{{ $selectedusrname }}</td> --}}
                                    {{-- <td>{{ $item->statuses_id }}</td> --}}
                                        <td>
                                            @if ($item->statuses_id == 1)
                                            <div class="d-flex justify-content-center"><span class="badge badge-success">Done</span></div>

                                            @elseif ($item->statuses_id == 2)
                                            <div class="d-flex justify-content-center"><span class="badge badge-warning">On Progress</span></div>

                                            @elseif ($item->statuses_id == 4)
                                            <div class="d-flex justify-content-center"><span class="badge badge-info">New Ticket</span></div>

                                            {{-- <div class="d-flex justify-content-center"><a href="#" class="badge badge-warning">On Progress</a></div> --}}
                                            @else
                                            <div class="d-flex justify-content-center"><span class="badge badge-danger ">Hold</span></div>

                                            @endif
                                        </td>
                                    <td>
                                      <div class="d-flex justify-content-center">
                                        <a href="/ticket/edit/{{$item->id}}"><button type="button" class="btn btn-info btn-sm fas fa-edit"></button></a>
                                        |
                                        <a href="/ticket/delete/{{$item->id}}"><button type="button" class="btn btn-danger btn-sm fas fa-trash-alt"></button></a>
                                      </div>



                                      </td>

                                </tr>
                            </tbody>
                            @endforeach
                            <tfoot>
                                <tr>
                                    <th>Title</th>
                                    <th>Description</th>
                                    <th>Raised By</th>
                                    {{-- <th>Division</th> --}}
                                    <th>Responsible</th>
                                    <th>Status</th>
                                    <th>Edit</th>
                                    {{-- <th>Delete</th> --}}
                                </tr>
                            </tfoot>
                        </table>
                        <div class="row float-right">
                          <div class="col-md-4 mb-3">
                            {{ $ticket->links() }}
                          </div>
                        </div>
                    </div>
                    {{--!! Ticket view Form --}}


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
