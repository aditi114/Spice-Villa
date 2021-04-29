<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="signup.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>Sign Up</title>
    </head>
    <script>
        function login(){
            window.alert("You Need To Log In First");
        }
    </script>
    <body>
        <nav class="navbar navbar-expand-sm">
            <a class="navbar-brand" href="#">
                <img src="media/logo.PNG" alt="logo" style="width:200px;height: 40px">
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp" onclick="login()">Order Online</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="signup.jsp">Sign Up</a>  
                </li>
            </ul>
        </nav>
        <div class="container-fluid">
            <div class="modal-dialog">
                <div class="main-section">
                    <div class="modal-content">
                        <div class="form-input">
                            <h3>REGISTER</h3>
                            <form action="SignupServlet" method="post" onsubmit="return validateform()>
                                <div class="form-group">
                                <input type="Name" name="name" class="form-control" placeholder="Name" required><br>
                                </div>
                                <div class="form-group">
                                        <input type="Email" name="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                        <label for="date">Age</label>
                                        <input type="number" name="age" id="age" min="1" max="80" class="form-control" value="20" required>
                                </div>
                                <div class="form-group">
                                        <input type="Username" name="username" class="form-control" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input type="Password" name="password1" class="form-control" placeholder="Password" required>
                                </div>
                                <div class="form-group">
                                        <input type="Password" name="password2" class="form-control" placeholder="Confirm Password" required>
                                </div>	
                                <span style="color: red">
                                    ${error}
                                </span>
                                <br><button type="submit" name="login" class="btn btn-success btn-lg">Sign Up <i class="bi bi-upload"></i></i></button>
                                <div class="form-group">
                                        <p>Already Have An Account ? <a style="color: blue" href="login.jsp">Login Here</a></p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
	</div>
    </body>   
    <footer>
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4">
                        <h5>About Us</h5>
                        <p>
                                    Owners: Owner 1 and Owner 2<br>
                                    Our Branches: Mulund | Borivali | Thane | Andheri | Vashi<br>
                                    <a href = "mailto: xxx@gmail.com" style="text-decoration: none;color: #E7C6B4;">Email ID: xxx@gmail.com</a>
                                    Contact: 9999999999<br>   
                        </p>
                    </div>
                    <div class="col-sm-2" style="border-left: 1px #E7C6B4 solid">
                        <h5>Timings:</h5>
                        <p>
                            <h6>Monday-Friday</h6>
                            7AM-11AM- Breakfast<br>
                            11AM-10PM- Lunch/Dinner<br>
                        </p>
                    </div>
                    <div class="col-sm-2" style="padding-top: 35px;">
                        <h6>Saturday-Sunday</h6>
                        <p>
                            8AM-11AM- Breakfast<br>
                            11AM-11PM- Lunch/Dinner
                        </p>         
                    </div>
                    <div class="col-sm-4" style="border-left: 1px #E7C6B4 solid">
                        <h5>Follow us at:</h5>
                        <p>
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-linkedin"></a>
                            <a href="#" class="fa fa-youtube"></a>
                            <a href="#" class="fa fa-instagram"></a>
                        </p>      
                    </div>
                </div>
            </div>
        </div>
    </footer>    
</html>
