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
import javax.servlet.http.HttpSession;

/**
 *
 * @author MAHESHKUMAR R
 */
@WebServlet(name = "SessionServlet", urlPatterns = {"/SessionServlet"})
public class SessionServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
           HttpSession session = request.getSession(false); 
           String requestingPageName = request.getParameter("PageName"); 
           
            switch (requestingPageName) {
                case "ychair":
                    {
                        String selectedChair = request.getParameter("chair");
                        String noOfchairs = request.getParameter("numOfchairs");
                        session.setAttribute("selChair", selectedChair);
                        session.setAttribute("numchairs", noOfchairs);
                        RequestDispatcher dispatch = request.getRequestDispatcher("details.jsp");
                        dispatch.forward(request, response);
                        break;
                    }
                case "ybed":
                    {
                        String selectedbed = request.getParameter("bed");
                        String noOfbed = request.getParameter("numOfBed");
                        session.setAttribute("selbed", selectedbed);
                        session.setAttribute("numbed", noOfbed);
                        RequestDispatcher dispatch = request.getRequestDispatcher("Beddetails.jsp");
                        dispatch.forward(request, response);
                        break;
                    }
                case "ycupboard":
                    {
                        String selectedcupboard = request.getParameter("cupboard");
                        String noOfcupboard = request.getParameter("numOfcupboard");
                        session.setAttribute("selcupboard", selectedcupboard);
                        session.setAttribute("numcupboard", noOfcupboard);
                        RequestDispatcher dispatch = request.getRequestDispatcher("cupboarddetails.jsp");
                        dispatch.forward(request, response);
                        break;
                    }
                default:
                    {
                        RequestDispatcher dispatch = request.getRequestDispatcher("Error.jsp");
                        dispatch.forward(request, response);
                        break;
                    }
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
