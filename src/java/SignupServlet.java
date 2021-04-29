import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/jsp");
        PrintWriter out = response.getWriter();
        String name= request.getParameter("name");
        String username= request.getParameter("username");
        String email=request.getParameter("email");
        int age= Integer.parseInt(request.getParameter("age"));
        String password= request.getParameter("password1");
        String cpassword= request.getParameter("password2");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
            PreparedStatement us = con.prepareStatement("select * from user where username=?");
            us.setString(1, username);
            ResultSet r = us.executeQuery();
            PreparedStatement es = con.prepareStatement("select * from user where email=?");
            es.setString(1, email);
            ResultSet e = es.executeQuery();
            if(r.next()){
                request.setAttribute("error", "Username already in use");
                RequestDispatcher rd= request.getRequestDispatcher("signup.jsp");
                rd.forward(request,response);
                us.close();
                }
            else if(e.next()){
                request.setAttribute("error", "Email already in use");
                RequestDispatcher rd= request.getRequestDispatcher("signup.jsp");
                rd.forward(request,response);
                es.close();
            }
            else
            {
                if(password.equals(cpassword))
                {
                    PreparedStatement ps =  con.prepareStatement("insert into user(name,email,age,username,password) values(?,?,?,?,?)");
                    ps.setString(1, name);
                    ps.setString(2, email);
                    ps.setInt(3, age);
                    ps.setString(4, username);
                    ps.setString(5,password);
                    ps.execute();
                    HttpSession session=request.getSession();
                    session.setAttribute("username", username);
                    response.sendRedirect("index1.jsp?username="+username+"&email=null");
                    ps.close();
                }
                else
                {
                    request.setAttribute("error", "Passwords Dont Match");
                    RequestDispatcher rd= request.getRequestDispatcher("signup.jsp");
                    rd.forward(request,response);
                }
            }
            con.close();   
        }
        catch(Exception e)
        {
            System.out.print(e.getMessage());
        }      
    }
}
