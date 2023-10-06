<!doctype html>
<html lang="en">

<head>
    <title> User Form</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12 mt-4 text-center"><h4>Stable Change Email Form</h4></div>
            <div class="col-12 mt-0 mb-3 text-center"><p>Customer Name: {{$customer->name}}</p></div>
            <div class="col-2"></div>
            <div class="col-8">
                <div class="card p-4 ">
                    <form action="{{ route('customer.update') }}" method="post">
                        @csrf
                        <input type="hidden" value="{{$customer->customer_id}}" name="id">
                        <div class="row">
                            <div class="col-6">
                                  <div class="form-group">
                                    <label for="Email">Email</label>
                                    <input type="email" name="email" id="" class="form-control" placeholder="" aria-describedby="helpId" value="{{$customer->email}}">
                                    <small id="helpId" class="text-danger">
                                      @error('email')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>

                            </div>
                        </div>
                        <button class="btn btn-primary"> submit</button>
                    </form>
                </div>
            </div>
            <div class="col-4"></div>
        </div>
    </div>
</body>

</html>
