
WITH register
	 AS (SELECT MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn) AS strObjektsNamn, MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID) AS recTillsynsobjektID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer AS TillsynFas_VisionPostnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID
		 FROM EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt
			  INNER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning
			  ON EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.recTillsynsobjektID = EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID
		 WHERE( EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn IS NOT NULL
			  )
		 GROUP BY EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade),
	 ReningAnl�ggningar
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anl�ggningskategori, Anl�ggningstyp, Anl_f�r_EftR_T�Interv_m�n, besiktningdatum, beslutsdatum, Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anl�ggningskategori IS NOT NULL
			  )),
	 blad1Objekt
	 AS (SELECT ObjektID, Bes�ksadress_Adress, Bes�ksadress_Postnr, Bes�ksadress_Ort, Bes�ksadress_Huvudfastighet, FNR, Verksamhetsut�vare_Namn, Verksamhetsut�v_Person_orgnr, Fakturamottagare_NAMN, Fakturamottagare_Faktura_ADRESS, Fakturamottagare_Faktura_POSTNR, Fakturamottagare_Faktura_POSTOR, Enhet, Anteckning, Aktuell_timavgift, Timdebitering, Objektnamn, flik_Avlopps�nlaggni_Boendetyp, flik_Avloppsanl�ggn_Byggnads�r, flik_Avloppsa_Besiktningsdatum, flik_Avloppsanl�g_Beslutsdatum, Vatten, Recipient, Inventering, Inventeringsinformation_Datum, Inventeringsinformation_Status, Bed�mning, PunkttypAB, Fliken_Koordinater
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_6
		 WHERE( Objektnamn IS NOT NULL
			  )),
	 tankAnl�ggning
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anl�ggningskategori_3 AS Anl�ggningskategori, Anlf�rEfterR_Anl�ggningstyp AS Anl�ggningstyp, Externt_Tj�nsteid2 AS Externt_Tj�nsteid, besiktningdatum_2 AS besiktningdatum, beslutsdatum_2 AS beslutsdatum, Volym_m32 AS Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_3
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anl�ggningskategori_3 IS NOT NULL
			  )),
	 SlamSkiljareAnl�ggning
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anl�ggningskategori_2 AS Anl�ggningskategori, Anl�ggning_f�r_S_Anl�ggningstyp AS Anl�ggningstyp, Externt_Tj�nsteid, text, beslutsdatum_2 AS beslutsdatum, Anl�ggning_f�r_Slamav_Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_2
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anl�ggningskategori_2 IS NOT NULL
			  )),
	 �rendeNr
	 AS (SELECT DISTINCT 
				ObjektID, fliken_�renden
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_5
		 WHERE( fliken_�renden IS NOT NULL
			  )),
	 fastigheter
	 AS (SELECT DISTINCT 
				ObjektID, fliken_Fastigheter, fliken_FastigheterFNR
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_4
		 WHERE( NOT( fliken_Fastigheter IS NULL
				   )
			  ) AND 
			  ( NOT( ObjektID IS NULL
				   )
			  ) AND 
			  (ObjektID <> 0)),
	 visionAnl�ggnar
	 AS (SELECT EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningskategori.strAnlaeggningskategori, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningstyp.strAnlaeggningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.strCertifieringstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.decVolym, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.strToaletttyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.datBesiktningsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.strText, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.intToemningsintervall, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.intExterntTjaenstID, tbTrEaAvloppsanlaeggning_1.recTillsynsobjektID, tbTrTillsynsobjekt_1.strObjektsNamn
		 FROM EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning
			  LEFT OUTER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningskategori
			  ON EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.recAnlaeggningskategoriID = EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningskategori.recAnlaeggningskategoriID
			  LEFT OUTER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningstyp
			  ON EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.recAnlaeggningstypID = EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggningstyp.recAnlaeggningstypID
			  RIGHT OUTER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning AS tbTrEaAvloppsanlaeggning_1
			  ON tbTrEaAvloppsanlaeggning_1.recAvloppsanlaeggningID = EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAnlaeggning.recAnlaeggningID
			  RIGHT OUTER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt AS tbTrTillsynsobjekt_1
			  ON tbTrTillsynsobjekt_1.recTillsynsobjektID = tbTrEaAvloppsanlaeggning_1.recTillsynsobjektID),
	 MinaAnl�ggningar
	 AS (SELECT ObjektID, Objektnamn, Anl�ggningskategori, Anl�ggningstyp, Externt_Tj�nsteid, besiktningdatum, beslutsdatum, Volym_m3
		 FROM tankAnl�ggning AS tankAnl�ggning_1
		 UNION ALL
		 SELECT ObjektID, Objektnamn, Anl�ggningskategori, Anl�ggningstyp, Anl_f�r_EftR_T�Interv_m�n, besiktningdatum, beslutsdatum, Volym_m3
		 FROM ReningAnl�ggningar AS ReningAnl�ggningar_1
		 UNION ALL
		 SELECT ObjektID, Objektnamn, Anl�ggningskategori, Anl�ggningstyp, Externt_Tj�nsteid, text, beslutsdatum, Anl�ggning_f�r_Slamav_Volym_m3
		 FROM SlamSkiljareAnl�ggning AS SlamSkiljareAnl�ggning_1),
	 AllaAnl�ggninagar
	 AS (SELECT MinaAnl�ggningar_1.Objektnamn, MinaAnl�ggningar_1.ObjektID, MinaAnl�ggningar_1.Anl�ggningskategori, visionAnl�ggnar_1.strAnlaeggningskategori, MinaAnl�ggningar_1.Anl�ggningstyp, visionAnl�ggnar_1.strAnlaeggningstyp, MinaAnl�ggningar_1.besiktningdatum, visionAnl�ggnar_1.datBesiktningsdatum, MinaAnl�ggningar_1.beslutsdatum, visionAnl�ggnar_1.datBeslutsdatum, MinaAnl�ggningar_1.Externt_Tj�nsteid, visionAnl�ggnar_1.intExterntTjaenstID, MinaAnl�ggningar_1.Volym_m3, visionAnl�ggnar_1.decVolym, visionAnl�ggnar_1.intToemningsintervall, visionAnl�ggnar_1.strCertifieringstyp, visionAnl�ggnar_1.strText, visionAnl�ggnar_1.strToaletttyp
		 FROM MinaAnl�ggningar AS MinaAnl�ggningar_1
			  LEFT OUTER JOIN
			  visionAnl�ggnar AS visionAnl�ggnar_1
			  ON MinaAnl�ggningar_1.Objektnamn = visionAnl�ggnar_1.strObjektsNamn AND 
				 MinaAnl�ggningar_1.Anl�ggningskategori = visionAnl�ggnar_1.strAnlaeggningskategori),
	 ressult
	 AS (SELECT DISTINCT 
				MAX(register_1.recTillsynsobjektID) AS recTillsynsobjektID, MAX(Blad1$_1.ObjektID) AS ObjektID, Blad1$_1.Objektnamn, Blad1$_1.Bes�ksadress_Postnr AS Blad1_Bes�ksadress_postnr, register_1.TillsynFas_VisionPostnr, Blad1$_1.Bes�ksadress_Ort AS Blad1_Bes�ksadress_Ort, register_1.strOrt, Blad1$_1.Inventering AS Blad1_Inventering, register_1.strInventering, Blad1$_1.Inventeringsinformation_Datum AS Blad1_Inventeringsinformation_Datum, register_1.datInventeringsdatum, Blad1$_1.flik_Avlopps�nlaggni_Boendetyp AS Blad1_flik_Avlopps�nlaggni_Boendetyp, register_1.strBoendetyp, Blad1$_1.Vatten AS Blad1_Vatten, register_1.strVatten, Blad1$_1.flik_Avloppsanl�ggn_Byggnads�r AS Blad1_flik_Avloppsanl�ggn_Byggnads�r, register_1.intByggnadsaar, Blad1$_1.Inventeringsinformation_Status AS Blad1_Inventeringsinformation_Status, register_1.strStatus, Blad1$_1.flik_Avloppsa_Besiktningsdatum AS Blad1_flik_Avloppsa_Besiktningsdatum, register_1.datBesiktningsdatum AS register_Besiktningsdatum, register_1.datBeslutsdatum AS register_Beslutsdatum, Blad1$_1.flik_Avloppsanl�g_Beslutsdatum AS Blad1_flik_Avloppsanl�g_Beslutsdatum
		 FROM blad1Objekt AS Blad1$_1
			  LEFT OUTER JOIN
			  register AS Register_1
			  ON Blad1$_1.Objektnamn = register_1.strObjektsNamn AND 
				 Blad1$_1.Inventering = register_1.strInventering AND 
				 Blad1$_1.Bes�ksadress_Adress = register_1.strAdress AND 
				 Blad1$_1.flik_Avlopps�nlaggni_Boendetyp = register_1.strBoendetyp AND 
				 Blad1$_1.Vatten = TRY_CAST(register_1.strVatten AS float) AND 
				 Blad1$_1.flik_Avloppsanl�ggn_Byggnads�r = register_1.intByggnadsaar
		 WHERE( NOT( Blad1$_1.ObjektID IS NULL
				   )
			  )
		 GROUP BY Blad1$_1.Objektnamn, Blad1$_1.Bes�ksadress_Postnr, register_1.TillsynFas_VisionPostnr, Blad1$_1.Bes�ksadress_Ort, register_1.strOrt, Blad1$_1.Inventering, register_1.strInventering, Blad1$_1.Inventeringsinformation_Datum, register_1.datInventeringsdatum, Blad1$_1.flik_Avlopps�nlaggni_Boendetyp, register_1.strBoendetyp, Blad1$_1.Vatten, register_1.strVatten, Blad1$_1.flik_Avloppsanl�ggn_Byggnads�r, register_1.intByggnadsaar, Blad1$_1.Inventeringsinformation_Status, register_1.strStatus, Blad1$_1.flik_Avloppsa_Besiktningsdatum, register_1.datBesiktningsdatum, register_1.datBeslutsdatum, Blad1$_1.flik_Avloppsanl�g_Beslutsdatum)
	 SELECT *
	 FROM ressult 
	 
	/* 
	 
	 where (ressult.Blad1_Bes�ksadress_Ort <> ressult.TillsynFas_VisionPostnr) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Bes�ksadress_Ort <> ressult.strOrt) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventering <> ressult.strInventering) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventeringsinformation_Datum <> ressult.datInventeringsdatum) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventeringsinformation_Status <> ressult.strStatus)
                              /* OR (NOT (register_1.strObjektsNamn IS NULL)) AND (Blad1$_1.flik_Avloppsanl�ggn_Byggnads�r <> register_1.intByggnadsaar)*/
OR (
  NOT (
    ressult.Objektnamn IS NULL
  )
) 
AND (
  (ressult.Blad1_Vatten) <> TRY_CAST(ressult.strVatten as float) 
  OR (
    TRY_CAST(
      ressult.Blad1_flik_Avloppsa_Besiktningsdatum as date
    ) <> ressult.register_Besiktningsdatum
  ) 
  OR (
    TRY_CAST(
      ressult.register_Beslutsdatum as date
    ) <> ressult.Blad1_flik_Avloppsanl�g_Beslutsdatum
  ))

 */

	 ORDER BY ObjektID DESC;
  
