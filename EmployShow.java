package com.hexaware.trainer;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class EmployShow {
    public static void main(String[] args) throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PRACTICE_Batch6",
                            "root","root");
        String cmd = "select * from Employ";
        PreparedStatement pst = con.prepareStatement(cmd);
        ResultSet rs = pst.executeQuery();
        while(rs.next()) {
            System.out.println("Employ No  " +rs.getInt("empno"));
            System.out.println("Employ Name  " +rs.getString("name"));
            System.out.println("Gender   " +rs.getString("gender"));
            System.out.println("Department  " +rs.getString("dept"));
            System.out.println("Designation  " +rs.getDouble("basic"));
            System.out.println("-------------------------------");
        }
    }
}