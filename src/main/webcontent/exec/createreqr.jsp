<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
	String stkholder = request.getParameter("stakeholder");
	String feat = request.getParameter("feature");
	String benf = request.getParameter("benefit");
    DBProcess dbProc = new DBProcess();
    int ret = dbProc.addReqr(stkholder, feat, benf);
    dbProc.disConnect();
    if (ret == 1) {
        response.sendRedirect("../createreqr.jsp");
    } else {
        response.sendRedirect("../createreqr.jsp?error=2");
    }
%>