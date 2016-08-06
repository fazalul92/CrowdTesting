<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	DBProcess dbProc = new DBProcess();
	dbProc.processPersonalities(session.getAttribute("userid").toString());
	dbProc.disConnect();
%>