<%@ page language="java" pageEncoding="Windows-31J" %>
<%@ page contentType="text/html;charset=Windows-31J"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J"/>
	<meta http-equiv="Content-Style-type" content="text/css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<title>���O�C�����</title>
</head>
<body>
	<form name="loginForm" action="/jspServletSample/login" method="post">
	<table border="0">
		<tr>
			<td>
				���O:
			</td>
			<td>
				<input type="text" name="txtName" size="20" maxlength="20" onfocus="this.select()" value=""/>
			</td>
		</tr>
		<tr>
			<td>
				�p�X���[�h
			</td>
			<td>
				<input type="password" name="txtPassword" size="10" maxlength="10" onfocus="this.select()" value=""/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="loginBtn1" value="���O�C��1"/>
				<input type="submit" name="loginBtn2" value="���O�C��2"/>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>