package edu.rit.se.creativecrowd;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class PersonalityComputer {

	private static final Properties mProps = new Properties();

	private static Connection mConn = null;

	public static void main(String[] args) throws IOException, ClassNotFoundException, SQLException {
		if (mConn == null) {
			try (InputStream inStream = DBProcess.class.getResourceAsStream("/application.properties")) {
				mProps.load(inStream);
				Class.forName(mProps.getProperty("jdbc.driverClassName"));

				mConn = DriverManager.getConnection(mProps.getProperty("jdbc.url") + "?user="
						+ mProps.getProperty("jdbc.username") + "&password=" + mProps.getProperty("jdbc.password"));
			}
		}
		Statement st = mConn.createStatement();
		ResultSet rs = st.executeQuery("SELECT user_id FROM discpersonality_responses where group_no = 1 and item_no = 1");
		while(rs.next()){
			DBProcess dbProc = new DBProcess();
			dbProc.processPersonalities(rs.getString("user_id"));
		}
		
	}

}
