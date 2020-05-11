class ItemGPS;
class kif_gps: ItemGPS
{
    displayName="GPS Receiver";
    scope = 2;
    count = 1;
    author="Extermi111";
    simulation="ItemGPS";
    picture="\PRPG_Data\textures\icons\items\gps.paa";
    icon="\PRPG_Data\textures\icons\items\gps.paa";
    model="\PRPG_Data\models\gps\transmitter.p3d";
};

class ACE_Sandbag_empty;
class prpg_item_sandsack : ACE_Sandbag_empty {
	scope=2;
	displayName="Sandsack";
	author="PRPG";
	descriptionShort="Ein Sandsack.";
	picture="\PRPG_Data\models\prpg_logo_crafting.paa";
	//model = "@prpg_ace\addons\ace_sandbag\data\ace_sandbag_build.p3d";
	allowedSlots[]={901};
	mass=30;
};
