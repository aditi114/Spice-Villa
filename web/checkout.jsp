<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String username = request.getParameter("username");
    String total = request.getParameter("total");
    String branch = request.getParameter("location");
%>
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
        <h2 style="text-align: center" ><em><b>Your Bill</b></em></h2>
        <div class="container-fluid">
            <div class="row">
            <%
                try
                {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
                    Statement stm= con.createStatement();
                    ResultSet rs= stm.executeQuery("select * from user where username='"+username+"'");
                    while(rs.next())
                    {%>
                    <div class="col-lg-4">
                        <h4>Username: <%=rs.getString("username")%></h4>
                    </div>
                    <div class="col-lg-4">
                        <h4>Name: <%=rs.getString("name")%></h4>
                    </div>
                    <div class="col-lg-4">
                        <h4>Email: <%=rs.getString("email")%></h4>
                    </div>
                            <%}
                            con.close();
                        }
                        catch(Exception e)
                        {
                            System.out.print(e.getMessage());
                }
            %>
            </div>
            <h4 style="text-align: center">Spicevilla Branch: <%=branch%></h4>
            <table class="table table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th>Sr. No.</th>
                        <th>Item-Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Sub-Total</th>
                    </tr>
                    </thead>
                <%
                    try
                    {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
                        Statement stm= con.createStatement();
                        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'");
                        int n=1;
                        while(rs.next())
                        {%>
                        <tbody>
                        <tr>
                            <td><%=n%></td>
                            <td><%=rs.getString("item")%></td>
                            <td><%=rs.getInt("price") %></td>
                            <td><%=rs.getInt("quantity") %></td>
                            <td><%=rs.getInt("sub_total") %></td>
                        </tr>
                        </tbody>
                        <%n++;
                        }
                        con.close();
                    }
                    catch(Exception e)
                    {
                        System.out.print(e.getMessage());
                    }
                %>
                    <tr>
                        <td colspan="4"><em><b>Total Amount</em></b></td>
                        <td><%=total%></td>
                    </tr>
                    <tr>
                        <td colspan="4"></td>
                        <td>
                            <form action="confirmorder.jsp?username=<%=username%>&total=<%=total%>&branch=<%=branch%>" method="post">
                            <button type="submit" name="action" value="confirmorder" class="btn btn-success">Confirm Order</button>
                            </form>
                        </td>
                    </tr>
            </table>       
        </div>
        <h2 style="text-align: center" ><em><b>Thank You For Ordering !!</b></em></h2>
        <h4 style="text-align: center" ><em><b>We Hope You Enjoy Your Meal</b></em></h4>
        <h4 style="text-align: center" ><em><b>Drop Your Feedback here <a href = "mailto: xxx@gmail.com">xxx</a></b></em></h4>
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
