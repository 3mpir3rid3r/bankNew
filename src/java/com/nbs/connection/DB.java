/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.connection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author mmh
 */
public class DB {

    private static Connection c;

    /**
     *
     * @return Connetion object
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    private static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (c == null) {
            c = new JDBC().getJDBCConnection();
        }
        return c;
    }

    /**
     *
     * @param inputs Parameter inputs list
     * @param storedProceedure Stored Proceedure Name
     * @param resultCount Expected Result Count
     * @param type Search Type 1 for single result 2 for multiple results 3 for
     * insert
     * @return Data list
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    public static List doExecute(List<Object> inputs, String storedProceedure, int resultCount, int type) throws ClassNotFoundException, SQLException {
        List out = null;
        String sql = "{call " + storedProceedure + "(";
        for (Object object : inputs) {
            sql += "?,";
        }
        sql += ")}";
        sql = sql.replace(",)}", ")}");

        CallableStatement statement = getConnection().prepareCall(sql);
        for (int i = 0; i < inputs.size(); i++) {
            statement.setObject(i + 1, inputs.get(i));
        }
        switch (type) {
            case 1: {
                ResultSet rs = statement.executeQuery();
                List<Object> output = new ArrayList<>();
                while (rs.next()) {
                    for (int i = 1; i <= resultCount; i++) {
                        output.add(rs.getObject(i));
                    }
                }
                out = output;
                break;
            }
            case 2: {
                ResultSet rs = statement.executeQuery();
                ResultSetMetaData metaData = rs.getMetaData();
                System.out.println(metaData.getTableName(1));
                List<List<Object>> output = new ArrayList<>();
                while (rs.next()) {
                    List<Object> l = new ArrayList<>();
                    for (int i = 1; i <= resultCount; i++) {
                        l.add(rs.getObject(i));
                    }
                    output.add(l);
                }
                out = output;
                break;
            }
            case 3: {
                System.out.println(statement.toString());
                statement.executeQuery();
                List<Object> output = new ArrayList<>();
                for (int i = 0; i < resultCount; i++) {
                    System.out.println(statement.getObject(inputs.size() - i).toString());
                    output.add(statement.getObject(inputs.size() - i));
                }
                out = output;
                break;
            }
            case 4: {
                statement.executeQuery();
                List<Object> output = new ArrayList<>();
                for (int i = 0; i < resultCount; i++) {
                    output.add(statement.getObject(inputs.size() - i));
                }
                out = output;
                break;
            }
            default:
                break;
        }
        System.gc();
        return out;
    }

    public static HashMap getResultSet(String sql) throws ClassNotFoundException, SQLException {
        ResultSet rs = getConnection().createStatement().executeQuery(sql);
        HashMap results = new HashMap();
        ResultSetMetaData metaData = rs.getMetaData();
//        for (int i = 1; i <= metaData.getColumnCount(); i++) {
//            rs.next();
//            results.put(metaData.getColumnLabel(i), rs.getString(i));
//        }
        int i = 1;
        rs.next();
        while (i <= metaData.getColumnCount()) {
            results.put(metaData.getColumnName(i), rs.getString(i));
            i++;

        }
        return results;
    }

    public static Connection giveConnection() throws ClassNotFoundException, SQLException {
        return getConnection();
    }
}
