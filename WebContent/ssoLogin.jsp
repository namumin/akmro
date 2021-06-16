<%@ page extends="wdf.jsp.BaseJSPPage"
	contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="user" class="wdf.dataobject.BUObject" scope="session" />
<%  
   response.setHeader("Pragma","no-cache"); 
   response.setDateHeader("Expires",0); 
   response.setHeader("Cache-Control","no-store");
   response.setHeader("SET-COOKIE", "JSESSIONID=fFDSFSDFSDF; secure");
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<META NAME="Robots" id="Robots" content="noindex">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>

<script>
	location.href="SSOloginMRO.do?principalID=<%=request.getParameter("principalID")%>&mpLogin=<%=request.getParameter("mpLogin")%>";
</script>