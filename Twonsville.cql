//......Creating the schema layer.................

//.......Create......RisKG database............
CREATE
(Project:PROJECTNAME { Name:"Townsville Ocean Terminal", ProjectNumber: "QL00704", Location: "Port of Townsville, Townsville City Council, Austrailia", Description: "Development of approximately 80 hectares of land under tidal water, seaward of the existing Townsville Casino and Entertainment Centre." }),
// project feature : dedicated cruise terminal and wharf,residential canal development (approximately 200 single- and 500 multi-storey dwellings), marina facilities for recreational vessels and super yachts, public open spaces on foreshore

// Risk Category
(CL_Risk:RISKSOURCE{ Name:"Climate" }),

// Risk
//Climate RISKS
(CLO1:RISK{ Name:"CL01", Description:"Strong winds caused by tropical cyclones or low pressure systems" }),
(CL02:RISK{ Name:"CL02", Description:"Flooding caused by storm surge" }),
(CL03:RISK{ Name:"CL03", Description:"Flooding caused by heavy rainfall" }),
(CL04:RISK{ Name:"CL04", Description:"Extended wet weather during construction" }),

// Risk Rating
// Rating notes should be included

(Ratn1:RISKRATING{ Name:"RATG01", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn2:RISKRATING{ Name:"RATG02", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn3:RISKRATING{ Name:"RATG03", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn4:RISKRATING{ Name:"RATG04", Probability: "Possible", Impact: "Major", Rating:"High" }),

// Risk Consequence
(Consq1:RISKCONSEQUENCE{ Name:"CONSQ01", Description:"Injury or death, destruction/damage to buildings and infrastructure" }),
(Consq2:RISKCONSEQUENCE{ Name:"CONSQ02", Description:"Destruction/damage to buildings and infrastructure" }),
(Consq3:RISKCONSEQUENCE{ Name:"CONSQ03", Description:"Destruction/damage to buildings and infrastructure" }),
(Consq4:RISKCONSEQUENCE{ Name:"CONSQ04", Description:"Construction programme delays" }),

// Risk mitigation
(Mitig1:RISKMITIGATION{Name:"MITG01", Description: "(1) Building AND infrastructure designed to withstand extreme weather.
(2) Design category for cyclone rating AND breakwaters AND land masses designed for Q100 event.,
(3) Construction Phase Disaster Action Plan includes early warnings for evacuation of personnel AND equipment."}),
(Mitig2:RISKMITIGATION{Name:"MITG02", Description: "(1) Building AND infrastructure designed to withstand extreme weather.
(2) Design category for cyclone rating AND breakwaters AND land masses designed for Q100 event.
(3) Construction Phase Disaster Action Plan."}),
(Mitig3:RISKMITIGATION{Name:"MITG03", Description: "(1) Building AND infrastructure designed to withstand extreme weather.
(2) Design category for cyclone rating AND breakwaters AND land masses designed for Q100 event.
(3) Construction Phase Disaster Action Plan."}),
(Mitig4:RISKMITIGATION{Name:"MITG04", Description: "(1) Site secured AND site personnel AND equipment relocated to safe refuge.
(2) Site remediation works post event."}),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(CL_Risk),
// Risk source --> Risk
(CL_Risk)-[:hasRisk]->(CLO1),
(CL_Risk)-[:hasRisk]->(CL02),
(CL_Risk)-[:hasRisk]->(CL03),
(CL_Risk)-[:hasRisk]->(CL04),

// Risk--> rating, consquence, mitigation
// risk1
(CLO1)-[:hasRiskRating]->(Ratn1),
(CLO1)-[:hasRiskConsequence]->(Consq1),
(CLO1)-[:hasRiskMitigation]->(Mitig1),

// risk2
(CL02)-[:hasRiskRating]->(Ratn2),
(CL02)-[:hasRiskConsequence]->(Consq2),
(CL02)-[:hasRiskMitigation]->(Mitig2),

// risk3
(CL03)-[:hasRiskRating]->(Ratn3),
(CL03)-[:hasRiskConsequence]->(Consq3),
(CL03)-[:hasRiskMitigation]->(Mitig3),

// risk4
(CL04)-[:hasRiskRating]->(Ratn4),
(CL04)-[:hasRiskConsequence]->(Consq4),
(CL04)-[:hasRiskMitigation]->(Mitig4),

//-------LAND........

(LA_Risk:RISKSOURCE{ Name:"Land" }),

// Risk
//Climate RISKS
(LA01:RISK{ Name:"LA01", Description:"Degradation of water quality due to erosion" }),
(LA02:RISK{ Name:"LA02", Description:"Unstable slopes and structures due to soil instability" }),
(LA03:RISK{ Name:"LA03", Description:"Degradation of water quality due to existing contaminants in sediment" }),
(LA04:RISK{ Name:"LA04", Description:"Acidification of water due to acid sulphate soils" }),
(LA05:RISK{ Name:"LA05", Description:"Collapse of new revetment walls during construction stage" }),
(LA06:RISK{ Name:"LA06", Description:"Failure of depressurization system through sand layers while excavating canals" }),
(LA07:RISK{ Name:"LA07", Description:"Potential high seepage rates through existing southern revetment wall" }),
(LA08:RISK{ Name:"LA08", Description:"Slow consolidation of stockpiled organic soft clay in parkland area" }),
(LA09:RISK{ Name:"LA09", Description:"Difficulty in compaction of fill" }),
(LA10:RISK{ Name:"LA10", Description:"Shallow sand beds not identified during site investigation" }),
(LA11:RISK{ Name:"LA11", Description:"Poor installation of HDPE/Bentonite liner in breakwaters and bunds" }),
(LA12:RISK{ Name:"LA12", Description:"Puncture of HDPE/Bentonite liner" }),
(LA13:RISK{ Name:"LA13", Description:"Under estimated modelling assumptions for seepage" }),
(LA14:RISK{ Name:"LA14", Description:"Inability to move / handle organic soft clay material" }),
(LA15:RISK{ Name:"LA15", Description:"Imported select fill not suitable to purpose" }),
(LA16:RISK{ Name:"LA16", Description:"Large rock fill for access construction road fails to penetrate fully through organic soft clay" }),
(LA17:RISK{ Name:"LA17", Description:"Abutment instability of temporary Ross Creek bridge" }),
(LA18:RISK{ Name:"LA18", Description:"Poor water quality in basin upon rewatering of site" }),
(LA19:RISK{ Name:"LA19", Description:"Inexperienced earthworks contractor" }),

// Risk Rating
// Rating notes should be included
(Ratn5:RISKRATING{ Name:"RATG05", Probability: "Possible", Impact: "Minor", Rating:"Low" }),
(Ratn6:RISKRATING{ Name:"RATG06", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn7:RISKRATING{ Name:"RATG07", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn8:RISKRATING{ Name:"RATG08", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn9:RISKRATING{ Name:"RATG09", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn10:RISKRATING{ Name:"RATG10", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn11:RISKRATING{ Name:"RATG11", Probability: "Unlikelye", Impact: "Moderate", Rating:"Low" }),
(Ratn12:RISKRATING{ Name:"RATG12", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn13:RISKRATING{ Name:"RATG13", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn14:RISKRATING{ Name:"RATG14", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn15:RISKRATING{ Name:"RATG15", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn16:RISKRATING{ Name:"RATG16", Probability: "Likely", Impact: "Minor", Rating:"Moderate" }),
(Ratn17:RISKRATING{ Name:"RATG17", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn18:RISKRATING{ Name:"RATG18", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn19:RISKRATING{ Name:"RATG19", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn20:RISKRATING{ Name:"RATG20", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn21:RISKRATING{ Name:"RATG21", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn22:RISKRATING{ Name:"RATG22", Probability: "likely", Impact: "Moderate", Rating:"High" }),
(Ratn23:RISKRATING{ Name:"RATG23", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),

// Risk Consequence
(Consq5:RISKCONSEQUENCE{ Name:"CONSQ05", Description:"Degradation of water quality" }),
(Consq6:RISKCONSEQUENCE{ Name:"CONSQ06", Description:"Destruction/damage to buildings and infrastructure" }),
(Consq7:RISKCONSEQUENCE{ Name:"CONSQ07", Description:"Degradation of water quality" }),
(Consq8:RISKCONSEQUENCE{ Name:"CONSQ08", Description:"Degradation of water quality" }),
(Consq9:RISKCONSEQUENCE{ Name:"CONSQ09", Description:"Damage to equipment, risk to personnel,construction delays" }),
(Consq10:RISKCONSEQUENCE{ Name:"CONSQ10", Description:"Sudden instability with destruction/ damage to infrastructure and equipment and risk topersonnel" }),
(Consq11:RISKCONSEQUENCE{ Name:"CONSQ11", Description:"Additional pumping requirements" }),
(Consq12:RISKCONSEQUENCE{ Name:"CONSQ12", Description:"Short-term consolidation of reclaimed parklands" }),
(Consq13:RISKCONSEQUENCE{ Name:"CONSQ13", Description:"Construction staging method delays / site trafficability issues, increased resultant settlements / instability" }),
(Consq14:RISKCONSEQUENCE{ Name:"CONSQ14", Description:"Higher seepage rates, instability" }),
(Consq15:RISKCONSEQUENCE{ Name:"CONSQ15", Description:"Increased seepage rates/ erosion of breakwaters and bunds" }),
(Consq16:RISKCONSEQUENCE{ Name:"CONSQ16", Description:"Increased seepage rates/ erosion of breakwaters and bunds" }),
(Consq17:RISKCONSEQUENCE{ Name:"CONSQ17", Description:"Higher pumping requirements" }),
(Consq18:RISKCONSEQUENCE{ Name:"CONSQ18", Description:"Construction staging method delays" }),
(Consq19:RISKCONSEQUENCE{ Name:"CONSQ19", Description:"Construction staging method delays, material performance issues" }),
(Consq20:RISKCONSEQUENCE{ Name:"CONSQ20", Description:"Localized and potentially abrupt settlements of surface" }),
(Consq21:RISKCONSEQUENCE{ Name:"CONSQ21", Description:"Temporary closure of haul route and material access to site" }),
(Consq22:RISKCONSEQUENCE{ Name:"CONSQ22", Description:"Turbidity issues" }),
(Consq23:RISKCONSEQUENCE{ Name:"CONSQ23", Description:"Time delays" }),

// Risk mitigation
(Mitig5:RISKMITIGATION{Name:"MITG05", Description: "(1) Site fully bunded AND contained.
(2) Sedimentation AND erosion control measures IN place under EMP."}),
(Mitig6:RISKMITIGATION{Name:"MITG06", Description: "(1) Geotechnical Analysis for design of slopes AND batters.
(2) Specific design parameters for retaining AND revetment works."}),
(Mitig7:RISKMITIGATION{Name:"MITG07", Description: "(1) Site fully bunded AND contained.
(2) Sedimentation AND turbidity control measures IN place under EMP."}),
(Mitig8:RISKMITIGATION{Name:"MITG08", Description: "(1) Site fully bunded AND contained.
(2) Sedimentation, turbidity control AND treatment measures IN place under EMP."}),
(Mitig9:RISKMITIGATION{ Name:"MITG09", Description: "Level 1 construction supervision - appropriate design based on investigation and analysis." }),
(Mitig10:RISKMITIGATION{ Name:"MITG10", Description: "Monitoring of depressurization system through construction as identified in EMP." }),
(Mitig11:RISKMITIGATION{ Name:"MITG11", Description: "Additional depressurization wells along southern revetment wall." }),
(Mitig12:RISKMITIGATION{ Name:"MITG12", Description: "Monitoring of settlement rates additional surcharge/ wick drains, minor remediation grading works.." }),
(Mitig13:RISKMITIGATION{ Name:"MITG13", Description: "Level 1 construction supervision - appropriate placement compaction methods." }),
(Mitig14:RISKMITIGATION{Name:"MITG14", Description: "(1) Monitoring during construction stage.
(2) Construction of additional extraction wells AS required."}),
(Mitig15:RISKMITIGATION{Name:"MITG15", Description: "(1) Close construction stage control of HDPE / Bentonite placement.
(2) Additional dewatering wells."}),
(Mitig16:RISKMITIGATION{Name:"MITG16", Description: "(1) Close construction stage control of HDPE / Bentoniteplacement over sand bedding.
(2) Additional dewatering wells."}),
(Mitig17:RISKMITIGATION{ Name:"MITG17", Description: "Monitoring during construction stage, construction of additional extraction wells as required." }),
(Mitig18:RISKMITIGATION{ Name:"MITG18", Description: "Undertake trials of equipment and handling techniques proposed by contractor." }),
(Mitig19:RISKMITIGATION{Name:"MITG19", Description: "(1) Level 1 supervision of imported fill.
(2) Additional investigation AND testing of source material for suitability."}),
(Mitig20:RISKMITIGATION{ Name:"MITG20", Description: "Level 1 supervision of construction methodology." }),
(Mitig21:RISKMITIGATION{ Name:"MITG21", Description: "Geotechnical investigation and analysis of abutments and appropriate design." }),
(Mitig22:RISKMITIGATION{ Name:"MITG22", Description: "Controlled, low velocity rewatering of site, monitor turbidity, open areas progressively cell by cell." }),
(Mitig23:RISKMITIGATION{ Name:"MITG23", Description: "Selection of experienced contractor with experiencedpersonnel on site." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(LA_Risk),
// Risk source --> Risk
(LA_Risk)-[:hasRisk]->(LA01),
(LA_Risk)-[:hasRisk]->(LA02),
(LA_Risk)-[:hasRisk]->(LA03),
(LA_Risk)-[:hasRisk]->(LA04),
(LA_Risk)-[:hasRisk]->(LA05),
(LA_Risk)-[:hasRisk]->(LA06),
(LA_Risk)-[:hasRisk]->(LA07),
(LA_Risk)-[:hasRisk]->(LA08),
(LA_Risk)-[:hasRisk]->(LA09),
(LA_Risk)-[:hasRisk]->(LA10),
(LA_Risk)-[:hasRisk]->(LA11),
(LA_Risk)-[:hasRisk]->(LA12),
(LA_Risk)-[:hasRisk]->(LA13),
(LA_Risk)-[:hasRisk]->(LA14),
(LA_Risk)-[:hasRisk]->(LA15),
(LA_Risk)-[:hasRisk]->(LA16),
(LA_Risk)-[:hasRisk]->(LA17),
(LA_Risk)-[:hasRisk]->(LA18),
(LA_Risk)-[:hasRisk]->(LA19),

// Risk--> rating, consquence, mitigation
// risk1
(LA01)-[:hasRiskRating]->(Ratn5),
(LA01)-[:hasRiskConsequence]->(Consq5),
(LA01)-[:hasRiskMitigation]->(Mitig5),

// risk2
(LA02)-[:hasRiskRating]->(Ratn6),
(LA02)-[:hasRiskConsequence]->(Consq6),
(LA02)-[:hasRiskMitigation]->(Mitig6),

// risk3
(LA03)-[:hasRiskRating]->(Ratn7),
(LA03)-[:hasRiskConsequence]->(Consq7),
(LA03)-[:hasRiskMitigation]->(Mitig7),

// risk4
(LA04)-[:hasRiskRating]->(Ratn8),
(LA04)-[:hasRiskConsequence]->(Consq8),
(LA04)-[:hasRiskMitigation]->(Mitig8),

// risk5
(LA05)-[:hasRiskRating]->(Ratn9),
(LA05)-[:hasRiskConsequence]->(Consq9),
(LA05)-[:hasRiskMitigation]->(Mitig9),

// risk6
(LA06)-[:hasRiskRating]->(Ratn10),
(LA06)-[:hasRiskConsequence]->(Consq10),
(LA06)-[:hasRiskMitigation]->(Mitig10),

// risk7
(LA07)-[:hasRiskRating]->(Ratn11),
(LA07)-[:hasRiskConsequence]->(Consq11),
(LA07)-[:hasRiskMitigation]->(Mitig11),

// risk8
(LA08)-[:hasRiskRating]->(Ratn12),
(LA08)-[:hasRiskConsequence]->(Consq12),
(LA08)-[:hasRiskMitigation]->(Mitig12),

// risk9
(LA09)-[:hasRiskRating]->(Ratn13),
(LA09)-[:hasRiskConsequence]->(Consq13),
(LA09)-[:hasRiskMitigation]->(Mitig13),

// risk10
(LA10)-[:hasRiskRating]->(Ratn14),
(LA10)-[:hasRiskConsequence]->(Consq14),
(LA10)-[:hasRiskMitigation]->(Mitig14),

// risk11
(LA11)-[:hasRiskRating]->(Ratn15),
(LA11)-[:hasRiskConsequence]->(Consq15),
(LA11)-[:hasRiskMitigation]->(Mitig15),

// risk12
(LA12)-[:hasRiskRating]->(Ratn16),
(LA12)-[:hasRiskConsequence]->(Consq16),
(LA12)-[:hasRiskMitigation]->(Mitig16),

// risk13
(LA13)-[:hasRiskRating]->(Ratn17),
(LA13)-[:hasRiskConsequence]->(Consq17),
(LA13)-[:hasRiskMitigation]->(Mitig17),

// risk14
(LA14)-[:hasRiskRating]->(Ratn18),
(LA14)-[:hasRiskConsequence]->(Consq18),
(LA14)-[:hasRiskMitigation]->(Mitig18),

// risk15
(LA15)-[:hasRiskRating]->(Ratn19),
(LA15)-[:hasRiskConsequence]->(Consq19),
(LA15)-[:hasRiskMitigation]->(Mitig19),

// risk16
(LA16)-[:hasRiskRating]->(Ratn20),
(LA16)-[:hasRiskConsequence]->(Consq20),
(LA16)-[:hasRiskMitigation]->(Mitig20),
// risk17
(LA17)-[:hasRiskRating]->(Ratn21),
(LA17)-[:hasRiskConsequence]->(Consq21),
(LA17)-[:hasRiskMitigation]->(Mitig21),

// risk18
(LA18)-[:hasRiskRating]->(Ratn22),
(LA18)-[:hasRiskConsequence]->(Consq22),
(LA18)-[:hasRiskMitigation]->(Mitig22),

// risk19
(LA19)-[:hasRiskRating]->(Ratn23),
(LA19)-[:hasRiskConsequence]->(Consq23),
(LA19)-[:hasRiskMitigation]->(Mitig23),

//......Traffic and Transport..................

(TT_Risk:RISKSOURCE{ Name:"Traffic and Transport" }),

// Risk
// Traffic and Transport RISKS
(TTO1:RISK{ Name:"TTO1", Description:"Accidental spill from material transfer" }),
(TT02:RISK{ Name:"TT02", Description:"Traffic incidents with existing Road Users" }),
(TT03:RISK{ Name:"TT03", Description:"Noise associated with haul routes" }),
(TT04:RISK{ Name:"TT04", Description:"Degradation of traffic and transport infrastructure" }),
(TT05:RISK{ Name:"TT05", Description:"Increased site traffic impeding public access" }),

// Risk Rating
// Rating notes should be included
(Ratn24:RISKRATING{ Name:"RATG24", Probability: "Rare", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn25:RISKRATING{ Name:"RATG25", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn26:RISKRATING{ Name:"RATG26", Probability: "Likely", Impact: "Moderate", Rating:"High" }),
(Ratn27:RISKRATING{ Name:"RATG27", Probability: "Possibile", Impact: "Moderate", Rating:"Moderate" }),
(Ratn28:RISKRATING{ Name:"RATG28", Probability: "Possibile", Impact: "Minor", Rating:"Low" }),

// Risk Consequence
(Consq24:RISKCONSEQUENCE{ Name:"CONSQ24", Description:"Destruction/damage to environment from material spill" }),
(Consq25:RISKCONSEQUENCE{ Name:"CONSQ25", Description:"Injury to existing road user" }),
(Consq26:RISKCONSEQUENCE{ Name:"CONSQ26", Description:"Increased road noise" }),
(Consq27:RISKCONSEQUENCE{ Name:"CONSQ27", Description:"Damage to infrastructure" }),
(Consq28:RISKCONSEQUENCE{ Name:"CONSQ28", Description:"Reduced existing access for pedestrians and cyclists" }),

// Risk mitigation
(Mitig24:RISKMITIGATION{ Name:"MITG24", Description: "Material spill and erosion control measures in place under EMP." }),
(Mitig25:RISKMITIGATION{ Name:"MITG25", Description: "Haul routes and Site Traffic Management Plan." }),
(Mitig26:RISKMITIGATION{ Name:"MITG26", Description: "Haul routes and Site Traffic Management Plan." }),
(Mitig27:RISKMITIGATION{ Name:"MITG27", Description: "Remediation or repair to damaged infrastructure." }),
(Mitig28:RISKMITIGATION{ Name:"MITG28", Description: "Short term impact. Selection of haul routes to minimise impacts." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(TT_Risk),

// Risk source --> Risk
(TT_Risk)-[:hasRisk]->(TTO1),
(TT_Risk)-[:hasRisk]->(TT02),
(TT_Risk)-[:hasRisk]->(TT03),
(TT_Risk)-[:hasRisk]->(TT04),
(TT_Risk)-[:hasRisk]->(TT05),

// Risk--> rating, consquence, mitigation
// risk1
(TTO1)-[:hasRiskRating]->(Ratn24),
(TTO1)-[:hasRiskConsequence]->(Consq24),
(TTO1)-[:hasRiskMitigation]->(Mitig24),

// risk2
(TT02)-[:hasRiskRating]->(Ratn25),
(TT02)-[:hasRiskConsequence]->(Consq25),
(TT02)-[:hasRiskMitigation]->(Mitig25),

// risk3
(TT03)-[:hasRiskRating]->(Ratn26),
(TT03)-[:hasRiskConsequence]->(Consq26),
(TT03)-[:hasRiskMitigation]->(Mitig26),

// risk4
(TT04)-[:hasRiskRating]->(Ratn27),
(TT04)-[:hasRiskConsequence]->(Consq27),
(TT04)-[:hasRiskMitigation]->(Mitig27),

// risk5
(TT05)-[:hasRiskRating]->(Ratn28),
(TT05)-[:hasRiskConsequence]->(Consq28),
(TT05)-[:hasRiskMitigation]->(Mitig28),

//........Non-transport infrastructure...........

(IN_Risk:RISKSOURCE{ Name:"Non-transport infrastructure" }),

// Risk
//Non-transport infrasturce RISKS
(INO1:RISK{ Name:"INO1", Description:"Ergon Energy unable to provide sufficient capacity to service TOT" }),
(IN02:RISK{ Name:"IN02", Description:"IN2 Telstra unable to provide sufficient telecom service TOT" }),
(IN03:RISK{ Name:"IN03", Description:"Existing civil infrastructure unable to provide sufficient capacity" }),
(IN04:RISK{ Name:"IN04", Description:"Reduction in water quality caused by stormwater runoff" }),

// Risk Rating
// Rating notes should be included
(Ratn29:RISKRATING{ Name:"RATG29", Probability: "Rare", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn30:RISKRATING{ Name:"RATG30", Probability: "Rare", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn31:RISKRATING{ Name:"RATG31", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn32:RISKRATING{ Name:"RATG32", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),

// Risk Consequence
(Consq29:RISKCONSEQUENCE{ Name:"CONSQ29", Description:"Power supply insufficient, infrastructure upgrade required." }),
(Consq30:RISKCONSEQUENCE{ Name:"CONSQ30", Description:"Telecom service insufficient, infrastructure upgrade required." }),
(Consq31:RISKCONSEQUENCE{ Name:"CONSQ31", Description:"Infrastructure upgrade required." }),
(Consq32:RISKCONSEQUENCE{ Name:"CONSQ32", Description:"Degradation of water quality" }),

// Risk mitigation
(Mitig29:RISKMITIGATION{ Name:"MITG29", Description: "Design loadings calculated and liaison with authorities to provide sufficient lead times for upgrades." }),
(Mitig30:RISKMITIGATION{ Name:"MITG30", Description: "Design loadings calculated and liaison with authorities to provide sufficient lead times for upgrades." }),
(Mitig31:RISKMITIGATION{ Name:"MITG31", Description: "Design loadings calculated and sufficient capacity included in design (water, sewerage)." }),
(Mitig32:RISKMITIGATION{ Name:"MITG32", Description: "Stormwater management in accordance with project SWMP." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(IN_Risk),

// Risk source --> Risk
(IN_Risk)-[:hasRisk]->(INO1),
(IN_Risk)-[:hasRisk]->(IN02),
(IN_Risk)-[:hasRisk]->(IN03),
(IN_Risk)-[:hasRisk]->(IN04),

// Risk--> rating, consquence, mitigation
// risk1
(INO1)-[:hasRiskRating]->(Ratn29),
(INO1)-[:hasRiskConsequence]->(Consq29),
(INO1)-[:hasRiskMitigation]->(Mitig29),

// risk2
(IN02)-[:hasRiskRating]->(Ratn30),
(IN02)-[:hasRiskConsequence]->(Consq30),
(IN02)-[:hasRiskMitigation]->(Mitig30),

// risk3
(IN03)-[:hasRiskRating]->(Ratn31),
(IN03)-[:hasRiskConsequence]->(Consq31),
(IN03)-[:hasRiskMitigation]->(Mitig31),

// risk4
(IN04)-[:hasRiskRating]->(Ratn32),
(IN04)-[:hasRiskConsequence]->(Consq32),
(IN04)-[:hasRiskMitigation]->(Mitig32),

//........WASTE................................................

(WA_Risk:RISKSOURCE{ Name:"Waste" }),

// Risk
//WASTE RISKS
(WAO1:RISK{ Name:"WAO1", Description:"Excessive material and services resources use during construction." }),
(WA02:RISK{ Name:"WA02", Description:"Emission of liquid wastes to waterways due to poor practices in waste containment, waste transport and stormwater control." }),
(WA03:RISK{ Name:"WA03", Description:"Emission of solid wastes to land due to poor practices in waste containment, waste transport and stormwater control." }),
(WA04:RISK{ Name:"WA04", Description:"Emission of dust and particulates to air due to poor construction practices." }),

// Risk Rating
// Rating notes should be included
(Ratn33:RISKRATING{ Name:"RATG33", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn34:RISKRATING{ Name:"RATG34", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn35:RISKRATING{ Name:"RATG35", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn36:RISKRATING{ Name:"RATG36", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),

// Risk Consequence
(Consq33:RISKCONSEQUENCE{ Name:"CONSQ33", Description:"Depletion of natural resources." }),
(Consq34:RISKCONSEQUENCE{ Name:"CONSQ34", Description:"Deterioration of water quality and ecological values in aquatic ecosystems." }),
(Consq35:RISKCONSEQUENCE{ Name:"CONSQ35", Description:"Recreational and amenity impacts." }),
(Consq36:RISKCONSEQUENCE{ Name:"CONSQ36", Description:"Human health and amenity impacts." }),

// Risk mitigation
(Mitig33:RISKMITIGATION{ Name:"MITG33", Description: "Waste reduction and recycling in accordance with the waste hierarchy in the EPP Waste." }),
(Mitig34:RISKMITIGATION{Name:"MITG34", Description: "(1) Stormwater management IN accordance
WITH project SWMP.
(2) Hazardous materials management IN accordance
WITH project EMP.
(3) Waste minimisation AND management IN accordance
WITH the project EMP."}),
(Mitig35:RISKMITIGATION{ Name:"MITG35", Description: "Waste minimisation and management practices for storage and disposal of solid waste in accordance with the project SWMP and EMP." }),
(Mitig36:RISKMITIGATION{ Name:"MITG36", Description: "Air quality control measures during construction in accordance with the project EMP." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(WA_Risk),

// Risk source --> Risk
(WA_Risk)-[:hasRisk]->(WAO1),
(WA_Risk)-[:hasRisk]->(WA02),
(WA_Risk)-[:hasRisk]->(WA03),
(WA_Risk)-[:hasRisk]->(WA04),

// Risk--> rating, consquence, mitigation
// risk1
(WAO1)-[:hasRiskRating]->(Ratn33),
(WAO1)-[:hasRiskConsequence]->(Consq33),
(WAO1)-[:hasRiskMitigation]->(Mitig33),

// risk2
(WA02)-[:hasRiskRating]->(Ratn34),
(WA02)-[:hasRiskConsequence]->(Consq34),
(WA02)-[:hasRiskMitigation]->(Mitig34),

// risk3
(WA03)-[:hasRiskRating]->(Ratn35),
(WA03)-[:hasRiskConsequence]->(Consq35),
(WA03)-[:hasRiskMitigation]->(Mitig35),

// risk4
(WA04)-[:hasRiskRating]->(Ratn36),
(WA04)-[:hasRiskConsequence]->(Consq36),
(WA04)-[:hasRiskMitigation]->(Mitig36),

//.....................Water Resources.....................
(WR_Risk:RISKSOURCE{ Name:"Water Resources" }),

// Risk
//Water Resource RISKS
(WRO1:RISK{ Name:"WRO1", Description:"Release of turbid waters during site dewatering." }),

// Risk Rating
// Rating notes should be included
(Ratn37:RISKRATING{ Name:"RATG37", Probability: "Likely", Impact: "Moderate", Rating:"High" }),

// Risk Consequence
(Consq37:RISKCONSEQUENCE{ Name:"CONSQ37", Description:"Impacts on seagrasses and ecological communities in Cleveland Bay." }),

// Risk mitigation
(Mitig37:RISKMITIGATION{Name:"MITG37", Description: "(1) Control of dewatering under the EMP, three indicative discharge areas are highlighted adjacent to each of the breakwaters.
(2) Preferred locations IN rank order are discharge to Ross Creek, discharge adjacent to northern breakwater, discharge adjacent Strand breakwater."}),

//.........Relationship...............
//proje--> risk source
(Project)-[:hasRiskSource]->(WR_Risk),

// Risk source --> Risk
(WR_Risk)-[:hasRisk]->(WRO1),

// Risk--> rating, consquence, mitigation
// risk1
(WRO1)-[:hasRiskRating]->(Ratn37),
(WRO1)-[:hasRiskConsequence]->(Consq37),
(WRO1)-[:hasRiskMitigation]->(Mitig37),

//.............Coastal Resource............
(CE_Risk:RISKSOURCE{ Name:"Coastal Resources" }),

// Risk
//Coastal Resource RISKS
(CEO1:RISK{ Name:"CEO1", Description:"Extreme Storm Tide Event - to 100 year ARI." }),
(CE02:RISK{ Name:"CE02", Description:"Extreme Storm Tide Event - greater than 100 year ARI." }),
(CE03:RISK{ Name:"CE03", Description:"Extreme Waves - to 100 year ARI." }),
(CE04:RISK{ Name:"CE04", Description:"Extreme Waves - greater than 100 year ARI." }),
(CE05:RISK{ Name:"CE05", Description:"Breakwater failure." }),

// Risk Rating
// Rating notes should be included
(Ratn38:RISKRATING{ Name:"RATG38", Probability: "Possible", Impact: "Minor", Rating:"Low" }),
(Ratn39:RISKRATING{ Name:"RATG39", Probability: "Rare", Impact: "Catastrophic", Rating:"Moderate" }),
(Ratn40:RISKRATING{ Name:"RATG40", Probability: "Possible", Impact: "Minor", Rating:"Low" }),
(Ratn41:RISKRATING{ Name:"RATG41", Probability: "Rare", Impact: "Catastrophic", Rating:"Moderate" }),
(Ratn42:RISKRATING{ Name:"RATG42", Probability: "Rare", Impact: "Major", Rating:"Low" }),

// Risk Consequence
(Consq38:RISKCONSEQUENCE{ Name:"CONSQ38", Description:"Destruction/damage to equipment and infrastructure." }),
(Consq39:RISKCONSEQUENCE{ Name:"CONSQ39", Description:"Destruction/damage to equipment and infrastructure." }),
(Consq40:RISKCONSEQUENCE{ Name:"CONSQ40", Description:"Destruction/damage to equipment and infrastructure." }),
(Consq41:RISKCONSEQUENCE{ Name:"CONSQ41", Description:"Destruction/damage to equipment and infrastructure." }),
(Consq42:RISKCONSEQUENCE{ Name:"CONSQ42", Description:"Destruction/damage to equipment and infrastructure." }),

// Risk mitigation
(Mitig38:RISKMITIGATION{Name:"MITG38", Description: "(1) The 100 year ARI is the Designated Storm Tide Event ( AS defined by EPA).
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediation works post event."}),
(Mitig39:RISKMITIGATION{Name:"MITG39", Description: "(1) The 100 year ARI is the Designated Storm Tide Event ( AS defined by EPA).
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediation works post event."}),
(Mitig40:RISKMITIGATION{Name:"MITG40", Description: "(1) Marine infrastructure structurally designed to accommodate 100 year ARI cyclone waves
WITH minimal damage.
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediation works post event."}),
(Mitig41:RISKMITIGATION{Name:"MITG41", Description: "(1) Marine infrastructure structurally designed to accommodate 100 year ARI cyclone waves
WITH minimal damage.
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediation works post event."}),
(Mitig42:RISKMITIGATION{Name:"MITG42", Description: "(1) Marine infrastructure structurally designed to accommodate 100 year ARI cyclone waves
WITH minimal damage.
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediation works post event."}),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(CE_Risk),

// Risk source --> Risk
(CE_Risk)-[:hasRisk]->(CEO1),
(CE_Risk)-[:hasRisk]->(CE02),
(CE_Risk)-[:hasRisk]->(CE03),
(CE_Risk)-[:hasRisk]->(CE04),
(CE_Risk)-[:hasRisk]->(CE05),

// Risk--> rating, consquence, mitigation
// risk1
(CEO1)-[:hasRiskRating]->(Ratn38),
(CEO1)-[:hasRiskConsequence]->(Consq38),
(CEO1)-[:hasRiskMitigation]->(Mitig38),

// risk2
(CE02)-[:hasRiskRating]->(Ratn39),
(CE02)-[:hasRiskConsequence]->(Consq39),
(CE02)-[:hasRiskMitigation]->(Mitig39),

// risk3
(CE03)-[:hasRiskRating]->(Ratn40),
(CE03)-[:hasRiskConsequence]->(Consq40),
(CE03)-[:hasRiskMitigation]->(Mitig40),

// risk4
(CE04)-[:hasRiskRating]->(Ratn41),
(CE04)-[:hasRiskConsequence]->(Consq41),
(CE04)-[:hasRiskMitigation]->(Mitig41),

// risk5
(CE05)-[:hasRiskRating]->(Ratn42),
(CE05)-[:hasRiskConsequence]->(Consq42),
(CE05)-[:hasRiskMitigation]->(Mitig42),

//...............Air Risk.............

(AI_Risk:RISKSOURCE{ Name:"Air" }),

// Risk
// Air RISKS
(AIO1:RISK{ Name:"AIO1", Description:"Emission of dust and particulate matter from construction activities." }),

// Risk Rating
// Rating notes should be included
(Ratn43:RISKRATING{ Name:"RATG43", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),

// Risk Consequence
(Consq43:RISKCONSEQUENCE{ Name:"CONSQ43", Description:"Amenity impacts on existing residents in the vicinity of the project site." }),

// Risk mitigation
(Mitig43:RISKMITIGATION{ Name:"MITG43", Description: "Air quality control measures in accordance with the project EMP." }),

//.........Relationship...............
//proje--> risk source
(Project)-[:hasRiskSource]->(AI_Risk),

// Risk source --> Risk
(AI_Risk)-[:hasRisk]->(AIO1),

// Risk--> rating, consquence, mitigation
// risk1
(AIO1)-[:hasRiskRating]->(Ratn43),
(AIO1)-[:hasRiskConsequence]->(Consq43),
(AIO1)-[:hasRiskMitigation]->(Mitig43),

//.....Noise and Vibration................

(NV_Risk:RISKSOURCE{ Name:"Noise and Vibration" }),

// Risk
//Coastal Resource RISKS
(NVO1:RISK{ Name:"NVO1", Description:"Construction noise impact on existing residential and retail areas." }),
(NV02:RISK{ Name:"NV02", Description:"Increase in road traffic noise at residences along public roads during construction." }),
(NV03:RISK{ Name:"NV03", Description:"Noise from construction impacts on marine life." }),
(NV04:RISK{ Name:"NV04", Description:"Vibration impact from construction equipment on existing residences." }),
(NV05:RISK{ Name:"NV05", Description:"Vibration impact from construction equipment on existing residences." }),
(NV06:RISK{ Name:"NV06", Description:"Vibration impact from construction equipment on Casino and Entertainment Centre." }),
(NV07:RISK{ Name:"NV07", Description:"Vibration impact from construction equipment on Casino and Entertainment Centre." }),

// Risk Rating
// Rating notes should be included
(Ratn44:RISKRATING{ Name:"RATG44", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn45:RISKRATING{ Name:"RATG45", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn46:RISKRATING{ Name:"RATG46", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn47:RISKRATING{ Name:"RATG47", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn48:RISKRATING{ Name:"RATG48", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn49:RISKRATING{ Name:"RATG49", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn50:RISKRATING{ Name:"RATG50", Probability: "Possible", Impact: "Major", Rating:"High" }),

// Risk Consequence
(Consq44:RISKCONSEQUENCE{ Name:"CONSQ44", Description:"Annoyance, resident complaints." }),
(Consq45:RISKCONSEQUENCE{ Name:"CONSQ45", Description:"Annoyance, resident complaints, Council/DMR may refuse permission to use proposed haulage routes due to unreasonable noise levels." }),
(Consq46:RISKCONSEQUENCE{ Name:"CONSQ46", Description:"Physical and behavioural impacts on mammals in vicinity of project site." }),
(Consq47:RISKCONSEQUENCE{ Name:"CONSQ47", Description:"Human discomfort, complaints to Council." }),
(Consq48:RISKCONSEQUENCE{ Name:"CONSQ48", Description:"Structural damage to nearby buildings." }),
(Consq49:RISKCONSEQUENCE{ Name:"CONSQ49", Description:"Human discomfort, complaints to Council." }),
(Consq50:RISKCONSEQUENCE{ Name:"CONSQ50", Description:"Structural damage to nearby buildings." }),

// Risk mitigation
(Mitig44:RISKMITIGATION{ Name:"MITG44", Description: "Establish complaint hotline, preparation of construction noise and vibration management plan, execution of noise and vibration management and minimisation." }),
(Mitig45:RISKMITIGATION{ Name:"MITG45", Description: "Establish complaint hotline, select haul routes with minimum number of properties affected, maintain and operate equipment efficiently." }),
(Mitig46:RISKMITIGATION{Name:"MITG46", Description: "(1) Visual survey of site to detect noise sensitive species prior to commencement of construction works.
(2) Dispersal of noise sensitive species using motorised vessel."}),
(Mitig47:RISKMITIGATION{ Name:"MITG47", Description: "Establish complaint hotline, minimise duration of impacting works." }),
(Mitig48:RISKMITIGATION{ Name:"MITG48", Description: "Carry out dilapidation report. Establish complaint hotline. Minimise duration of impacting works." }),
(Mitig49:RISKMITIGATION{ Name:"MITG49", Description: "Establish complaint hotline, preparation of construction noise and vibration management plan, vibration monitoring." }),
(Mitig50:RISKMITIGATION{ Name:"MITG50", Description: "Carry out dilapidation report. Establish complaint hotline, preparation of construction noise and vibration management plan, vibration monitoring." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(NV_Risk),

// Risk source --> Risk
(NV_Risk)-[:hasRisk]->(NVO1),
(NV_Risk)-[:hasRisk]->(NV02),
(NV_Risk)-[:hasRisk]->(NV03),
(NV_Risk)-[:hasRisk]->(NV04),
(NV_Risk)-[:hasRisk]->(NV05),
(NV_Risk)-[:hasRisk]->(NV06),
(NV_Risk)-[:hasRisk]->(NV07),

// Risk--> rating, consquence, mitigation
// risk1
(NVO1)-[:hasRiskRating]->(Ratn44),
(NVO1)-[:hasRiskConsequence]->(Consq44),
(NVO1)-[:hasRiskMitigation]->(Mitig44),

// risk2
(NV02)-[:hasRiskRating]->(Ratn45),
(NV02)-[:hasRiskConsequence]->(Consq45),
(NV02)-[:hasRiskMitigation]->(Mitig45),

// risk3
(NV03)-[:hasRiskRating]->(Ratn46),
(NV03)-[:hasRiskConsequence]->(Consq46),
(NV03)-[:hasRiskMitigation]->(Mitig46),

// risk4
(NV04)-[:hasRiskRating]->(Ratn47),
(NV04)-[:hasRiskConsequence]->(Consq47),
(NV04)-[:hasRiskMitigation]->(Mitig47),

// risk5
(NV05)-[:hasRiskRating]->(Ratn48),
(NV05)-[:hasRiskConsequence]->(Consq48),
(NV05)-[:hasRiskMitigation]->(Mitig48),

// risk6
(NV06)-[:hasRiskRating]->(Ratn49),
(NV06)-[:hasRiskConsequence]->(Consq49),
(NV06)-[:hasRiskMitigation]->(Mitig49),

// risk7
(NV07)-[:hasRiskRating]->(Ratn50),
(NV07)-[:hasRiskConsequence]->(Consq50),
(NV07)-[:hasRiskMitigation]->(Mitig50),

//....Nature Conservation...................

(NC_Risk:RISKSOURCE{ Name:"Nature Conservation" }),

// Risk
// Nature Conservation RISKS
(NC01:RISK{ Name:"NC01", Description:"Sediment destabilisation through changes in sediment transport regime (e.g. dredging in adjacent areas)." }),
(NC02:RISK{ Name:"NC02", Description:"Light attenuation through, for example, increased turbidity associated with dredging activities." }),
(NC03:RISK{ Name:"NC03", Description:"Nutrient enrichment leading to increased macroalgal growth (e.g. effluent discharge)." }),
(NC04:RISK{ Name:"NC04", Description:"Contamination from spill (oil, chemicals)." }),
(NC05:RISK{ Name:"NC05", Description:"Contamination from disturbed contaminated sediments." }),
(NC06:RISK{ Name:"NC06", Description:"Noise pollution (impact on organisms relying on seagrass beds)." }),
(NC07:RISK{ Name:"NC07", Description:"Smothering through garbage and debris accumulation." }),
(NC08:RISK{ Name:"NC08", Description:"Light attenuation through turbidity." }),
(NC09:RISK{ Name:"NC09", Description:"Sediment deposition." }),
(NC10:RISK{ Name:"NC10", Description:"Nutrient enrichment leading to increased macroalgal growth." }),
(NC11:RISK{ Name:"NC11", Description:"Contamination and mortality from spill (oil,chemicals)." }),
(NC12:RISK{ Name:"NC12", Description:"Contamination from disturbed contaminated sediments." }),
(NC13:RISK{ Name:"NC13", Description:"Smothering through garbage and debrisaccumulation." }),

// Risk Rating
// Rating notes should be included
(Ratn51:RISKRATING{ Name:"RATG51", Probability: "Likely", Impact: "Major", Rating:"Extreme" }),
(Ratn52:RISKRATING{ Name:"RATG52", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn53:RISKRATING{ Name:"RATG53", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn54:RISKRATING{ Name:"RATG54", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn55:RISKRATING{ Name:"RATG55", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn56:RISKRATING{ Name:"RATG56", Probability: "Almost Certain", Impact: "Major", Rating:"Extreme" }),
(Ratn57:RISKRATING{ Name:"RATG57", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn58:RISKRATING{ Name:"RATG58", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn59:RISKRATING{ Name:"RATG59", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn60:RISKRATING{ Name:"RATG60", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn61:RISKRATING{ Name:"RATG61", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn62:RISKRATING{ Name:"RATG62", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn63:RISKRATING{ Name:"RATG63", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),

/// Risk Consequence
(Consq51:RISKCONSEQUENCE{ Name:"CONSQ51", Description:"Seagrass impacts" }),
(Consq52:RISKCONSEQUENCE{ Name:"CONSQ52", Description:"Seagrass impacts" }),
(Consq53:RISKCONSEQUENCE{ Name:"CONSQ53", Description:"Seagrass impacts" }),
(Consq54:RISKCONSEQUENCE{ Name:"CONSQ54", Description:"Seagrass impacts" }),
(Consq55:RISKCONSEQUENCE{ Name:"CONSQ55", Description:"Seagrass impacts" }),
(Consq56:RISKCONSEQUENCE{ Name:"CONSQ56", Description:"Seagrass impacts" }),
(Consq57:RISKCONSEQUENCE{ Name:"CONSQ57", Description:"Seagrass impacts" }),
(Consq58:RISKCONSEQUENCE{ Name:"CONSQ58", Description:"Coral reef impacts" }),
(Consq59:RISKCONSEQUENCE{ Name:"CONSQ59", Description:"Coral reef impacts" }),
(Consq60:RISKCONSEQUENCE{ Name:"CONSQ60", Description:"Coral reef impacts" }),
(Consq61:RISKCONSEQUENCE{ Name:"CONSQ61", Description:"Coral reef impacts" }),
(Consq62:RISKCONSEQUENCE{ Name:"CONSQ62", Description:"Coral reef impacts" }),
(Consq63:RISKCONSEQUENCE{ Name:"CONSQ63", Description:"Coral reef impacts" }),

// Risk mitigation
(Mitig51:RISKMITIGATION{ Name:"MITG51", Description: "Use of silt curtains during dredging and dredge protocols contained in project EMP." }),
(Mitig52:RISKMITIGATION{Name:"MITG52", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig53:RISKMITIGATION{Name:"MITG53", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig54:RISKMITIGATION{ Name:"MITG54", Description: "Spill contingency procedures contained in project EMP. Controlled via fully bunded site." }),
(Mitig55:RISKMITIGATION{Name:"MITG55", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig56:RISKMITIGATION{Name:"MITG56", Description: "(1) Visual survey of site to detect noise sensitive species prior to commencement of construction works.
(2) Dispersal of noise sensitive species using motorised vessel."}),
(Mitig57:RISKMITIGATION{ Name:"MITG57", Description: "Waste control measures contained in project EMP. Waste controlled via fully bunded site." }),
(Mitig58:RISKMITIGATION{Name:"MITG58", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig59:RISKMITIGATION{Name:"MITG59", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig60:RISKMITIGATION{Name:"MITG60", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig61:RISKMITIGATION{Name:"MITG61", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig62:RISKMITIGATION{Name:"MITG62", Description: "(1) Use of silt curtains during dredging AND dredge protocols contained IN project EMP.
(2) Controlled dewatering of fully bunded site."}),
(Mitig63:RISKMITIGATION{ Name:"MITG63", Description: "Waste control measures contained in project EMP. Waste controlled via fully bunded site." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(NC_Risk),
// Risk source --> Risk
(NC_Risk)-[:hasRisk]->(NC01),
(NC_Risk)-[:hasRisk]->(NC02),
(NC_Risk)-[:hasRisk]->(NC03),
(NC_Risk)-[:hasRisk]->(NC04),
(NC_Risk)-[:hasRisk]->(NC05),
(NC_Risk)-[:hasRisk]->(NC06),
(NC_Risk)-[:hasRisk]->(NC07),
(NC_Risk)-[:hasRisk]->(NC08),
(NC_Risk)-[:hasRisk]->(NC09),
(NC_Risk)-[:hasRisk]->(NC10),
(NC_Risk)-[:hasRisk]->(NC11),
(NC_Risk)-[:hasRisk]->(NC12),
(NC_Risk)-[:hasRisk]->(NC13),

// Risk--> rating, consquence, mitigation
// risk1
(NC01)-[:hasRiskRating]->(Ratn51),
(NC01)-[:hasRiskConsequence]->(Consq51),
(NC01)-[:hasRiskMitigation]->(Mitig51),

// risk2
(NC02)-[:hasRiskRating]->(Ratn52),
(NC02)-[:hasRiskConsequence]->(Consq52),
(NC02)-[:hasRiskMitigation]->(Mitig52),

// risk3
(NC03)-[:hasRiskRating]->(Ratn53),
(NC03)-[:hasRiskConsequence]->(Consq53),
(NC03)-[:hasRiskMitigation]->(Mitig53),

// risk4
(NC04)-[:hasRiskRating]->(Ratn54),
(NC04)-[:hasRiskConsequence]->(Consq54),
(NC04)-[:hasRiskMitigation]->(Mitig54),

// risk5
(NC05)-[:hasRiskRating]->(Ratn55),
(NC05)-[:hasRiskConsequence]->(Consq55),
(NC05)-[:hasRiskMitigation]->(Mitig55),

// risk6
(NC06)-[:hasRiskRating]->(Ratn56),
(NC06)-[:hasRiskConsequence]->(Consq56),
(NC06)-[:hasRiskMitigation]->(Mitig56),

// risk7
(NC07)-[:hasRiskRating]->(Ratn57),
(NC07)-[:hasRiskConsequence]->(Consq57),
(NC07)-[:hasRiskMitigation]->(Mitig57),

// risk8
(NC08)-[:hasRiskRating]->(Ratn58),
(NC08)-[:hasRiskConsequence]->(Consq58),
(NC08)-[:hasRiskMitigation]->(Mitig58),

// risk9
(NC09)-[:hasRiskRating]->(Ratn59),
(NC09)-[:hasRiskConsequence]->(Consq59),
(NC09)-[:hasRiskMitigation]->(Mitig59),

// risk10
(NC10)-[:hasRiskRating]->(Ratn60),
(NC10)-[:hasRiskConsequence]->(Consq60),
(NC10)-[:hasRiskMitigation]->(Mitig60),

// risk11
(NC11)-[:hasRiskRating]->(Ratn61),
(NC11)-[:hasRiskConsequence]->(Consq61),
(NC11)-[:hasRiskMitigation]->(Mitig61),

// risk12
(NC12)-[:hasRiskRating]->(Ratn62),
(NC12)-[:hasRiskConsequence]->(Consq62),
(NC12)-[:hasRiskMitigation]->(Mitig62),

// risk13
(NC13)-[:hasRiskRating]->(Ratn63),
(NC13)-[:hasRiskConsequence]->(Consq63),
(NC13)-[:hasRiskMitigation]->(Mitig63),

//......Cultural heritage...............

(CH_Risk:RISKSOURCE{ Name:"Cultural Heritage" }),

// Risk
// Cultural heritage RISKS
(CHO1:RISK{ Name:"CH01", Description:"Negative impacts on Aboriginal cultural values." }),
(CH02:RISK{ Name:"CH02", Description:"Disturbance of sites that may remain in sub-tidal deposits." }),
(CH03:RISK{ Name:"CH03", Description:"Negative impacts on local environmental values." }),

// Risk Rating
// Rating notes should be included

(Ratn64:RISKRATING{ Name:"RATG64", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn65:RISKRATING{ Name:"RATG65", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn66:RISKRATING{ Name:"RATG66", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),

// Risk Consequence
(Consq64:RISKCONSEQUENCE{ Name:"CONSQ64", Description:"Diminished cultural significance of Cleveland Bay and local waterways." }),
(Consq65:RISKCONSEQUENCE{ Name:"CONSQ65", Description:"Negative impact on archaeological record." }),
(Consq66:RISKCONSEQUENCE{ Name:"CONSQ66", Description:"Diminished Aboriginal use of the area for cultural practices such as fishing and foraging." }),

// Risk mitigation
(Mitig64:RISKMITIGATION{Name:"MITG64", Description: "(1) Cultural monitoring AND site inspection program to be implemented during development of the site.
(2) Training of construction contractors AND staff."}),
(Mitig65:RISKMITIGATION{ Name:"MITG65", Description: "Implementation of a protocol in the event of a find of cultural significance and appropriate management actions in consultation with the Traditional Owners." }),
(Mitig66:RISKMITIGATION{ Name:"MITG66", Description: "Review of expert environmental reports by Traditional Owners." }),

// Relationship
//proje--> risk Source
(Project)-[:hasRiskSource]->(CH_Risk),
// Risk source --> Risk
(CH_Risk)-[:hasRisk]->(CHO1),
(CH_Risk)-[:hasRisk]->(CH02),
(CH_Risk)-[:hasRisk]->(CH03),

// Risk--> rating, consquence, mitigation
// risk1
(CHO1)-[:hasRiskRating]->(Ratn64),
(CHO1)-[:hasRiskConsequence]->(Consq64),
(CHO1)-[:hasRiskMitigation]->(Mitig64),

// risk2
(CH02)-[:hasRiskRating]->(Ratn65),
(CH02)-[:hasRiskConsequence]->(Consq65),
(CH02)-[:hasRiskMitigation]->(Mitig65),

// risk3
(CH03)-[:hasRiskRating]->(Ratn66),
(CH03)-[:hasRiskConsequence]->(Consq66),
(CH03)-[:hasRiskMitigation]->(Mitig66),

//....Social Risks..................

(SO_Risk:RISKSOURCE{ Name:"Social" }),

// Risk
//Coastal Resource RISKS
(SOO1:RISK{ Name:"SOO1", Description:"Air quality impacts during construction." }),
(SO02:RISK{ Name:"SO02", Description:"Noise impacts during construction." }),
(SO03:RISK{ Name:"SO03", Description:"Increased marine traffic." }),
(SO04:RISK{ Name:"SO04", Description:"Increased vehicular traffic." }),
(SO05:RISK{ Name:"SO05", Description:"Reduced public amenity during construction." }),
(SO06:RISK{ Name:"SO06", Description:"Reduced public access to recreational space and facilities during construction." }),
(SO07:RISK{ Name:"SO07", Description:"Environmental degradation." }),
(SO08:RISK{ Name:"SO08", Description:"Increased dust, noise and congestion along haulage routes." }),

// Risk Rating
// Rating notes should be included
(Ratn67:RISKRATING{ Name:"RATG67", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn68:RISKRATING{ Name:"RATG68", Probability: "Possible", Impact: "Major", Rating:"High" }),
(Ratn69:RISKRATING{ Name:"RATG69", Probability: "Rare", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn70:RISKRATING{ Name:"RATG70", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn71:RISKRATING{ Name:"RATG71", Probability: "Likely", Impact: "Minor", Rating:"Moderate" }),
(Ratn72:RISKRATING{ Name:"RATG72", Probability: "Almost Certain", Impact: "Minor", Rating:"High" }),
(Ratn73:RISKRATING{ Name:"RATG73", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn74:RISKRATING{ Name:"RATG74", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),

// Risk Consequence
(Consq67:RISKCONSEQUENCE{ Name:"CONSQ67", Description:"Adverse impacts on amenity and liveability." }),
(Consq68:RISKCONSEQUENCE{ Name:"CONSQ68", Description:"Adverse impacts on amenity and liveability." }),
(Consq69:RISKCONSEQUENCE{ Name:"CONSQ69", Description:"Impacts on existing recreational uses." }),
(Consq70:RISKCONSEQUENCE{ Name:"CONSQ70", Description:"Impacts on existing and future residents." }),
(Consq71:RISKCONSEQUENCE{ Name:"CONSQ71", Description:"Construction related activities will generate some amenity impacts on the Strand thereby reducing amenity for users." }),
(Consq72:RISKCONSEQUENCE{ Name:"CONSQ72", Description:"Inability of previous users to access old breakwater (e.g. recreational anglers)." }),
(Consq73:RISKCONSEQUENCE{ Name:"CONSQ73", Description:"Degradation of the marine environment in particular during construction." }),
(Consq74:RISKCONSEQUENCE{ Name:"CONSQ74", Description:"Residential and road user disamenties resulting from sustained periods of quarry materials haulage." }),

// Risk mitigation
(Mitig67:RISKMITIGATION{ Name:"MITG67", Description: "Air quality control measures in accordance with the project EMP." }),
(Mitig68:RISKMITIGATION{ Name:"MITG68", Description: "Establish complaint hotline, preparation of construction noise and vibration management plan, execution of noise and vibration management and minimisation." }),
(Mitig69:RISKMITIGATION{ Name:"MITG69", Description: "Planned barge movements provided to TPA and harbour master." }),
(Mitig70:RISKMITIGATION{ Name:"MITG70", Description: "Provide density plans as part of EIS submission to enable government authorities to plan for service upgrades with maximum lead times." }),
(Mitig71:RISKMITIGATION{ Name:"MITG71", Description: "Short term impact. Selection of haul routes to minimise impacts." }),
(Mitig72:RISKMITIGATION{ Name:"MITG72", Description: "Safety considerations must come to the fore during construction and public access to the breakwater would be inappropriate." }),
(Mitig73:RISKMITIGATION{ Name:"MITG73", Description: "Adhesion to environmental protocols contained in project EMP. Controlled impacts via fully bunded site." }),
(Mitig74:RISKMITIGATION{ Name:"MITG74", Description: "Short term impact. Selection of haul routes to minimise impacts." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(SO_Risk),

// Risk source --> Risk
(SO_Risk)-[:hasRisk]->(SOO1),
(SO_Risk)-[:hasRisk]->(SO02),
(SO_Risk)-[:hasRisk]->(SO03),
(SO_Risk)-[:hasRisk]->(SO04),
(SO_Risk)-[:hasRisk]->(SO05),
(SO_Risk)-[:hasRisk]->(SO06),
(SO_Risk)-[:hasRisk]->(SO07),
(SO_Risk)-[:hasRisk]->(SO08),

// Risk--> rating, consquence, mitigation
// risk1
(SOO1)-[:hasRiskRating]->(Ratn67),
(SOO1)-[:hasRiskConsequence]->(Consq67),
(SOO1)-[:hasRiskMitigation]->(Mitig67),

// risk2
(SO02)-[:hasRiskRating]->(Ratn68),
(SO02)-[:hasRiskConsequence]->(Consq68),
(SO02)-[:hasRiskMitigation]->(Mitig68),

// risk3
(SO03)-[:hasRiskRating]->(Ratn69),
(SO03)-[:hasRiskConsequence]->(Consq69),
(SO03)-[:hasRiskMitigation]->(Mitig69),

// risk4
(SO04)-[:hasRiskRating]->(Ratn70),
(SO04)-[:hasRiskConsequence]->(Consq70),
(SO04)-[:hasRiskMitigation]->(Mitig70),

// risk5
(SO05)-[:hasRiskRating]->(Ratn71),
(SO05)-[:hasRiskConsequence]->(Consq71),
(SO05)-[:hasRiskMitigation]->(Mitig71),

// risk6
(SO06)-[:hasRiskRating]->(Ratn72),
(SO06)-[:hasRiskConsequence]->(Consq72),
(SO06)-[:hasRiskMitigation]->(Mitig72),

// risk7
(SO07)-[:hasRiskRating]->(Ratn73),
(SO07)-[:hasRiskConsequence]->(Consq73),
(SO07)-[:hasRiskMitigation]->(Mitig73),

// risk8
(SO08)-[:hasRiskRating]->(Ratn74),
(SO08)-[:hasRiskConsequence]->(Consq74),
(SO08)-[:hasRiskMitigation]->(Mitig74),

///......Health & Safety Risk.........................
(HS_Risk:RISKSOURCE{ Name:"Health and Safety" }),

// Risk
// H&S RISKS
(HSO1:RISK{ Name:"HS01", Description:"Construction traffic." }),
(HS02:RISK{ Name:"HS02", Description:"Public health and safety." }),
(HS03:RISK{ Name:"HS03", Description:"Construction health and safety." }),

// Risk Rating
// Rating notes should be included

(Ratn75:RISKRATING{ Name:"RATG75", Probability: "Likely", Impact: "Moderate", Rating:"High" }),
(Ratn76:RISKRATING{ Name:"RATG76", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),
(Ratn77:RISKRATING{ Name:"RATG77", Probability: "Unlikely", Impact: "Major", Rating:"Moderate" }),

// Risk Consequence
(Consq75:RISKCONSEQUENCE{ Name:"CONSQ75", Description:"Increased traffic on haul roads and noise nuisance impacts on existing businesses, schools and residences." }),
(Consq76:RISKCONSEQUENCE{ Name:"CONSQ76", Description:"Impacts on public H&S during construction." }),
(Consq77:RISKCONSEQUENCE{ Name:"CONSQ77", Description:"Health and Safety impacts on construction workforce." }),

// Risk mitigation
(Mitig75:RISKMITIGATION{ Name:"MITG75", Description: "Establish complaint hotline, select haul routes with minimum number of properties affected, maintain and operate equipment efficiently." }),
(Mitig76:RISKMITIGATION{ Name:"MITG76", Description: "Adequate signage and fencing to secure the site and prevent unauthorised access." }),
(Mitig77:RISKMITIGATION{ Name:"MITG77", Description: "Construction contractor to implement WH&S measures." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(HS_Risk),
// Risk source --> Risk
(HS_Risk)-[:hasRisk]->(HSO1),
(HS_Risk)-[:hasRisk]->(HS02),
(HS_Risk)-[:hasRisk]->(HS03),

// Risk--> rating, consquence, mitigation
// risk1
(HSO1)-[:hasRiskRating]->(Ratn75),
(HSO1)-[:hasRiskConsequence]->(Consq75),
(HSO1)-[:hasRiskMitigation]->(Mitig75),

// risk2
(HS02)-[:hasRiskRating]->(Ratn76),
(HS02)-[:hasRiskConsequence]->(Consq76),
(HS02)-[:hasRiskMitigation]->(Mitig76),

// risk3
(HS03)-[:hasRiskRating]->(Ratn77),
(HS03)-[:hasRiskConsequence]->(Consq77),
(HS03)-[:hasRiskMitigation]->(Mitig77),

//...........Economic Risk.................

(EC_Risk:RISKSOURCE{ Name:"Economy" }),

// Risk
// Economy RISKS
(ECO1:RISK{ Name:"ECO1", Description:"Potential impact on existing labour markets." }),
(EC02:RISK{ Name:"EC02", Description:"Potential impacts on existing housing and accommodation stock (during construction)." }),
(EC03:RISK{ Name:"EC03", Description:"Potential impact on future regional development resulting from use of significant quantities of quarry materials." }),
(EC04:RISK{ Name:"EC04", Description:"Potential impact on existing marine users during construction." }),

// Risk Rating
// Rating notes should be included
(Ratn78:RISKRATING{ Name:"RATG78", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn79:RISKRATING{ Name:"RATG79", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn80:RISKRATING{ Name:"RATG80", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn81:RISKRATING{ Name:"RATG81", Probability: "Rare", Impact: "Minor", Rating:"Negligible" }),

// Risk Consequence
(Consq78:RISKCONSEQUENCE{ Name:"CONSQ78", Description:"Inability of existing workforce to provide adequate skills and labour." }),
(Consq79:RISKCONSEQUENCE{ Name:"CONSQ79", Description:"Inability of existing accommodation to cope with increased demand." }),
(Consq80:RISKCONSEQUENCE{ Name:"CONSQ80", Description:"Inability of future projects to source sufficient volumes of quarry materials from local sources (resulting in increased costs and project delays)." }),
(Consq81:RISKCONSEQUENCE{ Name:"CONSQ81", Description:"Impairment of operations of existing Ross Creek users." }),

// Risk mitigation
(Mitig78:RISKMITIGATION{ Name:"MITG78", Description: "Encouragement of suitable labour force into local market." }),
(Mitig79:RISKMITIGATION{ Name:"MITG79", Description: "Expected labour force will be drawn from existing local workforce." }),
(Mitig80:RISKMITIGATION{Name:"MITG80", Description: "(1) Roseneath Quarry has been specifically re-opened to supply materials for this project.
(2) Significant reserves still exist IN the vicinity to provide material for future developments."}),
(Mitig81:RISKMITIGATION{ Name:"MITG81", Description: "Ensure production schedules are consistent with existing user requirements." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(EC_Risk),

// Risk source --> Risk
(EC_Risk)-[:hasRisk]->(ECO1),
(EC_Risk)-[:hasRisk]->(EC02),
(EC_Risk)-[:hasRisk]->(EC03),
(EC_Risk)-[:hasRisk]->(EC04),

// Risk--> rating, consquence, mitigation
// risk1
(ECO1)-[:hasRiskRating]->(Ratn78),
(ECO1)-[:hasRiskConsequence]->(Consq78),
(ECO1)-[:hasRiskMitigation]->(Mitig78),

// risk2
(EC02)-[:hasRiskRating]->(Ratn79),
(EC02)-[:hasRiskConsequence]->(Consq79),
(EC02)-[:hasRiskMitigation]->(Mitig79),

// risk3
(EC03)-[:hasRiskRating]->(Ratn80),
(EC03)-[:hasRiskConsequence]->(Consq80),
(EC03)-[:hasRiskMitigation]->(Mitig80),

// risk4
(EC04)-[:hasRiskRating]->(Ratn81),
(EC04)-[:hasRiskConsequence]->(Consq81),
(EC04)-[:hasRiskMitigation]->(Mitig81),

//................Construction Method Risk......

(CM_Risk:RISKSOURCE{ Name:"Construction Methodology" }),
// Risk
// Construction Method RISKS
(CM01:RISK{ Name:"CM01", Description:"Sand Lenses Slip Failure." }),
(CM02:RISK{ Name:"CM02", Description:"Percolation and Dewatering." }),
(CM03:RISK{ Name:"CM03", Description:"Dewatering Equipment Failure." }),
(CM04:RISK{ Name:"CM04", Description:"HDPE / Bentonite Membrane Failure." }),
(CM05:RISK{ Name:"CM05", Description:"Wonky Holes." }),
(CM06:RISK{ Name:"CM06", Description:"Spoil Disposal unsuitable as fill material." }),
(CM07:RISK{ Name:"CM07", Description:"Parklands Settlement." }),
(CM08:RISK{ Name:"CM08", Description:"Green Topped Breakwaters." }),
(CM09:RISK{ Name:"CM09", Description:"Green Topped Seawall." }),
(CM10:RISK{ Name:"CM10", Description:"Sheet Pile Failure." }),
(CM11:RISK{ Name:"CM11", Description:"Loss of Construction Equipment." }),
(CM12:RISK{ Name:"CM12", Description:"Construction Equipment Failure." }),
(CM13:RISK{ Name:"CM13", Description:"Construction WH&S Risks." }),

// Risk Rating
// Rating notes should be included
(Ratn82:RISKRATING{ Name:"RATG82", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn83:RISKRATING{ Name:"RATG83", Probability: "Likely", Impact: "Moderate", Rating:"High" }),
(Ratn84:RISKRATING{ Name:"RATG84", Probability: "Rare", Impact: "Moderate", Rating:"Negligible" }),
(Ratn85:RISKRATING{ Name:"RATG85", Probability: "Likely", Impact: "Moderate", Rating:"High" }),
(Ratn86:RISKRATING{ Name:"RATG86", Probability: "Possible", Impact: "Moderate", Rating:"Moderate" }),
(Ratn87:RISKRATING{ Name:"RATG87", Probability: "Almost Certain", Impact: "Minor", Rating:"High" }),
(Ratn88:RISKRATING{ Name:"RATG88", Probability: "Almost Certain", Impact: "Minor", Rating:"High" }),
(Ratn89:RISKRATING{ Name:"RATG89", Probability: "Possibile", Impact: "Moderate", Rating:"Moderate" }),
(Ratn90:RISKRATING{ Name:"RATG90", Probability: "Possible", Impact: "Minor", Rating:"Low" }),
(Ratn91:RISKRATING{ Name:"RATG91", Probability: "Unlikely", Impact: "Moderate", Rating:"Low" }),
(Ratn92:RISKRATING{ Name:"RATG92", Probability: "Rare", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn93:RISKRATING{ Name:"RATG93", Probability: "Unlikely", Impact: "Insignificant", Rating:"Negligible" }),
(Ratn94:RISKRATING{ Name:"RATG94", Probability: "Possible", Impact: "Major", Rating:"High" }),

/// Risk Consequence
(Consq82:RISKCONSEQUENCE{ Name:"CONSQ82", Description:"Destruction of Property" }),
(Consq83:RISKCONSEQUENCE{ Name:"CONSQ83", Description:"Work Site Flooding" }),
(Consq84:RISKCONSEQUENCE{ Name:"CONSQ84", Description:"Work Site Flooding" }),
(Consq85:RISKCONSEQUENCE{ Name:"CONSQ85", Description:"Work Site Flooding" }),
(Consq86:RISKCONSEQUENCE{ Name:"CONSQ86", Description:"Work Site Flooding" }),
(Consq87:RISKCONSEQUENCE{ Name:"CONSQ87", Description:"Movement of Materials Off Site and Treatment." }),
(Consq88:RISKCONSEQUENCE{ Name:"CONSQ88", Description:"Destruction of Property (landscape element)" }),
(Consq89:RISKCONSEQUENCE{ Name:"CONSQ89", Description:"Destruction of Property" }),
(Consq90:RISKCONSEQUENCE{ Name:"CONSQ90", Description:"Destruction of Property (landscape element)" }),
(Consq91:RISKCONSEQUENCE{ Name:"CONSQ91", Description:"Destruction of Property" }),
(Consq92:RISKCONSEQUENCE{ Name:"CONSQ92", Description:"Destruction / Loss of Equipment Property" }),
(Consq93:RISKCONSEQUENCE{ Name:"CONSQ93", Description:"Destruction / Loss of Equipment Property" }),
(Consq94:RISKCONSEQUENCE{ Name:"CONSQ94", Description:"Injury or Loss of Life" }),

// Risk mitigation
(Mitig82:RISKMITIGATION{Name:"MITG82", Description: "(1) Geotechnical Analysis for design of slopes AND batters.
(2) Specific design parameters for retaining AND revetment works.
(3) Level 1 construction supervision."}),
(Mitig83:RISKMITIGATION{Name:"MITG83", Description: "(1) Monitoring of depressurization system through construction AS identified IN EMP.
(2) Reduced WorkingCells."}),
(Mitig84:RISKMITIGATION{Name:"MITG84", Description: "(1) Level 1 construction supervision.
(2) Reduced Working Cells."}),
(Mitig85:RISKMITIGATION{Name:"MITG85", Description: "(1) Monitoring of depressurization system through construction AS identified IN EMP.
(2) Reduced Working Cells."}),
(Mitig86:RISKMITIGATION{Name:"MITG86", Description: "(1) Monitoring of depressurization system through construction AS identified IN EMP.
(2) Reduced Working Cells."}),
(Mitig87:RISKMITIGATION{ Name:"MITG87", Description: "Agreement with Port Authority to receive materials to enable relocation and treatment." }),
(Mitig88:RISKMITIGATION{ Name:"MITG88", Description: "Site remediation works post event." }),
(Mitig89:RISKMITIGATION{Name:"MITG89", Description: "(1) Marine infrastructure structurally designed to accommodate 100 year ARI cyclone waves
WITH minimal damage.
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediationworks post event."}),
(Mitig90:RISKMITIGATION{Name:"MITG90", Description: "(1) Marine infrastructure structurally designed to accommodate 100 year ARI cyclone waves
WITH minimal damage.
(2) Site secured AND site personnel AND equipment relocated to safe refuge.
(3) Site remediationworks post event."}),
(Mitig91:RISKMITIGATION{Name:"MITG91", Description: "(1) Site fully bunded post sheet pile installation.
(2) Site remediation works post event."}),
(Mitig92:RISKMITIGATION{Name:"MITG92", Description: "(1) Construction contractor to implement WH&S measures.
(2) Site remediation works post event."}),
(Mitig93:RISKMITIGATION{ Name:"MITG93", Description: "Site remediation works post event." }),
(Mitig94:RISKMITIGATION{ Name:"MITG94", Description: "Construction contractor to implement WH&Smeasures." }),

// Relationship
//proje--> risk source
(Project)-[:hasRiskSource]->(CM_Risk),
// Risk source --> Risk
(CM_Risk)-[:hasRisk]->(CM01),
(CM_Risk)-[:hasRisk]->(CM02),
(CM_Risk)-[:hasRisk]->(CM03),
(CM_Risk)-[:hasRisk]->(CM04),
(CM_Risk)-[:hasRisk]->(CM05),
(CM_Risk)-[:hasRisk]->(CM06),
(CM_Risk)-[:hasRisk]->(CM07),
(CM_Risk)-[:hasRisk]->(CM08),
(CM_Risk)-[:hasRisk]->(CM09),
(CM_Risk)-[:hasRisk]->(CM10),
(CM_Risk)-[:hasRisk]->(CM11),
(CM_Risk)-[:hasRisk]->(CM12),
(CM_Risk)-[:hasRisk]->(CM13),

// Risk--> rating, consquence, mitigation
// risk1
(CM01)-[:hasRiskRating]->(Ratn82),
(CM01)-[:hasRiskConsequence]->(Consq82),
(CM01)-[:hasRiskMitigation]->(Mitig82),

// risk2
(CM02)-[:hasRiskRating]->(Ratn83),
(CM02)-[:hasRiskConsequence]->(Consq83),
(CM02)-[:hasRiskMitigation]->(Mitig83),

// risk3
(CM03)-[:hasRiskRating]->(Ratn84),
(CM03)-[:hasRiskConsequence]->(Consq84),
(CM03)-[:hasRiskMitigation]->(Mitig84),

// risk4
(CM04)-[:hasRiskRating]->(Ratn85),
(CM04)-[:hasRiskConsequence]->(Consq85),
(CM04)-[:hasRiskMitigation]->(Mitig85),

// risk5
(CM05)-[:hasRiskRating]->(Ratn86),
(CM05)-[:hasRiskConsequence]->(Consq86),
(CM05)-[:hasRiskMitigation]->(Mitig86),

// risk6
(CM06)-[:hasRiskRating]->(Ratn87),
(CM06)-[:hasRiskConsequence]->(Consq87),
(CM06)-[:hasRiskMitigation]->(Mitig87),

// risk7
(CM07)-[:hasRiskRating]->(Ratn88),
(CM07)-[:hasRiskConsequence]->(Consq88),
(CM07)-[:hasRiskMitigation]->(Mitig88),

// risk8
(CM08)-[:hasRiskRating]->(Ratn89),
(CM08)-[:hasRiskConsequence]->(Consq89),
(CM08)-[:hasRiskMitigation]->(Mitig89),

// risk9
(CM09)-[:hasRiskRating]->(Ratn90),
(CM09)-[:hasRiskConsequence]->(Consq90),
(CM09)-[:hasRiskMitigation]->(Mitig90),

// risk10
(CM10)-[:hasRiskRating]->(Ratn91),
(CM10)-[:hasRiskConsequence]->(Consq91),
(CM10)-[:hasRiskMitigation]->(Mitig91),

// risk11
(CM11)-[:hasRiskRating]->(Ratn92),
(CM11)-[:hasRiskConsequence]->(Consq92),
(CM11)-[:hasRiskMitigation]->(Mitig92),

// risk12
(CM12)-[:hasRiskRating]->(Ratn93),
(CM12)-[:hasRiskConsequence]->(Consq93),
(CM12)-[:hasRiskMitigation]->(Mitig93),

// risk13
(CM13)-[:hasRiskRating]->(Ratn94),
(CM13)-[:hasRiskConsequence]->(Consq94),
(CM13)-[:hasRiskMitigation]->(Mitig94);
