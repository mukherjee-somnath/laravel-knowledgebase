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
            <div class="col-4"></div>
            <div class="col-4">
                <div class="card p-4 mt-5">
                    <form action="{{url('/')}}/register" method="post">
                        @csrf
                        <div class="form-group">
                          <label for="Name">Name</label>
                          <input type="text" name="name" id="" class="form-control" placeholder="" aria-describedby="helpId" value = "{{old('name')}}">
                          <small id="helpId" class="text-danger">
                            @error('name')
                                {{ $message }}
                            @enderror
                          </small>
                        </div>
                        <div class="form-group">
                          <label for="Email">Email</label>
                          <input type="email" name="email" id="" class="form-control" placeholder="" aria-describedby="helpId" value="{{old('email')}}">
                          <small id="helpId" class="text-danger">
                            @error('email')
                                {{ $message }}
                            @enderror
                          </small>
                        </div>
                        <div class="form-group">
                          <label for="Name">Password</label>
                          <input type="password" name="password" id="" class="form-control" placeholder="" aria-describedby="helpId">
                          <small id="helpId" class="text-danger">
                            @error('password')
                                {{ $message }}
                            @enderror
                          </small>
                        </div>
                        <div class="form-group">
                          <label for="Name">Confirm Password</label>
                          <input type="password" name="confirm-password" id="" class="form-control" placeholder="" aria-describedby="helpId">
                          <small id="helpId" class="text-danger">
                            @error('confirm-password')
                                {{ $message }}
                            @enderror
                          </small>
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
