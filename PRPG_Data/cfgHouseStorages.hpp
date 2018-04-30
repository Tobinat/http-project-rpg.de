class plp_ct_Sack;
	class kif_storage_sack: plp_ct_Sack
	{
		transportFuel=500;
		maximumLoad=500;
		transportMaxBackpacks=0;
	};
class plp_ct_CartonDarkMedium;
	class kif_storage_cartondarkmedium: plp_ct_CartonDarkMedium
	{
		transportFuel=850;
		maximumLoad=850;
		transportMaxBackpacks=0;
	};
class plp_ct_TravelBagBlue;
	class kif_storage_travelbag: plp_ct_TravelBagBlue
	{
		transportFuel=1200;
		maximumLoad=1200;
		transportMaxBackpacks=0;
	};
class plp_ct_SuitcaseBigBlack;
	class kif_storage_suitcase: plp_ct_SuitcaseBigBlack
	{
		transportFuel=1550;
		maximumLoad=1550;
		transportMaxBackpacks=0;
	};
class plp_ct_CartonLightBig;
	class kif_storage_cartonlightbig: plp_ct_CartonLightBig
	{
		transportFuel=1900;
		maximumLoad=1900;
		transportMaxBackpacks=0;
	};
class plp_ct_woodboxlightmedium;
	class kif_storage_wood: plp_ct_woodboxlightmedium
	{
		transportFuel=2250;
		maximumLoad=2250;
		transportMaxBackpacks=0;
	};
class plp_ct_WoodBarrelDark;
	class kif_storage_woodbarrel: plp_ct_WoodBarrelDark
	{
		transportFuel=2600;
		maximumLoad=2600;
		transportMaxBackpacks=0;
	};
class plp_ct_woodboxlightbig;
	class kif_storage_woodbox: plp_ct_woodboxlightbig
	{
		transportFuel=2950;
		maximumLoad=2950;
		transportMaxBackpacks=0;
	};
class kif_storage_cargobox: kif_chest_base
	{
		scope=2;
		scopeCurator=2;
		displayName="Cargo Box";
		model="a3\structures_f\ind\cargo\cargobox_v1_f.p3d";
		transportFuel=3650;
		maximumLoad=3650;
		transportMaxBackpacks=0;
	};
class kif_storage_cargobox10: kif_storage_cargobox
	{
		transportFuel=10000;
		maximumLoad=10000;
		transportMaxBackpacks=0;
	};
class kif_storage_cargobox_dtu: kif_storage_cargobox
	{
		transportFuel=100000;
		maximumLoad=100000;
		transportMaxBackpacks=10;
	};