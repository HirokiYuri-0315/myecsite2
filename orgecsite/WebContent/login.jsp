<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="stylesheet" href="./css/style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<!-- jQueryのやつ。 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="./footerFixed.js"></script>

	<title>ログイン</title>


</head>

<body>

	<jsp:include page="header.jsp" />


	<div id="main">
		<div id="top">
			<p>ログイン画面</p>
		</div>
		<div id="form-frame">
			<h3>商品を購入する際にはログインをお願いします。</h3>
			<br>
			<table>
			<s:form action="LoginAction2">		<!-- 新しいアクションを設定 -->
				<tr><td><label>ログインID:</label></td><td><s:textfield name="loginUserId" theme="simple"/></td></tr>
				<tr><td><label>ログインPASS:</label></td><td><s:password name="loginPassword" theme="simple"/></td></tr>
				<s:submit value="ログイン"/>
			</s:form>

			<s:if test='errorMessage != ""'>	<!-- 追加 -->
				<h4><s:property value="errorMessage" escape="false" /></h4>
			</s:if>
			</table>

			<div id="text-link">
				<p>新規ユーザー登録は
					<a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
				<p>Homeへ戻る場合は
					<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>


		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>