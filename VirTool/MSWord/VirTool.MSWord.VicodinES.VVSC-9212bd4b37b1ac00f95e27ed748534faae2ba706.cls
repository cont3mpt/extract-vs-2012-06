olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.VicodinES.VVSC-4222d9ae2ca27c4fd14270b25a14ec95e89037cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.VicodinES.VVSC-4222d9ae2ca27c4fd14270b25a14ec95e89037cf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Convert()
Attribute Convert.VB_ProcData.VB_Invoke_Func = "Project.ThisDocument.Convert"
Dim this As String
Dim that As String
Dim FinalConvert As String
Set CConvert = New DataObject

this = InputBox("Enter String To Convert :", "The VicodinES VBA String Converter")
If this = "" Then
MsgBox "No valid input", vbCritical, "VVSC Error"
End
End If
length_this = Len(this)
For countout = 1 To length_this
ToConvert = Mid(this, countout, 1)

For x = 1 To 400
that = Chr(x)
If that = ToConvert Then
FinalConvert = FinalConvert + "Chr(" & x & ")"
If countout <> length_this Then FinalConvert = FinalConvert + " + "
GoTo drop
End If
Next x

drop:

Next countout

MsgBox "Your Converted Text String Is In The Clipboard" + vbCr + vbCr + " --> Paste It Now So You Don't To Lose It! <-- ", vbInformation, "String.Poppy.Utility (c)1998"
CConvert.SetText FinalConvert
CConvert.PutInClipboard

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

