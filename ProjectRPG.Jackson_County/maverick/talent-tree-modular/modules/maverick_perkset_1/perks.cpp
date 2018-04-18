// -- Weapon related perks
class perk_gunsspecialist_lessRecoil_1 {
	displayName = "Zmniejszenie odrzutu";
	requiredPerkPoints = 5;
	requiredLevel = 5;
	requiredPerk = "";
	subtitle = "Wymagany Poziom 5, 5 Pkt. Umiej.";
	description = "Naucz się korzystać z broni w większym stopniu, obniżając odrzut<br/><br/><t color='#10FF45'>5% mniejszy odrzut</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_gunsspecialist_lessRecoil_2 {
	displayName = "Zmniejszenie odrzutu II";
	requiredPerkPoints = 6;
	requiredLevel = 16;
	requiredPerk = "perk_gunsspecialist_lessRecoil_1";
	subtitle = "Wymagany Poziom 16, 6 Pkt. Umiej.";
	description = "Naucz się korzystać z broni w większym stopniu, obniżając odrzut<br/><br/><t color='#10FF45'>10% mniejszy odrzut</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_gunsspecialist_lessRecoil_3 {
	displayName = "Zmniejszenie odrzutu III";
	requiredPerkPoints = 7;
	requiredLevel = 25;
	requiredPerk = "perk_gunsspecialist_lessRecoil_2";
	subtitle = "Wymagany Poziom 25, 7 Pkt. Umiej.";
	description = "Naucz się korzystać z broni w większym stopniu, obniżając odrzut<br/><br/><t color='#10FF45'>20% mniejszy odrzut</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_recoilCompensation_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

// -- Paycheck
class perk_paycheck_1 {
	displayName = "Większa wypłata";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Wymagany Poziom 2, 2 Punkty Umiejetnosci";
	description = "Otrzymuj więcej pieniędzy z wypłat<br/><br/><t color='#10FF45'>+10% większa wypłata</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_paycheck_2 {
	displayName = "Większa wypłata II";
	requiredPerkPoints = 3;
	requiredLevel = 8;
	requiredPerk = "perk_paycheck_1";
	subtitle = "Wymagany Poziom 8, 3 Punkty Umiejetnosci";
	description = "Otrzymuj więcej pieniędzy z wypłat<br/><br/><t color='#10FF45'>+25% większa wypłata</t>";
	initScript = "maverick\talent-tree-modular\modules\maverick_perkset_1\functions\functions_paycheckIncrease_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_paycheck_3 {
	displayName = "Większa wypłata III";
	requiredPerkPoints = 6;
	requiredLevel = 21;
	requiredPerk = "perk_paycheck_2";
	subtitle = "Wymagany Poziom 21, 6 Pkt. Umiej.";
	description = "Otrzymuj więcej pieniędzy z wypłat<br/><br/><t color='#10FF45'>+50% większa wypłata</t>";
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