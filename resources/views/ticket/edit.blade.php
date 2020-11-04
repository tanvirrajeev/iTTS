@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-warning">
                <div class="card-header bg-dark text-light text-center"><h3>Edit ticket</h3></div>

                <div class="card-body">
                    {{-- @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}


                    {{-- Ticket Form --}}
                    <form action="/ticket/update/{{ $ticket->id }}" method="POST">
                      @csrf
                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                            <label for="validationServer013">Ticket Title</label>
                            <input type="text" class="form-control" value="{{ $ticket->name }}" id="validationServer013" name="title"
                               required>
                            {{-- <div class="valid-feedback">
                              Looks good!
                            </div> --}}
                          </div>
                          <div class="col-md-12 mb-3">
                            <label for="validationServer023">Ticket Description</label>
                            <textarea class="form-control"  id="validationServer023" rows="3" name="description">{{  $ticket->description }}</textarea>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-5 mb-3">
                            <label for="validationServer033">Raised By</label>
                            <input type="text" class="form-control" value="{{ $ticket->raised_by }}" id="validationServer033" name="raised_by"
                              required>
                          </div>

                          <div class="col-md-3 mb-3">
                            <label for="division">Division:</label>
                            <select class="form-control form-control-sm" name="division" id="division" required>
                                <option value="{{ $ticket->division_id }}" selected>{{ $selecteddivname }}</option>
                              @foreach ($div as $item)
                                  <option value="{{ $item->id }}">{{ $item->name }}</option>
                              @endforeach
                            </select>

                        </div>

                          <div class="col-md-3 mb-3">
                            <label for="responsible">Responsible</label>
                              <select class="form-control form-control-sm" name="responsible" id="responsible" required>
                               <option value="{{ $ticket->user_id }}" selected>{{ $selectedusrname }}</option>
                                @foreach ($usr as $item)
                                    @if ($item->id !== $ticket->user_id)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endif
                                @endforeach
                              </select>
                          </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03">System:</label>
                                <select class="form-control form-control-sm" name="system" id="system" required>
                                    <option value="{{ $ticket->system_id }}" selected>{{ $selectedsysname }}</option>
                                  @foreach ($sys as $item)
                                    @if ($item->id !== $ticket->system_id)
                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endif
                                  @endforeach
                                </select>

                              <div class="invalid-feedback">
                                  Please provide a category.
                              </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom04">Category:</label>
                              <select class="form-control form-control-sm" name="category" id="category" required>
                                  <option value="{{ $ticket->category_id }}" selected>{{ $selectedcatname }}</option>
                                @foreach ($cat as $item)
                                    @if ($item->id !== $ticket->category_id)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                    @endif
                                @endforeach
                              </select>
                            </div>
                            <div class="col-md-4 mb-3">
                              <label for="validationCustom03">Date:</label>
                              <i class="fa fa-calendar-alt"></i>
                              <input type="text" class="datetimepicker" value="{{ $ticket->created_at }}" name="datetimepicker" id="datetimepicker" autocomplete="off" required>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom04">Status:</label>
                          <select class="form-control form-control-sm" name="status" id="status" required>
                              <option value="{{ $ticket->statuses_id }}" selected>{{ $selectedstsname }}</option>
                            @foreach ($sts as $item)
                                @if ($item->id !== $ticket->statuses_id)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endif
                            @endforeach
                          </select>
                        </div>
                          <div class="col-md-4 mb-3">
                              <label for="validationCustom04">Severity</label>
                            <select class="form-control form-control-sm" name="severity" id="severity" onchange="showseverity(this.value)" required>
                              <option value="{{ $ticket->severity }}">{{ $ticket->severity }}</option>
                              <option value="LOW">LOW</option>
                              <option value="MEDIUM">MEDIUM</option>
                              <option value="HIGH">HIGH</option>
                              <option value="CRITICAL">CRITICAL</option>
                            </select>
                          </div>
                          <div class="col-md-4 mb-3">
                            {{-- <label for="validationServer023">Severity Notes</label> --}}
                            <textarea class="form-control" id="severity_comments" rows="3" name="severity_comments" style="display:none" placeholder="Severity notes if Critical..." >{{ $ticket->severity_comments }}</textarea>
                        </div>
                      </div>



                        <button class="btn btn-danger" type="submit">Update Ticket</button>
                      </form>
                    {{--!! Ticket Form --}}
                </div>
            </div>
        </div>
    </div>
</div>

<script>
  jQuery(document).ready(function(){
    $("#severity").change(function() {
        if($(this).val() == 'CRITICAL'){

          $('#severity_comments').show();

        }else{
          $('#severity_comments').hide();
        }
    });
  });
  </script>

@endsection
