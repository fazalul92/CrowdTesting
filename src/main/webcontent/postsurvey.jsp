<%@ page import ="java.sql.*" %>
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
		
		<%
			System.out.println(session.getAttribute("auth"));
			ResultSet rs1 = DBProcess.getQuestions("postsurvey_questions");
		%>
		
        <!-- page content -->
        
		
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Post-Survey Questions</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Post-Survey Questions <small></small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    
                    <form class="form-horizontal form-label-left" method="post" id="postsurvey" action="exec/postsurvey.jsp">
                     <table class="table" style="border:0px;">
                      <tbody>
                        <% while(rs1.next()) { %>
	                        <tr>
	                        <% if (rs1.getString("question_type").equals("text")) { %>
	                          <th scope="row"><label class="" for="<%= rs1.getInt("id") %>"><%= rs1.getString("description") %> <span class="required">*</span></label></th>
	                          <td><input type="text" id="<%= rs1.getInt("id") %>" name="<%= rs1.getInt("id") %>" required="required" class="form-control" placeholder="<%= rs1.getString("answer_choices") %>"></td>
	                    	<% } else if (rs1.getString("question_type").equals("multiple_choice")) { 
	                    		String answers = rs1.getString("answer_choices");
	                    		String[] choices = answers.split("\\|");
	                    	%>
	                          <th scope="row"><label class="" for="<%= rs1.getInt("id") %>"><%= rs1.getString("description") %> <span class="required">*</span></label></th>
	                          <td><select name="<%= rs1.getInt("id") %>" required="required" class="form-control">
	                          		<option value=""></option>
			                        <% for (int i = 0; i < choices.length; i++) { %>
			                        
			                        <option value="<%= choices[i] %>"><%= choices[i] %></option>
	                    	
	                    			<% } %>
	                    	</select></td>
	                    	<% } %>
	                        </tr>
	                    <% } %>
                       
                      </tbody>
                    </table> 
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button class="btn btn-primary">Cancel</button>
                          <button id="subm" class="btn btn-success">Submit</button>
                        </div>
                 </form>
                    
                    
                    
                  </div>
                </div>
              </div>
            </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
	<script type="text/javascript">
			   $("#subm").click(function(){
			       console.log($('#presurvey').serialize());
			  }); 
	</script>
  </body>
</html>