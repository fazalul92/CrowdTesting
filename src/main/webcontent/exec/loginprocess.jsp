<%@ page import="java.sql.ResultSet"%>
<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
  String mturk = request.getParameter("mturk");
  DBProcess dbProc = new DBProcess();
  int ret = dbProc.loginUser(mturk);
  if (ret == 0) {
    ret = dbProc.registerUser(mturk);
    session.setAttribute("state", "0");
    dbProc.disConnect();
    response.sendRedirect("../index.jsp");
  } else {
    ResultSet rs = dbProc.getUser(Integer.toString(ret));
    rs.next();
    session.setAttribute("userid", ret);
    session.setAttribute("state", rs.getInt("state"));
    session.setAttribute("groupid", rs.getString("gid"));
    session.setAttribute("auth", true);
    dbProc.disConnect();
    response.sendRedirect("../dashboard.jsp");
  }
%>