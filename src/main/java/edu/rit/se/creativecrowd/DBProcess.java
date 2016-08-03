package edu.rit.se.creativecrowd;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.Random;
import java.util.Date;

public class DBProcess {

	private final Properties mProps = new Properties();

	private Connection mConn = null;

	public DBProcess() throws IOException, SQLException, ClassNotFoundException {
		if (mConn == null) {
			try (InputStream inStream = DBProcess.class.getResourceAsStream("/application.properties")) {
				mProps.load(inStream);
				Class.forName(mProps.getProperty("jdbc.driverClassName"));

				mConn = DriverManager.getConnection(mProps.getProperty("jdbc.url") + "?user="
						+ mProps.getProperty("jdbc.username") + "&password=" + mProps.getProperty("jdbc.password"));
			}
		}
	}

	public void disConnect() throws SQLException {
		if (mConn != null) {
			mConn.close();
			mConn = null; // close() does not set to null
		}
	}

	private String currentDateTIme() {
		java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(dt);
	}

	public String timeDifference(Date startDate, Date endDate) {
		long different = endDate.getTime() - startDate.getTime();
		long secondsInMilli = 1000;
		long minutesInMilli = secondsInMilli * 60;
		long hoursInMilli = minutesInMilli * 60;
		long daysInMilli = hoursInMilli * 24;
		long elapsedDays = different / daysInMilli;
		different = different % daysInMilli;
		long elapsedHours = different / hoursInMilli;
		/*
		 * different = different % hoursInMilli; long elapsedMinutes = different
		 * / minutesInMilli; different = different % minutesInMilli; long
		 * elapsedSeconds = different / secondsInMilli;
		 *
		 *
		 * if(elapsedDays>0) ret = elapsedDays+" days, "+elapsedHours+" hours, "
		 * +elapsedMinutes+" minutes, "+elapsedSeconds+" seconds"; else ret =
		 * elapsedHours+" hours, "+elapsedMinutes+" minutes, "
		 * +elapsedSeconds+" seconds";
		 */
		String ret = "";
		if (elapsedDays > 0)
			ret = elapsedDays + " days, " + elapsedHours + " hours";
		else
			ret = elapsedHours + " hours";
		return ret;
	}

