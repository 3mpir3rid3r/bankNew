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
public class insertLoanServlet extends HttpServlet {

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
            List in = new ArrayList();
            String nLonMFID = "0";
            if (request.getSession().getAttribute("loan") != null) {
                nLonMFID = request.getSession().getAttribute("loan").toString();
            }
            String nBankBranchID = request.getSession().getAttribute("branchId").toString(),
                    nLonTypeID = request.getParameter("nLonTypeID"),
                    nCustomerID = request.getParameter("nCustomerID"),
                    nLonDescriptionID = request.getParameter("nLonDescriptionID"),
                    nLonFundSourceID = request.getParameter("nLonFundSourceID"),
                    bJoint = request.getParameter("bJoint"),
                    nLonStatusID = request.getParameter("nLonStatusID"),
                    cLonAccountNo = request.getParameter("cLonAccountNo"),
                    nLedgerBookNo = request.getParameter("nLedgerBookNo"),
                    cSerialNo = request.getParameter("cSerialNo"),
                    dApplyedDate = request.getParameter("dApplyedDate"),
                    dApprovedDate = request.getParameter("dApprovedDate"),
                    nApplyedAmount = request.getParameter("nApplyedAmount").replaceAll(",", ""),
                    nApprovedAmount = request.getParameter("nApprovedAmount").replaceAll(",", ""),
                    nInsuredAmount = request.getParameter("nInsuredAmount").replaceAll(",", ""),
                    nReservedAmount = request.getParameter("nReservedAmount").replaceAll(",", ""),
                    nEffectiveInt = request.getParameter("nEffectiveInt").replaceAll(",", ""),
                    nPanaltyInt = request.getParameter("nPanaltyInt").replaceAll(",", ""),
                    cBoardApprovalNo = request.getParameter("cBoardApprovalNo"),
                    dBoardApprovalDate = request.getParameter("dBoardApprovalDate"),
                    nLonPeriodTypeID = request.getParameter("nLonPeriodTypeID"),
                    nLonPeriod = request.getParameter("nLonPeriod"),
                    nLonPaymentFreeTypeID = request.getParameter("nLonPaymentFreeTypeID"),
                    nLonPaymentFreeTime = request.getParameter("nLonPaymentFreeTime"),
                    dFirstInstallmentDate = request.getParameter("dFirstInstallmentDate"),
                    dMaturityDate = request.getParameter("dMaturityDate"),
                    nLonDeductTypeID = request.getParameter("nLonDeductTypeID"),
                    nLonGrpID = request.getParameter("nLonGrpID"),
                    nFixedInterestValue = request.getParameter("nFixedInterestValue").replaceAll(",", ""),
                    nLonInstallmentPayTypeID = request.getParameter("nLonInstallmentPayTypeID"),
                    nLonInstallmentPayTime = request.getParameter("nLonInstallmentPayTime"),
                    nInstallmentAmount = request.getParameter("nInstallmentAmount").replaceAll(",", ""),
                    nInstallmentAmount_Adj = request.getParameter("nInstallmentAmountAdj").replaceAll(",", ""),
                    nInstallmentAmount_Last = request.getParameter("nInstallmentAmountLast").replaceAll(",", ""),
                    nDueDaysAfter = request.getParameter("nDueDaysAfter").replaceAll(",", ""),
                    nDeductDay = request.getParameter("nDeductDay").replaceAll(",", ""),
                    nIssuedAmount = request.getParameter("nIssuedAmount").replaceAll(",", ""),
                    nBalanceToIssue = request.getParameter("nBalanceToIssue").replaceAll(",", ""),
                    nTotRcvCapital = request.getParameter("nTotRecvCapital").replaceAll(",", ""),
                    nTotRecv_Installment = request.getParameter("nTotRecvInstallment").replaceAll(",", ""),
                    nShouldRecv_Capital = request.getParameter("nShouldRecvCapital").replaceAll(",", ""),
                    nShouldRecv_Installment = request.getParameter("nShouldRecvInstallment").replaceAll(",", ""),
                    nTotRecv_Interest = request.getParameter("nTotRecvInterest").replaceAll(",", ""),
                    nShouldRecv_Interest = request.getParameter("nShouldRecvInterest").replaceAll(",", ""),
                    nLonBalance_Amount = request.getParameter("nLonBalanceAmount").replaceAll(",", ""),
                    nLonBalance_Installment = request.getParameter("nLonBalanceInstallment").replaceAll(",", ""),
                    dLastCapitalPayDate = request.getParameter("dLastCapitalPayDate"),
                    dLastIntPayDate = request.getParameter("dLastIntPayDate"),
                    nDueBalance = request.getParameter("nToDateDueCapital").replaceAll(",", ""),
                    nDueBalance_Inst = request.getParameter("nToDateDueInstallment").replaceAll(",", ""),
                    nDueInterestBalance = request.getParameter("nToDateIntValueRound").replaceAll(",", ""),
                    nUptodateInt = request.getParameter("nToDateTotIntersest").replaceAll(",", "");

