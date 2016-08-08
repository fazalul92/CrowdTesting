<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="edu.rit.se.creativecrowd.DBProcess" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ include file="head.jsp" %>
  <style>
  	input[type="radio"] {
  		margin-right:10px;
  	}
  </style>
  </head>

  <body class="nav-md">
		<div class="container body">
			<div class="main_container">
				<%@ include file="menu.jsp" %>
				
				<%
				  DBProcess dbProc = new DBProcess();
					ResultSet rs2 = dbProc.getQuestions("mbtipersonality_questions");
					rs2.next();
				%>
				
				<!-- page content -->
				
				
				<div class="right_col" role="main">
					<div class="">
						<div class="page-title">
							<div class="title_left">
								<h3>Pre-Survey 3</h3>
							</div>
						</div>
						<div class="clearfix"></div>
<p>For each of the questions below, please choose the option that describes you the best. </p><p><b>Note: </b> Describe yourself as you generally are
  now, not as you wish to be in the future. Describe yourself as you
  honestly see yourself, in relation to other people you know of the
  same sex as you are, and roughly your same age. So that you can
  describe yourself in an honest manner, your responses will be kept in
  absolute confidence. Please read each statement carefully, but do not over-analyze them. Some seem worded poorly. Go with what feels best.</p>
						
						<form id="discform" class="form-horizontal form-label-left" action="exec/mbtisubmit.jsp" method="POST">
							<% for(int i = 0; i<35 ; i++) { %>
							<div class="row">
								<% for(int j=0;j<2;j++) { %>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_content">

												<table style="width:100%;">
													<div class="set">
														<% for(int k=0;k<3;k++) { 
														%>
														<div class="group">
														<tr>	
																<% if(rs2.getString("type").equals("question")) {  %>
																<td style="width:10%;"> 
																<%= rs2.getString("group_no") %>
																</td>
																<td style="width:80%;"> 
																	<b><%= rs2.getString("description") %></b>
																</td>
																<% } else if (rs2.getString("type").equals("choice")) { %>
																<td style="width:10%;"> 
																 
																</td>
																<td style="width:80%;">
																	<input type="radio" required name="<%= rs2.getString("group_no") %>" class="team<%= rs2.getString("group_no") %>" value="<%= rs2.getString("choice_no") %>">
																	<%= rs2.getString("description") %>
																</td>
																<% } %>
															
														</tr>
														</div>
													<% 		
															rs2.next();
														} 
														
													%>
													
													</div>
												</table>
											
										</div>
								  
									</div>
								</div>
								<% } %>
							</div>
							<% } %>
							<button type="submit" class="btn btn-success">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
	<script type="text/javascript">
	</script>
  </body>
</html>