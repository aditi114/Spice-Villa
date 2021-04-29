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

@WebServlet(urlPatterns = {"/LoginServlet"})
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/jsp;charset=UTF-8");
        PrintWriter out=response.getWriter();
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con= (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
            Statement stm= con.createStatement();
            ResultSet rs= stm.executeQuery("select * from user where username='"+username+"' and password='"+password+"'");
            if(rs.next())
            {
                HttpSession session=request.getSession();
                session.setAttribute("username", username);
                response.sendRedirect("index1.jsp?username="+username+"&email=null");
            }
            else
            {
                request.setAttribute("error", "Wrong Username or password");
                RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
                rd.forward(request,response);
            }
            con.close();
        }
        catch(Exception e)
        {
            System.out.print(e.getMessage());
        }
    }
}
