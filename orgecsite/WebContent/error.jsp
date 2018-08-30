<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta http-equiv="refresh" content="4;URL='LogoutAction'" />
	<title>ERROR画面</title>

	<link rel="stylesheet" href="./css/style.css">
</head>

<body>
	<div id="header">
		<div id="pr">
		</div>
	</div>

	<div id="main">
		<div id="top">
			<p>ERROR</p>
		</div>
		<div>

			<h2>エラーが発生しました</h2><br>
			<br>
			<s:if test='errorMessage != ""'>	<!-- 追加 -->
				<h4><s:property value="errorMessage" escape="false" /></h4>
			</s:if>

			<br>
			<div>
				<p><a href='<s:url action="LogoutAction"/>'>Home画面</a>から操作をやり直してください。</p>
			</div>
		</div>
	</div>

	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>