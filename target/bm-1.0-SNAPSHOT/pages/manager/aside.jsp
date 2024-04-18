<%--
  Created by IntelliJ IDEA.
  User: zpf
  Date: 2020/6/26
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<%=basePath%>img/user.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${managerInfo.name}</p><br />
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <!-- 菜单 -->
            <li class="treeview">
                <a href="<%=basePath%>pages/manager/bookDatalist.jsp">
                    <i class="fa fa-folder"></i> <span>BookManagement</span>
                </a>
            </li>
            <li class="treeview">
                <a href="<%=basePath%>pages/manager/bookTypes.jsp">
                    <i class="fa fa-folder"></i> <span>BookClassificationManagement</span>
                </a>
            </li>

              <li class="treeview">
                <a href="<%=basePath%>pages/manager/borrowBooks.jsp">
                    <i class="fa fa-folder"></i> <span>BorrowInformation</span>
                </a>
            </li>
              <li class="treeview">
                <a href="<%=basePath%>pages/manager/reserveBorrowBooks.jsp">
                    <i class="fa fa-folder"></i> <span>BookingInformation</span>
                </a>
            </li>
            <li class="treeview">
                <a href="<%=basePath%>pages/manager/userInfo.jsp">
                    <i class="fa fa-folder"></i> <span>UserManagement</span>
                </a>
            </li>



            <li class="treeview">
                <a href="<%=basePath%>pages/manager/reserveGiveBack.jsp">
                    <i class="fa fa-folder"></i> <span>ReturnInformation</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>StatisticalManagement</span>
                    <span class="pull-right-container">
		                        <i class="fa fa-angle-left pull-right"></i>
		                    </span>
                </a>
                <ul class="treeview-menu">
                    <li id="<%=basePath%>pages/manager/GBStatistics.jsp">
                        <a href="GBStatistics.jsp">
                            <i class="fa fa-circle-o"></i> Borrowing/Returning
                        </a>
                    </li>
                    <li id="<%=basePath%>pages/manager/businessStatistics.jsp">
                        <a href="businessStatistics.jsp">
                            <i class="fa fa-circle-o"></i> Turnover
                        </a>
                    </li>
                    <li id="<%=basePath%>pages/manager/salesStatistics.jsp">
                        <a href="salesStatistics.jsp">
                            <i class="fa fa-circle-o"></i> Sales
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
