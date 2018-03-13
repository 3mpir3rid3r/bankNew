/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.controller;

import com.nbs.worker.Server;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mmh
 */
public class referenceData {

    Server server = new Server();

    public List viewReferenceData(int type, int outPut) {
        List in = new ArrayList<>();
        in.add(type);
        List searchMultipleResults = server.searchMultipleResults(in, "ssp_bnk_LoadCombo_ReferanceFile", outPut);
        return searchMultipleResults;
    }

    public List insertReferenceData(String id, String number, String catagory, String code) {
        List in = new ArrayList<>();
        in.add(id);
        in.add(number);
        in.add(catagory);
        in.add(code);
        in.add("@A");
        List insertData = server.insertData(in, "ssp_bnk_Insert_ReferanceData", 1);
        return insertData;

    }
}
