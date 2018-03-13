/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.servlet;

import com.nbs.worker.Server;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mmh
 */
public class insertCustomerServlet extends HttpServlet {

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

            String regex = "\\d+";
//            String regexLetter = "[a-zA-Z]+";
//            String regexLetterNumber = "[a-zA-Z0-9]*";
            List in = new ArrayList();
            String nCustomerID = request.getParameter("nCustomerID").toString(),
                    nSubSectionID = request.getSession().getAttribute("branchId").toString(),
                    nCustomerCategoryID = request.getParameter("nCustomerCategoryID"),
                    nCustomerStatusID = "1",
                    nTitleID = request.getParameter("nTitleID"),
                    cCIFNo = request.getParameter("cCIFNo"),
                    cCIFNo_Old = "",
                    cInitials = request.getParameter("cInitials"),
                    cFullName = request.getParameter("cFullName"),
                    cFullName_Ama = request.getParameter("cFullName_Ama"),
                    cLastName = request.getParameter("cLastName"),
                    cUseName = request.getParameter("cUseName"),
                    bFeMale = request.getParameter("bFeMale"),
                    nIDTypeID = "1",
                    cNICNo = request.getParameter("cNICNo"),
                    dNICIssuedDate = request.getParameter("dNICIssuedDate"),
                    dDateOfBirth = request.getParameter("dDateOfBirth"),
                    dJoineDate = request.getParameter("dJoineDate"),
                    cMotherMadName = request.getParameter("cMotherMadName"),
                    nNationalityID = request.getParameter("nNationalityID"),
                    nReligionID = request.getParameter("nReligionID"),
                    nCivilStatusID = request.getParameter("nCivilStatusID"),
                    cPAddLine1 = request.getParameter("cPAddLine1"),
                    cPAddLine2 = request.getParameter("cPAddLine2"),
                    cPAddLine3 = request.getParameter("cPAddLine3"),
                    cPAddLine4 = request.getParameter("cPAddLine4"),
                    cBAddLine1 = request.getParameter("cBAddLine1"),
                    cBAddLine2 = request.getParameter("cBAddLine2"),
                    cBAddLine3 = request.getParameter("cBAddLine3"),
                    cBAddLine4 = request.getParameter("cBAddLine4"),
                    cPTelNo1 = request.getParameter("cPTelNo1"),
                    cPTelNo2 = "",
                    cBTelNo1 = request.getParameter("cBTelNo1"),
                    cBTelNo2 = "",
                    cPEmail = request.getParameter("cPEmail"),
                    cBEmail = request.getParameter("cBEmail"),
                    cMemberShipNo = request.getParameter("cMemberShipNo"),
                    dMemberShipDate = request.getParameter("dMemberShipDate"),
                    nMemAreaID = request.getParameter("nMemAreaID"),
                    nMemAreaGroupID = request.getParameter("nMemAreaGroupID"),
                    nMemStatusID = request.getParameter("nMemStatusID"),
                    nMemPositionID = request.getParameter("nMemPositionID"),
                    nMemberShipFee = request.getParameter("nMemberShipFee"),
                    cPictureFileName = request.getParameter("cPictureFileName"),
                    cSignatureFileName = request.getParameter("cSignatureFileName"),
                    cSigPath2 = request.getParameter("cSigPath2"),
                    cSigPath3 = request.getParameter("cSigPath3"),
                    cUserName = request.getSession().getAttribute("user").toString();

            if (!nCustomerID.matches(regex)
                    && !nSubSectionID.matches(regex)
                    && !nCustomerCategoryID.matches(regex)
                    && !nCustomerStatusID.matches(regex)
                    && !nTitleID.matches(regex)
                    && cCIFNo.matches(regex)
                    && cCIFNo_Old.matches(regex)
                    && cInitials.matches(regex)
                    && cFullName.matches(regex)
                    && cFullName_Ama.matches(regex)
                    && cLastName.matches(regex)
                    && cUseName.matches(regex)
                    && !bFeMale.matches(regex)
                    && !nIDTypeID.matches(regex)
                    && cNICNo.matches(regex)
                    && cMotherMadName.matches(regex)
                    && !nNationalityID.matches(regex)
                    && !nReligionID.matches(regex)
                    && nCivilStatusID.matches(regex)
                    && cPAddLine1.matches(regex)
                    && cPAddLine2.matches(regex)
                    && cPAddLine3.matches(regex)
                    && cPAddLine4.matches(regex)
                    && cBAddLine1.matches(regex)
                    && cBAddLine2.matches(regex)
                    && cBAddLine3.matches(regex)
                    && cBAddLine4.matches(regex)
                    && !cPTelNo1.matches(regex)
                    && !cPTelNo2.matches(regex)
                    && !cBTelNo1.matches(regex)
                    && !cBTelNo2.matches(regex)
                    && !cMemberShipNo.matches(regex)
                    && !nMemAreaID.matches(regex)
                    && !nMemAreaGroupID.matches(regex)
                    && !nMemStatusID.matches(regex)
                    && !nMemPositionID.matches(regex)
                    && !nMemberShipFee.matches(regex)
                    && cPictureFileName.matches(regex)
                    && cSignatureFileName.matches(regex)
                    && cSigPath2.matches(regex)
                    && cSigPath3.matches(regex)
                    && cUserName.matches(regex)) {
                out.write("error-0");
            } else {
                in.add(nCustomerID);
                in.add(nSubSectionID);
                in.add(nCustomerCategoryID);
                in.add(nCustomerStatusID);
                in.add(nTitleID);
                in.add(cCIFNo);
                in.add(cCIFNo_Old);
                in.add(cInitials);
                in.add(cFullName);
                in.add(cFullName_Ama);
                in.add(cLastName);
                in.add(cUseName);
                in.add(bFeMale);
                in.add(nIDTypeID);
                in.add(cNICNo);
                in.add(dNICIssuedDate);
                in.add(dDateOfBirth);
                in.add(dJoineDate);
                in.add(cMotherMadName);
                in.add(nNationalityID);
                in.add(nReligionID);
                in.add(nCivilStatusID);
                in.add(cPAddLine1);
                in.add(cPAddLine2);
                in.add(cPAddLine3);
                in.add(cPAddLine4);
                in.add(cBAddLine1);
                in.add(cBAddLine2);
                in.add(cBAddLine3);
                in.add(cBAddLine4);
                in.add(cPTelNo1);
                in.add(cPTelNo2);
                in.add(cBTelNo1);
                in.add(cBTelNo2);
                in.add(cPEmail);
                in.add(cBEmail);
                in.add(cMemberShipNo);
                in.add(dMemberShipDate);
                in.add(nMemAreaID);
                in.add(nMemAreaGroupID);
                in.add(nMemStatusID);
                in.add(nMemPositionID);
                in.add(nMemberShipFee);
                in.add(cPictureFileName);
                in.add(cSignatureFileName);
                in.add(cSigPath2);
                in.add(cSigPath3);
                in.add(cUserName);
                in.add("");

                List insertData = new Server().insertData(in, "ssp_bnk_Insert_CustomerMaster", 1);

                out.write("done-" + insertData.get(0));
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
