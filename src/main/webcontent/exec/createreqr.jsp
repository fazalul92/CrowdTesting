<%@ page import ="java.sql.*" %>
<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	String title = request.getParameter("title");
    String descr = request.getParameter("descr");
    int ret = DBProcess.addReqr(title, descr);
    if (ret == 1) {
        response.sendRedirect("../createreqr.jsp");
    } else {
        response.sendRedirect("../createreqr.jsp?error=2");
    }
%>