<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="head.jsp"%>
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
								<h2>Task Description</h2>

								<p>
									Your main task is to come up with <b>test scenarios</b> for
									smart home applications. You do not require any specific domain
									knowledge to complete this task. Just <b>use you
										imagination</b>! Below, we provide basic information on some key
									concepts and examples of test scenarios.
								</p>

								<h3>What is a smart home?</h3>

								<p>
									A smart home consists of smart things! Smart things are objects
									that can sense their surroundings, compute from the sensed
									data, and communicate the computed results to humans or other
									smart things. In addition to gadgets such as laptops and smart
									phones, an increasing variety of household objects such as TVs,
									light bulbs, heaters, stoves, doors and windows, sprinklers,
									and cars are becoming smart things.
									<!-- The picture to the right shows some Smart Home sensors. -->
								</p>

								<h3>What is a smart home application?</h3>

								<p>A smart home can host several applications. You will
									produce test scenarios for one specific application described
									in the next page. We describe a smart home application as a
									requirement and a set of use cases. Consider the following
									application and use case, for example.</p>

								<ul>
									<li><b>Requirement:</b> A smart home automatically locks
										and unlocks doors</li>
									<li><b>Use cases:</b>
										<ul>
											<li>When an authorized vehicle comes to the front gate,
												the smart home automatically opens the gate.</li>
											<!-- <li>When an authorized person comes to the front door,
												the smart home automatically unlocks the door for the
												person.</li> -->
										</ul></li>
								</ul>

								<h3>What is a test scenario?</h3>

								<p>A test scenario describes a way to check whether the
									application meets the prescribed requirement or not. We
									describe a test scenario via stimulus, response, and context
									described below.</p>

								<ul>
									<li><b>Stimulus</b> describes how you initiate the
										application to react in some way.</li>
									<li><b>Response</b> describes what you expect the
										application to do in response to the stimulus.</li>
									<li><b>Context</b> describes the condition in which the
										stimulus occurs.</li>
								</ul>

								<p>Consider two test scenarios for the requirement and use
									case provided above, for example.</p>

								<ul>
									<li>Test scenario 1:
										<ul>
											<li><b>Stimulus: </b>I drive my motorbike to the front
												gate.</li>
											<li><b>Response: </b>Front gate should open</li>
											<li><b>Context: </b>My motorbike is authorized; it is
												night time.</li>
										</ul>
									</li>
									<li>Test scenario 2:
										<ul>
											<li><b>Stimulus: </b>My friend drives his car to the
												front gate.</li>
											<li><b>Response: </b>Front gate should not open.</li>
											<li><b>Context: </b>My friend's car is not authorized.
												His car is same make, model, and color as my authorized car.
												It is day time.</li>
										</ul>
									</li>
								</ul>

								<p>
									<b>Important note: </b> It is important to be <b>creative</b>
									in generating test scenarios. Imagine the use cases and misuse
									cases. Imagine potentially scenarios in which the application
									may break. Imagine potential ways in which the application may
									be stressed.
								</p>

								<!-- Nominal Group Instructions -->
								<%
									  if (Integer.parseInt(session.getAttribute("group_type").toString()) == 1) {
									%>

								<!-- Non-interacting Group Instructions -->
								<%
									  } else if (Integer.parseInt(session.getAttribute("group_type").toString()) == 2) {
									%>
								<h2>Group Work</h2>
								<p>You will work in group for this task. As part of the
									group, you can see what test scenarios others are producing.
									Although your scenarios can be inspired from the ones others
									produce, your scenarios must be different from the ones others
									produce in some aspect (e.g., different stimulus, response, or
									context).</p>

								<!-- Interacting Group Instructions -->
								<%
									  } else if (Integer.parseInt(session.getAttribute("group_type").toString()) == 3) {
									%>
								<h2>Group Work</h2>
								<p>You will work in group for this task. As part of the
									group, you can see what test scenarios others are producing and
									comment on those scenarios. Although your scenarios can be
									inspired from the ones others produce, your scenarios must be
									different from the ones others produce in some aspect (e.g.,
									different stimulus, response, or context).</p>

								<%
								  }
								%>

								<h2>Quantity and Quality</h2>

								<p>You required to come up with at least two unique test
									scenarios. For that, you will receive a base pay of USD 2.5.
									However, we encourage you to come up with as many test
									scenarios as possible.</p>

								<p>
									<b>Bonus: </b>Depending on the the number of test scenarios you
									produce and their quality, you may receive a Bonus of up to USD
									2.5. High quality test scenarios are easy to understand, cover
									a variety of scenarios, and, most importantly, help find faults
									in the application.
								</p>
								<%
								  if (Integer.parseInt(session.getAttribute("group_type").toString()) == 3) {
								%>
								<p>Further, your bonus will depend on how well you work as a
									team.</p>
								<%
								  }
								%>

							</div>
							<div class="ln_solid"></div>
							<a href="requirements.jsp">
								<button type="button" class="btn btn-success">I
									Understand, Continue</button>
							</a>
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