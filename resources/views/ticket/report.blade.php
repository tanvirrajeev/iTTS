@extends('layouts.app')

@section('content')

<div class="container">

    


    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-dark text-light text-center"><h3>Total Tickets -Last 3 days</h3></div>

                <div class="card-body">
                    {!! $chart->container() !!}

                    {!! $chart->script() !!}
            </div>
        </div>
    </div>
</div>

<br>

<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header bg-dark text-light text-center"><h3>Ticket Raised Today</h3></div>

            <div class="card-body">
                

                <table id="example" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Division By</th>
                            <th>Category</th>
                            <th>test</th>
                        </tr>
                    </thead>
                    @foreach ($allticket as $item)
                            <tbody>
                                <tr>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->description }}</td>
                                    <td> {{ App\Division::find($item->division_id)->name }}</td>
                                    <td>{{ App\Category::find($item->category_id)->name }}</td>
                                    <td>{{ App\User::find($item->user_id)->name }}</td>
                                </tr>
                            </tbody>
                            @endforeach
                    <tfoot>
                    </tfoot>
                </table>






            </div>
    </div>
</div>
</div>

</div>
@endsection
