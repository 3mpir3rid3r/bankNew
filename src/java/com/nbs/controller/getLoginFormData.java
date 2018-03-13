/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.controller;

import com.nbs.dao.loginUser;
import com.nbs.other.SendMail;
import com.nbs.worker.Server;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author mmh
 */
public class getLoginFormData {

    public boolean login(String userName, String password, HttpServletRequest request) {

        loginUser user = new loginUser();

        List in = new ArrayList();
        List out;

        in.add(userName);
        in.add(password);

        List searchMultipleResults = new Server().searchMultipleResults(in, "ssp_bnk_gen_UserLoging", 2);

        if (searchMultipleResults != null) {
            for (int i = 0; i < searchMultipleResults.size(); i++) {
                out = (List) searchMultipleResults.get(i);
                user.setUser(out.get(0).toString());
                user.setType(out.get(1).toString());
                request.getSession().setAttribute("user", user.getUser());
                request.getSession().setAttribute("type", user.getType());
                return true;
            }
        }
        return false;
    }

    public boolean getEmail(String userId) {

        String email = "";
        String password = "";
        boolean sendMail = false;

        List in = new ArrayList();
        List out = new ArrayList<>();

        in.add(userId);

        List searchMultipleResults = new Server().searchMultipleResults(in, "ssp_bnk_get_UserEmail", 2);

        if (searchMultipleResults != null) {
            for (int i = 0; i < searchMultipleResults.size(); i++) {
                out = (List) searchMultipleResults.get(i);
                email = out.get(0).toString();
                password = out.get(1).toString();
                sendMail = new SendMail().sendMail(email, password);
                return sendMail;
            }
        }
        return sendMail;
    }

    public boolean setCookies(HttpServletRequest request) {
        System.out.println("AWA");
        List in = new ArrayList();
        in.add(1);
        in.add(0);
        List<List<Object>> branchList = new Server().searchMultipleResults(in, "ssp_bnk_LoadCombo_ViewBranch", 2);
        if (branchList != null) {
            request.getSession().setAttribute("branch", branchList);
            return true;
        }
        return false;
    }
}
