<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Order Online</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="index.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <% String username= request.getParameter("username");%>
    <nav class="navbar navbar-expand-sm">
        <a class="navbar-brand" href="#">
            <img src="media/logo.PNG" alt="logo" style="width:200px;height: 40px">
        </a>
        <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index1.jsp?username=<%=username%>&email=null">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="order.jsp?username=<%=username%>">Order Online</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                </li>
                <li class="nav-item">
                        <a class="nav-link" href="userorders.jsp?username=<%=username%>">My Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"><%=username%></a>  
                </li>
        </ul>
    </nav>
    <body>
        <div class="row">
            <div class="col-lg-7">
                <h2 style="text-align: center">MENU</h2>
                <form action="cart.jsp?username=<%=username%>" method="post">
                    <ol>
                        <li>
                            <div class="row">
                                <div class="col-lg-6" style="text-align: center">
                                    <h3><em>Soups</em></h3>
                                </div>
                                <div class="col-lg-3">
                                    <h4><em>Price(in Rs)</em></h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Tomato Soup</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>150</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="soup1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Manchow Soup</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>150</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="soup2" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                    </ol>
                    <ol>
                        <li>
                            <div class="row">
                                <div class="col-lg-6" style="text-align: center">
                                    <h3><em>Chinese</em></h3>
                                </div>
                                <div class="col-lg-3">
                                    <h4><em>Price(in Rs)</em></h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Paneer Chilli</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>225</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="chinese1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Triple Schezwan Rice</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>200</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="chinese2" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                    </ol>
                    <ol>
                        <li>
                            <div class="row">
                                <div class="col-lg-6" style="text-align: center">
                                    <h3><em>Italian And Mexican</em></h3>
                                </div>
                                <div class="col-lg-3">
                                    <h4><em>Price(in Rs)</em></h4>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>English Retreat Pizza</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>350</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="pizza1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Fiesta Tacos</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>100</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="tacos1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>7-Layer Burrito</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>225</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="burrito1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Fusilli Pink Sauce Pasta</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>300</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="pasta1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Corn and Pepper Lasagne</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>300</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="lasagne1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-lg-6">
                                    <h4>Bombay Quesadilla</h4>
                                </div>
                                <div class="col-lg-3">
                                    <h4>225</h4>
                                </div>
                                <div class="col-lg-3">
                                    <button type="submit" name="action" value="quesadilla1" class="btn btn-primary btn-sm">Add To Cart</button>
                                </div>
                            </div>
                        </li>
                    </ol>
                </form>
            </div>
            <div class="col-lg-5" style="text-align: center">
                <h2>My Cart</h2>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Item-Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Sub-Total</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                <%
                    try
                    {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
                        Statement stm= con.createStatement();
                        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'");
                        if (rs.next() == false)
                        {%>
                        <tbody>
                            <tr>
                                <td colspan="4"><em>Your Cart Is Empty</em></td>
                            </tr>
                        </tbody>
                        <%}
                        else
                        {
                            do
                            {%>
                            <tbody>
                            <tr>
                                <td><%=rs.getString("item")%></td>
                                <td><%=rs.getInt("price") %></td>
                                <td><%=rs.getInt("quantity") %></td>
                                <td><%=rs.getInt("sub_total") %></td>
                                <td>
                                    <form action="cart.jsp?username=<%=username%>" method="post">
                                        <button type="submit" name="action" value="del<%=rs.getString("item")%>" class="btn btn-danger">Remove</button>
                                    </form>
                                </td>
                            </tr>
                            </tbody>
                            <%}
                            while (rs.next());
                        }
                        con.close();
                    }
                    catch(Exception e)
                    {
                        System.out.print(e.getMessage());
                    }
                %>
                <% int total=0;%>
                <%
                    try
                    {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
                        Statement stm= con.createStatement();
                        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'");
                        while(rs.next())
                        {
                            int subtotal = rs.getInt("sub_total");
                            total = total + subtotal;
                        }
                    }
                    catch(Exception e)
                    {
                        System.out.print(e.getMessage());
                    }
                    
                %>
                    <tr>
                        <td colspan="3"><em><b>Total Amount</em></b></td>
                        <td><%=total%></td>
                        <%
                            if(total==0){
                        %>
                        <td>
                            <form>
                                <button type="submit" name="action" value="checkout" class="btn btn-success" disabled>Checkout</button>
                            </form>
                        </td>
                        <%
                            }
                            else
                            {  
                        %>
                        <td>
                            <form action="checkout.jsp?username=<%=username%>&total=<%=total%>" method="post">
                                <label for="location">Branch: </label>
                                <select name="location">
                                    <option>Mulund</option>
                                    <option>Borivali</option>
                                    <option>Andheri</option>
                                    <option>Thane</option>
                                    <option>Vashi</option>
                                </select><br>
                                <button type="submit" name="action" value="checkout" class="btn btn-success">Checkout</button>
                            </form>
                        </td>
                        <%}%>
                    </tr>   
                </table> 
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
</html>
