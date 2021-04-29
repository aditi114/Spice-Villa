<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String username = request.getParameter("username");
    String total = request.getParameter("total");
    String branch = request.getParameter("branch");
    String action = request.getParameter("action");
    long millis=System.currentTimeMillis();  
    java.sql.Date date=new java.sql.Date(millis);
    Time time = new Time(millis);
    String currentdate = date.toString();
    String currenttime = time.toString();
    String timestamp = currentdate +" "+ currenttime;
    if(action.equals("confirmorder"))
    {
        String status = "Order Confirmed";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement dc = con.prepareStatement("delete from cart where username='"+username+"'");
        dc.execute();
        PreparedStatement ps =  con.prepareStatement("insert into bill(username,amount,branch,date,status) values(?,?,?,?,?)");
        ps.setString(1, username);
        ps.setString(2, total);
        ps.setString(3, branch);
        ps.setString(4, timestamp);
        ps.setString(5, status);
        ps.execute();
        response.sendRedirect("userorders.jsp?username="+username);
    }
%>
