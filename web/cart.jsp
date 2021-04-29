<%@page import="java.sql.*"%>
<%
    String action = request.getParameter("action");
    String username = request.getParameter("username");
    if(action.equals("soup1"))
    {
        String item = "Tomato Soup";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 150;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delTomato Soup"))
    {
        String item = "Tomato Soup";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("soup2"))
    {
        String item = "Manchow Soup";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 180;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delManchow Soup"))
    {
        String item = "Manchow Soup";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("chinese1"))
    {
        String item = "Paneer Chilli";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 225;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delPaneer Chilli"))
    {
        String item = "Paneer Chilli";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("chinese2"))
    {
        String item = "Triple Schezwan Rice";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 200;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delTriple Schezwan Rice"))
    {
        String item = "Triple Schezwan Rice";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("pizza1"))
    {
        String item = "English Retreat Pizza";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 350;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delEnglish Retreat Pizza"))
    {
        String item = "English Retreat Pizza";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("tacos1"))
    {
        String item = "Fiesta Tacos";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 100;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delFiesta Tacos"))
    {
        String item = "Fiesta Tacos";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("burrito1"))
    {
        String item = "7-Layer Burrito";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 225;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("del7-Layer Burrito"))
    {
        String item = "7-Layer Burrito";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("pasta1"))
    {
        String item = "Fusilli Pink Sauce Pasta";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 300;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delFusilli Pink Sauce Pasta"))
    {
        String item = "Fusilli Pink Sauce Pasta";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("lasagne1"))
    {
        String item = "Corn and Pepper Lasagne";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 300;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delCorn and Pepper Lasagne"))
    {
        String item = "Corn and Pepper Lasagne";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
    if(action.equals("quesadilla1"))
    {
        String item = "Bombay Quesadilla";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        Statement stm= con.createStatement();
        ResultSet rs= stm.executeQuery("select * from cart where username='"+username+"'and item='"+item+"'");
        if(rs.next())
        {
            int quantity = rs.getInt("quantity");
            int price = rs.getInt("price");
            int new_quantity,new_sub_total;
            new_quantity = quantity + 1;
            new_sub_total = price*new_quantity;
            PreparedStatement ps = con.prepareStatement("update cart set quantity='"+new_quantity+"',sub_total='"+new_sub_total+"' where username='"+username+"'and item='"+item+"'");
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
        else
        {
            int quantity = 1;
            int price = 225;
            int sub_total = quantity*price;
            PreparedStatement ps =  con.prepareStatement("insert into cart(username,item,price,quantity,sub_total) values(?,?,?,?,?)");
            ps.setString(1, username);
            ps.setString(2, item);
            ps.setInt(3, price);
            ps.setInt(4, quantity);
            ps.setInt(5, sub_total);
            ps.execute();
            response.sendRedirect("order.jsp?username="+username);
        }
    }
    if(action.equals("delBombay Quesadilla"))
    {
        String item = "Bombay Quesadilla";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
        PreparedStatement ps = con.prepareStatement("delete from cart where username='"+username+"'and item='"+item+"'");
        ps.execute();
        response.sendRedirect("order.jsp?username="+username);
    }
%>
