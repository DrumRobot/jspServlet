package ch11;

import java.sql.*;

public class DriverTest{
	public static void main(String args[]){
		Connection con;

		try{
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
			con=DriverManager.getConnection("jdbc:mysql://localhost:3307/mydb", "root", "1234");
			System.out.println("Success");
		}
		catch(SQLException ex){ System.out.println("SQLException" + ex);}
		catch(Exception ex){ System.out.println("Exception:" + ex);}
	}
}