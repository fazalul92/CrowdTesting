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
	                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam commodo arcu lorem, ut efficitur justo posuere id. Phasellus id nisi ut turpis accumsan posuere. Praesent sit amet sem ipsum. Quisque placerat ipsum eget aliquam dapibus. Nam ultricies dui nulla, et suscipit lacus efficitur eget. Nulla cursus commodo tortor, ut semper nibh volutpat ultrices. Donec dapibus tellus leo, vel vulputate mauris sodales sit amet.
						 
						<!-- Nominal Group Instructions -->
						<% if(Integer.parseInt(session.getAttribute("group_type").toString()) == 1) { %>
						</p><p>In vel sapien laoreet, venenatis metus eget, porttitor augue. Phasellus viverra massa vel mi commodo imperdiet. Etiam urna nibh, sodales ac auctor at, mollis vel libero. Cras eleifend, mi et egestas facilisis, felis odio tincidunt lorem, porta malesuada ligula enim vel leo. Ut efficitur quis sapien eget auctor. Curabitur et erat in nulla viverra consectetur. Praesent vehicula velit elit. Aenean dui tellus, congue imperdiet velit eget, fringilla consectetur justo. Aenean posuere libero lorem, quis aliquam ipsum pharetra quis. Duis pulvinar vel arcu pretium vestibulum. Duis faucibus eros ut pulvinar pellentesque. Phasellus eu imperdiet turpis.
						
						<!-- Non-interacting Group Instructions -->
						<% }  else if (Integer.parseInt(session.getAttribute("group_type").toString()) == 2) { %>
						</p><p>In vel sapien laoreet, venenatis metus eget, porttitor augue. Phasellus viverra massa vel mi commodo imperdiet. Etiam urna nibh, sodales ac auctor at, mollis vel libero. Cras eleifend, mi et egestas facilisis, felis odio tincidunt lorem, porta malesuada ligula enim vel leo. Ut efficitur quis sapien eget auctor. Curabitur et erat in nulla viverra consectetur. Praesent vehicula velit elit. Aenean dui tellus, congue imperdiet velit eget, fringilla consectetur justo. Aenean posuere libero lorem, quis aliquam ipsum pharetra quis. Duis pulvinar vel arcu pretium vestibulum. Duis faucibus eros ut pulvinar pellentesque. Phasellus eu imperdiet turpis.
						
						<!-- Interacting Group Instructions -->
						<% }  else if (Integer.parseInt(session.getAttribute("group_type").toString()) == 3) { %>
						</p><p>In vel sapien laoreet, venenatis metus eget, porttitor augue. Phasellus viverra massa vel mi commodo imperdiet. Etiam urna nibh, sodales ac auctor at, mollis vel libero. Cras eleifend, mi et egestas facilisis, felis odio tincidunt lorem, porta malesuada ligula enim vel leo. Ut efficitur quis sapien eget auctor. Curabitur et erat in nulla viverra consectetur. Praesent vehicula velit elit. Aenean dui tellus, congue imperdiet velit eget, fringilla consectetur justo. Aenean posuere libero lorem, quis aliquam ipsum pharetra quis. Duis pulvinar vel arcu pretium vestibulum. Duis faucibus eros ut pulvinar pellentesque. Phasellus eu imperdiet turpis.
						<% } %>
						
						</p><p>In rhoncus ullamcorper est. Etiam varius dolor at ex scelerisque vulputate. Suspendisse ornare lorem in magna sagittis posuere. Aenean cursus nunc mollis porttitor lacinia. Nunc lacus lectus, rhoncus a turpis at, semper varius mi. Etiam vel hendrerit ipsum, eget tempus enim. Nullam rhoncus tincidunt felis ac mollis. Donec sit amet sem vestibulum, maximus leo sit amet, mattis nulla. Phasellus et nunc ut mauris gravida porttitor. Cras nec consequat orci, quis bibendum magna. Vestibulum lobortis magna et mauris dictum imperdiet.
	                  </p>
	                  </div>
	                  <div class="ln_solid"></div>
	                  <a href="requirements.jsp">
	                  	<button type="button" class="btn btn-success">I Understand, Continue</button>
	                  </a>
	            </div>
            </div>
            <!-- End Panel -->
            
            
           </div>
        </div>
        <!-- /page content -->

        
	<%@ include file="scripts.jsp" %>
	
    <script src="build/js/custom.min.js"></script>
  </body>
</html>