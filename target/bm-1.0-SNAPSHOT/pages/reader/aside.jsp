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
                <p>${sessionScope.readerInfo.RName}</p><br />
            </div>
        </div>
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">菜单</li>
            <!-- 菜单 -->
           
            </li>
               <li class="treeview">
                <a href="<%=basePath%>pages/reader/bookDatalist.jsp">
                    <i class="fa fa-folder"></i> <span>OrderBook</span>
                </a>
            </li>
               <li class="treeview">
                <a href="<%=basePath%>pages/reader/reserveBorrowBooks.jsp">
                    <i class="fa fa-folder"></i> <span>BooksToBePickedUp</span>
                </a>
            </li>

               <li class="treeview">
                <a href="<%=basePath%>pages/reader/borrowBooks.jsp">
                    <i class="fa fa-folder"></i> <span>OnLoan</span>
                </a>
            </li>

            <li class="treeview">
                <a href="<%=basePath%>pages/reader/reserveGiveBack.jsp">
                    <i class="fa fa-folder"></i> <span>ReturnInformation</span>
                </a>
            </li>
<%--            <li class="treeview">--%>
<%--                <a href="<%=basePath%>pages/reader/reserveGiveBack.jsp">--%>
<%--                    <i class="fa fa-folder"></i> <span>个人信息</span>--%>
<%--                </a>--%>
<%--            </li>--%>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>