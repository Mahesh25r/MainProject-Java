/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Registerval", urlPatterns = {"/Registerval"})
public class Registerval extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String np=request.getParameter("npass");
           String rp=request.getParameter("rpass");  
          
           Register res=new Register(np,rp);
            
          if(res.val())
          {
              
              RequestDispatcher rd=request.getRequestDispatcher("LoginPage.jsp");
              out.println("<br><br><br><br>");
              out.println("<center>");
              out.println("<h2 style='color: #00cccc'>Registration Successfull</h2>");
              out.println("</center>");
              rd.include(request, response);
          }
          else
          {
              RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");
              out.println("<br><br><br><br>");
              out.println("<center>");
              out.println("<h2 style='color: red'>Password Error</h2>");
              out.println("</center>");
              rd.include(request, response);
          }
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
