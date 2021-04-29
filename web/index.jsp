<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="index.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://apps.elfsight.com/p/platform.js" defer></script>
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
                    <a class="nav-link" href="signup.jsp">SignUp</a>  
                </li>
                <li class="nav-item">
                    <a class="nav-link">Guest User</a>  
                </li>
            </ul>
        </nav>
        <div style="text-align: center">
            <span style="color: green;  font-size: 30px; font-weight: bolder; text-transform: uppercase;">
                ${booked}                  
            </span>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div id="demo" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                            <li data-target="#demo" data-slide-to="3"></li>
                            <li data-target="#demo" data-slide-to="4"></li>
                            <li data-target="#demo" data-slide-to="5"></li>
                            <li data-target="#demo" data-slide-to="6"></li>
                            <li data-target="#demo" data-slide-to="7"></li>
                            <li data-target="#demo" data-slide-to="8"></li>
                            <li data-target="#demo" data-slide-to="9"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="media/img1.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img2.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img3.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img4.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img5.jpg"width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img6.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img7.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img8.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img9.jpg" width="100%" height="300">
                            </div>
                            <div class="carousel-item">
                                <img src="media/img10.jpg" width="100%" height="300">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
<!--                    https://apps.elfsight.com/panel/applications/google-maps/-->
                    <div class="elfsight-app-95f0c4ba-e5b0-41eb-9bc5-098516d58a7d"></div>   
                </div>
            </div>
        </div>
        <br>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div id="menu" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#menu" data-slide-to="0" class="active"></li>
                            <li data-target="#menu" data-slide-to="1"></li>
                            <li data-target="#menu" data-slide-to="2"></li>
                            <li data-target="#menu" data-slide-to="3"></li>
                            <li data-target="#menu" data-slide-to="4"></li>
                            <li data-target="#menu" data-slide-to="5"></li>
                            <li data-target="#menu" data-slide-to="6"></li>
                            <li data-target="#menu" data-slide-to="7"></li>
                            <li data-target="#menu" data-slide-to="8"></li>
                            <li data-target="#menu" data-slide-to="9"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="menu/1.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/2.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/3.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/4.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/5.png"width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/6.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/7.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/8.png" width="100%" height="500">
                            </div>
                            <div class="carousel-item">
                                <img src="menu/9.png" width="100%" height="500">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#menu" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#menu" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-8" style="background-position: center;background-image: url(media/booktable.jpg);background-repeat: no-repeat;background-size: auto;">
                    <div class="booktable" style="text-align: center;">
                        <h4>Book Your Table</h4>
                        <form action="sendemail" method="post">
                        <div class="row">
                            <div class="col-lg-3"></div>
                            <div class="col-lg-3">
                                <ul style="list-style-type:none;">
                                    <li>
                                        <label for="name">Name</label>
                                        <input type="text" name="name">
                                    </li>
                                    <li>
                                        <label for="phonenumber">Number</label>
                                        <input type="tel" name="phonenumber" required>
                                    </li>
                                    <li>
                                        <label for="location">Branch</label><br>
                                        <select name="location">
                                            <option>Mulund</option>
                                            <option>Borivali</option>
                                            <option>Andheri</option>
                                            <option>Thane</option>
                                            <option>Vashi</option>
                                        </select>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3">
                                <ul style="list-style-type:none;">
                                    <li>
                                        <label for="email">Email</label>
                                        <input type="email" name="email" placeholder="example@abc.xyz"required>
                                    </li>
                                    <li>
                                        <label for="date">Date</label><br>
                                        <input type="date" name="date" value="2018-07-22"min="2021-04-21" max="2021-12-31" required>
                                    </li>
                                    <li>
                                        <label for="time">Time</label><br>
                                        <input type="time" name="time" min="09:00" max="22:00" required>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <ul style="list-style-type:none;">
                            <li>
                                <label for="member">Number of Members</label>
                                <input type="number" name="members" min="1" max="20" placeholder="maximum 20 people" style="width: 200px">
                            </li>
                        </ul>

                        <div class="tablesubmit" style="text-align: center">
                            <button type="submit" class="btn btn-success">Book Now!</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>  
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
                            11AM-10PM- Lunch/Dinner
                            <hr>
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
    </body>
</html>
                                                             