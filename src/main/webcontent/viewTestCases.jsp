<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ include file="head.jsp" %>
  </head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@ include file="menu.jsp" %>
        <!-- page content -->
        
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Test Scenarios</h3>
              </div>

            </div>
			  <%
			    DBProcess dbProc = new DBProcess();
			  	ResultSet rs = dbProc.getTestCases(request.getParameter("id"),session.getAttribute("groupid").toString(),session.getAttribute("userid").toString(),session.getAttribute("group_type").toString());
			  	int i=1;
			  %>
            <% while(rs.next()) { %>
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_title">
	                    <h2>Testcase <%= i++ %><small><%= rs.getString("name") %></small></h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                  <b>Context</b><br/>
	                    <%= rs.getString("context") %>
	                  </div>
	                  <div class="x_content">
	                  <b>Stimulus</b><br/>
	                    <%= rs.getString("stimuli") %>
	                  </div>
	                  <div class="x_content">
	                  <b>Response</b><br/>
	                    <%= rs.getString("behavior") %>
	                  </div>
	                  <table border="0" style="width:100%;">
	                  <tr>
		                  <td width="100">
			                 <% if((Integer) session.getAttribute("group_type") == 3) { %> <b><%= dbProc.getCommentCount(rs.getString("id")) %> comments</b> <% } %>
						  </td>
						  <td>
						  	<div style="float:right;">
						  	<%
						  		if((Integer) session.getAttribute("userid") == rs.getInt("uid")) {
						  	%>
						  		<a href="editTestCase.jsp?id=<%= rs.getString("id") %>">
				                  <button type="button" class="btn btn-danger">Edit</button>
							  	</a>
						  	<%
						  		}
						  	%>
						  		<% if((Integer) session.getAttribute("group_type") == 3) { %> 
			                  <a href="viewComments.jsp?id=<%= rs.getString("id") %>">
				                  <button type="button" class="btn btn-primary">View And Add Comments</button>
							  </a>
							  <% } %>
			                </div>
		                  </td>
	                  </tr>
	                  </table>
	            </div>
            </div>
            <!-- End Panel -->
            <% } %>
            
            
            </div>
            
           </div>
        </div>
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
	
    <script src="build/js/custom.min.js"></script>
  </body>
</html>

<% dbProc.disConnect(); %>