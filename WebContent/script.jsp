<%@ page extends="wdf.jsp.BaseJSPPage" contentType="text/html; charset=UTF-8"%>
<%@page import="wdf.dataobject.BUObjectCache"%>
<%@page import="wdf.dataobject.BUObject"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="//code.jquery.com/jquery-1.9.1.js"></script>

<script	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script type="text/javascript" src="/front/script/common.js"></script>
<script type="text/javascript" src="/front/script/CalPopUp.js"></script>
<script type="text/javascript" src="/front/script/calendar_beans_v2.2.js"></script>

<script type="text/javascript" src="/js/realgrid2/libs/jszip.js"></script>
<script type="text/javascript" src="/js/realgrid2/libs/jszip.min.js"></script>

<script type="text/javascript" src="/front/script/common/jquery-1.11.3.min.js"></script> <!--메인이미지-->
<script type="text/javascript" src="/front/script/common/jquery-ui.min.js"></script> <!--메인이미지-->
<script type="text/javascript" src="/front/script/common/slides.min.jquery.js"></script> <!--메인이미지-->
<script type="text/javascript" src="/front/script/common/jq.rolling.js"></script><!--자동롤링-->
<script type="text/javascript" src="/front/script/common/sliderscript.js"></script> <!--메인이미지-->
<script type="text/javascript" src="/front/script/common/slideshow.js"></script>
<script type="text/javascript" src="/front/script/swiper.min.js"></script>
<script type="text/javascript" src="/front/script/common/component.datepicker.js"></script>
<script type="text/javascript" src="/front/script/common/jquery.tmpl.min.js"></script>
<script type="text/javascript" src="/front/script/common/cus.tmpl.js"></script>
<script type="text/javascript" src="/front/script/common/jquery.fancybox.js"></script>
<script type="text/javascript" src="/front/script/common/design.js"></script>

<script>
var CONSTANTS = {};
CONSTANTS.COMBO_LIST = {};
var cdNo = "";
var commonCdArr = "";
<%
	BUObjectCache codeList = (BUObjectCache)session.getAttribute("commonCodeList");
	if(codeList == null) {
%>
		goLoginPage();
<%
	} else {

		for(int i=0; i<codeList.size(); i++) {
			BUObject commonCd = (BUObject)codeList.get(i);
%>
		if(cdNo == null || cdNo == "") {
			commonCdArr = '{"<%=commonCd.get("cd_dtl_no")%>" : "<%=commonCd.get("cd_dtl_nm")%>"';
			cdNo = "<%=commonCd.get("cd_no")%>";
		} else if(cdNo == "<%=commonCd.get("cd_no")%>") {
			commonCdArr += ',"<%=commonCd.get("cd_dtl_no")%>" : "<%=commonCd.get("cd_dtl_nm")%>"';
		} else {
			commonCdArr += "}";
			CONSTANTS.COMBO_LIST[cdNo] = JSON.parse(commonCdArr);
			commonCdArr = '{"<%=commonCd.get("cd_dtl_no")%>" : "<%=commonCd.get("cd_dtl_nm")%>"';
			cdNo = "<%=commonCd.get("cd_no")%>";
		}
<%
			if(i == codeList.size()-1) {
%>
		commonCdArr += "}";
		CONSTANTS.COMBO_LIST[cdNo] = JSON.parse(commonCdArr);
<%
			}
		}
	}
%>
</script>

<!-- http 방식 2019-08-05 최종덕 -->
<%
    if("http".equals(request.getScheme())) {
%>
<script	src="http://dmaps.daum.net/map_js_init/postcode.v2.js?autoload=false"></script>
<%
    } else {
%>
<!-- https 방식 2019-08-05 최종덕 -->
<script	src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<%
    }
%>
<script src="http://t1.daumcdn.net/cssjs/postcode/1506320738556/170925.js"></script>

<link rel="stylesheet" type="text/css" href="/front/css/contents3.css" />
<link rel="stylesheet" type="text/css" href="/front/css/new_reset.css" />
<link rel="stylesheet" type="text/css" href="/front/css/jquery-ui.min.css" />

<link rel="stylesheet" type="text/css" href="/front/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="/front/css/owl.theme.default.min.css" />
<link rel="stylesheet" type="text/css" href="/front/css/new.css" />
<link rel="stylesheet" type="text/css" href="/front/css/swiper.min.css" />
<link rel="stylesheet" type="text/css" href="/front/css/layout2.css" />
<link rel="stylesheet" type="text/css" href="/front/css/obj.css" />
<link rel="stylesheet" type="text/css" href="/front/css/layout.css" />
<link rel="stylesheet" type="text/css" href="/front/css/etc.css" />
