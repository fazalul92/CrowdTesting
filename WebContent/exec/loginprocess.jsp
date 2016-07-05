<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%
    String mturk = request.getParameter("mturk");
    int ret = DBProcess.loginUser(mturk);
	System.out.println("Login = "+ret);
    if (ret == 0) {
    	ret = DBProcess.registerUser(mturk);
    	System.out.println("Register = "+ret);
    }
    if(ret == 0){
        response.sendRedirect("../index.jsp");
    } else {
    	ResultSet rs = DBProcess.getUser(Integer.toString(ret));
    	rs.next();
	    session.setAttribute("userid", ret);
	    session.setAttribute("groupid", rs.getString("gid"));
	    session.setAttribute("auth",true);
	    response.sendRedirect("../dashboard.jsp");
    }
%>