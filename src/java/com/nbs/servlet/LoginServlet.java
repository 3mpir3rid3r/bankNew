/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.servlet;

import com.nbs.controller.getLoginFormData;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mmh
 */
public class LoginServlet extends HttpServlet {

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
        RequestDispatcher rd;
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            boolean foundCookieId = false, foundCookieName = false;
            String userName = request.getParameter("form-username");
            String password = request.getParameter("form-password");

            Cookie cookie[] = request.getCookies();
            if (cookie != null) {
                for (int i = 0; i < cookie.length; i++) {
                    Cookie cookie1 = cookie[i];
                    if (cookie1.getName().equals("branchId")) {
                        request.getSession().setAttribute("branchId", URLDecoder.decode(cookie1.getValue(), "UTF-8"));
                        foundCookieId = true;
                    }
                    if (cookie1.getName().equals("branchName")) {
                        request.getSession().setAttribute("branchName", URLDecoder.decode(cookie1.getValue(), "UTF-8"));
                        foundCookieName = true;
                    }
                }
            }
            if (!foundCookieId && !foundCookieName) {
                boolean setCookies = new getLoginFormData().setCookies(request);
                if (setCookies) {
                    out.print("setCook.jsp");
                } else {
                    out.print("setCook.jsp?error=1");
                }
            } else {
                try {
                    boolean loginhelp = new getLoginFormData().login(userName, password, request);
                    if (loginhelp) {
                        out.print("main.jsp");
                    } else {
                        out.print("index.jsp?error=1");
                    }
                } catch (Exception e) {
                    System.out.println(e);
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
