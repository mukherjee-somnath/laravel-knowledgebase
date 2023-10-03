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
            <div class="col-2"></div>
            <div class="col-8">
                <div class="card p-4 mt-5">
                    <form action="{{url('/')}}/customer-signup" method="post">
                        @csrf
                        <div class="row">
                            <div class="col-6">
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
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="Name">Country</label>
                                    <input type="text" name="country" id="" class="form-control" placeholder="" aria-describedby="helpId" value = "{{old('name')}}">
                                    <small id="helpId" class="text-danger">
                                      @error('country')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                                  <div class="form-group">
                                    <label for="Email">state</label>
                                    <input type="text" name="state" id="" class="form-control" placeholder="" aria-describedby="helpId" value="{{old('state')}}">
                                    <small id="helpId" class="text-danger">
                                      @error('state')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                                  <div class="form-group">
                                    <label for="Name">address</label>
                                    <input type="text" name="address" id="" class="form-control" placeholder="" aria-describedby="helpId">
                                    <small id="helpId" class="text-danger">
                                      @error('address')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                                  <div class="form-group">
                                    <label for="Name">DOB</label>
                                    <input type="date" name="dob" id="" class="form-control" placeholder="" aria-describedby="helpId">
                                    <small id="helpId" class="text-danger">
                                      @error('dob')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="Email">Gender</label>
                                    <div class="form-check flex-box">
                                        <label class="form-check-label">
                                          <input type="radio" class="form-check-input"  value = "M" name="gender">Male
                                        </label>
                                      </div>
                                      <div class="form-check">
                                        <label class="form-check-label">
                                          <input type="radio" class="form-check-input" name="gender" value = "F">Female
                                        </label>
                                      </div>
                                      <div class="form-check disabled">
                                        <label class="form-check-label">
                                          <input type="radio" class="form-check-input" name="gender" value = "O" >Others
                                        </label>
                                      </div>
                                    <small id="helpId" class="text-danger">
                                      @error('gender')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="Name">status</label>
                                    <input type="text" name="status" id="" class="form-control" placeholder="" aria-describedby="helpId">
                                    <small id="helpId" class="text-danger">
                                      @error('status')
                                          {{ $message }}
                                      @enderror
                                    </small>
                                  </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <label for="Name">points</label>
                                    <input type="text" name="points" id="" class="form-control" placeholder="" aria-describedby="helpId">
                                    <small id="helpId" class="text-danger">
                                      @error('points')
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
