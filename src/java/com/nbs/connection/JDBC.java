/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.connection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mmh
 */
public class JDBC {

    public Connection getJDBCConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://192.168.1.249:3306/nbsERP_Bnk_Wariyapola?autoReconnect=true&useSSL=false", "root", "123");
//            connection = DriverManager.getConnection("jdbc:mysql://192.168.1.250:3306/nbsERP_Bnk_Wariyapola", "root", "123");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
