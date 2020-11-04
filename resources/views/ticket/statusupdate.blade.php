<div class="modal fade" id="ChangeModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header bg-warning">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Change Status</h4>
        </div>
        <div class="modal-body">
          <p>
            <form action="" method="POST">
                @csrf
                <div class="form-group">
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
                  {{ $item->id }}

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
  </div>