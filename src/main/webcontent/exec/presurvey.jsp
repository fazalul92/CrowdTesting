<%@ page import="java.util.Enumeration"%>
<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
  String uid = session.getAttribute("userid").toString();
  Enumeration en = request.getParameterNames();
  DBProcess dbProc = new DBProcess();
  int ret = 0;
  while (en.hasMoreElements()) {
    String parameterName = (String) en.nextElement();
    String parameterValue = request.getParameter(parameterName);
    ret += dbProc.responseData("presurvey_responses", uid, parameterName, parameterValue);
  }
  if (ret > 0) {
    dbProc.updateState(uid, 1);
    session.setAttribute("state", 1);
    response.sendRedirect("../dashboard.jsp");
  } else {
    response.sendRedirect("../presurvey.jsp");
  }
%>