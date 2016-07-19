package edu.rit.se.creativecrowd;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DBProcess {
  
  //TODO: Do the following need to be static? --PKM
  private static final Properties props = new Properties();

	private static Connection con = null;
	
  public static void connect() throws IOException, SQLException, ClassNotFoundException {
    try (InputStream inStream = DBProcess.class.getResourceAsStream("/application.properties")) {

      props.load(inStream);
      Class.forName(props.getProperty("jdbc.driverClassName"));

      con = DriverManager.getConnection(
          props.getProperty("jdbc.url") + "?user=" + props.getProperty("jdbc.username")
              + "&password=" + props.getProperty("jdbc.password"));
    }
  }
	
	public static int registerUser(String mturk) throws ClassNotFoundException, IOException{
		int count = 0;
		int createphase = 1;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		NameGenerator gen = new NameGenerator();
		String name = gen.getName() + " " + gen.getName();
		try {
			connect();
			PreparedStatement statement = con.prepareStatement("INSERT INTO `users`(`mturk_id`, `created_at`, `created_phase`, `name`) VALUES ('"+mturk+"','"+dtime+"','"+createphase+"','"+name+"')");
			count = statement.executeUpdate();
			statement.close();
			Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from users where mturk_id='" + mturk + "'");
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
	
	public static int loginUser(String mturk) throws ClassNotFoundException, IOException{
		try {
			connect();
			Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from users where mturk_id='"+mturk+"'");
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
	
	public static ResultSet getUser(String uid) throws ClassNotFoundException, IOException{
	    ResultSet rs = null;
		try {
			connect();
			Statement st = con.createStatement();
		    rs = st.executeQuery("select * from users where id='" + uid + "'");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int setGroup(String uid, String gid) throws ClassNotFoundException, IOException{
		int count = 0;
		try {
			connect();
			Statement st = con.createStatement();
		    String sql = "UPDATE users SET gid = "+gid+" WHERE id="+uid;
		    count = st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public static int updateState(String uid, int state) throws ClassNotFoundException, IOException{
		int count = 0;
		try {
			connect();
			Statement st = con.createStatement();
		    String sql = "UPDATE users SET state = "+state+" WHERE id="+uid;
		    count = st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	public static ResultSet getQuestions(String TableName) throws ClassNotFoundException, IOException, SQLException {
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
	
	public static int responseData(String table, String uid, String parameterName, String parameterValue) throws ClassNotFoundException, IOException{
		int count = 0;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		try {
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
	
	public static int addReqr(String title, String descr) throws ClassNotFoundException, IOException{
		int count = 0;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		try {
			connect();
			PreparedStatement statement = (PreparedStatement) con.prepareStatement("INSERT INTO `requirements`(`title`, `description`, `created_at`) VALUES ('"+title+"','"+descr+"','"+dtime+"')");
			count = statement.executeUpdate();
			statement.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
		
	}
	
	public static ResultSet getRequirements() throws ClassNotFoundException, IOException, SQLException {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("select * from requirements");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int addTestCase(String rid, String uid,  String gid, String title, String descr) throws ClassNotFoundException, IOException{
		int count = 0;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		try {
			connect();
			PreparedStatement statement = (PreparedStatement) con.prepareStatement("INSERT INTO `testcases` (`rid`, `uid`, `gid`, `title`, `description`, `created_at`) VALUES ('"+rid+"','"+uid+"','"+gid+"','"+title+"','"+descr+"','"+dtime+"')");
			System.out.println(statement);
			count = statement.executeUpdate();
			statement.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
		
	}
	
	public static ResultSet getTestCases(String rid, String gid) throws ClassNotFoundException, IOException, SQLException {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.rid="+rid+" AND testcase.gid="+gid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static String getCommentCount(String tid) throws ClassNotFoundException, IOException, SQLException {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("SELECT COUNT(*) as nos FROM comments where pid='"+tid+"' AND parent_type='testcase'");
			rs.next();
			return rs.getString("nos");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "0";
	}
	
	public static ResultSet viewTestCase(String id, String gid) throws ClassNotFoundException, IOException, SQLException {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.id="+id+" AND testcase.gid="+gid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static ResultSet getComments(String type, String tid, String gid) throws ClassNotFoundException, IOException, SQLException {
		connect();
		ResultSet rs = null;
		try {
			Statement st = con.createStatement();
			rs = st.executeQuery("select comment.*, user.name from comments comment, users user where comment.uid=user.id AND comment.pid="+tid+" AND comment.parent_type='"+type+"' AND comment.gid="+gid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public static String getReplyCount(String cid) throws ClassNotFoundException, IOException, SQLException {
		connect();
		try {
			ResultSet rs = null;
			Statement st = con.createStatement();
			rs = st.executeQuery("SELECT COUNT(*) as nos FROM comments where pid='"+cid+"' AND parent_type='comment'");
			rs.next();
			return rs.getString("nos");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "0";
	}
	
	public static int addComment(String parent, String pid, String uid,  String gid, String descr) throws ClassNotFoundException, IOException{
		int count = 0;
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dtime = sdf.format(dt);
		try {
			connect();
			PreparedStatement statement = (PreparedStatement) con.prepareStatement("INSERT INTO `comments` (`parent_type`, `pid`, `uid`, `gid`, `description`, `created_at`) VALUES ('"+parent+"','"+pid+"','"+uid+"','"+gid+"','"+descr+"','"+dtime+"')");
			System.out.println(statement);
			count = statement.executeUpdate();
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
