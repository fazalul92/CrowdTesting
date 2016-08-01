	<%
		if(session.getAttribute("auth")!=null && ((Boolean) session.getAttribute("auth")==true)){
			response.sendRedirect("dashboard.jsp");
		}
	%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Crowd Testing</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post" action="exec/loginprocess.jsp">
              <h1>Login</h1>
              <div>
                <input name="mturk" type="text" class="form-control" placeholder="Amazon MTurk ID" required="" />
              </div>
              <div>
                <input type="submit" class="btn btn-default submit" value="Log In" />
              </div>

              <div class="clearfix"></div>

						<div>
							<p>
								This HIT is part of a research study being conducted at
								Rochester Institute of Technology. Please review the <a
									href="doc/informed_consent.pdf">informed consent</a> form and <b>check
									the box</b> below to continue.
							</p>

							<p>I have read and understand the information in informed
								consent form. I will receive a copy of this form if I ask for
								one. I agree to participate in this study with the understanding
								that I may choose not to participate or to stop participating at
								any time without penalty or loss of benefits to which I am
								otherwise entitled. I understand that by clicking to proceed
								with the study, I agree to consent to these terms.</p>
						</div>
						<div class="separator">
                <div class="clearfix"></div>
                <br />

                <div>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>