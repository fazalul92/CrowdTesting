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
                <h3>Application</h3>
              </div>

            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_content">
	                 
	                    <!-- Requirement Content Goes Here -->
	                    Smart lights: A smart home should automatically manage lighting in the home. 
	                    
	                  </div>
	            </div>
            </div>
			  <%
			    DBProcess dbProc = new DBProcess();
			  	ResultSet rs1 = dbProc.getRequirements();
			  	int i=1;
			  %>
            <% while(rs1.next()) { %>
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_title">
	                    <h2>Requirement <%= i++ %></h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <%= rs1.getString("description") %>
	                  </div>
	                  <a href="viewTestCases.jsp?id=<%= rs1.getString("id") %>">
		                  <button type="button" class="btn btn-primary">View Test Scenarios</button>
					  </a>
	                  <a href="addTestCase.jsp?id=<%= rs1.getString("id") %>">
	                  	<button type="button" class="btn btn-success">Add Test Scenario</button>
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
  </body>
</html>
<% dbProc.disConnect(); %>