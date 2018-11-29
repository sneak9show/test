<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/style-manager.css">
<script>
function goUserInfoSearchAction(){
 document.getElementById('form-user-info-search').action="UserInfoSearchAction";
}
function goUserInfoRegisterAction(){
 document.getElementById('form-user-info-list').action="UserInfoRegisterAction";
}
function goUserInfoEditAction(element){
 var id_value = element.id;
 var id = document.getElementById('selectedId0').value=id_value;
 document.getElementById('form-user-info-list').action="UserInfoEditAction";
}
function goUserInfoUpdateAction(){
 document.getElementById('form-user-info-list').action="UserInfoUpdateAction";
}
function goUserInfoDeleteAction(element){
 var id_value = element.id;
 document.getElementById('selectedId0').value=id_value;
 ret = confirm("削除します。よろしいですか？");
    if ( ret == true ){
     document.getElementById('form-user-info-list').action="UserInfoDeleteAction";
    }
}
</script>
<title>会員情報</title>

</head>
<body>

<div id="contents">
<h3>会員情報画面</h3>

<s:if test="!#session.familyNameErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
  <s:iterator value="#session.familyNameErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!#session.firstNameErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.firstNameErrorMessageList"><s:property />
</s:iterator>
</div>
</div>
</s:if>
<s:if test="!#session.familyNameKanaErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.familyNameKanaErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!#session.firstNameKanaErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.firstNameKanaErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!#session.emailErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.emailErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!session.loginIdErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.loginIdErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!#session.passwordErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.passwordErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>
<s:if test="!#session.deleteErrorMessageList.isEmpty()">
 <div class="error">
 <div class="error-message">
 <s:iterator value="#session.passwordErrorMessageList"><s:property />
</s:iterator>
 </div>
 </div>
</s:if>

<s:form action="UserInfoRegisterAction" id="form-user-info-search" name="form-user-info-search">

<table class="vertical-list-table-mini">
<tr>
 <th scope="row">ログインID</th>
 <td><s:textfield name="loginId" value="%{#session.loginId}" label="ログインID" placeholder="ログインID" class="txt" /></td>
 <th scope="row">パスワード</th>
 <td><s:password name="password" value="" label="パスワード" placeholder="パスワード" class="txt" /></td>
</tr>
<tr>
 <th scope="row">姓</th>
 <td><s:textfield name="familyName" value="%{#session.familyName}" label="姓" placeholder="姓" class="txt" /></td>
 <th scope="row">名</th>
 <td><s:textfield name="firstName" value="%{#session.firstName}" label="名" placeholder="名" class="txt" /></td>
</tr>
<tr>
 <th scope="row">姓ふりがな</th>
 <td><s:textfield name="familyNameKana" value="%{#session.familyNameKana}" label="姓ふりがな" placeholder="姓ふりがな" class="txt" /></td>
 <th scope="row">名ふりがな</th>
 <td><s:textfield name="firstNameKana" value="%{#session.firstNameKana}" label="名ふりがな" placeholder="名ふりがな" class="txt" /></td>
</tr>
<tr>
 <th scope="row">性別</th>
 <td><s:radio name="sex" list="%{#session.sexListForSearch}" value="%{#session.sex}" label="性別" placeholder="性別"/></td>
 <th scope="row">メールアドレス</th>
 <td><s:textfield name="email" value="%{#session.email}" label="メールアドレス" placeholder="メールアドレス" class="txt" /></td>
</tr>
<tr>
 <th scope="row">ステータス</th>
 <td><s:radio name="status" list="%{#session.statusListForSearch}" value="%{#session.status}" label="ステータス" placeholder="ステータス"/></td>
 <th scope="row">ログインフラグ</th>
 <td><s:radio name="logined" list="%{#session.loginedListForSearch}" value="%{#session.logined}" label="ログインフラグ" placeholder="ログインフラグ"/></td>
</tr>
</table>
<div class="submit_btn_box">
<div id=".contents-btn-set">
<s:submit value="検索" class="submit_btn_mini" onclick="goUserInfoSearchAction();"/>
</div>
</div>
</s:form>

