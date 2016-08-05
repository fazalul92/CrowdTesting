<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	DBProcess dbProc = new DBProcess();
	dbProc.executeMbtiQuery();
	dbProc.disConnect();
%>