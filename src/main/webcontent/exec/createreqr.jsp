<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
	String title = request.getParameter("title");
    String descr = request.getParameter("descr");
    DBProcess dbProc = new DBProcess();
    int ret = dbProc.addReqr(title, descr);
    if (ret == 1) {
        response.sendRedirect("../createreqr.jsp");
    } else {
        response.sendRedirect("../createreqr.jsp?error=2");
    }
%>