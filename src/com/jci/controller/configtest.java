package com.jci.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class configtest {
	public static Connection getConnection() {
		System.out.println("FILe running");
        

		String urlString = "jdbc:sqlserver://UNKNOWN\\JCISERVER;databaseName=JCI;user=sa;password=sa;encrypt=true;trustServerCertificate=true";
		Connection con = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con = DriverManager.getConnection(urlString);
			
		} catch (Exception e) {
			System.out.println("ERRORRR");
			System.out.println(e);
		}

		System.out.println(con + "hi");
		return con;
	}
}