            if (!nLonMFID.matches(regex)
                    && !nBankBranchID.matches(regex)
                    && !nLonTypeID.matches(regex)
                    && !nCustomerID.matches(regex)
                    && !nLonDescriptionID.matches(regex)
                    && !nLonFundSourceID.matches(regex)
                    && !nLonStatusID.matches(regex)
                    && cLonAccountNo.matches(regex)
                    && !nLedgerBookNo.matches(regex)
                    && cSerialNo.matches(regex)
                    && !nApplyedAmount.matches(regex)
                    && !nApprovedAmount.matches(regex)
                    && !nInsuredAmount.matches(regex)
                    && !nReservedAmount.matches(regex)
                    && !nEffectiveInt.matches(regex)
                    && !nPanaltyInt.matches(regex)
                    && cBoardApprovalNo.matches(regex)
                    && !nLonPeriodTypeID.matches(regex)
                    && !nLonPeriod.matches(regex)
                    && !nLonPaymentFreeTypeID.matches(regex)
                    && !nLonPaymentFreeTime.matches(regex)
                    && !nLonDeductTypeID.matches(regex)
                    && !nLonGrpID.matches(regex)
                    && !nFixedInterestValue.matches(regex)
                    && !nLonInstallmentPayTypeID.matches(regex)
                    && !nLonInstallmentPayTime.matches(regex)
                    && !nInstallmentAmount.matches(regex)
                    && !nInstallmentAmount_Adj.matches(regex)
                    && !nInstallmentAmount_Last.matches(regex)
                    && !nDueDaysAfter.matches(regex)
                    && !nDeductDay.matches(regex)
                    && !nIssuedAmount.matches(regex)
                    && !nBalanceToIssue.matches(regex)
                    && !nTotRcvCapital.matches(regex)
                    && !nTotRecv_Installment.matches(regex)
                    && !nShouldRecv_Capital.matches(regex)
                    && !nShouldRecv_Installment.matches(regex)
                    && !nTotRecv_Interest.matches(regex)
                    && !nShouldRecv_Interest.matches(regex)
                    && !nLonBalance_Amount.matches(regex)
                    && !nLonBalance_Installment.matches(regex)
                    && !nDueBalance.matches(regex)
                    && !nDueBalance_Inst.matches(regex)
                    && !nDueInterestBalance.matches(regex)
                    && !nUptodateInt.matches(regex)) {
                out.write("error-0");
            } else {
                in.add(nLonMFID);
                in.add(nBankBranchID);
                in.add(nCustomerID);
                in.add(nLonTypeID);
                in.add(nLonDescriptionID);
                in.add(nLonFundSourceID);
                in.add(bJoint);
                in.add(nLonStatusID);
                in.add(cLonAccountNo);
                in.add(nLedgerBookNo);
                in.add(cSerialNo);
                in.add(dApplyedDate);
                in.add(dApprovedDate);
                in.add(nApplyedAmount);
                in.add(nApprovedAmount);
                in.add(nInsuredAmount);
                in.add(nReservedAmount);
                in.add(nEffectiveInt);
                in.add(nPanaltyInt);
                in.add(cBoardApprovalNo);
                in.add(dBoardApprovalDate);
                in.add(nLonPeriodTypeID);
                in.add(nLonPeriod);
                in.add(nLonPaymentFreeTypeID);
                in.add(nLonPaymentFreeTime);
                in.add(dFirstInstallmentDate);
                in.add(dMaturityDate);
                in.add(nLonDeductTypeID);
                in.add(nLonGrpID);
                in.add(nFixedInterestValue);
                in.add(nLonInstallmentPayTypeID);
                in.add(nLonInstallmentPayTime);
                in.add(nInstallmentAmount);
                in.add(nInstallmentAmount_Adj);
                in.add(nInstallmentAmount_Last);
                in.add(nDueDaysAfter);
                in.add(nDeductDay);
                in.add(nIssuedAmount);
                in.add(nBalanceToIssue);
                in.add(nTotRcvCapital);
                in.add(nTotRecv_Installment);
                in.add(nShouldRecv_Capital);
                in.add(nShouldRecv_Installment);
                in.add(nTotRecv_Interest);
                in.add(nShouldRecv_Interest);
                in.add(nLonBalance_Amount);
                in.add(nLonBalance_Installment);
                in.add(dLastCapitalPayDate);
                in.add(dLastIntPayDate);
                in.add(nDueBalance);
                in.add(nDueBalance_Inst);
                in.add(nDueInterestBalance);
                in.add(nUptodateInt);
                in.add("");

                List insertData = new Server().insertData(in, "ssp_bnk_Insert_Lon_Loan_Master", 1);
                request.getSession().setAttribute("loan", insertData.get(0));

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
