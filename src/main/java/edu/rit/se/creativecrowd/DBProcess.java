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

  private final Properties mProps = new Properties();

  private Connection mConn = null;

  public void connect() throws IOException, SQLException, ClassNotFoundException {
    if (mConn == null) {
      try (InputStream inStream = DBProcess.class.getResourceAsStream("/application.properties")) {
        mProps.load(inStream);
        Class.forName(mProps.getProperty("jdbc.driverClassName"));

        mConn = DriverManager.getConnection(
            mProps.getProperty("jdbc.url") + "?user=" + mProps.getProperty("jdbc.username")
                + "&password=" + mProps.getProperty("jdbc.password"));
      }
    }
  }

  public void disConnect() throws SQLException {
    if (mConn != null) {
      mConn.close();
      mConn = null; // close() does not set to null
    }
  }

  public int registerUser(String mturk) throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    int createphase = 1;
    java.util.Date dt = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dtime = sdf.format(dt);
    NameGenerator gen = new NameGenerator();
    String name = gen.getName() + " " + gen.getName();
    try {
      connect();
      PreparedStatement statement = mConn.prepareStatement(
          "INSERT INTO `users`(`mturk_id`, `created_at`, `created_phase`, `name`) VALUES ('" + mturk
              + "','" + dtime + "','" + createphase + "','" + name + "')");
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
    } finally {
      disConnect();
    }
    return count;
  }

  public int loginUser(String mturk) throws ClassNotFoundException, IOException, SQLException {
    try {
      connect();
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
    } finally {
      disConnect();
    }
    return 0;
  }

  // TODO: Can't close connection here; closing connection will also close the ResultSet
  public ResultSet getUser(String uid) throws ClassNotFoundException, IOException, SQLException {
    ResultSet rs = null;
    try {
      connect();
      Statement st = mConn.createStatement();
      rs = st.executeQuery("select * from users where id='" + uid + "'");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return rs;
  }

  public int setGroup(String uid, String gid)
      throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    try {
      connect();
      Statement st = mConn.createStatement();
      String sql = "UPDATE users SET gid = " + gid + " WHERE id=" + uid;
      count = st.executeUpdate(sql);
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;
  }

  public int updateState(String uid, int state)
      throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    try {
      connect();
      Statement st = mConn.createStatement();
      String sql = "UPDATE users SET state = " + state + " WHERE id=" + uid;
      count = st.executeUpdate(sql);
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;
  }

  // TODO: Can't close connection here; closing connection will also close the ResultSet
  public ResultSet getQuestions(String TableName)
      throws ClassNotFoundException, IOException, SQLException {
    connect();
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
    java.util.Date dt = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dtime = sdf.format(dt);
    try {
      connect();
      PreparedStatement statement = (PreparedStatement) mConn.prepareStatement("INSERT INTO `"
          + table + "`(`question_id`, `user_id`, `description`, `created_at`) VALUES ('"
          + parameterName + "','" + uid + "','" + parameterValue + "','" + dtime + "')");
      count += statement.executeUpdate();
      statement.close();
      mConn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;

  }

  public int addReqr(String title, String descr)
      throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    java.util.Date dt = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dtime = sdf.format(dt);
    try {
      connect();
      PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
          "INSERT INTO `requirements`(`title`, `description`, `created_at`) VALUES ('" + title
              + "','" + descr + "','" + dtime + "')");
      count = statement.executeUpdate();
      statement.close();
      mConn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;

  }

  // TODO: Can't close connection here; closing connection will also close the
  // ResultSet
  public ResultSet getRequirements() throws ClassNotFoundException, IOException, SQLException {
    connect();
    ResultSet rs = null;
    try {
      Statement st = mConn.createStatement();
      rs = st.executeQuery("select * from requirements");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return rs;
  }

  public int addTestCase(String rid, String uid, String gid, String title, String descr)
      throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    java.util.Date dt = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dtime = sdf.format(dt);
    try {
      connect();
      PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
          "INSERT INTO `testcases` (`rid`, `uid`, `gid`, `title`, `description`, `created_at`) VALUES ('"
              + rid + "','" + uid + "','" + gid + "','" + title + "','" + descr + "','" + dtime
              + "')");
      System.out.println(statement);
      count = statement.executeUpdate();
      statement.close();
      mConn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;

  }

  // TODO: Can't close connection here; closing connection will also close the
  // ResultSet
  public ResultSet getTestCases(String rid, String gid)
      throws ClassNotFoundException, IOException, SQLException {
    connect();
    ResultSet rs = null;
    try {
      Statement st = mConn.createStatement();
      rs = st.executeQuery(
          "select testcase.*, user.name from testcases testcase, users user where testcase.uid=user.id AND testcase.rid="
              + rid + " AND testcase.gid=" + gid);
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return rs;
  }

  // TODO: Can't close connection here; closing connection will also close the
  // ResultSet
  public String getCommentCount(String tid)
      throws ClassNotFoundException, IOException, SQLException {
    connect();
    ResultSet rs = null;
    try {
      Statement st = mConn.createStatement();
      rs = st.executeQuery("SELECT COUNT(*) as nos FROM comments where pid='" + tid
          + "' AND parent_type='testcase'");
      rs.next();
      return rs.getString("nos");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return "0";
  }

  // TODO: Can't close connection here; closing connection will also close the
  // ResultSet
  public ResultSet viewTestCase(String id, String gid)
      throws ClassNotFoundException, IOException, SQLException {
    connect();
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

  // TODO: Can't close connection here; closing connection will also close the
  // ResultSet
  public ResultSet getComments(String type, String tid, String gid)
      throws ClassNotFoundException, IOException, SQLException {
    connect();
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
      connect();
      ResultSet rs = null;
      Statement st = mConn.createStatement();
      rs = st.executeQuery(
          "SELECT COUNT(*) as nos FROM comments where pid='" + cid + "' AND parent_type='comment'");
      rs.next();
      return rs.getString("nos");
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return "0";
  }

  public int addComment(String parent, String pid, String uid, String gid, String descr)
      throws ClassNotFoundException, IOException, SQLException {
    int count = 0;
    java.util.Date dt = new java.util.Date();
    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dtime = sdf.format(dt);
    try {
      connect();
      PreparedStatement statement = (PreparedStatement) mConn.prepareStatement(
          "INSERT INTO `comments` (`parent_type`, `pid`, `uid`, `gid`, `description`, `created_at`) VALUES ('"
              + parent + "','" + pid + "','" + uid + "','" + gid + "','" + descr + "','" + dtime
              + "')");
      System.out.println(statement);
      count = statement.executeUpdate();
      statement.close();
      mConn.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
      disConnect();
    }
    return count;
  }
}
