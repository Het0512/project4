package com.example.practice_p4;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCUtil {
    public static Connection getConnection(){
        Connection conn =null;
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            conn= DriverManager.getConnection("jdbc:mariadb://walab.handong.edu:3306/p232_22200787","p232_22200787","Iro8gu");
        }catch(Exception e){
            System.out.println(e);
        }
        return conn;
    }

//	public static void main(String ars[]) {
//		Connection conn = getConnection();
//		if(conn != null)
//			System.out.println("DB 연결됨!");
//		else
//			System.out.println("DB 연결중 오류 !");
//	}
}
