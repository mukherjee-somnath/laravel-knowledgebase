<!doctype html>
<html lang="en">
  <head>
    <title>Customer Details</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    @include('header')
      <div class="container pt-5">
        <div class="row mb-4">
            <div class="col-6 mx-md-auto">
                <form action="" method="get">
                    <div class="form-group">
                      <input type="search" name="search" id="" class="form-control" placeholder="Search by name or email" aria-describedby="helpId">
                    </div>
                    <button class="btn btn-primary form-control"  role="button">Search</button>

                </form>
                <a href="{{url('customer/view')}}">
                    <button class="btn btn-primary form-group"   >Clear</button>
                </a>
            </div>
        </div>
        <table class="table">
            <thead>
                <tr style="font-size: 12px;">
                    <th>Customer Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>Date of Birth</th>
                    <th>Status</th>
                    <th>Points</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($customers as $customer)
                    <tr style="font-size: 13px;">
                        <td>{{$customer->customer_id}} </td>
                        <td>{{$customer->name}} </td>
                        <td>{{$customer->email}}</td>
                        <td>
                            @if ($customer->gender == 'M')
                                {{'Male'}}
                                @elseif ($customer->gender == 'F')
                                {{'Female'}}
                                @else
                                {{'Other'}}
                            @endif
                        </td>
                        <td>{{$customer->address}}</td>
                        <td>{{$customer->city}}</td>
                        <td>{{$customer->country}}</td>
                        <td>{{$customer->dob}}</td>
                        <td>
                            @if ($customer->status == 1)
                                <a href="">
                                    <span class="badge badge-primary btn-sm">{{ 'Active'}}</span>
                                </a>
                                @else
                                <a href="">
                                    <span class="badge badge-secondary">{{'Inactive'}}</span>
                                </a>
                            @endif
                        </td>
                        <td>{{$customer->points}}</td>
                        <td>
                            <div class="btn-group">
                                <a href="{{route('customer.edit', $customer->customer_id)}}"><button class="btn btn-success btn-sm mr-2">Edit</button></a>
                                <a href="{{route('customer.delete', $customer->customer_id)}}"><button class="btn btn-danger btn-sm">Move to Trash</button></a>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="row pt-3">
            <div class="col-6 offset-3">
                {{$customers->links()}}
            </div>
        </div>
      </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
