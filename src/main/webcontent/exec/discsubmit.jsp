<%@ page import="java.util.Enumeration"%>
<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
  String uid = session.getAttribute("userid").toString();
  Enumeration en = request.getParameterNames();
  DBProcess dbProc = new DBProcess();
  int ret = 0;
  while (en.hasMoreElements()) {
    String parameterName = (String) en.nextElement();
    String[] arr = parameterName.split("\\.");
    String parameterValue = request.getParameter(parameterName);
    ret += dbProc.discResponseData(uid, arr[0], arr[1], parameterValue);
  }
  if (ret > 0) {
  	String[] StateInfo = dbProc.updateState(uid,session.getAttribute("state").toString());
	session.setAttribute("state", StateInfo[0]);
    dbProc.disConnect();
    response.sendRedirect("../"+StateInfo[1]);
  } else {
	dbProc.disConnect();
    response.sendRedirect("../discpersona.jsp");
  }
%>