/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.connection;

import java.awt.image.BufferedImage;
import java.io.FileNotFoundException;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mmh
 */
public class ImageDB {

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
     * @param inputs - Data to be inserted
     * @param storedProceedure - Stored Procedure to be called
     * @param imagePosition - Position of the image data
     * @param resultCount - output resulting column count
     * @return Result List Data
     * @throws ClassNotFoundException
     * @throws SQLException
     * @throws FileNotFoundException
     */
    public static List<Object> saveImage(List<Object> inputs, String storedProceedure, int imagePosition, int resultCount) throws ClassNotFoundException, SQLException, FileNotFoundException {
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
        statement.executeQuery();
        List<Object> output = new ArrayList<>();
        for (int i = 0; i < resultCount; i++) {
            output.add(statement.getObject(inputs.size() - i));
        }
        List<Object> out = output;
        return out;
    }

    public static List<Object> retrieveImage(List<Object> inputs, String storedProceedure, int resultCount) throws ClassNotFoundException, SQLException {
        BufferedImage image = null;
        List<Object> outputs = null;
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
        ResultSet rs = statement.executeQuery();
        List<Object> output = new ArrayList<>();
        while (rs.next()) {
            for (int i = 1; i <= resultCount; i++) {
                if (rs.getMetaData().getColumnType(i) == Types.BLOB) {
                    Blob blob = rs.getBlob(i);
                    byte[] bytes = blob.getBytes(1, (int) blob.length());
                    output.add(bytes);
                } else {
                    output.add(rs.getObject(i));
                }
            }
        }
        outputs = output;
        return outputs;
    }
}
