/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Client;
import modelDAO.ClientDAO;
import modelDAO.ClientDAOImpl;

/**
 *
 * @author Dell
 */
public class SigninServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SigninServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SigninServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Client client = new Client();
        client.setUsername(request.getParameter("username"));
        client.setName(request.getParameter("hoten"));
        client.setAddress(request.getParameter("address"));
        client.setMail(request.getParameter("email"));
        client.setPhone(request.getParameter("phone"));
        client.setPassword(encryption(request.getParameter("pass")));
        System.out.println(request.getParameter("pass"));
        System.out.println(request.getParameter("cfpass"));
        try {
            new ClientDAOImpl().signin(client);
            response.sendRedirect("/dnnltw/?controller=login_signin");
        } catch (Exception ex) {
            Logger.getLogger(SigninServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
    
    public static String encryption(String str) {
       byte[] defaultBytes = str.getBytes();
       try {
           MessageDigest algorithm = MessageDigest.getInstance("MD5");
           algorithm.reset();
           algorithm.update(defaultBytes);
           byte messageDigest[] = algorithm.digest();
           StringBuffer hexString = new StringBuffer();
           for (int i = 0; i < messageDigest.length; i++) {
              String hex = Integer.toHexString(0xFF & messageDigest[i]);
              if (hex.length() == 1) {
                  hexString.append('0');
              }
              hexString.append(hex);
          }
          str = hexString + "";
       } catch (NoSuchAlgorithmException e) {
          e.printStackTrace();
       }
       return str;
    }
}
