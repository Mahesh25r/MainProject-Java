package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(name = "Logindao", urlPatterns = {"/Logindao"})
public class Logindao extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
              
        String uname=request.getParameter("user");
        String npass=request.getParameter("pass");
        
        try{
        
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Mahesh","Mahesh","12345");
        System.out.println("connected using Login page");
        String sql="select * from MAHESH.REGISTRATION where uname=? and npass=?";
        PreparedStatement ps=con.prepareStatement(sql);
        
        ps.setString(1, uname);
        ps.setString(2, npass);
        
        String unameDB="";
        String npassDB="";
        
        ResultSet rs=ps.executeQuery();
        
        if(rs.next())
        {
        unameDB=rs.getString("uname");
        npassDB=rs.getString("npass");
        
        if((uname.equals(unameDB))&&(npass.equals(npassDB))){
        
        RequestDispatcher rd=request.getRequestDispatcher("WelcomeCostumer.jsp");
        rd.forward(request, response);
        }
        }
        else{
        RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("</head>");
            out.println("<body>");
            out.println("<center>");
            out.println("<h2 style='color: red'>UserName Or Password Error</h2>");
            out.println("</center>");
            out.println("</body>");
            out.println("</html>");
       
        rd.include(request, response);
        }
        }catch(ClassNotFoundException | SQLException e){
        System.out.println("Error From Login : "+e.getMessage());
        
        }
    }
}