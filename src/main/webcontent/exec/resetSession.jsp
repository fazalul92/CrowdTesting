<%@ page import="java.sql.ResultSet"%>
<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
  String uid = session.getAttribute("userid").toString();
  DBProcess dbProc = new DBProcess();
  ResultSet rs = dbProc.getUser(uid);
  if (rs.next()) {
    session.setAttribute("userid", rs.getString("id"));
    session.setAttribute("groupid", rs.getString("gid"));
    session.setAttribute("name", rs.getString("name"));
    session.setAttribute("auth", true);
    response.sendRedirect("../dashboard.jsp");
  } else {
    response.sendRedirect("../index.jsp");
  }
%>