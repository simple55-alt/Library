<%@ page import="domain.BookInfo" %>
<%@ page import="java.util.Vector" %><%--
  Created by IntelliJ IDEA.
  User: xieyezi
  Date: 2018/5/29
  Time: 下午4:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Vector<BookInfo> searchresult = (Vector<BookInfo>) request.getAttribute("searchresult");
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>搜索结果</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="assets/css/amazeui.datatables.min.css"/>
    <link rel="stylesheet" href="assets/css/app.css">
    <script src="assets/js/jquery.min.js"></script>

</head>

<body data-type="widgets">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 头部 -->
    <header>
        <!-- logo -->
        <div class="am-fl tpl-header-logo">
            <a href="index.jsp"><img src="assets/images/libLog.jpg" alt=""></a>
        </div>
        <!-- 右侧内容 -->
        <div class="tpl-header-fluid">
        </div>

    </header>
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <!-- 内容区域 -->
    <div class="tpl-content-wrapper" style="margin-left: 0;">
        <div class="row-content ">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title  am-cf">图书列表</div>
                        </div>
                        <div class="widget-body  am-fr">

                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-6 am-u-lg-offset-3 am-u-md-offset-3"
                                 style="margin-bottom: 3%;">
                                <form action="./SearchServlet" method="post" id="searchForm">
                                    <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                        <input type="text" name="search" class="am-form-field "
                                               placeholder="图书书名 / 图书编号 / 作者">

                                        <span class="am-input-group-btn ">
                                         <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
                                                 type="submit"></button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="am-u-sm-12">
                                <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black ">
                                    <thead>
                                    <tr>
                                        <th>图书缩略图</th>
                                        <th>图书书名</th>
                                        <th>作者</th>
                                        <th>出版社</th>
                                        <th>出版日期</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        for (int i = 0; searchresult != null && i < searchresult.size(); i++) {

                                    %>
                                    <tr class="even gradeX">
                                        <td>
                                            <img src="assets/img/book0<%=i+1%>.jpg" class="tpl-table-line-img" alt="">
                                        </td>
                                        <td class="am-text-middle"><%=searchresult.get(i).getBookName()%>
                                        </td>
                                        <td class="am-text-middle"><%=searchresult.get(i).getAuthor()%>
                                        </td>
                                        <td class="am-text-middle"><%=searchresult.get(i).getPublishCompany()%>
                                        </td>
                                        <td class="am-text-middle"><%=searchresult.get(i).getComeUpTime()%>
                                        </td>
                                        <td class="am-text-middle">
                                            <div class="tpl-table-black-operation">
                                                <a href="javascript:void(0);" onclick="borrow()">
                                                    <i class="am-icon-pencil"></i> 借阅
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                    <%}%>
                                    <!-- more data -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="am-u-lg-12 am-cf">

                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled">
                                            <a href="#">«</a>
                                        </li>
                                        <li class="am-active">
                                            <a href="#">1</a>
                                        </li>
                                        <li>
                                            <a href="#">2</a>
                                        </li>
                                        <li>
                                            <a href="#">3</a>
                                        </li>
                                        <li>
                                            <a href="#">4</a>
                                        </li>
                                        <li>
                                            <a href="#">5</a>
                                        </li>
                                        <li>
                                            <a href="#">»</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
<script>
    function borrow() {
        alert("请到图书管理员处借阅～～")
    }
</script>
</body>

</html>