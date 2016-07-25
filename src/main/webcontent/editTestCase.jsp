<%
	int tid = Integer.parseInt(request.getParameter("id"));
	String gid = session.getAttribute("groupid").toString();
	DBProcess dbProc = new DBProcess();
	ResultSet rs = dbProc.viewTestCase(Integer.toString(tid), gid);
	if (!rs.next() || rs.getInt("uid")!=(Integer) session.getAttribute("userid") ) {    
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
                <h3>Test Cases</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
            
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Edit Test Case<small></small></h2>
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
                    <textarea name="context" id="context" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Context" maxlength=500><%= rs.getString("context") %></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="stimuli" id="stimuli" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Stimuli" maxlength=500><%= rs.getString("stimuli") %></textarea>
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                    <textarea name="behavior" id="behavior" style="height:100px" class="col-md-12 col-sm-12 col-xs-12 form-group" placeholder="Behavior" maxlength=500><%= rs.getString("behavior") %></textarea>
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
	<script type="text/javascript">
			   $("#subm").click(function(){
			       console.log($('#presurvey').serialize());
			  }); 
	</script>
    <!-- bootstrap-wysiwyg -->
    <script src="vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="vendors/google-code-prettify/src/prettify.js"></script>
    
	<!-- bootstrap-wysiwyg -->
    <script>
      $(document).ready(function() {
        function initToolbarBootstrapBindings() {
          var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier',
              'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
              'Times New Roman', 'Verdana'
            ],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
          $.each(fonts, function(idx, fontName) {
            fontTarget.append($('<li><a data-edit="fontName ' + fontName + '" style="font-family:\'' + fontName + '\'">' + fontName + '</a></li>'));
          });
          $('a[title]').tooltip({
            container: 'body'
          });
          $('.dropdown-menu input').click(function() {
              return false;
            })
            .change(function() {
              $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
            })
            .keydown('esc', function() {
              this.value = '';
              $(this).change();
            });

          $('[data-role=magic-overlay]').each(function() {
            var overlay = $(this),
              target = $(overlay.data('target'));
            overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
          });

          if ("onwebkitspeechchange" in document.createElement("input")) {
            var editorOffset = $('#editor').offset();

            $('.voiceBtn').css('position', 'absolute').offset({
              top: editorOffset.top,
              left: editorOffset.left + $('#editor').innerWidth() - 35
            });
          } else {
            $('.voiceBtn').hide();
          }
        }

        function showErrorAlert(reason, detail) {
          var msg = '';
          if (reason === 'unsupported-file-type') {
            msg = "Unsupported format " + detail;
          } else {
            console.log("error uploading file", reason, detail);
          }
          $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
            '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
        }

        initToolbarBootstrapBindings();

        $('#editor').wysiwyg({
          fileUploadError: showErrorAlert
        });

        window.prettyPrint;
        prettyPrint();
      });
    </script>
    <!-- /bootstrap-wysiwyg -->
  </body>
</html>