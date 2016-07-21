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
    ret += dbProc.responseData("personality_responses", uid, parameterName, parameterValue);
  }
  if (ret > 0) {
    dbProc.updateState(uid, 2);
    session.setAttribute("state", 2);
    response.sendRedirect("../dashboard.jsp");
  } else {
    response.sendRedirect("../persona.jsp");
  }
%>