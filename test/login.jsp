<%@ page language="java" contentType="text/html; charset=UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<%@ include file="/WEB-INF/views/commons/taglibs.jsp" %>
			<title>
				<fmt:message key="login.title" />
			</title>
			<script type="text/javascript" src="${ctx}/resources/loader/yepnope.min.js"></script>
			<script type="text/javascript">
			pagesize = eval('(${fields.pagesize==null?"{}":fields.pagesize})');
			ctx = "${ctx}";
			yepnope({
				load: [ //extjs
					"${ctx}/resources/extjs/resources/css/ext-all.css",
					"${ctx}/resources/extjs/adapter/ext/ext-base.js",
					"timeout=90000!${ctx}/resources/extjs/ext-all.js",
					"${ctx}/resources/extjs/ext-lang-zh_CN.js",
					"${ctx}/resources/extjs/ux/ExtMD5.js",
					"${ctx}/resources/extjs/ux/TabCloseMenu.js",
					"${ctx}/resources/extjs/ux/SearchField.js",
					"${ctx}/resources/extjs/ux/ProgressBarPager.js",
					//通用
					"${ctx}/resources/js/Ext.ux.override.js",
					"${ctx}/resources/js/share.js",
					//jquery
					"timeout=30000!${ctx}/resources/jquery/jquery-1.7.2.min.js",
					"${ctx}/resources/jquery/jquery.json-2.2-min.js",
					"${ctx}/resources/jquery/jquery.center-min.js",
					"${ctx}/resources/css/default.css",
					"preload!${ctx}/resources/js/login.js"
				],
				complete: function() {
					Ext.QuickTips.init();
					Ext.form.Field.prototype.msgTarget = 'title'; //qtip,title,under,side
					Ext.state.Manager.setProvider(new Ext.state.CookieProvider());
					Ext.BLANK_IMAGE_URL = '${ctx}/resources/extjs/resources/images/default/s.gif';
					yepnope.injectJs("${ctx}/resources/js/login.js");
					$("#logo-table a").html('<img src="${ctx}/resources/images/login.gif"></img>');
				}
			});
			</script>
	</head>

	<body class="x-border-layout-ct" style="position: static; overflow: hidden;">
		<center>
			<table id="logo-table" style="margin-top: 5%;">
				<tr>
					<td align="center" height="100">
						<a href="${ctx}/"></a>
					</td>
				</tr>
			</table>
		</center>
		<div id="login-win-div"></div>
	</body>

	</html>
