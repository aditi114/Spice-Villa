<%-- 
    Document   : index
    Created on : 09-Apr-2021, 12:56:15 pm
    Author     : Aditi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Home</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="index.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
    <body>
        <nav class="navbar navbar-expand-sm">
            <a class="navbar-brand" href="#">
                <img src="media/logo.PNG" alt="logo" style="width:200px;height: 40px">
            </a>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Order Now</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login/SignUp</a>
                </li>
            </ul>
        </nav>
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
                                <img src="img10.jpg" width="100%" height="300">
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
                    <iframe src="https://www.atlistmaps.com/map/09a15a49-c5d4-43d9-a781-8e3db4e7b125?share=true" allow="geolocation" width="100%" height="300px" frameborder="0" scrolling="no" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <div class="container-fluid" >
            <div class="row">
                <div class="col-lg-4">
                    <div class="details">
                            <h2><em>Spice Villa</em></h2>
                            <h2>Owners: Aditi & Bhavik</h2>
                            <h3>Email ID: xyz@pqr.com</h3>
                            <h3>Contact: 999900000</h3>
                            <p>Started in 1996 in Mulund by 
                            selling Chinese Fast Food but with a burning desire of 
                            leaving a mark in the Hospitality Industry, Mr. Bhavik Mehta 
                            formally started his 1st restaurant in the year 1998.</p>  
                    </div>
                    <div class="discount">
                        <h1>discount</h1>
                    </div>
                </div>
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
                <div class="col-lg-4">
                    <div class="reservation">
                        <h3>Book A Table</h3>
                        <ul style="list-style-type:none;">
                            <li>
                                <label for="name">Name:</label>
                                <input type="text" name="name">
                            </li>
                            <li>
                                <label for="email">Email:</label>
                                <input type="email" id="email" placeholder="example@abc.xyz"required>
                            </li>
                            <li>
                                <label for="date">Date:</label>
                                <input type="date" name="date" value="2018-07-22"min="2021-04-21" max="2021-12-31">
                            </li>
                            <li>
                                <label for="location">Choose Location:</label>
                                <select name="location">
                                    <option>...</option>
                                    <option>Mulund</option>
                                    <option>Borivali</option>
                                    <option>Andheri</option>
                                    <option>Thane</option>
                                    <option>Vashi</option>
                                </select>
                            </li>
                            <li>
                                <label for="time">Choose a time:</label>
                                <input type="time" id="appt" name="appt" min="09:00" max="22:00" required>
                            </li>
                            <li>
                                <label for="comment">Your Comment</label><br>
                                <textarea id="subject" name="subject" style="height:50px"></textarea>
                            </li>
                        </ul>
                        <button type="submit" class="btn btn-success btn-lg">Book Now</button>
                        <input class="btn btn-primary" type="reset" value="Reset">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
