<%@ page language="java" pageEncoding="Windows-31J" %>
<%@ page contentType="text/html;charaset=Windows-31J" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J"/>
	<meta http-equiv="Content-Style-type" content="text/css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<title>���j���[���</title>
</head>
<body>
	<%
		// ���N�G�X�g�X�R�[�v���疼�O���擾
		String nameReq = (String) request.getAttribute("NAME_REQ");
		
		// �Z�b�V�����X�R�[�v���疼�O���擾
		String nameSes = (String) session.getAttribute("NAME_SES");
	%>
	<%=nameReq%>����A����ɂ��́I<br>
	<%=nameSes%>����A����ɂ��́I<br>
	<input type="text" name="txtName" size="20" maxlength="20" onfocus="this.select()" value="<%=nameSes%>"/>
	<br>
	<br>
	
	<%-- �ȉ��A�����L�q�� --%>
	<input type="button" value="�߂�" onclick="history.back();"/><br>
	<input type="button" value="�߂�" onclick="wiondow.location.href='login.jsp';"/><br>
	<a href="#" onclick="window.location.href='login.jsp';">�߂�</a>
</body>
</html>