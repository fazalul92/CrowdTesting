<%@ page import ="java.sql.ResultSet" %>
        <%@page import="edu.rit.se.creativecrowd.DBProcess"%>
<div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="dashboard.jsp" class="site_title"><i class="fa fa-paw"></i> <span>Crowd Testing Research!</span></a>
            </div>

            <div class="clearfix"></div>


            <br />
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="dashboard.jsp"><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                  </li>                  
                  <% 
                  	String state = session.getAttribute("state").toString();
                  	DBProcess dbp = new DBProcess();
                  	ResultSet rsm = dbp.getMenu(state);
                  	while(rsm.next()) {
                  %>
                  	<li><a href="<%= rsm.getString("filename") %>"><i class="fa fa-bar-chart-o"></i> <%= rsm.getString("title") %> <span class="fa fa-chevron-down"></span></a>
                  </li>
                  <% } %>
                  <% if(Integer.parseInt(session.getAttribute("completion").toString())==1) { %>
                  <li><a href="completion.jsp"><i class="fa fa-home"></i> Get Completion Code <span class="fa fa-chevron-down"></span></a>
                  </li>  
                  <% } %>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>

              <ul class="nav navbar-nav navbar-right">
				<!-- 
                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li> -->
                <li>
                	<a href="exec/logout.jsp">
	                  	<button type="button" class="btn btn-success">Log Out</button>
	                  </a>
                
                </li>
                <li style="color: #2a3f54;margin-top: 18px;font-weight: bold;font-size: medium;">
                	<%= session.getAttribute("name").toString() %>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

<% dbp.disConnect(); %>