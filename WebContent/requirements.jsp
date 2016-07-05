<%@ page import ="java.sql.*" %>
<%@ page import ="cloudProcess.DBProcess" %>
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
                <h3>Requirements</h3>
              </div>

            </div>
			  <%
			  	 ResultSet rs = DBProcess.getRequirements();
			  %>
            <% while(rs.next()) { %>
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_title">
	                    <h2><%= rs.getString("title") %></h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <%= rs.getString("description") %>
	                  </div>
	                  <a href="viewTestCases.jsp?id=<%= rs.getString("id") %>">
		                  <button type="button" class="btn btn-primary">View Test Cases</button>
					  </a>
	                  <a href="addTestCase.jsp?id=<%= rs.getString("id") %>">
	                  	<button type="button" class="btn btn-success">Add Test Case</button>
	                  </a>
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