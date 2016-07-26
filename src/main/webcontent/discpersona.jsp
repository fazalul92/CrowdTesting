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
					ResultSet rs2 = dbProc.getQuestions("discpersonality_questions");
					rs2.next();
				%>
				
				<!-- page content -->
				
				
				<div class="right_col" role="main">
					<div class="">
						<div class="page-title">
							<div class="title_left">
								<h3>Personality Questions</h3>
							</div>
						</div>
						<div class="clearfix"></div>

						
						<form id="discform" class="form-horizontal form-label-left" action="exec/discsubmit.jsp" method="POST">
							<% for(int i = 0; i<14 ; i++) { %>
							<div class="row">
								<% for(int j=0;j<2;j++) { %>
								<div class="col-md-6 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_content">

											
										  
												<table style="width:100%;">
													<div class="set<%= rs2.getString("group_no") %>">
														<% for(int k=0;k<4;k++) { %>
														<div class="group<%= rs2.getString("group_no") %><%= rs2.getString("item_no") %>">
														<tr>
															
																<td style="width:20%;">
																	<input type="radio" name="<%= rs2.getString("group_no") %>.<%= rs2.getString("item_no") %>" class="team<%= rs2.getString("group_no") %>1" value="yes"> 
																</td>
																<td style="width:20%;">
																	<input type="radio" name="<%= rs2.getString("group_no") %>.<%= rs2.getString("item_no") %>" class="team<%= rs2.getString("group_no") %>2" value="no">
																</td>
																<td style="width:60%;">
																	<%= rs2.getString("description") %>
																	<% rs2.next(); %>
																</td>
															
														</tr>
														</div>
														<% } %>
													
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
		$("input:radio").change(function(){
			var group = ":radio[name='"+ $(this).attr("name") + "']";
			if ($(this).is(':checked')) {
			 $("input:radio[class^='"+ $(this).attr('class')+"']").each(function(i) {
			   this.checked = false;
			 });
			 $(this).prop('checked', 'checked');
			}
		});

		$("#discform").submit(function(e){
		    if($( "input:checked" ).length!=56){
				e.preventDefault();
				alert("One or more questions not correctly answered.");
		    }
		  });
	</script>
  </body>
</html>