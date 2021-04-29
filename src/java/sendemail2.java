import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "sendemail2", urlPatterns = {"/sendemail2"})
public class sendemail2 extends HttpServlet {
    String name,email, time,location,date,user;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        user = request.getParameter("username");
        name = request.getParameter("name");
        email = request.getParameter("email");
        time = request.getParameter("time");
        date = request.getParameter("date");
        location = request.getParameter("location");
        final String username = "spicevilla04@gmail.com";
        final String password = "@spicevilla";
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            MimeBodyPart textPart = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            String final_Text = "Hello " + name + "\n" + "Thank You for booking your table at Spicevilla."+ "\n" + "Reservation Details:" + "\n"  + "____________________________________________________" +"\n\n" + "Name: " + name + "\n" + "Email: " + email + "\n" + "Location: " + location + "\n" + "Date: " + date + "\n" + " Time: " + time + "\n" + "____________________________________________________";
            textPart.setText(final_Text);
            multipart.addBodyPart(textPart);
            message.setContent(multipart);
            message.setSubject("SpiceVilla Booking"); 
            Transport.send(message);
      
            response.sendRedirect("index1.jsp?username="+user+"&email=success");
        } catch (Exception e) 
        {
            out.println(e);
        }
    }
}