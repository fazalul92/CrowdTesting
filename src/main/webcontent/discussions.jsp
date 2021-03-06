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
                <h3>Discussions</h3>
              </div>

            </div>
			  <%
			    DBProcess dbProc = new DBProcess();
			  	ResultSet rs2 = dbProc.getComments("testcase","0",session.getAttribute("groupid").toString());
			  %>
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_content">
	                  You can use this forum to ask questions about the main task or respond to your team members.
	                  </div>
	            </div>
            </div>
            <!-- End Panel -->
            
            
            
            
            <% while(rs2.next()) { %>
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_content">
	                  <b><%= rs2.getString("name") %></b><br/><br/>
	                    <%= rs2.getString("description") %>
	                  </div>
			                  <b><%= rs2.getString("created_at") %> | <%= dbProc.getReplyCount(rs2.getString("id")) %> replies</b>
						  <br/><br/>
	                  <div class="x_content">
	                    <%
	   			  	 		ResultSet rs3 = dbProc.getComments("comment",rs2.getString("id"),session.getAttribute("groupid").toString());
	                    	while(rs3.next()){
	                    %>
	                    <div class="well">
	                    	<b><%= rs3.getString("name") %></b> <br/><%= rs3.getString("description") %>
	                    </div>
	                    <% } %>
		                <form method="post" action="exec/addComment.jsp">
		                <div class="x_content ">
		                    <input name="parentID" type="hidden" value="<%= rs2.getString("id") %>">
		                    <input name="testcaseID" type="hidden" value="0">
		                    <input name="type" type="hidden" value="comment">
		                <div class="row">
		                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
		                    <textarea name="descr" required id="descr" style="height:40px;overflow:auto;" minlength="2" class="col-md-10 col-sm-10 col-xs-10 form-group"></textarea>
		                    <button type="submit" class="btn btn-success" style="float:right;">Reply</button>
		                  </div>
		                  
		                </div>
		
		                      <div class="form-group">
		                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
		                        </div>
		                      </div>
		                </div>
		                </form>
	                  </div>
	            </div>
            </div>
            <!-- End Panel -->
            <% } %>
            
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Add Comment<small></small></h2>
                  <div class="clearfix"></div>
                </div>
                <form id="commentForm" method="post" action="exec/addComment.jsp">
                <div class="x_content ">
                  <div id="alerts"></div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <input name="testcaseID" type="hidden" value="0">
                    <input name="parentID" type="hidden" value="0">
                    <input name="type" type="hidden" value="testcase">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea required name="descr" id="descr" style="height:50px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="" minlength="2"></textarea>
                  </div>
                  
                </div>

                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                </div>
                </form>
              </div>
            </div>
            
            
           </div>
        </div>
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
  </body>
</html>
<% dbProc.disConnect(); %>