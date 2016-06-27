<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Cloud Testing</title>

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
              <h1>Login Form</h1>
              <div>
                <input name="username" type="text" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input name="password" type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="submit" class="btn btn-default submit" value="Log In" />
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <form method="post" action="exec/regprocess.jsp">
              <h1>Create Account</h1>
              <div>
                <input name="first_name" type="text" class="form-control" placeholder="First Name" required="" />
              </div>
              <div>
                <input name="last_name" type="text" class="form-control" placeholder="Last Name" required="" />
              </div>
              <div>
                <input name="mturk" type="text" class="form-control" placeholder="Mturk ID" required="" />
              </div>
              <div>
                <input name="email" type="email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input name="password" type="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="submit" class="btn btn-default submit" value="Submit"/>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

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