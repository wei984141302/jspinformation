<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'login.jsp' starting page</title>

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
	basepath：<%=basePath%></br>
	
	
		<form action="check.jsp" method="post">
			<table>
				<tr>
					<td>
						loginId:
					</td>
					<td>
						<input type="text" name="loginId">
					</td>
				</tr>
				<tr>
					<td>
						password:
					</td>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>
						<input type="reset" value="清空">
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交">
				</tr>
			</table>
		</form>
	
	</body>
</html>
