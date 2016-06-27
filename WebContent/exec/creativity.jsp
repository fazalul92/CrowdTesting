<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
<%	
	String uid = session.getAttribute("userid").toString();
	Enumeration en = request.getParameterNames();
	int ret = 0;
	while (en.hasMoreElements()) {
	    String parameterName = (String) en.nextElement();
	    String parameterValue = request.getParameter(parameterName);
	    ret += DBProcess.responseData("creativity_responses",uid, parameterName, parameterValue);
	}
    if (ret > 0) {
        response.sendRedirect("../dashboard.jsp");
    } else {
        response.sendRedirect("../creativity.jsp");
    }
%>