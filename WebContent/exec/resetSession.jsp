<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
    String uid = session.getAttribute("userid").toString();
	ResultSet rs = DBProcess.getUser(uid);
    if (rs.next()) {
        session.setAttribute("userid", rs.getString("id"));
        session.setAttribute("groupid", rs.getString("gid"));
        session.setAttribute("name", rs.getString("name"));
        session.setAttribute("auth",true);
        response.sendRedirect("../dashboard.jsp");
    } else {
    	response.sendRedirect("../index.jsp");
    }
%>