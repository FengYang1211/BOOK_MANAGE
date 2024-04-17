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
                <img src="<%=basePath%>img/user2-160x160.jpg" class="img-circle" alt="User Image">
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
                <a href="<%=basePath%>pages/minmanager/userInfo.jsp">
                    <i class="fa fa-folder"></i> <span>UserManagement</span>
                </a>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
