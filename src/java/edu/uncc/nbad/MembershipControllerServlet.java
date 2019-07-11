/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uncc.nbad;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bobbysmedley
 */
public class MembershipControllerServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String value = request.getParameter("action");
        if(value != null && value.equals("signup"))
        {
        getServletContext().getRequestDispatcher("/signup.jsp").forward(request,response);
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String country = request.getParameter("country");
        String zip = request.getParameter("zip");
        String email = request.getParameter("email");
        String sex = request.getParameter("male") != null ? request.getParameter("male") : request.getParameter("female");
        String english = request.getParameter("english");
        String german = request.getParameter("german");
        String french = request.getParameter("french");
        String about = request.getParameter("about");
        
        if (!(name.equals(username.equals(password.equals(address.equals(country.equals(zip.equals(
        email.equals(sex.equals(about.equals(null)))))))))) 
                && !(english.equals(german.equals(french.equals(null))))
                ){
            PrintWriter out = response.getWriter();
            out.println("name: " + name);
            out.println("username: "+ username);
            out.println("password: "+ password);
            out.println("address: "+ address);
            out.println("country: "+ country);
            out.println("zip: "+ zip);
            out.println("email: "+ email);
            out.println("sex: "+ sex);
            if (english != null){
            out.println("lang: " + english);
            }
            if (german != null){
            out.println("lang: " + german);
            }
            if (french != null){
            out.println("lang: " + french);
            }
            out.println("description: " + about);

        }
        }
        else
        {
            try (PrintWriter out = response.getWriter()) {
            out.println("<p>Error! The action parameter is required, only signup value is valid</p>");
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
