// -- Weapon related perks
class perk_gunsspecialist_lessRecoil_1 {
	displayName = "Weniger Rueckstoß";
	requiredPerkPoints = 5;
	requiredLevel = 5;
	requiredPerk = "";
	subtitle = "Erforderliche Stufe 5, 5 Pkt. noetig.";
	description = "Erlernen sie die Waffe mit geringerem Ruecktsoß zu verwenden<br/><br/><t color='#10FF45'>5% geringerer Rueckstoß</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_gunsspecialist_lessRecoil_2 {
	displayName = "Weniger Rueckstoß II";
	requiredPerkPoints = 6;
	requiredLevel = 16;
	requiredPerk = "perk_gunsspecialist_lessRecoil_1";
	subtitle = "Erforderliche Stufe 16, 6 Pkt. noetig.";
	description = "Erlernen sie die Waffe mit geringerem Ruecktsoß zu verwenden<br/><br/><t color='#10FF45'>10% geringerer Rueckstoß</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_gunsspecialist_lessRecoil_3 {
	displayName = "Weniger Rueckstoß III";
	requiredPerkPoints = 7;
	requiredLevel = 25;
	requiredPerk = "perk_gunsspecialist_lessRecoil_2";
	subtitle = "Erforderliche Stufe 25, 7 Pkt. noetig.";
	description = "Erlernen sie die Waffe mit geringerem Ruecktsoß zu verwenden<br/><br/><t color='#10FF45'>20% geringerer Rueckstoß</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

// -- Paycheck
class perk_paycheck_1 {
	displayName = "Lohnerhoehung";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Erforderliche Stufe 2, 2 Pkt. noetig.";
	description = "Erhalten sie mehr Gehalt<br/><br/><t color='#10FF45'>+10% hoehere Auszahlung</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_paycheck_2 {
	displayName = "Lohnerhoehung II";
	requiredPerkPoints = 3;
	requiredLevel = 8;
	requiredPerk = "perk_paycheck_1";
	subtitle = "Erforderliche Stufe 8, 3 Pkt. noetig.";
	description = "Erhalten sie mehr Gehalt<br/><br/><t color='#10FF45'>+25% hoehere Auszahlung</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_paycheck_3 {
	displayName = "Lohnerhoehung III";
	requiredPerkPoints = 6;
	requiredLevel = 21;
	requiredPerk = "perk_paycheck_2";
	subtitle = "Erforderliche Stufe 21, 6 Pkt. noetig.";
	description = "Erhalten sie mehr Gehalt<br/><br/><t color='#10FF45'>+50% hoehere Auszahlung</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

/* -- Faster lockpicking
class perk_locksmith_1 {
	displayName = "Wlamywacz";
	requiredPerkPoints = 5;
	requiredLevel = 7;
	requiredPerk = "";
	subtitle = "Wymagany Poziom 7, 5 Pkt. Umiej.";
	description = "Learn to pick locks more efficiently and reduce lockpicking times on vehicles<br/><br/><t color='#10FF45'>+10% faster lockpicking</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_1.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_locksmith_2 {
	displayName = "Wlamywacz 2";
	requiredPerkPoints = 6;
	requiredLevel = 16;
	requiredPerk = "perk_locksmith_1";
	subtitle = "Wymagany Poziom 16, 6 Pkt. Umiej.";
	description = "Learn to pick locks more efficiently and reduce lockpicking times on vehicles<br/><br/><t color='#10FF45'>+15% faster lockpicking</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_2.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};

class perk_locksmith_3 {
	displayName = "Wlamywacz 3";
	requiredPerkPoints = 4;
	requiredLevel = 28;
	requiredPerk = "perk_locksmith_2";
	subtitle = "Wymagany Poziom 28, 4 Punkty Umiejetnosci";
	description = "Learn to pick locks more efficiently and reduce lockpicking times on vehicles<br/><br/><t color='#10FF45'>+25% faster lockpicking</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_lockpickSpeed_3.sqf";
	limitToSides[] = {"CIV"};
	color[] = {1,1,1,1};
};*/
