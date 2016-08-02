<%@ page import="edu.rit.se.creativecrowd.DBProcess"%>
<%
	DBProcess dbProc = new DBProcess();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="head.jsp"%>
<style>
#detailsTable {
	padding: 5px;
	margin: 50px auto;
}

#detailsTable td {
	padding: 5px;
	margin: 0 auto;
	min-width: 200px;
	text-align: center;
	font-weight: bold;
}
</style>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<%@ include file="menu.jsp"%>
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>Instructions</h3>
						</div>

					</div>
					<!--  Start Panel -->
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<p>
									<b>Thank you</b> for choosing to participate in this research
									study. If you have questions or experience technical problems
									during the study, please contact the researcher, Pradeep
									Murukannaiah, at
									<a href="mailto:pkmvse@rit.edu" class="text-primary">pkmvse@rit.edu.</a>
								</p>
								
								<p><b>Study Overview:</b> This study consists of </p>
								<table border="1" id="detailsTable">
									<tr>
										<td></td>
										<td>Completed</td>
										<td>Minimum Required</td>
									</tr>
									<tr>
										<td>Time</td>
										<td><%= dbProc.timeSinceLogin(session.getAttribute("userid").toString()) %>
										</td>
										<td>4 hours</td>
									</tr>
									<tr>
										<td>Test Cases</td>
										<td><%= dbProc.testCaseCount(Integer.parseInt(session.getAttribute("userid").toString())) %>
										</td>
										<td>2</td>
									</tr>
								</table>
							</div>
							<div class="ln_solid"></div>
						</div>
					</div>
					<!-- End Panel -->


				</div>
			</div>
			<!-- /page content -->


			<%@ include file="scripts.jsp"%>

			<script src="build/js/custom.min.js"></script>
</body>
</html>
<%
	dbProc.disConnect();
%>