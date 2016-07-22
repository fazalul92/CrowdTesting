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
		
		<%
		  DBProcess dbProc = new DBProcess();
			ResultSet rs2 = dbProc.getQuestions("creativity_questions");
		%>
		
        <!-- page content -->
        
		
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Creativity Questions</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Creativity Questions <small>Step 3</small></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    
                    <form class="form-horizontal form-label-left" method="post" id="persona" action="exec/creativity.jsp">
                     <table class="table" style="border:0px;">
                     <thead>
                     	<th>Question</th>
                     	<th>1</th>
                     	<th>2</th>
                     	<th>3</th>
                     	<th>4</th>
                     	<th>5</th>
                     </thead>
                      <tbody>
                        <% while(rs2.next()) { %>
	                        <tr>
	                          <td><label class="" for="<%= rs2.getInt("id") %>"><%= rs2.getString("description") %> </label></td>
	                          <% for(int i=0;i<5;i++) { %>
	                          		<td><input type="radio" name="<%= rs2.getInt("id") %>" value="<%= i+1 %>" required></td>
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
<%
	dbProc.disConnect();
%>