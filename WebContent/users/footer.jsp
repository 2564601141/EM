<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<table width="1004" border="0" align="center" cellpadding="15" cellspacing="0"
	background="themes/nzblue/images/nzcms/end_bg.gif" bgcolor="#FFFFFF">
	<tr>
		<td align="center" valign="top" class="end"><br />
			<table border="0" cellpadding="3" cellspacing="0">
				<tr>
					<td align="center">&nbsp;</td>
					<td align="center">
						版权所有 &copy; <a href="<%=basePath%>admin/index.jsp" target="_blank"><font
							color="#FF6600">后台管理员入口</font> </a><br /></td>
				</tr>
			</table></td>
	</tr>
</table>

<%
	String message = (String) session.getAttribute("message");
	if (message == null) {
		message = "";
	}
	if (!message.trim().equals("")) {
		out.println("<script language='javascript'>");
		out.println("alert('" + message + "');");
		out.println("</script>");
	}
	session.removeAttribute("message");
%>