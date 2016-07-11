<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
	String testcaseID = request.getParameter("testcaseID");
	String pid = request.getParameter("parentID");
	String uid = session.getAttribute("userid").toString();
	String gid = session.getAttribute("groupid").toString();
	String descr = request.getParameter("descr");
	String type = request.getParameter("type");
    int ret = DBProcess.addComment(type, pid, uid, gid, descr);
    if (ret == 1) {
        response.sendRedirect("../viewComments.jsp?id="+testcaseID);
    } else {
        response.sendRedirect("../viewComments.jsp?error=2&id="+testcaseID);
    }
%>