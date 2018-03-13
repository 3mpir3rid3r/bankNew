/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbs.other;

/**
 *
 * @author mmh
 */
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

//    anthor code for send mail
    public boolean sendMail(String userEmail, String userPassword) {
        System.out.println(userEmail);
        final String username = "anuruddhawijesiri@gmail.com";
        final String password = "fucking bitch";

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("from-email@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(userEmail));
            message.setSubject("Password Change");
            message.setText("Dear User your current password is,"
                    + "\n " + userPassword + " .");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            System.out.println(e);
            return false;
        }
        return true;
    }
//    public boolean sendMail(String to, String body) {
//        Properties props = System.getProperties();
//
//        String host = "smtp.googlemail.com";
//        String from = "anuruddhawijesiri@gmail.com";
//        String pass = "fucking bitch";
//
//        props.put("mail.smtp.starttls.enable", "true");
//        props.put("mail.smtp.host", host);
//        props.put("mail.smtp.user", from);
//        props.put("mail.smtp.password", pass);
//        props.put("mail.smtp.port", "587");
//        props.put("mail.smtp.auth", "true");
//
//        Session session = Session.getDefaultInstance(props);
//        MimeMessage message = new MimeMessage(session);
//
//        try {
//            message.setFrom(new InternetAddress(from));
//            InternetAddress toAddress = new InternetAddress(to);
//
//            toAddress = new InternetAddress(to);
//
//            message.addRecipient(Message.RecipientType.TO, toAddress);
//
//            message.setSubject("Password Change");
//            message.setText("Dear User your current password is," + "\n " + body + " .");
//            try (Transport transport = session.getTransport("smtp")) {
//                transport.connect(host, from, pass);
//                transport.sendMessage(message, message.getAllRecipients());
//            }
//            return true;
//        } catch (AddressException ae) {
//            ae.printStackTrace();
//        } catch (MessagingException me) {
//            me.printStackTrace();
//        }
//        return false;
//    }
}
