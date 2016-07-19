<%@ page import ="java.sql.*" %>
<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	String rid = request.getParameter("requirementID");
	String uid = session.getAttribute("userid").toString();
	String gid = session.getAttribute("groupid").toString();
	String title = request.getParameter("title");
	String descr = request.getParameter("descr");
    int ret = DBProcess.addTestCase(rid, uid, gid, title, descr);
    if (ret == 1) {
        response.sendRedirect("../requirements.jsp");
    } else {
        response.sendRedirect("../addTestCase.jsp?id="+rid+"&error=2");
    }
%>