<s:if test="#session.userInfoDtoList.size()>0">
<s:form action="UserInfoEditAction" id="form-user-info-list">
<table class="horizontal-list-table-mini">
<thead>
<tr>
 <th><s:label value="ID"/></th>
 <th><s:label value="ログインID"/></th>
 <th><s:label value="パスワード"/></th>
 <th><s:label value="姓"/></th>
 <th><s:label value="名"/></th>
 <th><s:label value="姓かな"/></th>
 <th><s:label value="姓かな"/></th>
 <th><s:label value="性別"/></th>
 <th><s:label value="メールアドレス"/></th>
 <th><s:label value="ステータス"/></th>
 <th><s:label value="ログインフラグ"/></th><!--
 <th><s:label value="登録日"/></th>
 <th><s:label value="更新日"/></th> -->
 <th><s:label value=""/></th>
 <th><s:label value=""/></th>
</tr>


</thead>
<tbody>
<tr>
 <td><!-- <s:textfield name="id" style="width:30px"/> --></td>
 <td><s:textfield name="userId" style="width:50px"/></td>
 <td><s:textfield name="password" style="width:50px"/></td>
 <td><s:textfield name="familyName" style="width:100px"/></td>
 <td><s:textfield name="firstName" style="width:100px"/></td>
 <td><s:textfield name="familyNameKana" style="width:100px"/></td>
 <td><s:textfield name="firstNameKana" style="width:100px"/></td>
 <td>
 <s:select list="%{#session.sexList}" value="%{#session.sex}"/>
 </td>
 <td><s:textfield name="email" style="width:100px"/></td>
 <td>
 <s:select list="%{#session.statusList}" value="%{#session.status}"/>
 </td>
 <td>
 <s:if test="logined==0">未ログイン</s:if>
 <s:if test="logined==1">ログイン中</s:if>
 </td><!--
 <td><s:property value="registDate"/></td>
 <td><s:property value="updateDate"/></td> -->
 <td><div id=".contents-btn-set">
  <s:submit value="+" class="submit_btn_mini" onclick="goUserInfoRegisterAction();"/>
  </div>
 </td>
 <td>
 <div id=".contents-btn-set">
  <s:submit value="取消" class="submit_btn_mini" onclick="goUserInfoRegisterAction();"/>
  </div>
 </td>
</tr>



<s:iterator value="#session.userInfoDtoList" status="st">
<tr>
 <td><s:property value="id"/><s:hidden name="id" value="%{id}"/><s:hidden name="selectedId" id="selectedId%{#st.index}" value=""/></td>
 <td><s:property value="userId"/><s:hidden name="userId" value="%{userId}"/></td>
 <td><s:property value="password"/><s:hidden name="password" value="%{password}"/></td>
 <td><s:property value="familyName"/><s:hidden name="familyName" value="%{familyName}"/></td>
 <td><s:property value="firstName"/><s:hidden name="firstName" value="%{firstName}"/></td>
 <td><s:property value="familyNameKana"/><s:hidden name="familyNameKana" value="%{familyNameKana}"/></td>
 <td><s:property value="firstNameKana"/><s:hidden name="firstNameKana" value="%{firstNameKana}"/></td>
 <td>
 <s:if test="sex==0">男性</s:if>
 <s:if test="sex==1">女性</s:if>
 <s:hidden name="sex" value="%{sex}"/>
 </td>
 <td><s:property value="email"/><s:hidden name="email" value="%{email}"/></td>
 <td>
 <s:if test="status==0">一般</s:if>
 <s:if test="status==1">管理者</s:if>
 <s:hidden name="status" value="%{status}"/>
 </td>
 <td>
 <s:if test="logined==0">未ログイン</s:if>
 <s:if test="logined==1">ログイン中</s:if>
 <s:hidden name="logined" value="%{logined}"/>
 </td><!--
 <td><s:property value="registDate"/></td>
 <td><s:property value="updateDate"/></td> -->
 <td><s:submit id="%{#st.index}" value="編集" class="submit_btn_mini" onclick="goUserInfoEditAction(this);"/></td>
 <td><s:submit id="%{#st.index}" value="削除" class="submit_btn_mini" onclick="goUserInfoDeleteAction(this);"/></td>
</tr>
</s:iterator>
</tbody>
</table>
</s:form>

</s:if>
<s:else>
<div class="info">
会員情報はありません。
</div>
</s:else>
</div>

</body>
</html>