//Mechanik
class perk_mechanic {
	displayName = "Mechanik";
	requiredPerkPoints = 2;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Wymagany Poziom 2, 2 Pkt. Umiej.";
	description = "Rozpocznij naukę o motoryzacji.<br/><br/><t color='#10FF45'>Naprawa trwa krócej o 5 sekund<br/>Usługi samochodowe tańsze o 5%</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_2 {
	displayName = "Szybsza naprawa I";
	requiredPerkPoints = 4;
	requiredLevel = 5;
	requiredPerk = "perk_mechanic";
	subtitle = "Wymagany Poziom 5, 4 Pkt. Umiej.";
	description = "Poznaj techniki samochodowe, aby przyśpieszyć naprawę własnego pojazdu.<br/><br/><t color='#10FF45'>-Naprawa trwa krócej o 10 sekund</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_3 {
	displayName = "Szybsza naprawa II";
	requiredPerkPoints = 6;
	requiredLevel = 9;
	requiredPerk = "perk_mechanic_fasterrepair_2";
	subtitle = "Wymagany Poziom 9, 6 Pkt. Umiej.";
	description = "Poznaj techniki samochodowe, aby przyśpieszyć naprawę własnego pojazdu.<br/><br/><t color='#10FF45'>-Naprawa trwa krócej o 15 sekund</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_fasterrepair_4 {
	displayName = "Szybsza naprawa III";
	requiredPerkPoints = 8;
	requiredLevel = 13;
	requiredPerk = "perk_mechanic_fasterrepair_3";
	subtitle = "Wymagany Poziom 13, 8 Pkt. Umiej.";
	description = "Poznaj techniki samochodowe, aby przyśpieszyć naprawę własnego pojazdu.<br/><br/><t color='#10FF45'>-Naprawa trwa krócej o 20 sekund</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_fasterRepair_4.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_1 {
	displayName = "Tańsze usługi I";
	requiredPerkPoints = 2;
	requiredLevel = 3;
	requiredPerk = "perk_mechanic";
	subtitle = "Wymagany Poziom 3, 2 Pkt. Umiej.";
	description = "Naucz dyskutować się ze sprzedawcami na temat samochodów, aby płacić mniej.<br/><br/><t color='#10FF45'>Usługi samochodowe są tańsze o 10%</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_2 {
	displayName = "Tańsze usługi II";
	requiredPerkPoints = 4;
	requiredLevel = 6;
	requiredPerk = "perk_mechanic_lowerprice_1";
	subtitle = "Wymagany Poziom 6, 4 Pkt. Umiej.";
	description = "Naucz dyskutować się ze sprzedawcami na temat samochodów, aby płacić mniej.<br/><br/><t color='#10FF45'>Usługi samochodowe są tańsze o 15%</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_mechanic_lowerprice_3 {
	displayName = "Tańsze usługi III";
	requiredPerkPoints = 4;
	requiredLevel = 8;
	requiredPerk = "perk_mechanic_lowerprice_2";
	subtitle = "Wymagany Poziom 8, 4 Pkt. Umiej.";
	description = "Naucz dyskutować się ze sprzedawcami na temat samochodów, aby płacić mniej.<br/><br/><t color='#10FF45'>Usługi samochodowe są tańsze o 25%</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_mechanicRent_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_1 {
	displayName = "Bonus doświadczenia";
	requiredPerkPoints = 3;
	requiredLevel = 2;
	requiredPerk = "";
	subtitle = "Wymagany Poziom 2, 3 Pkt. Umiej.";
	description = "Zwiększ swoje zdolności naukowe w celu szybszego przyswajania wiedzy.<br/><br/><t color='#10FF45'>+1 EXP przy każdej czynności</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_1.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_2 {
	displayName = "Bonus doświadczenia II";
	requiredPerkPoints = 5;
	requiredLevel = 5;
	requiredPerk = "perk_more_exp_1";
	subtitle = "Wymagany Poziom 5, 5 Pkt. Umiej.";
	description = "Zwiększ swoje zdolności naukowe w celu szybszego przyswajania wiedzy.<br/><br/><t color='#10FF45'>+2 EXP przy każdej czynności</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_2.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};

class perk_more_exp_3 {
	displayName = "Bonus doświadczenia III";
	requiredPerkPoints = 6;
	requiredLevel = 9;
	requiredPerk = "perk_more_exp_2";
	subtitle = "Wymagany Poziom 9, 6 Pkt. Umiej.";
	description = "Zwiększ swoje zdolności naukowe w celu szybszego przyswajania wiedzy.<br/><br/><t color='#10FF45'>+3 EXP przy każdej czynności</t>";
	initScript = "maverick\talent-tree-modular\modules\stanlakeside_1\functions\functions_more_exp_3.sqf";
	limitToSides[] = {};
	color[] = {1,1,1,1};
};