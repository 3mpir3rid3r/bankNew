/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.worker;

import com.nbs.connection.DB;
import com.nbs.connection.ImageDB;
import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Server {

    public List<List<Object>> searchMultipleResults(List<Object> inputs, String storedProceedure, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List search = null;
        try {
            search = DB.doExecute(inputs, storedProceedure, resultCount, 2);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }

        return search;
    }

    public List<Object> searchSingleResult(List<Object> inputs, String storedProceedure, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List result = null;
        try {
            result = DB.doExecute(inputs, storedProceedure, resultCount, 1);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    public List<Object> insertData(List<Object> inputs, String storedProceedure, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List<Object> result = null;
        try {
            result = DB.doExecute(inputs, storedProceedure, resultCount, 3);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    public List<Object> updateData(List<Object> inputs, String storedProceedure, int resultCount) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Object> deleteData(List<Object> inputs, String storedProceedure, int resultCount) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<Object> searchResultsWithOutputs(List<Object> inputs, String storedProceedure, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List result = null;
        try {
            result = DB.doExecute(inputs, storedProceedure, resultCount, 4);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;
    }

    public List<Object> insertImage(List<Object> inputs, String storedProceedure, int imagePosition, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List<Object> out = null;
        try {
            out = ImageDB.saveImage(inputs, storedProceedure, imagePosition, resultCount);

        } catch (FileNotFoundException | ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }
        return out;
    }

    public List<Object> getImage(List<Object> inputs, String storedProceedure, int resultCount) {

        System.out.println(storedProceedure + " - " + inputs);
        /*bnk-ref-0077 {*/
        getClassName(storedProceedure, inputs);
        /*bnk-ref-0077 }*/

        List<Object> out = null;
        try {
            out = ImageDB.retrieveImage(inputs, storedProceedure, resultCount);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }

        return out;
    }

    public HashMap getResultSet(String sql) {

        System.out.println(sql);

        HashMap rs = null;
        try {
            rs = DB.getResultSet(sql);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Server.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public HashMap getConnection() throws ClassNotFoundException, SQLException {
        HashMap<Object, Object> map = new HashMap<>();
        map.put("Connection", DB.giveConnection());
        return map;
    }

    /*bnk-ref-0077 {*/
    private void getClassName(String ssp, List inputs) {
        try {
            File file = new File(System.getProperty("user.home") + "/temp_class_name.txt");
            Scanner scan = new Scanner(file);
            if (scan.hasNextLine()) {
                String line = scan.nextLine();

                String table = line.split(",")[0];
                String class_ = line.split(",")[1];

                DB.giveConnection().createStatement().execute("INSERT INTO " + table + " (cClassName, cSSP, cInputs)\n"
                        + "SELECT * FROM (SELECT '" + class_ + "', '" + ssp + "', '" + Arrays.toString(inputs.toArray()) + "') AS tmp\n"
                        + "WHERE NOT EXISTS (\n"
                        + "    SELECT cSSP FROM " + table + " WHERE cClassName='" + class_ + "' AND cSSP = '" + ssp + "'\n"
                        + ") LIMIT 1;");
            }
            file.delete();
        } catch (FileNotFoundException | ClassNotFoundException | SQLException ex) {

        }
    }
    /*bnk-ref-0077 }*/
}
