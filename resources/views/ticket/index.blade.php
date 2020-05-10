
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
                                            @if ($item->statuses_id === 1)
                                            
                                            
                                            <div class="d-flex justify-content-center"><span class="badge badge-success">Done</span></div>
                                            {{-- <div class="d-flex justify-content-center"><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#doneModal">Done</button></div> --}}
                                            {{-- <div class="d-flex justify-content-center"><a href="/ticket/editstatus/{{ $item->id }}" class="badge badge-success ">Done</a></div>  --}}
                                            {{-- align-middle --}}
                                            {{-- <div class="modal fade" id="doneModal" role="dialog">
                                                <div class="modal-dialog modal-sm">
                                                  <div class="modal-content">
                                                    <div class="modal-header bg-danger">
                                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                      <h4 class="modal-title">Access Denied!</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                      <p>At this stage (Done) you will not be able to change it.</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div> --}}
                                            @elseif ($item->statuses_id === 2)
                                            {{-- <div class="d-flex justify-content-center"><button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#ChangeModal">On Progress {{ $item->id, $item->statuses_id }}</button></div> --}}
                                            {{-- Pass data to model --}}
                                            {{-- @include('ticket.statusupdate',['statusesid'=>$item->statuses_id, 'ticketid'=>$item->id]) --}}
                                            {{-- <a href="{{ route('statusupdate/$item->id/$item->statuses_id') }}" class="btn btn-danger">Delete</a> --}}
                                            {{-- <form action="" method="POST"> --}}
                                              {{-- @csrf --}}
                                            {{-- <button>On Progress</button> --}}
                                            {{-- </form> --}}


                                            {{-- overlay --}}
                                            {{-- <div id="overlay" onclick="off()">
                                              <div id="text">{{ $item->id}}</div>
                                              <button>{{$item->statuses_id}}</button>
                                            </div>
                                            <div>
                                              <button onclick="on()">On Progress {{$item->id}}</button>
                                            </div> --}}

                                            <div class="d-flex justify-content-center"><span class="badge badge-warning">On Progress</span></div>

                                            {{-- <div class="d-flex justify-content-center"><a href="#" class="badge badge-warning">On Progress</a></div> --}}
                                            @else
                                            {{-- <div class="d-flex justify-content-center"><button type="button" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#holdModal">Hold</button></div> --}}
                                            {{-- @include('ticket.statusupdate',['statuses_id'=>$item->statuses_id, 'ticket_id'=>$item->id])  --}}
                                            {{-- <div class="modal fade" id="holdModal" role="dialog">
                                                <div class="modal-dialog modal-sm">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                      <h4 class="modal-title">Modal Header</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                      <p>
                                                        
                                                        <form action="/ticket/statusupdate/{{ $item->statuses_id }}/{{ $item->id }}" method="POST">
                                                            @csrf
                                                            <div class="form-group"> --}}
                                                              {{-- <label for="exampleInputEmail1">Status</label> --}}
                                                              {{-- <select class="form-control form-control-sm" name="status" id="status" required>
                                                                <option value="{{ $selectedstsname }}" selected disabled>{{ $selectedstsname }}</option>
                                                              @foreach ($sts as $item)
                                                                  <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                              @endforeach
                                                            </select> --}}
                                                              {{-- <select class="form-control form-control-sm">
                                                                <option>Choose</option>
                                                              </select> --}}
                                            
                                                              {{-- @include('ticket.edit',['statuses_id'=>$item->statuses_id]) --}}

                                                              {{-- {{$item->id}}
                                                              <button>{{$item->id}}</button>
                                            
                                                            </div>
                                                            <button type="submit" class="btn btn-primary">Update</button>
                                                          </form>

                                                      </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div> --}}
                                            {{-- <div class="d-flex justify-content-center"><a href="#" class="badge badge-danger">Hold</a></div> --}}
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
