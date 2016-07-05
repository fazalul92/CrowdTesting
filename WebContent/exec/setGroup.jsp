<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
	String gid = request.getParameter("gid");
	String uid = session.getAttribute("userid").toString();
	DBProcess.setGroup(uid,gid);
	ResultSet rs = DBProcess.getUser(uid);
    response.sendRedirect("resetSession.jsp");
%>