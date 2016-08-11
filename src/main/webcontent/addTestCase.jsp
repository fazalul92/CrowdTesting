<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ include file="head.jsp" %>
  </head>
  <%
  	DBProcess dbProc = new DBProcess();
  	String rid = request.getParameter("id");
  	ResultSet rs1 = dbProc.getRequirement(rid);
  	rs1.next();
  %>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@ include file="menu.jsp" %>
		
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Test Scenarios</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
            <!--  Start Panel -->
            <div class="col-md-12 col-sm-12 col-xs-12">
	            <div class="x_panel">
	                  <div class="x_title">
	                    <h2>Requirement</h2>
	                    <div class="clearfix"></div>
	                  </div>
	                  <div class="x_content">
	                    <%= rs1.getString("description") %>
	                  </div>
	            </div>
            </div>
            
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Add Test Scenario<small></small></h2>
                  <div class="clearfix"></div>
                </div>
                <form method="post" action="exec/addTestCase.jsp">
                <div class="x_content ">
                  <div id="alerts"></div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <input name="requirementID" type="hidden" value="<%= request.getParameter("id") %>">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="stimuli" required id="stimuli" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Stimulus" maxlength="500"></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="context" required id="context" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Context" maxlength="500"></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="behavior" required id="behavior" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Response" maxlength="500"></textarea>
                  </div>
                  
                </div>
                  
                  
                  <br />

                  <div class="ln_solid"></div>

                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="reset" class="btn btn-primary">Cancel</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                </div>
                </form>
              </div>
            </div>
            
            
            </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
  </body>
</html>