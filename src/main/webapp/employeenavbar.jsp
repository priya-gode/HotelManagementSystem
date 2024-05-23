<html>
    <head>
        <title>Navbar</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            @import url("//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");

.navbar-icon-top .navbar-nav .nav-link > .fa {
  position: relative;
  width: 36px;
  font-size: 24px;
}
.navbar-icon-top.navbar-expand-lg.navbar-dark {
    background-color: #151269;
    background-repeat: no-repeat;
    background-size: 2000px;
    height: 65px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  font-size: 0.75rem;
  position: absolute;
  right: 0;
  font-family: sans-serif;
}

.navbar-icon-top .navbar-nav .nav-link > .fa {
  top: 3px;
  line-height: 12px;
}

.navbar-icon-top .navbar-nav .nav-link > .fa > .badge {
  top: -10px;
}

@media (min-width: 576px) {
  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-sm .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}
.navbar-icon-top .navbar-nav .nav-link {
  /* Replace 'color' with the desired text color */
  color:white;
}


@media (min-width: 768px) {
  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-md .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}
.navbar-brand {
  color: rgb(25, 23, 23);
}


@media (min-width: 992px) {
  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }
  body{

  overflow: hidden;
}
  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-lg .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}
.back-vedio{
    position: absolute;
    right: 0;
    bottom: 0;
    z-index: -1;
   
    right: 7%;
    max-height: 100%;
   max-width: 100%;

}



@media (min-width: 1200px) {
  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link {
    text-align: center;
    display: table-cell;
    height: 70px;
    vertical-align: middle;
    padding-top: 0;
    padding-bottom: 0;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa {
    display: block;
    width: 48px;
    margin: 2px auto 4px auto;
    top: 0;
    line-height: 24px;
  }

  .navbar-icon-top.navbar-expand-xl .navbar-nav .nav-link > .fa > .badge {
    top: -7px;
  }
}


        </style>
    </head>
    <body class="hero">
      
        <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark ">
            <a class="navbar-brand" style="color: white;font-style:italic;font-weight:bolder;" href="employeehome.jsp">Nivasa</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="contactadmin" style="color: white;">
                    <i class="fa fa-home"></i>
                    Contact Admin
                    <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="booking">
                    <i class="fa fa-envelope-o">
                      <span class="badge badge-danger"></span>
                    </i>
                    Booking status
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="room">
                    <i class="fa fa-envelope-o">
                      <span class="badge badge-warning"></span>
                    </i>
                    Booking
                  </a>
                </li>
               
                <li class="nav-item">
                  <a class="nav-link" href="updateprofile">
                    <i class="fa fa-globe">
                      <span class="badge badge-success"></span>
                    </i>
                    Profile
                  </a>
                </li>
              </ul>
             
              <form action="employeelogin.jsp" class="form-inline my-2 my-lg-0">
                <button class="btn btn-outline-success " type="submit" style="color: black; background-color:rgb(221, 155, 155)">Logout</button>
              </form>
            </div>
          </nav>
         
          <div class="container">
   
</div>

    </body>
</html>