package com.lazycoders.request;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");


        String senderEmail = "baapufull420@gmail.com";
        String senderPassword = "baapufull420247";


        String recipientEmail = "aryasimplex1811@gmail.com";


        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");


        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        try {

            MimeMessage messageObj = new MimeMessage(session);


            messageObj.setFrom(new InternetAddress(senderEmail));


            messageObj.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));


            messageObj.setSubject("Feedback from " + name);


            messageObj.setText("Name: " + name + "\nEmail: " + email + "\n\nMessage:\n" + message);


            Transport.send(messageObj);
            response.getWriter().println("Email sent successfully.");
        } catch (MessagingException ex) {
            response.getWriter().println("Email sending failed: " + ex.getMessage());
        }
    }
}

