<%
	int tid = Integer.parseInt(request.getParameter("id"));
	String gid = session.getAttribute("groupid").toString();
	DBProcess dbProc = new DBProcess();
	ResultSet rs = dbProc.viewTestCase(Integer.toString(tid), gid);
	if (!rs.next() || rs.getInt("uid")!=Integer.parseInt(session.getAttribute("userid").toString()) ) {    
	    response.sendRedirect("viewTestCases.jsp?id="+tid);
	} 
%>

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
                <h3>Test Scenarios</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
            
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Edit Test Scenario<small></small></h2>
                  <div class="clearfix"></div>
                </div>
                <form method="post" action="exec/editTestCase.jsp">
                <div class="x_content ">
                  <div id="alerts"></div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <input name="requirementID" type="hidden" value="<%= rs.getInt("rid") %>">
                    <input name="testcaseID" type="hidden" value="<%= rs.getInt("id") %>">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="stimuli" id="stimuli" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Stimulus" maxlength=500><%= rs.getString("stimuli") %></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="context" id="context" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Context" maxlength=500><%= rs.getString("context") %></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="behavior" id="behavior" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Response" maxlength=500><%= rs.getString("behavior") %></textarea>
                  </div>
                  
                </div>
                  
                  
                  <br />

                  <div class="ln_solid"></div>

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
            </div>
          </div>
        </div>
        
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
  </body>
</html>