
WITH register
	 AS (SELECT MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn) AS strObjektsNamn, MAX(EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID) AS recTillsynsobjektID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer AS TillsynFas_VisionPostnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID
		 FROM EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt
			  INNER JOIN
			  EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning
			  ON EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.recTillsynsobjektID = EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recTillsynsobjektID
		 WHERE( EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strObjektsNamn IS NOT NULL
			  )
		 GROUP BY EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recVerksamhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strOrt, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strPostnummer, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strSoekbegrepp, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAdress, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.strAnteckning, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.bolTimdebitering, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recEnhetID, EDPVisionRegionGotlandAvlopp.dbo.tbTrTillsynsobjekt.recAvdelningID, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBoendetyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVatten, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.bolIndraget, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAnlaeggningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strStatus, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intByggnadsaar, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBeslutsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datBesiktningsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strNotering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningReningstyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intEfterfoeljandereningYta, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterfoeljandereningRecipient, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strBedoemning, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strInventering, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datInventeringsdatum, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strVattenskyddsomraade, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strEfterpoleringTyp, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strPrioritet, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intLoepnr, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.intUnderhaallsintervallMaanad, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datNaastaService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.datFoeregaandeService, EDPVisionRegionGotlandAvlopp.dbo.tbTrEaAvloppsanlaeggning.strAvrinningsomraade),
	 ReningAnläggningar
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anläggningskategori, Anläggningstyp, Anl_för_EftR_TöInterv_mån, besiktningdatum, beslutsdatum, Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anläggningskategori IS NOT NULL
			  )),
	 blad1Objekt
	 AS (SELECT ObjektID, Besöksadress_Adress, Besöksadress_Postnr, Besöksadress_Ort, Besöksadress_Huvudfastighet, FNR, Verksamhetsutövare_Namn, Verksamhetsutöv_Person_orgnr, Fakturamottagare_NAMN, Fakturamottagare_Faktura_ADRESS, Fakturamottagare_Faktura_POSTNR, Fakturamottagare_Faktura_POSTOR, Enhet, Anteckning, Aktuell_timavgift, Timdebitering, Objektnamn, flik_Avloppsänlaggni_Boendetyp, flik_Avloppsanläggn_Byggnadsår, flik_Avloppsa_Besiktningsdatum, flik_Avloppsanläg_Beslutsdatum, Vatten, Recipient, Inventering, Inventeringsinformation_Datum, Inventeringsinformation_Status, Bedömning, PunkttypAB, Fliken_Koordinater
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_6
		 WHERE( Objektnamn IS NOT NULL
			  )),
	 tankAnläggning
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anläggningskategori_3 AS Anläggningskategori, AnlförEfterR_Anläggningstyp AS Anläggningstyp, Externt_Tjänsteid2 AS Externt_Tjänsteid, besiktningdatum_2 AS besiktningdatum, beslutsdatum_2 AS beslutsdatum, Volym_m32 AS Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_3
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anläggningskategori_3 IS NOT NULL
			  )),
	 SlamSkiljareAnläggning
	 AS (SELECT DISTINCT 
				ObjektID, Objektnamn, Anläggningskategori_2 AS Anläggningskategori, Anläggning_för_S_Anläggningstyp AS Anläggningstyp, Externt_Tjänsteid, text, beslutsdatum_2 AS beslutsdatum, Anläggning_för_Slamav_Volym_m3
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_2
		 WHERE( Objektnamn IS NOT NULL
			  ) AND 
			  ( Anläggningskategori_2 IS NOT NULL
			  )),
	 ärendeNr
	 AS (SELECT DISTINCT 
				ObjektID, fliken_Ärenden
		 FROM EDPVisionRegionGotlandAvlopp.dbo.Blad1$ AS Blad1$_5
		 WHERE( fliken_Ärenden IS NOT NULL
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
	 visionAnläggnar
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
	 MinaAnläggningar
	 AS (SELECT ObjektID, Objektnamn, Anläggningskategori, Anläggningstyp, Externt_Tjänsteid, besiktningdatum, beslutsdatum, Volym_m3
		 FROM tankAnläggning AS tankAnläggning_1
		 UNION ALL
		 SELECT ObjektID, Objektnamn, Anläggningskategori, Anläggningstyp, Anl_för_EftR_TöInterv_mån, besiktningdatum, beslutsdatum, Volym_m3
		 FROM ReningAnläggningar AS ReningAnläggningar_1
		 UNION ALL
		 SELECT ObjektID, Objektnamn, Anläggningskategori, Anläggningstyp, Externt_Tjänsteid, text, beslutsdatum, Anläggning_för_Slamav_Volym_m3
		 FROM SlamSkiljareAnläggning AS SlamSkiljareAnläggning_1),
	 AllaAnläggninagar
	 AS (SELECT MinaAnläggningar_1.Objektnamn, MinaAnläggningar_1.ObjektID, MinaAnläggningar_1.Anläggningskategori, visionAnläggnar_1.strAnlaeggningskategori, MinaAnläggningar_1.Anläggningstyp, visionAnläggnar_1.strAnlaeggningstyp, MinaAnläggningar_1.besiktningdatum, visionAnläggnar_1.datBesiktningsdatum, MinaAnläggningar_1.beslutsdatum, visionAnläggnar_1.datBeslutsdatum, MinaAnläggningar_1.Externt_Tjänsteid, visionAnläggnar_1.intExterntTjaenstID, MinaAnläggningar_1.Volym_m3, visionAnläggnar_1.decVolym, visionAnläggnar_1.intToemningsintervall, visionAnläggnar_1.strCertifieringstyp, visionAnläggnar_1.strText, visionAnläggnar_1.strToaletttyp
		 FROM MinaAnläggningar AS MinaAnläggningar_1
			  LEFT OUTER JOIN
			  visionAnläggnar AS visionAnläggnar_1
			  ON MinaAnläggningar_1.Objektnamn = visionAnläggnar_1.strObjektsNamn AND 
				 MinaAnläggningar_1.Anläggningskategori = visionAnläggnar_1.strAnlaeggningskategori),
	 ressult
	 AS (SELECT DISTINCT 
				MAX(register_1.recTillsynsobjektID) AS recTillsynsobjektID, MAX(Blad1$_1.ObjektID) AS ObjektID, Blad1$_1.Objektnamn, Blad1$_1.Besöksadress_Postnr AS Blad1_Besöksadress_postnr, register_1.TillsynFas_VisionPostnr, Blad1$_1.Besöksadress_Ort AS Blad1_Besöksadress_Ort, register_1.strOrt, Blad1$_1.Inventering AS Blad1_Inventering, register_1.strInventering, Blad1$_1.Inventeringsinformation_Datum AS Blad1_Inventeringsinformation_Datum, register_1.datInventeringsdatum, Blad1$_1.flik_Avloppsänlaggni_Boendetyp AS Blad1_flik_Avloppsänlaggni_Boendetyp, register_1.strBoendetyp, Blad1$_1.Vatten AS Blad1_Vatten, register_1.strVatten, Blad1$_1.flik_Avloppsanläggn_Byggnadsår AS Blad1_flik_Avloppsanläggn_Byggnadsår, register_1.intByggnadsaar, Blad1$_1.Inventeringsinformation_Status AS Blad1_Inventeringsinformation_Status, register_1.strStatus, Blad1$_1.flik_Avloppsa_Besiktningsdatum AS Blad1_flik_Avloppsa_Besiktningsdatum, register_1.datBesiktningsdatum AS register_Besiktningsdatum, register_1.datBeslutsdatum AS register_Beslutsdatum, Blad1$_1.flik_Avloppsanläg_Beslutsdatum AS Blad1_flik_Avloppsanläg_Beslutsdatum
		 FROM blad1Objekt AS Blad1$_1
			  LEFT OUTER JOIN
			  register AS Register_1
			  ON Blad1$_1.Objektnamn = register_1.strObjektsNamn AND 
				 Blad1$_1.Inventering = register_1.strInventering AND 
				 Blad1$_1.Besöksadress_Adress = register_1.strAdress AND 
				 Blad1$_1.flik_Avloppsänlaggni_Boendetyp = register_1.strBoendetyp AND 
				 Blad1$_1.Vatten = TRY_CAST(register_1.strVatten AS float) AND 
				 Blad1$_1.flik_Avloppsanläggn_Byggnadsår = register_1.intByggnadsaar
		 WHERE( NOT( Blad1$_1.ObjektID IS NULL
				   )
			  )
		 GROUP BY Blad1$_1.Objektnamn, Blad1$_1.Besöksadress_Postnr, register_1.TillsynFas_VisionPostnr, Blad1$_1.Besöksadress_Ort, register_1.strOrt, Blad1$_1.Inventering, register_1.strInventering, Blad1$_1.Inventeringsinformation_Datum, register_1.datInventeringsdatum, Blad1$_1.flik_Avloppsänlaggni_Boendetyp, register_1.strBoendetyp, Blad1$_1.Vatten, register_1.strVatten, Blad1$_1.flik_Avloppsanläggn_Byggnadsår, register_1.intByggnadsaar, Blad1$_1.Inventeringsinformation_Status, register_1.strStatus, Blad1$_1.flik_Avloppsa_Besiktningsdatum, register_1.datBesiktningsdatum, register_1.datBeslutsdatum, Blad1$_1.flik_Avloppsanläg_Beslutsdatum)
	 SELECT *
	 FROM ressult 
	 
	/* 
	 
	 where (ressult.Blad1_Besöksadress_Ort <> ressult.TillsynFas_VisionPostnr) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Besöksadress_Ort <> ressult.strOrt) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventering <> ressult.strInventering) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventeringsinformation_Datum <> ressult.datInventeringsdatum) OR
                              (NOT (ressult.Objektnamn IS NULL)) AND (ressult.Blad1_Inventeringsinformation_Status <> ressult.strStatus)
                              /* OR (NOT (register_1.strObjektsNamn IS NULL)) AND (Blad1$_1.flik_Avloppsanläggn_Byggnadsår <> register_1.intByggnadsaar)*/
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
    ) <> ressult.Blad1_flik_Avloppsanläg_Beslutsdatum
  ))

 */

	 ORDER BY ObjektID DESC;
  
