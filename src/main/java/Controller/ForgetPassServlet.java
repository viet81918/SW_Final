/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller;

import static Common.CheckValid.CheckEmail;
import Model.Users;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import jakarta.mail.Message;

import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Date;
import jakarta.mail.Authenticator;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet(name="/ForgetPassServlet", urlPatterns={"/ForgetPassServlet"})
public class ForgetPassServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
                
                String emailPattern = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@gmail\\.com$";
                if (email.isEmpty() || !email.matches(emailPattern)) {
                    request.setAttribute("mess", "Invalid information!!!!");                 
                    //response.sendRedirect("SignUp.jsp");
                    request.getRequestDispatcher("ForgetPass.jsp").forward(request, response);
                }
                else
                {
                        Users a = CheckEmail(email);
                
                        int codeValue = 0;
                        HttpSession mySession = request.getSession();
                        if(a == null) {
                            request.setAttribute("mess", "email khong ton tai");
                            request.getRequestDispatcher("ForgetPass.jsp").forward(request, response);                   
                        }               		
                        else{
			// sending code
                            Random rand = new Random();
                            codeValue = rand.nextInt(1255650);


                            final String from = "thienle2105@gmail.com";
                            final String password ="qgdv omlp bkqz jryd";
                            // Get the session object
                            Properties props = new Properties();
                            props.put("mail.smtp.host","smtp.gmail.com");
                            props.put("mail.smtp.port","587");
                            props.put("mail.smtp.auth","true");
                            props.put("mail.smtp.starttls.enable","true");
                            Authenticator auth = new Authenticator() {
                                    @Override
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                        return new PasswordAuthentication(from, password);
                                    }
                                };
                            // compose message
                            Session mailSession  = Session.getInstance(props, auth);
                            final String to = email;// change accordingly
                            MimeMessage message = new MimeMessage(mailSession );
                            try {				
                                    message.setFrom(from);// change accordingly
                                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to,false));
                                    message.setSubject("Hello");
                                    message.setSentDate(new Date());
                                    message.setText("your code is: " + codeValue);
                                    // send message
                                    Transport.send(message);
                                    System.out.println("message sent successfully");
                            }
                            catch (Exception e) {
                                     try (PrintWriter out = response.getWriter()) {
                                            /* TODO output your page here. You may use following sample code. */
                                            out.println("<!DOCTYPE html>");
                                            out.println("<html>");
                                            out.println("<head>");
                                            out.println("<title>Servlet LoginServlet</title>");  
                                            out.println("</head>");
                                            out.println("<body>");
                                            out.println("<h1>Error at " + e.getMessage() + "</h1>");
                                            out.println("</body>");
                                            out.println("</html>");
                                        }
                            }                       
                            request.setAttribute("message","Code is sent to your email id");
                            //request.setAttribute("connection", con);
                            mySession.setAttribute("code",codeValue); 
                            mySession.setAttribute("email",email); 
                            request.getRequestDispatcher("EnterCode.jsp").forward(request, response);
                            //request.setAttribute("status", "success");
                        }
		
                }
                
	}

}
