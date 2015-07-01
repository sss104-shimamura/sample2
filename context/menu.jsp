<%@ page language="java" pageEncoding="Windows-31J" %>
<%@ page contentType="text/html;charaset=Windows-31J" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J"/>
	<meta http-equiv="Content-Style-type" content="text/css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<title>メニュー画面</title>
</head>
<body>
	<%
		// リクエストスコープから名前を取得
		String nameReq = (String) request.getAttribute("NAME_REQ");
		
		// セッションスコープから名前を取得
		String nameSes = (String) session.getAttribute("NAME_SES");
	%>
	<%=nameReq%>さん、こんにちは！<br>
	<%=nameSes%>さん、こんにちは！<br>
	<input type="text" name="txtName" size="20" maxlength="20" onfocus="this.select()" value="<%=nameSes%>"/>
	<br>
	<br>
	
	<%-- 以下、悪い記述例 --%>
	<input type="button" value="戻る" onclick="history.back();"/><br>
	<input type="button" value="戻る" onclick="wiondow.location.href='login.jsp';"/><br>
	<a href="#" onclick="window.location.href='login.jsp';">戻る</a>
</body>
</html>