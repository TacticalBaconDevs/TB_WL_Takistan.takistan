TB_crashHelfer = false;
[[playerSide], [playerSide] call BIS_fnc_enemySides] call ace_spectator_fnc_updateSides;
BIS_WLVotingResetEnabled = 1;

[
    "RHS_MELB_base",
    "init",
    {
        params ["_vehicle"];
        _vehicle setVariable ["ace_vehiclelock_lockSide", independent, true];
    },
    true,
    [],
    true
] call CBA_fnc_addClassEventHandler;

[
    "RHS_UH60M_d",
    "init",
    {
        params ["_vehicle"];
        _vehicle setVariable ["ace_vehiclelock_lockSide", independent, true];
    },
    true,
    [],
    true
] call CBA_fnc_addClassEventHandler;

/*
    In Arma:
    Im Hauptmenü auf "Tutorials" klicken, dann "ACE-ARSENAL" nun alles ausrüsten.
    Wenn du alles ausgerüstet hast, unten auf "EXPORTIEREN" klicken.
    
    Diese Datei:
    Nun beim jeweiligen CASE der Rolle zB lead (Truppführer usw.) die leeren >>> [] <<<
    markieren und STRG+V drücken.
    Sollten die leeren eckingen Klammern stehen bleiben wird diese Rolle nicht angeboten.
    Die Spalte in der DEFAULT steht DARF NICHT ANGEFASST WERDEN. Diese einfach lassen
    auch die [].
    Layouts sind über die Kiste im Reiter Arsenal "Vordefiniert Custom" erreichbar!
*/
TB_fnc_customLayout = {
    params ["_rolle"];
    
    if (side ACE_player == blufor) then
    {
        switch (_rolle) do
        {
            case "lead": {[["rhs_weap_m4a1_d","","rhsusf_acc_wmx","rhsusf_acc_eotech_552_d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2_tan"],[],["rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["rhs_uniform_FROG01_d",[["ACE_key_west",1],["ACE_key_indp",1],["ACE_CableTie",2],["ACE_tourniquet",3],["ACE_quikclot",15],["ACE_EntrenchingTool",1],["ACE_Flashlight_KSF1",1]]],["rhsusf_mbav_mg",[["ACE_quikclot",20],["rhs_mag_mk3a2",3,1],["rhs_mag_m67",3,1],["SmokeShellBlue",3,1],["SmokeShellGreen",3,1],["ACE_Chemlight_HiYellow",3,1],["SmokeShell",5,1],["rhsusf_mag_17Rnd_9x19_JHP",2,17]]],["OPXT_aor1_1523",[["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",4,30]]],"rhsusf_opscore_coy_cover_pelt","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]};
            case "sani": {[["rhs_weap_mk18_d","","rhsusf_acc_wmx","rhsusf_acc_eotech_552_d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2_tan"],[],["rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["rhs_uniform_FROG01_d",[["ACE_key_west",1],["ACE_key_indp",1],["ACE_CableTie",2],["ACE_tourniquet",3],["ACE_quikclot",15],["ACE_EntrenchingTool",1],["ACE_Flashlight_KSF1",1]]],["rhsusf_mbav_medic",[["adv_aceCPR_AED",1],["ACE_elasticBandage",25],["ACE_bloodIV",5],["ACE_epinephrine",5],["ACE_morphine",10],["ACE_tourniquet",5],["ACE_quikclot",10],["ACE_surgicalKit",1]]],["rhsusf_falconii_coy",[["SmokeShell",5,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",4,30],["rhsusf_mag_17Rnd_9x19_JHP",2,17]]],"rhsusf_opscore_coy_cover_pelt","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]};
            case "rifle" : {[["rhs_weap_mk18_grip2_d","","rhsusf_acc_wmx","rhsusf_acc_eotech_552_d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2_tan"],["rhs_weap_m72a7","","","",["rhs_m72a7_mag",1],[],""],["rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["rhs_uniform_FROG01_d",[["ACE_key_west",1],["ACE_key_indp",1],["ACE_CableTie",2],["ACE_tourniquet",3],["ACE_quikclot",15],["ACE_EntrenchingTool",1],["ACE_Flashlight_KSF1",1]]],["rhsusf_mbav_rifleman",[["ACE_morphine",5],["ACE_quikclot",10],["rhs_mag_mk3a2",3,1],["rhs_mag_m67",3,1],["SmokeShellBlue",2,1],["SmokeShellGreen",2,1],["ACE_Chemlight_IR",3,1],["ACE_Chemlight_HiYellow",3,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",1,30]]],["rhsusf_falconii_coy",[["SmokeShell",6,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",4,30]]],"rhsusf_opscore_coy_cover_pelt","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]};
            case "pionier" : {[["rhs_weap_mk18_d","","rhsusf_acc_wmx","rhsusf_acc_eotech_552_d",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",30],[],"rhsusf_acc_grip2_tan"],[],["rhsusf_weap_glock17g4","rhsusf_acc_omega9k","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["rhs_uniform_FROG01_d",[["ACE_key_west",1],["ACE_key_indp",1],["ACE_CableTie",2],["ACE_tourniquet",3],["ACE_quikclot",15],["ACE_EntrenchingTool",1],["ACE_Flashlight_KSF1",1]]],["rhsusf_mbav_rifleman",[["ACE_morphine",5],["ACE_quikclot",10],["TB_building_item_ace_concertinawirecoil",5],["rhs_mag_mk3a2",2,1],["rhs_mag_m67",2,1],["ACE_Chemlight_IR",2,1],["ACE_Chemlight_HiYellow",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",2,30]]],["rhsusf_falconii_coy",[["ToolKit",1],["SmokeShell",6,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",2,30]]],"rhsusf_opscore_coy_cover_pelt","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]};
            default {[]};
        };
    }
    else
    {
        switch (_rolle) do
        {
            case "lead": {[["rhs_weap_ak74n","","rhs_acc_2dpZenit","rhs_acc_pkas",["rhs_30Rnd_545x39_AK_green",30],[],""],[],["rhs_weap_pb_6p9","rhs_acc_6p9_suppressor","","",["rhs_mag_9x18_8_57N181S",8],[],""],["rhs_uniform_emr_des_patchless",[["ACE_key_east",1],["ACE_key_indp",1],["ACE_quikclot",15],["ACE_tourniquet",3],["ACE_morphine",5],["ACE_CableTie",2],["ACE_EntrenchingTool",1]]],["rhs_6b23_ML_6sh92",[["ACE_quikclot",10],["rhs_mag_9x18_8_57N181S",2,8],["rhs_mag_rgn",2,1],["rhs_mag_rgo",2,1],["ACE_Chemlight_HiYellow",3,1],["ACE_Chemlight_IR",3,1],["rhs_mag_nspd",2,1],["rhs_mag_rdg2_white",2,1]]],["OPXT_pen_bad_117",[["rhs_30Rnd_545x39_AK_green",4,30],["rhs_mag_rdg2_white",3,1]]],"rhs_6b27m_ml_ess","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_fadak","ItemCompass","ACE_Altimeter",""]]};
            case "sani": {[["rhs_weap_ak74n","","rhs_acc_2dpZenit","rhs_acc_pkas",["rhs_30Rnd_545x39_AK_green",30],[],""],[],["rhs_weap_pb_6p9","rhs_acc_6p9_suppressor","","",["rhs_mag_9x18_8_57N181S",8],[],""],["rhs_uniform_emr_des_patchless",[["ACE_key_east",1],["ACE_key_indp",1],["ACE_quikclot",15],["ACE_tourniquet",3],["ACE_morphine",5],["ACE_CableTie",2],["ACE_EntrenchingTool",1]]],["rhs_6b23_ML_6sh92",[["adv_aceCPR_AED",1],["ACE_epinephrine",5],["ACE_morphine",5],["ACE_tourniquet",1],["ACE_bloodIV",3],["ACE_elasticBandage",20],["rhs_mag_9x18_8_57N181S",2,8]]],["B_FieldPack_cbr",[["ACE_bloodIV",1],["ACE_surgicalKit",1],["ACE_elasticBandage",5],["rhs_30Rnd_545x39_AK_green",4,30]]],"rhs_6b27m_ml_ess","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_fadak","ItemCompass","ACE_Altimeter",""]]};
            case "rifle" : {[["rhs_weap_ak74m","","rhs_acc_2dpZenit","rhs_acc_pkas",["rhs_30Rnd_545x39_AK_green",30],[],""],["rhs_weap_rpg26","","","",["rhs_rpg26_mag",1],[],""],["rhs_weap_pb_6p9","rhs_acc_6p9_suppressor","","",["rhs_mag_9x18_8_57N181S",8],[],""],["rhs_uniform_emr_des_patchless",[["ACE_key_east",1],["ACE_key_indp",1],["ACE_quikclot",15],["ACE_tourniquet",3],["ACE_morphine",5],["ACE_CableTie",2],["ACE_EntrenchingTool",1]]],["rhs_6b23_ML_6sh92",[["ACE_quikclot",10],["rhs_mag_9x18_8_57N181S",2,8],["rhs_mag_rgn",2,1],["rhs_mag_rgo",2,1],["ACE_Chemlight_HiYellow",3,1],["ACE_Chemlight_IR",3,1],["rhs_mag_nspd",2,1],["rhs_mag_rdg2_white",2,1]]],["B_FieldPack_khk",[["rhs_30Rnd_545x39_AK_green",4,30],["rhs_mag_rdg2_white",5,1]]],"rhs_6b27m_ml_ess","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_fadak","ItemCompass","ACE_Altimeter",""]]};
            case "pionier" : {[["rhs_weap_ak74n","","rhs_acc_2dpZenit","rhs_acc_pkas",["rhs_30Rnd_545x39_AK_green",30],[],""],[],["rhs_weap_pb_6p9","rhs_acc_6p9_suppressor","","",["rhs_mag_9x18_8_57N181S",8],[],""],["rhs_uniform_emr_des_patchless",[["ACE_key_east",1],["ACE_key_indp",1],["ACE_quikclot",15],["ACE_tourniquet",3],["ACE_morphine",5],["ACE_CableTie",2],["ACE_EntrenchingTool",1]]],["rhs_6b23_ML_6sh92",[["ACE_quikclot",10],["rhs_mag_9x18_8_57N181S",2,8],["rhs_mag_rgn",2,1],["rhs_mag_rgo",2,1],["ACE_Chemlight_HiYellow",3,1],["ACE_Chemlight_IR",3,1],["rhs_mag_nspd",2,1],["rhs_mag_rdg2_white",2,1]]],["B_FieldPack_cbr",[["ToolKit",1],["rhs_30Rnd_545x39_AK_green",4,30],["rhs_mag_rdg2_white",2,1]]],"rhs_6b27m_ml_ess","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","TFAR_fadak","ItemCompass","ACE_Altimeter",""]]};
            default {[]};
        };
    };
};

TB_blacklistRollen_custom = [];
{
    if (([_x] call TB_fnc_customLayout) isEqualTo []) then {TB_blacklistRollen_custom pushBackUnique _x};
}
forEach ["lead","grena","sani","mg","spreng","aaat","trag","dmr","pilot","sniper","spotter","jtac","arzt","rifle","pionier"];

// Customsystem aktiviert
if (count TB_blacklistRollen_custom != 15) then
{
    /* Eigene Namen für die Rollen, einfach den Namen zwischen den "" ändern, beachte,
        einige Rollen haben festgeschriebene Fähigkeiten!    
    */
    TB_customName = [
        "Truppführer",              // lead
        "Grenadier",                // grena
        "Kampfsanitäter",           // sani -> feste Sanifähigkeiten
        "Unterstützungsschütze",    // mg
        "Sprengmeister",            // spreng -> feste Pionierfähigkeit
        "Anti-Fahrzeug",            // aaat -> feste höhere Inventartragefähigkeit
        "Munitionsträger",          // trag -> feste hohe Kistentragekraft, höhere Inventartragefähigkeit
        "Gruppenaufklärer",         // dmr
        "Pilot",                    // pilot -> feste Sanifähigkeiten, Pionierfähigkeit, hohe Kistentragekraft
        "AufklärerSniper",          // sniper
        "AufklärerSpotter",         // spotter
        "DrohnenOP",                // jtac
        "Arzt",                     // arzt -> feste Sanifähigkeiten
        "Schütze",                  // rifle
        "Pionier"                   // pionier -> feste Pionierfähigkeit, hohe Kistentragekraft, höhere Inventartragefähigkeit
    ];
};


// missionNamespace getVariable [format ["BIS_WL_purchasable%1", side ACE_player], []];
// [[["rhsusf_army_ocp_arb_rifleman",100,[],"Schütze","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_rifleman.paa","M4A1 (TD Griff)<br/><br/>ACH OEF-CP<br/>","Infantry"],["rhsusf_army_ocp_arb_grenadier",100,[],"Grenadier","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_grenadier.paa","M4A1 PIP (M320)<br/><br/>ACH OEF-CP (ESS)<br/>Falcon-II RGR","Infantry"],["rhsusf_army_ocp_arb_medic",100,[],"Sanitäter","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_medic.paa","M4A1<br/>M9 Beretta<br/><br/>ACH OEF-CP<br/>Eagle A-III OEF-CP (Medic)","Infantry"],["rhsusf_army_ocp_arb_autoriflemana",100,[],"Munitionsträger","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_autoriflemana.paa","M4A1 (TD Griff)<br/><br/>ACH OEF-CP<br/>Eagle A-III OEF-CP (AR)","Infantry"],["rhsusf_army_ocp_arb_autorifleman",100,[],"MG-Schütze (M249)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_autorifleman.paa","M249 PIP (Short)<br/><br/>ACH OEF-CP<br/>Eagle A-III OEF-CP (AR)","Infantry"],["rhsusf_army_ocp_arb_engineer",100,[],"Pionier","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_engineer.paa","M4A1 (TD Griff)<br/><br/>ACH OEF-CP (ESS)<br/>Eagle A-III OEF-CP (Engineer)","Infantry"],["rhsusf_army_ocp_arb_marksman",100,[],"Scharfschütze","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_marksman.paa","M14 EBR-RI<br/><br/>ACH OEF-CP<br/>","Infantry"],["rhsusf_army_ocp_arb_maaws",100,[],"Panzerabwehrschütze (MAAWS)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_arb_maaws.paa","M4A1 (TD Griff)<br/>M3 MAAWS<br/><br/>ACH OEF-CP<br/>Eagle A-III OCP (MAAWS)","Infantry"],["rhsusf_army_ocp_aa",100,[],"Luftabwehrschütze","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_army_ocp_aa.paa","M16A4 (Handgriff)<br/>FIM-92F<br/><br/>ACH OEF-CP<br/>","Infantry"]],[["rhsusf_m1043_d",100,[],"M1043A2 (Unarmed)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1043_d.paa","M998, 1-1/4 ton, cargo carrier, wood (open)","Vehicles"],["rhsusf_m1043_d_m2",200,[],"M1043A2 (M2)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1043_d_m2.paa","M998, 1-1/4 ton, cargo carrier, wood (open)","Vehicles"],["rhsusf_m1043_d_mk19",250,[],"M1043A2 (Mk19)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1043_d_mk19.paa","M998, 1-1/4 ton, cargo carrier, wood (open)","Vehicles"],["rhsusf_m1045_d",300,[],"M1045A2 (M220A2)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1045_d.paa","M998, 1-1/4 ton, cargo carrier, wood (open)","Vehicles"],["rhsusf_M1078A1P2_D_fmtv_usarmy",100,[],"M1078A1P2","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_M1078A1P2_D_fmtv_usarmy.paa","Der HEMTT (Heavy Expanded Mobility Tactical Truck) ist ein acht- oder zehnrädriger Geländelastwagen mit Dieselmaschine. Die BLUFOR-Armeen setzen ihn standardmäßig als schweres Transportfahrzeug ein. Es gibt mehrere Varianten, um die grundlegenden Transportfunktionen abzudecken: Fracht, Auftanken, Reparatur und Munitionsnachschub.","Vehicles"],["rhsusf_CGRCAT1A2_usmc_d",500,[],"CGR CAT1A2","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_CGRCAT1A2_usmc_d.paa","Der Hunter ist ein Geschütztes Fahrzeug (MRAP: Mine-Resistant Ambush Protected; Minen widerstehend und Hinterhalt-geschützt), das von US-Rüstungsfirmen zum verbesserten Schutz von Truppen hergestellt wird. Die gepanzerte Hülle widersteht leichten Waffen und schützt die Crew vor Landminen und unkonventionellen Spreng- und Brandvorrichtungen. Die schwere Panzerung und der leistungsstarke Motor sorgen zwar für einen enormen Benzinverbrauch, aber die Frontsoldaten ziehen den Hunter, aufgrund der ein...<br/><br/>Für den vollständigen Artikel siehe den entsprechenden Asset-Eintrag im Feldhandbuch.","Vehicles"],["rhsusf_CGRCAT1A2_M2_usmc_d",600,[],"CGR CAT1A2 (M2)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_CGRCAT1A2_M2_usmc_d.paa","Der Hunter ist ein Geschütztes Fahrzeug (MRAP: Mine-Resistant Ambush Protected; Minen widerstehend und Hinterhalt-geschützt), das von US-Rüstungsfirmen zum verbesserten Schutz von Truppen hergestellt wird. Die gepanzerte Hülle widersteht leichten Waffen und schützt die Crew vor Landminen und unkonventionellen Spreng- und Brandvorrichtungen. Die schwere Panzerung und der leistungsstarke Motor sorgen zwar für einen enormen Benzinverbrauch, aber die Frontsoldaten ziehen den Hunter, aufgrund der ein...<br/><br/>Für den vollständigen Artikel siehe den entsprechenden Asset-Eintrag im Feldhandbuch.","Vehicles"],["rhsusf_CGRCAT1A2_Mk19_usmc_d",650,[],"CGR CAT1A2 (Mk 19)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_CGRCAT1A2_Mk19_usmc_d.paa","Der Hunter ist ein Geschütztes Fahrzeug (MRAP: Mine-Resistant Ambush Protected; Minen widerstehend und Hinterhalt-geschützt), das von US-Rüstungsfirmen zum verbesserten Schutz von Truppen hergestellt wird. Die gepanzerte Hülle widersteht leichten Waffen und schützt die Crew vor Landminen und unkonventionellen Spreng- und Brandvorrichtungen. Die schwere Panzerung und der leistungsstarke Motor sorgen zwar für einen enormen Benzinverbrauch, aber die Frontsoldaten ziehen den Hunter, aufgrund der ein...<br/><br/>Für den vollständigen Artikel siehe den entsprechenden Asset-Eintrag im Feldhandbuch.","Vehicles"],["rhsusf_M1117_D",650,[],"M1117 ASV","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_M1117_D.paa","M1117_Guardian ASV","Vehicles"],["RHS_M2A3",650,[],"M2A3","rhsusf\addons\rhsusf_editorPreviews\data\RHS_M2A3.paa","The M2 Bradley IFV (Infantry Fighting Vehicle) is an US infantry fighting vehicle. It is designed to transport infantry with armor protection while providing covering fire to suppressing enemy troops and armored vehicles.<br/>The A2 variant features improvements based on lessons learned during Gulf War in 1991.","Vehicles"],["RHS_M2A3_BUSKIII",650,[],"M2A3 (BUSK III)","rhsusf\addons\rhsusf_editorPreviews\data\RHS_M2A3_BUSKIII.paa","The M2 Bradley IFV (Infantry Fighting Vehicle) is an US infantry fighting vehicle. It is designed to transport infantry with armor protection while providing covering fire to suppressing enemy troops and armored vehicles.<br/>The A2 variant features improvements based on lessons learned during Gulf War in 1991.","Vehicles"],["rhsusf_m1a2sep1d_usarmy",650,[],"M1A2SEPv1","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1a2sep1d_usarmy.paa","Eine lizenzierte Version des israelischen Panzers, die in Mitteleuropa hergestellt wird. Dieser Panzer ist für den vielseitigen Einsatz auf dem Schlachtfeld bei maximalem Schutz für die Besatzung ausgelegt, was im 21. Jahrhundert bei den Armeen Westeuropas auf große Zustimmung stieß. Der M2A1 ist mit einem 120-mm-Geschütz und zwei Maschinengewehren bewaffnet und kann auch als mobile Artillerie eingesetzt werden. Der Panzer hat sich schon oft im Kampf bewiesen und wurde dank enormer Produktionsza...<br/><br/>Für den vollständigen Artikel siehe den entsprechenden Asset-Eintrag im Feldhandbuch.","Vehicles"],["rhsusf_m1a2sep1tuskiid_usarmy",650,[],"M1A2SEPv1 (TUSK II)","rhsusf\addons\rhsusf_editorPreviews\data\rhsusf_m1a2sep1tuskiid_usarmy.paa","Eine lizenzierte Version des israelischen Panzers, die in Mitteleuropa hergestellt wird. Dieser Panzer ist für den vielseitigen Einsatz auf dem Schlachtfeld bei maximalem Schutz für die Besatzung ausgelegt, was im 21. Jahrhundert bei den Armeen Westeuropas auf große Zustimmung stieß. Der M2A1 ist mit einem 120-mm-Geschütz und zwei Maschinengewehren bewaffnet und kann auch als mobile Artillerie eingesetzt werden. Der Panzer hat sich schon oft im Kampf bewiesen und wurde dank enormer Produktionsza...<br/><br/>Für den vollständigen Artikel siehe den entsprechenden Asset-Eintrag im Feldhandbuch.","Vehicles"]],[["LastLoadout",50,[],"< Deine letzte Ausrüstung >","\A3\Data_F_Warlords\Data\preview_loadout.jpg","Lege die Ausrüstung an, die du bei deinem letzten Tod dabei hattest.","Gear"],["TB_supply_all_medic",200,[],"Sanikiste","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Support_F.jpg","60x Verbandpäckchen (QuikClot), 60x Bandage (Elastisch), 4x Tourniquet [CAT], 10x Blut IV (500ml), 5x Blut IV (1000ml), 20x Morphium-Autoinjektor, 10x Epiniphrin-Autoinjektor, 1x Operationsset","Gear"],["TB_supply_all_building",200,[],"BauKiste","\A3\EditorPreviews_F_Exp\Data\CfgVehicles\Box_NATO_Equip_F.jpg","6x TBB Strassensperre, 12x TBB Verkehrskegel, 4x TBB Mobiles Licht, 4x TBB Palette, 6x TBB Sandsackmauer, 4x TBB Sandsackmauer (rund), 10x TBB Drahtrolle, 4x TBB Hohe Sandsackwand","Gear"],["TB_supply_all_mines",200,[],"Minenkiste","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Ammo_F.jpg","10x , 5x , 10x , 5x , 5x , 5x , 5x M152 Zündvorrichtung, 2x ","Gear"],["TB_supply_usa_ammo",200,[],"Munition","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Ammo_F.jpg","40x 30rnd PMAG M856A1 (Leuchtspurmunition), 3x 200rnd M249 Box M855A1 (Mixed), 6x 100rnd M240 Box M62 (Tracer), 10x 20rnd SR-25 M62 (Tracer)","Gear"],["TB_supply_usa_ammoSmall",200,[],"HandwaffenMunition","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Ammo_F.jpg","15x 17rnd Glock Mk243 JHP, 15x 7rnd M1911 HP, 15x 15rnd M9 Mk243 JHP, 15x ","Gear"],["TB_supply_usa_grena",200,[],"Granaten","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Grenades_F.jpg","20x M83 Rauchgranate (Weiß), 10x M18 Rauchgranate (Rot), 10x M18 Rauchgranate (Blau), 5x M67 Splittergranate, 10x MK3A2 Offensivgranate, 3x M84 Betäubungsgranate","Gear"],["TB_supply_usa_unterlauf",200,[],"Unterlauf","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_AmmoOrd_F.jpg","5x M397 HET Grenade Round, 5x M441 HE Grenade Round, 3x M433 HEDP Grenade Round, 4x M714 White Smoke Round, 2x M713 Red Smoke Round, 2x M715 Green Smoke Round, 2x M716 Yellow Smoke Round, 4x 3-Schuss-AIM-Rauchmunition (weiß), 4x M714A White Smoke Round, 2x M713A Red Smoke Round, 2x M715A Green Smoke Round, 2x M716A Yellow Smoke Round, 2x M585 White Flare Round, 1x M661 Green Flare Round, 1x M662 Red Flare Round","Gear"],["TB_supply_usa_spezial",200,[],"SpezialwaffenMunition","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_WpsSpecial_F.jpg","10x 12.7mm 5Rnd Mag, 5x 12,7 mm 5-Schuss-APDS-Magazin, 10x 8Rnd .00 Buckshot, 10x 8Rnd 12g Slug, 15x 20rnd M14 M118, 15x 5rnd M118, 10x 20rnd SR-25 M118","Gear"],["TB_supply_usa_launcher",200,[],"Werfer","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_WpsLaunch_F.jpg","1x M136 (HP), 2x M136 (HEAT), 4x M136 (HEDP), 1x M136 HP, 2x M136 HEAT, 4x M136 HEDP","Gear"],["TB_supply_usa_MAAWSAmmo",200,[],"MAAWSMunition","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_WpsLaunch_F.jpg","10x FFV751 HEAT, 4x FFV441 HE","Gear"],["TB_supply_usa_SMAWAmmo",200,[],"SMAWMunition","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_WpsLaunch_F.jpg","6x Mk.6 HEAA, 2x Mk.3 HEDP, 5x Mk.217 Spotting","Gear"],["TB_supply_usa_notfall",200,[],"NotfallWaffen","\A3\EditorPreviews_F\Data\CfgVehicles\Box_NATO_Wps_F.jpg","4x M4, 20x 30rnd PMAG M856A1 (Leuchtspurmunition)","Gear"],["TB_supply_usa_night",200,[],"Nachtkiste","\A3\EditorPreviews_F_Exp\Data\CfgVehicles\Box_NATO_Equip_F.jpg","5x AN/PVS-14, 5x AN/PVS-15, 10x IR-Stroboskop, 10x KSF-1, 10x , 10x ","Gear"]],[["rhs_M2StaticMG_MiniTripod_D",200,[],"M2HB (M3)","rhsusf\addons\rhsusf_editorPreviews\data\rhs_M2StaticMG_MiniTripod_D.paa"," ","Defences"],["rhs_M2StaticMG_D",250,[],"M2HB (M3 AA)","rhsusf\addons\rhsusf_editorPreviews\data\rhs_M2StaticMG_D.paa"," ","Defences"],["rhs_MK19_TriPod_D",300,[],"Mk. 19 (M3)","rhsusf\addons\rhsusf_editorPreviews\data\rhs_MK19_TriPod_D.paa"," ","Defences"],["rhs_Stinger_AA_pod_D",400,[],"FIM-92F (DMS)","rhsusf\addons\rhsusf_editorPreviews\data\rhs_Stinger_AA_pod_D.paa"," ","Defences"],["rhs_TOW_TriPod_D",400,[],"M41A4 TOW","rhsusf\addons\rhsusf_editorPreviews\data\rhs_TOW_TriPod_D.paa"," ","Defences"]],[["RHS_MELB_H6M",7500,["A"],"OH-6M","rhsusf\addons\rhsusf_editorPreviews\data\rhs_MELB_H6M.paa","Syko's Little Birds","Aircraft"],["RHS_MELB_MH6M",7500,["A"],"MH-6M Little Bird","rhsusf\addons\rhsusf_editorPreviews\data\rhs_MELB_MH6M.paa","Syko's Little Birds","Aircraft"],["RHS_UH60M_d",7500,["A"],"UH-60M","rhsusf\addons\rhsusf_editorPreviews\data\RHS_UH60M_d.paa","UH60M","Aircraft"]],[],[],[["FundsTransfer",500,[],"Kommandopunkte übertragen","\A3\Data_F_Warlords\Data\preview_cp_transfer.jpg","Du kannst einige deiner Kommandopunkte an einen Verbündeten übertragen. Die Transaktion selbst ist NICHT kostenlos.","Services"],["VotingReset",2000,[],"Sektorwahl zurücksetzen","\A3\Data_F_Warlords\Data\preview_ft_conflict.jpg","Du kannst jetzt eine Neuwahl des anzugreifenden Sektors erzwingen. Vergiss dabei nicht, dass für den aktuell angegriffenen Sektor eine Zonenbeschränkung in Kraft tritt, wenn ein anderer gewählt wird.","Services"]]]

// private _array = missionNamespace getVariable [format ["BIS_WL_purchasable%1", side ACE_player], []];
// {
    // _x params ["_attribut", "_cost"];

    // private _finds = [_array, _attribut] call BIS_fnc_findNestedElement;
    // if !(_finds isEqualTo []) then
    // {
        // _finds resize ((count _finds) - 1);
        // private _find = nil;
        // {
            // // if (_forEachIndex >= 2) exitWith {};
            // if (isNil {_find}) then {_find = _array select _x} else {_find = _find select _x};
        // }
        // forEach _finds;

        // _find set [1, _cost];
        
        // private _subArray = _array select (_finds select 0);
        // _subArray set [_finds select 1, _find];
        // _array set [_finds select 0, _subArray];
    // };
// }
// forEach [
        // ["VotingReset", BIS_WL_votingResetCost],
        // ["LastLoadout", BIS_WL_lastLoadoutCost],
        // ["FundsTransfer", BIS_WL_transferCost]
    // ];
// missionNamespace setVariable [format ["BIS_WL_purchasable%1", side ACE_player], _array];
