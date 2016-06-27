package cloudProcess;

import java.sql.*;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class DBProcess {
	private static Connection con = null;
	
	public static void connect(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Connection Successful");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String url = "jdbc:mysql://localhost/crowd_db";
		String username = "root";
		String password = "";
		try {
			con = DriverManager.getConnection(url, username, password);
			System.out.println("Connection Successful");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int registerUser(String mturk, String email, String pass, String fname, String lname){
		int count = 0;
		int createphase = 1;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		try {
			connect();
			PreparedStatement statement = (PreparedStatement) con.prepareStatement("INSERT INTO `users`(`mturk_id`, `email`, `password`, `created_at`, `created_phase`, `first_name`,`last_name`) VALUES ('"+mturk+"','"+email+"',AES_ENCRYPT('"+pass+"','"+pass+"'),'"+dtime+"','"+createphase+"','"+fname+"','"+lname+"')");
			count = statement.executeUpdate();
			statement.close();
			Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from members where email='" + email + "'");
			if(rs.next()){
				count = rs.getInt("id");
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public static int loginUser(String username, String password){
		try {
			connect();
			Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from users where email='" + username + "' and password=AES_ENCRYPT('"+password+"','"+password+"')");
			if(rs.next()){
				return rs.getInt("id");
			} else {
				return 0;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	public static ResultSet getQuestions(String TableName) {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("select * from "+TableName);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int responseData(String table, String uid, String parameterName, String parameterValue){
		int count = 0;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);try {
			connect();
			PreparedStatement statement = (PreparedStatement) con.prepareStatement("INSERT INTO `"+table+"`(`question_id`, `user_id`, `description`, `created_at`) VALUES ('"+parameterName+"','"+uid+"','"+parameterValue+"','"+dtime+"')");
			count += statement.executeUpdate();
			statement.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
		
	}

	public static void main(String[] args) {
		
	}

}
