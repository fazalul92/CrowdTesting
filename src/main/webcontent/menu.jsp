
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Crowd Testing Research!</span></a>
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
                  <li class="active"><a><i class="fa fa-edit"></i> Pre-requisite Surveys <span class="fa fa-chevron-down"></span></a>
                    
                    <ul class="nav child_menu" style="display:block;">
                      <% switch((Integer) session.getAttribute("state")) { 
                      case 0: out.println("<li><a href='presurvey.jsp'>Pre-survey</a></li>");
                    			break;
                      case 1: out.println("<li><a href='persona.jsp'>Personality Survey</a></li>");
                    			break;
                      case 2: out.println("<li><a href='creativity.jsp'>Creativity survey</a></li>");
                    			break;
                      case 99: out.println("<li><a href='postsurvey.jsp'>Post survey</a></li>");
                    			break;
                      default: out.println("<li>All Surveys Completed</li>");
                      			break;
                      } %>
                      
                    </ul>
                  </li>
                  <% if((Integer) session.getAttribute("state") == 9) { %>
                  <li><a href="debrief.jsp"><i class="fa fa-bar-chart-o"></i> Further Instructions <span class="fa fa-chevron-down"></span></a>
                  </li>
                  
                  <% } %>
                  <% if((Integer) session.getAttribute("state") == 10) { %>
                  <li><a href="createreqr.jsp"><i class="fa fa-bar-chart-o"></i> Add Requirements <span class="fa fa-chevron-down"></span></a>
                  </li>
                  <li><a href="requirements.jsp"><i class="fa fa-bar-chart-o"></i> View Requirements <span class="fa fa-chevron-down"></span></a>
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
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->