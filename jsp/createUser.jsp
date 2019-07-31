<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
  <link rel="stylesheet" href="./css/cssreset.css">
  <link rel="stylesheet" href="./css/panther.css">
  <link rel="stylesheet" href="./css/create.css">
  <link rel="stylesheet" href="./css/header.css">
  <title>ユーザー情報入力画面</title>

</head>

<body>

	<jsp:include page="header.jsp" />

	<div id="contents">
		<h1>ユーザー情報入力画面</h1>

 		<!--各種エラーメッセージ -->

		<s:if
			test="familyNameErrorMessageList!=null && familyNameErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="familyNameErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="firstNameErrorMessageList!=null && firstNameErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="firstNameErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="familyNameKanaErrorMessageList!=null && familyNameKanaErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="familyNameKanaErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="firstNameKanaErrorMessageList!=null && firstNameKanaErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="firstNameKanaErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="emailErrorMessageList!=null && emailErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="emailErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="userIdErrorMessageList!=null && userIdErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="userIdErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="passwordErrorMessageList!=null && passwordErrorMessageList.size()>0">
			<div class="error">
				<div class="error-message">
					<s:iterator value="passwordErrorMessageList">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>
		<s:if
			test="isExistsUserErrorMessage!=null && !isExistsUserErrorMessage.isEmpty()">
			<div class="error">
				<div class="error-message">
					<s:iterator value="isExistsUserErrorMessage">
						<s:property />
						<br>
					</s:iterator>
				</div>
			</div>
		</s:if>

		<!-- 入力フォーム -->

		<s:form action="CreateUserConfirmAction">
			<table class="vertical-list-table">
				<tr>
					<th scope="row">姓</th>
					<td><s:textfield name="familyName"
							value="%{familyName}" placeholder="姓" class="text" /></td>
				</tr>
				<tr>
					<th scope="row">名</th>
					<td><s:textfield name="firstName"
							value="%{firstName}" placeholder="名" class="text" /></td>
				</tr>
				<tr>
					<th scope="row">姓ふりがな</th>
					<td><s:textfield name="familyNameKana"
							value="%{familyNameKana}" placeholder="姓ふりがな"
							class="text" /></td>
				</tr>
				<tr>
					<th scope="row">名ふりがな</th>
					<td><s:textfield name="firstNameKana"
							value="%{firstNameKana}" placeholder="名ふりがな" class="text" /></td>
				</tr>
				<tr>
					<th scope="row">性別</th>
					<td><s:radio name="sex" list="%{#session.sexList}"
							value="%{#session.sex}" /></td>
				</tr>
				<tr>
					<th scope="row">メールアドレス</th>
					<td><s:textfield name="email" value="%{email}"
							placeholder="メールアドレス" class="text" /></td>
				</tr>
				<tr>
					<th scope="row">ユーザーID</th>
					<td><s:textfield name="userId"
							value="%{userIdForCreateUser}" placeholder="ユーザーID"
							class="text" /></td>
				</tr>
				<tr>
					<th scope="row">パスワード</th>
					<td><s:password name="password" value="" placeholder="パスワード"
							class="text" /></td>
				</tr>
			</table>

			<div class="submit_btn_box3">
				<s:submit value="確認" class="submit_btn3" />
			</div>

		</s:form>
	</div>

</body>
</html>