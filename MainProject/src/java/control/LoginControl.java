//
//package control;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// *
// * @author MAHESHKUMAR R
// */
//@WebServlet(name = "LoginControl", urlPatterns = {"/LoginControl"})
//public class LoginControl extends HttpServlet {
//    
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//          
//        }
//    }
//    protected void doget(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
//            
//           String user=request.getParameter("user");
//           String pass=request.getParameter("pass");
//           
//           if(user,pass))
//           {
//               RequestDispatcher rds=request.getRequestDispatcher("WelcomeCostumer.jsp");
//               rds.forward(request, response);
//           }
//           else
//           {
//               RequestDispatcher rds=request.getRequestDispatcher("LoginPage.jsp");
//               out.print("<br><br><br><br>");
//               out.print("<center>");
//               out.print("<h3 style='color: red'>Invalid credentials</h3>");
//               out.print("<center>");
//               rds.include(request, response);
//           }
//        }
//    
//    
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//    
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
