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
	    ret += DBProcess.responseData("postsurvey_responses", uid, parameterName, parameterValue);
	}
    if (ret > 0) {
    	DBProcess.updateState(uid,100);
	    session.setAttribute("state", 100);
        response.sendRedirect("../dashboard.jsp");
    } else {
        response.sendRedirect("../postsurvey.jsp");
    }
%>