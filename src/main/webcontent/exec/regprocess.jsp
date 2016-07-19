<%@ page import ="java.sql.*" %>
<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<%
	String mturk = request.getParameter("mturk");
    String user = request.getParameter("email");    
    String pwd = request.getParameter("password");
    String fname = request.getParameter("first_name");
    String lname = request.getParameter("last_name");
    // int ret = DBProcess.registerUser(mturk, user, pwd, fname, lname);
    int ret = DBProcess.registerUser(mturk);
    if (ret > 0) {
        session.setAttribute("email", user);
        session.setAttribute("userid", ret);
        session.setAttribute("auth",true);
        response.sendRedirect("../dashboard.jsp");
    } else {
        response.sendRedirect("../index.jsp");
    }
%>