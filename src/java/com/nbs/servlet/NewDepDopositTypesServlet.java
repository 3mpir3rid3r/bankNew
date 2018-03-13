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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import org.json.JSONObject;

/**
 *
 * @author mmh
 */
@WebServlet(name = "NewDepDopositTypesServlet", urlPatterns = {"/NewDepDopositTypesServlet"})
public class NewDepDopositTypesServlet extends HttpServlet {

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
            
            System.out.println("uuuuuuuuuuuuuuuuuuuu555555555hhhh");
            
            String type=request.getParameter("type");
            
            try {
                
                if(type.equals("1")){
                    
                    String v_nLonTypeID="0";
                    String v_cSysCode=request.getParameter("cSysCode");
                    String v_nLonCatID=request.getParameter("nLonCatID");
                    String v_cLonName=request.getParameter("cLonName");
                    String v_cLonNameSin=request.getParameter("cLonNameSin");
                    String v_cLonNameTamil=request.getParameter("cLonNameTamil");
                    
                    String v_nMinParticipant=request.getParameter("nMinParticipant");
                    String v_nMaxParticipant=request.getParameter("nMaxParticipant");
                    String v_nMinAge=request.getParameter("nMinAge");
                    String v_nMaxAge=request.getParameter("nMaxAge");
                    String v_nMinLonAmt=request.getParameter("nMinLonAmt");
                    String v_nMaxLonAmt=request.getParameter("nMaxLonAmt");
                    String v_nMinMonths=request.getParameter("nMinMonths");
                    String v_nMaxMonths=request.getParameter("nMaxMonths");
                    
                    String v_bMultipleAcct;
                    if(request.getParameter("bMultipleAcct")!=null){
                        if(request.getParameter("bMultipleAcct").toString().equals("on")){
                            v_bMultipleAcct="1";
                        }else{
                            v_bMultipleAcct="0";
                        }
                    }else{
                        v_bMultipleAcct="0";
                    }
                    
                    
                    String v_nCurrentInt=request.getParameter("nCurrentInt");
                    String v_nLonInterestMethodID=request.getParameter("nLonInterestMethodID");
                    String v_nIntCalMethodID=request.getParameter("nMaxMonths");/////????
                    String v_nLoanIntRoundID=request.getParameter("nMaxMonths");/////????
                    
                    
                    String v_nPenaltyIntRate=request.getParameter("nPenaltyIntRate");
                    String v_nPIntRateForID=request.getParameter("nPIntRateForID");
                    String v_nPenaltyIntCal=request.getParameter("nPenaltyIntCal");
                    String v_nPIntCalForID=request.getParameter("nPIntCalForID");
                    String v_nPenaltyIntOP1=request.getParameter("nPenaltyIntOP1");
                    String v_nPenaltyIntOP2=request.getParameter("nPenaltyIntOP2");
                    
                    
                    String v_nAcctLevelID4_LoanCapital=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_Interest=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_Postage=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_Stationary=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_ArbitrationFees=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_LawFees=request.getParameter("nPenaltyIntOP2");
                    String v_nAcctLevelID4_PenaltyInterest=request.getParameter("nPenaltyIntOP2");
                    
                    String v_cAddBy=request.getSession().getAttribute("user").toString();
                    
                    System.out.println(v_cAddBy+"    "+v_bMultipleAcct+"  cccc="+v_nLonCatID);
                    
                    
                    List in = new ArrayList();
                    
                    in.add(v_nLonTypeID);
                    in.add(v_cSysCode);
                    in.add(v_nLonCatID);
                    in.add(v_cLonName);
                    in.add(v_cLonNameSin);
                    in.add(v_cLonNameTamil);
                    
                    in.add(v_nMinParticipant);
                    in.add(v_nMaxParticipant);
                    in.add(v_nMinAge);
                    in.add(v_nMaxAge);
                    in.add(v_nMinLonAmt);
                    in.add(v_nMaxLonAmt);
                    in.add(v_nMinMonths);
                    in.add(v_nMaxMonths);
                    
                    in.add(v_bMultipleAcct);
                    in.add(v_nCurrentInt);
                    in.add(v_nLonInterestMethodID);
                    in.add(v_nIntCalMethodID);/////????
                    in.add(v_nLoanIntRoundID);/////????
                    
                    
                    in.add(v_nPenaltyIntRate);
                    in.add(v_nPIntRateForID);
                    in.add(v_nPenaltyIntCal);
                    in.add(v_nPIntCalForID);
                    in.add(v_nPenaltyIntOP1);
                    in.add(v_nPenaltyIntOP2);
                    
                    
                    in.add(v_nAcctLevelID4_LoanCapital);
                    in.add(v_nAcctLevelID4_Interest);
                    in.add(v_nAcctLevelID4_Postage);
                    in.add(v_nAcctLevelID4_Stationary);
                    in.add(v_nAcctLevelID4_ArbitrationFees);
                    in.add(v_nAcctLevelID4_LawFees);
                    in.add(v_nAcctLevelID4_PenaltyInterest);
                    
                    in.add(v_cAddBy);
                    
                    in.add(null);
                    
                    List searchMultipleResults = new Server().insertData(in, "ssp_bnk_Insert_Lon_LoanTypes", 1);

                    System.out.println("pppppppppppp    "+searchMultipleResults.get(0));
                    
                    
                    
                    
                }else if(type.equals("2")){
                    
                    String id=request.getParameter("ID");
                    
//                    JSONObject arrayObj = new JSONObject();
                    
                    
//                    arrayObj.put("name","uyyyybbbbb444444");
                    
                    
                    List in = new ArrayList();
                    in.add(id);
                    List searchMultipleResults = new Server().searchMultipleResults(in, "ssp_bnk_Insert_Lon_LoanTypes", 2);

                    
//                    out.print(arrayObj);
                    
                    
                }
                
            } catch (Exception e) {
                e.printStackTrace();
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
