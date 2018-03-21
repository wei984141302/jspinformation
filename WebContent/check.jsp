<%@ page language="java"
	import="java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.ResultSet,java.sql.Statement,java.util.ArrayList"
	pageEncoding="utf-8"%>
	
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<base href="<%=basePath%>">

		<title>check page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
<body>
     <%
        String loginId = request.getParameter("loginId");
		String pass = request.getParameter("password");

			// 第一步：加载驱动（驱动jar包必须加入classpath中）
			Class.forName("com.mysql.jdbc.Driver");
			// 第二步：建立连接（根据实际情况替换数据库的主机地址、端口号、数据库明、登录名、密码）
			Connection conn = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
			System.out.println("当前连接到的数据库=" + conn.getCatalog());// 查看当前连接到的数据库名
			// 第三步：创建Statement对象
			Statement stmt = conn.createStatement();// 只读的结果集
			// 第四步：执行操作（增删改查）
		
			ResultSet rs= stmt.executeQuery("select password from useinfo where loginId='"+ loginId + "'");
			if (rs.next() && rs.getString("password").equals(pass)) {
				out.println("<a href='showinfo.jsp' >"+loginId+"    "+"显示信息</a>");
			} else
				response.sendRedirect("fail.jsp");
		%>
			
</body>
</html>