<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <a class="navbar-brand" href="#">laravel_kb</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <form class="form-inline ml-auto">
            <select class="form-control">
                <option value="option1">Select</option>
                <option value="option2">Bengali</option>
                <option value="option3">Hindi</option>
            </select>
            {{-- <button class="btn btn-outline-primary ml-2" type="submit">Submit</button> --}}
        </form>
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="{{url('/')}}">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{url('/customer-signup')}}">Sign Up</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Laravel SignUp</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{url('/customer/view')}}">Customer Data</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('customer.trash')}}">Deleted Customers</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Relation
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="{{route('member.data')}}">One to One/Many Rel</a>
                    <a class="dropdown-item" href="{{route('group.data')}}">Reverse data</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="{{url('get-all-session')}}" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Functions
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="{{route('file.view')}}">File Upload</a>
                    {{-- <a class="dropdown-item" href="{{route('destroy.session')}}">Destroy Session</a> --}}
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="{{url('get-all-session')}}" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    @if (session()->has('name'))
                        {{session()->get('name')}}
                        {{session()->get('status')}}
                        @else
                        {{'Username'}}
                    @endif

                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="{{route('set.session')}}">Set Session</a>
                    <a class="dropdown-item" href="{{route('destroy.session')}}">Destroy Session</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0" method="get" action="{{route('customer.view')}}">
            <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
  </nav>
