@extends('layouts.app')

@section('content')

<div class="container">

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-warning">
                <div class="card-header bg-dark text-light text-center"><h3>Raise a ticket</h3></div>

                <div class="card-body">
                    {{-- @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif --}}


                    {{-- Ticket Form --}}
                    <form action="/home" method="POST">
                      @csrf
                        <div class="form-row">
                          <div class="col-md-12 mb-3">
                            <label for="validationServer013">Ticket Title</label>
                            <input type="text" class="form-control" id="validationServer013" name="title" placeholder="i.e. CO Unlock..."
                               required>
                            {{-- <div class="valid-feedback">
                              Looks good!
                            </div> --}}
                          </div>
                          <div class="col-md-12 mb-3">
                            <label for="validationServer023">Ticket Description</label>
                            <textarea class="form-control" id="validationServer023" rows="3" name="description" placeholder="Brief description..."></textarea>
                          </div>
                        </div>

                        <div class="form-row">
                          <div class="col-md-5 mb-3">
                            <label for="validationServer033">Raised By</label>
                            <input type="text" class="form-control" id="validationServer033" name="raised_by" placeholder="Who raised it.."
                              required>
                          </div>
                          {{-- <div class="col-md-3 mb-3">
                            <label for="validationServer043">Division</label>
                            <input type="text" class="form-control" id="validationServer043" placeholder="Division.."
                              required>
                          </div> --}}

                            <div class="col-md-3 mb-3">
                                <label for="division">Division:</label>
                                <select class="form-control form-control-sm" name="division" id="division" required>
                                  @foreach ($div as $item)
                                      <option value="{{ $item->id }}">{{ $item->name }}</option>
                                  @endforeach
                                </select>

                            </div>

                          <div class="col-md-3 mb-3">
                            <label for="responsible">Responsible</label>
                              <select class="form-control form-control-sm" name="responsible" id="responsible" required>
                                <option value="{{ $selecteduser->id }}" selected>{{ $selecteduser->name }}</option>
                                @foreach ($usr as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                              </select>
                          </div>
                        </div>

                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03">System:</label>
                                <select class="form-control form-control-sm" name="system" id="system" required>
                                  @foreach ($sys as $item)
                                      <option value="{{ $item->id }}">{{ $item->name }}</option>
                                  @endforeach
                                </select>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom04">Category:</label>
                              <select class="form-control form-control-sm" name="category" id="category" required>
                                @foreach ($cat as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                                @endforeach
                              </select>
                            </div>
                            <div class="col-md-4 mb-3">
                              <label for="validationCustom03">Date:</label>    
                              <i class="fa fa-calendar-alt"></i>
                              {{-- <div class='input-group date' id='datetimepicker7'> <input type='text' class="form-control" /> <span class="input-group-addon"> <span class="glyphicon glyphicon-calendar"></span> </span> </div> --}}
                              {{-- <input type="text" class="datepicker" name="date" id="date" required> --}}
                              <input type="text" class="datetimepicker" name="datetimepicker" id="datetimepicker" autocomplete="off" required>
                          </div>
                        </div>
                        
                        <div class="form-row">
                          <div class="col-md-4 mb-3">
                            <label for="validationCustom04">Status:</label>
                          <select class="form-control form-control-sm" name="status" id="status" required>
                              {{-- <option value="{{ $ticket->statuses_id }}" selected>{{ $selectedstsname }}</option> --}}
                            @foreach ($sts as $item)
                                <option value="{{ $item->id }}">{{ $item->name }}</option>
                            @endforeach
                          </select>
                        </div>
                          <div class="col-md-4 mb-3">
                              <label for="validationCustom04">Severity</label>
                            <select class="form-control form-control-sm" name="severity" id="severity" onchange="showseverity(this.value)" required>
                              <option value="LOW">LOW</option>
                              <option value="MEDIUM">MEDIUM</option>
                              <option value="HIGH">HIGH</option>
                              <option value="CRITICAL">CRITICAL</option>
                            </select>
                          </div>
                          <div class="col-md-4 mb-3">
                            {{-- <label for="validationServer023">Severity Notes</label> --}}
                            <textarea class="form-control" id="severity_comments" rows="3" name="severity_comments" style="display:none" placeholder="Severity notes if Critical..." ></textarea>
                        </div>
                      </div>

                        <button class="btn btn-danger" type="submit">Submit Ticket</button>
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

