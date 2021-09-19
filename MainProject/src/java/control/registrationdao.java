package control;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MAHESHKUMAR R
 */
@WebServlet(name = "registrationdao", urlPatterns = {"/registrationdao"})
public class registrationdao extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    
  //  Statement st=null;
  //  String mg="";
    
    String uname=request.getParameter("username");
    String email=request.getParameter("email");
    String npass=request.getParameter("npass");
    String rpass=request.getParameter("rpass");
    String address=request.getParameter("Address");
    String state=request.getParameter("State");
    String phone=request.getParameter("phone");
    
      try {
             Connection con;
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mahesh","Mahesh","12345");
     
             System.out.println("connected");
           
             String sql = "insert into MAHESH.REGISTRATION(uname,email,npass,rpass,address,state,phone) values(?,?,?,?,?,?,?)";
             PreparedStatement ps=con.prepareStatement(sql);
             
             ps.setString(1, uname);
             ps.setString(2, email);
             ps.setString(3, npass);
             ps.setString(4, rpass);
             ps.setString(5, address);
             ps.setString(6, state);
             ps.setString(7, phone);
             
             if(npass.equals(rpass))
             {
             ps.executeUpdate();
             RequestDispatcher rds=request.getRequestDispatcher("LoginPage.jsp");
             rds.forward(request, response);
             }
             else{
             RequestDispatcher rds=request.getRequestDispatcher("Error.jsp");
             rds.include(request, response);
             }
                 
    }
      catch(ClassNotFoundException | SQLException e){
           out.println("Error in DB : "+e.getMessage());
      } 
      }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    }    