	public String timeSinceLogin(String uid) throws SQLException {
		String ret = "";
		try {
			Statement st = mConn.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select created_at from users where id=" + uid);
			rs.next();
			Timestamp timestamp = rs.getTimestamp("created_at");
			java.util.Date startDate = new java.util.Date(timestamp.getTime());
			java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date endDate = dateFormat.parse(currentDateTIme());
			ret = timeDifference(startDate, endDate);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public int registerUser(String mturk) throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		int completion = 0;
		String dtime = currentDateTIme();
		/*NameGen gen = new NameGen();
		String name = gen.getName();*/
		String name = "Participant";
		try {
			PreparedStatement statement = mConn
					.prepareStatement("INSERT INTO `users`(`mturk_id`, `created_at`, `completion`, `name`) VALUES ('"
							+ mturk + "','" + dtime + "','" + completion + "','" + name + "')");
			count = statement.executeUpdate();
			statement.close();
			Statement st = mConn.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select * from users where mturk_id='" + mturk + "'");
			if (rs.next()) {
				count = rs.getInt("id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int loginUser(String mturk) throws ClassNotFoundException, IOException, SQLException {
		try {
			Statement st = mConn.createStatement();
			ResultSet rs;
			rs = st.executeQuery("select * from users where mturk_id='" + mturk + "'");
			if (rs.next()) {
				return rs.getInt("id");
			} else {
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int addLog(int uid, String message) {
		int ret = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn
					.prepareStatement("INSERT INTO `logs`(`uid`, `message`, `created_at`) VALUES ('" + uid + "','"
							+ message + "','" + dtime + "')");
			ret = statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	public ResultSet getUser(String uid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("select * from users where id='" + uid + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int setGroup(String uid, String gid) throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		try {
			Statement st = mConn.createStatement();
			String sql = "UPDATE users SET gid = " + gid + " WHERE id=" + uid;
			count = st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int assignTeam(String uid) throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			Statement st1 = mConn.createStatement();
			rs = st.executeQuery("select * from usergroups where status=2 order by gid");
			rs.next();
			int gid = rs.getInt("gid");
			int i = 1;
			for (i = 1; rs.getString("uid" + i) != null; i++);
			String name = "Participant "+i;
			String uidn = "uid" + i;
			if (i < 3) {
				count = st1.executeUpdate("UPDATE usergroups SET " + uidn + " = " + uid + " WHERE gid=" + gid);
			} else {
				count = st1
						.executeUpdate("UPDATE usergroups SET " + uidn + " = " + uid + ", status = 3 WHERE gid=" + gid);
				st1.executeUpdate("UPDATE usergroups SET status = 2 WHERE gid=" + (gid + 1));
			}
			st1.executeUpdate(
					"UPDATE users SET gid = " + gid + ", group_type = " + rs.getInt("type") + ", name='"+name+"' WHERE id=" + uid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public String[] updateState(String uid, String state) throws ClassNotFoundException, IOException, SQLException {
		String NewState = "";
		String[] ReturnVal = new String[2];
		try {
			ResultSet rs = null;
			ResultSet rs1 = null;
			Statement st = mConn.createStatement();
			rs = st.executeQuery("select next_seq from statuses where seq_no='" + state + "'");
			rs.next();
			NewState = rs.getString("next_seq");
			ReturnVal[0] = NewState;
			rs1 = st.executeQuery("select filename from statuses where seq_no='" + NewState + "'");
			rs1.next();
			ReturnVal[1] = rs1.getString("filename");
			st = mConn.createStatement();
			String sql = "UPDATE users SET state = '" + NewState + "' WHERE id='" + uid + "'";
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ReturnVal;
	}

	public int testCaseCount(int uid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("SELECT COUNT(*) as nos FROM testcases where uid=" + uid);
			rs.next();
			return rs.getInt("nos");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int preSurveyCount(int uid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		int count=0;
		try {
			String[] tables = {"presurvey_responses", "discpersonality_responses", "creativity_responses"};
			Statement st = mConn.createStatement();
			for(int i=0;i<tables.length;i++){
				rs = st.executeQuery("SELECT COUNT(*) as nos FROM "+tables[i]+" where user_id=" + uid);
				rs.next();
				if(rs.getInt("nos")>0)
					count+=1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int postSurveyCount(int uid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		int count=0;
		try {
			String[] tables = {"postsurvey_responses"};
			Statement st = mConn.createStatement();
			for(int i=0;i<tables.length;i++){
				rs = st.executeQuery("SELECT COUNT(*) as nos FROM "+tables[i]+" where user_id=" + uid);
				rs.next();
				if(rs.getInt("nos")>0)
					count+=1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public int timeOutCheck(int uid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("SELECT * FROM users WHERE users.id = " + uid
					+ " and users.created_at > DATE_SUB(CURTIME(), INTERVAL 4 HOUR)");
			int tcount = testCaseCount(uid);
			/* Modify tcount to base */
			if (!rs.isBeforeFirst() && tcount > 1) {
				Statement st3 = mConn.createStatement();
				st3.executeUpdate("UPDATE users SET completion = 1 WHERE id='" + uid + "'");
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public void updateCompletionState(String uid) throws ClassNotFoundException, IOException, SQLException {
		try {
			Statement st3 = mConn.createStatement();
			st3.executeUpdate("UPDATE users SET completion = 2 WHERE id='" + uid + "'");
			boolean uniq = true;
			Statement st = mConn.createStatement();
			ResultSet rs;
			String salt="";
			while(uniq){
				salt = getSaltString();
				rs = st.executeQuery("select id from users where completion_code = '" + salt + "'");
				if(!rs.isBeforeFirst())
					uniq=false;
			}
			st3.executeUpdate("UPDATE users SET completion_code = '"+salt+"' WHERE id='" + uid + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	protected String getSaltString() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 10) {
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;
    }

	public String getCompletionCode(String uid) throws ClassNotFoundException, IOException, SQLException {
		String ret = "";
		try {
			Statement st = mConn.createStatement();
			ResultSet rs = st.executeQuery("select completion_code from users where id = " + uid);
			rs.next();
			ret = rs.getString("completion_code");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	public ResultSet getQuestions(String TableName) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("select * from " + TableName);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int responseData(String table, String uid, String parameterName, String parameterValue)
			throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"INSERT INTO `" + table + "`(`question_id`, `user_id`, `description`, `created_at`) VALUES ('"
							+ parameterName + "','" + uid + "','" + parameterValue + "','" + dtime + "')");
			count += statement.executeUpdate();
			statement.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;

	}

	public int discResponseData(String uid, String gid, String iid, String val)
			throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"INSERT INTO `discpersonality_responses`(`user_id`, `group_no`, `item_no`, `response`, `created_at`) VALUES ('"
							+ uid + "','" + gid + "','" + iid + "','" + val + "','" + dtime + "')");
			count += statement.executeUpdate();
			statement.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;

	}

	public int addUseCase(String descr)
			throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"INSERT INTO `requirements`(`description`, `created_at`) VALUES ('"
							+ descr + "','" + dtime + "')");
			count = statement.executeUpdate();
			statement.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;

	}

	public ResultSet getRequirements() throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("select * from requirements");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int addTestCase(String rid, String uid, String gid, String cont, String stim, String behv)
			throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"INSERT INTO `testcases` (`rid`, `uid`, `gid`, `context`, `stimuli`, `behavior`, `created_at`) VALUES ('"
							+ rid + "','" + uid + "','" + gid + "','" + cont + "','" + stim + "','" + behv + "','"
							+ dtime + "')");
			count = statement.executeUpdate();
			statement.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;

	}

	public ResultSet getTestCases(String rid, String gid, String uid, String gtype)
			throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			if (Integer.parseInt(gtype) > 1) {
				rs = st.executeQuery(
						"select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.rid="
								+ rid + " AND testcase.gid=" + gid + " AND testcase.published='1'");
			} else {
				rs = st.executeQuery(
						"select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.rid="
								+ rid + " AND testcase.uid=" + uid + " AND testcase.published='1'");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public String getCommentCount(String tid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery(
					"SELECT COUNT(*) as nos FROM comments where pid='" + tid + "' AND parent_type='testcase'");
			rs.next();
			return rs.getString("nos");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "0";
	}

	public ResultSet viewTestCase(String id, String gid) throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery(
					"select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.id="
							+ id + " AND testcase.gid=" + gid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int editTestCase(String tid, String uid, String cont, String stim, String behv) {
		int ret = 0;
		try {
			// Insert into `testcase_history` (`pid`, `context`, `stimuli`,
			// `behavior`, `created_at`) SELECT id, context, stimuli, behavior,
			// created_at from `testcases` where id='2'
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"Insert into `testcase_history` (`pid`, `context`, `stimuli`, `behavior`, `created_at`)  SELECT id, context, stimuli, behavior, created_at from `testcases` where id="
							+ tid);
			statement.executeUpdate();
			statement.close();

			Statement st = mConn.createStatement();
			String sql = "UPDATE testcases SET context = '" + cont + "', stimuli = '" + stim + "', behavior = '" + behv
					+ "' WHERE id='" + tid + "'";
			ret = st.executeUpdate(sql);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ret;
	}

	public ResultSet getComments(String type, String tid, String gid)
			throws ClassNotFoundException, IOException, SQLException {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery(
					"select comment.*, user.name from comments comment, users user where comment.uid=user.id AND comment.pid="
							+ tid + " AND comment.parent_type='" + type + "' AND comment.gid=" + gid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public String getReplyCount(String cid) throws ClassNotFoundException, IOException, SQLException {
		try {
			ResultSet rs = null;
			Statement st = mConn.createStatement();
			rs = st.executeQuery(
					"SELECT COUNT(*) as nos FROM comments where pid='" + cid + "' AND parent_type='comment'");
			rs.next();
			return rs.getString("nos");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "0";
	}

	public int addComment(String parent, String pid, String uid, String gid, String descr)
			throws ClassNotFoundException, IOException, SQLException {
		int count = 0;
		String dtime = currentDateTIme();
		try {
			PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
					"INSERT INTO `comments` (`parent_type`, `pid`, `uid`, `gid`, `description`, `created_at`) VALUES ('"
							+ parent + "','" + pid + "','" + uid + "','" + gid + "','" + descr + "','" + dtime + "')");
			count = statement.executeUpdate();
			statement.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

	public ResultSet getMenu(String SeqNo) {
		ResultSet rs = null;
		try {
			Statement st = mConn.createStatement();
			rs = st.executeQuery("select * from statuses where seq_no = '" + SeqNo + "'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

}
