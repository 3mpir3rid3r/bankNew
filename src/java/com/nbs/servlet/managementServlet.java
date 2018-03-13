/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.servlet;

import com.nbs.controller.referenceData;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mmh
 */
public class managementServlet extends HttpServlet {

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

            referenceData referencedata = new referenceData();

            String id = request.getParameter("id");
            String number = request.getParameter("number");
            String catagory = request.getParameter("catagory");
            String code = request.getParameter("code");
            if (number == null || number.trim().isEmpty()) {
                number = "0";
            }
            if (catagory == null || catagory.trim().isEmpty() || code == null || code.trim().isEmpty()) {
                out.print("සමාවන්න,අයිතමය ඇතුලත් කල නොහැක...!");
                return;
            }
            List insertReferenceData = referencedata.insertReferenceData(id, number, catagory, code);
            if (0 < Integer.parseInt(insertReferenceData.get(0).toString())) {
                if (Integer.parseInt(number) > 0) {
                    out.print("අයිතමය යාවත්කාලීන කලා...!");
                } else {
                    out.print("අයිතමය ඇතුලත් කලා...!");
                }
            } else {
                out.print("සමාවන්න,අයිතමය ඇතුලත් කල නොහැක...!");
            }

            if (request.getParameter("delete") != null) {
                String[] delValue = request.getParameter("delete").split(",");
                for (String delValue1 : delValue) {
                    System.out.println(delValue1);
                }
                out.print("aaaa");
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
