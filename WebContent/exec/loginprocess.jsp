<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
    String username = request.getParameter("username");    
    String pwd = request.getParameter("password");
    int ret = DBProcess.loginUser(username, pwd);
    if (ret > 0) {
        session.setAttribute("email", username);
        session.setAttribute("userid", ret);
        session.setAttribute("auth",true);
        response.sendRedirect("../dashboard.jsp");
    } else {
    	response.sendRedirect("../index.jsp");
    }
%>