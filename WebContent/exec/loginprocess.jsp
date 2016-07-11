<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
    String mturk = request.getParameter("mturk");
    int ret = DBProcess.loginUser(mturk);
    if (ret == 0) {
    	ret = DBProcess.registerUser(mturk);
    	session.setAttribute("state", "0");
    } else {
    }
    if(ret == 0){
        response.sendRedirect("../index.jsp");
    } else {
    	ResultSet rs = DBProcess.getUser(Integer.toString(ret));
    	rs.next();
	    session.setAttribute("userid", ret);
	    session.setAttribute("state", rs.getInt("state"));
	    session.setAttribute("groupid", rs.getString("gid"));
	    session.setAttribute("auth",true);
	    response.sendRedirect("../dashboard.jsp");
    }
%>