<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	DBProcess dbProc = new DBProcess();
	out.println(dbProc.timeSinceLogin(session.getAttribute("userid").toString()));
	dbProc.disConnect();
%>