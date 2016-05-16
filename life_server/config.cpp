class DefaultEventhandlers;
class CfgPatches 
{
	class life_server
	{
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"TAW_Tonic"}; 
	};
};

class CfgFunctions
{
	class MySQL_Database
	{
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class insertVehicle {};
			class insertVehicleChopShop {};
			class bool{};
			class mresString {};
			class updatePartial {};
			class serverTime {};
		};
	};

	class Life_System
	{
		tag = "life";
		class Wanted_Sys
		{
			file = "\life_server\Functions\WantedSystem";
			class wantedFetch {};
			class wantedPerson {};
			class wantedBounty {};
			class wantedTicket {};
			class wantedPardon {};
			class wantedRemove {};
			class wantedCrimes {};
			class wantedProfUpdate {};
			class wantedAdd {};
			class wantedPunish {};
			class getWantedList {};
		};

		class Jail_Sys
		{
			file = "\life_server\Functions\Jail";
			class jailSys {};
			class svr_arrestButton {};
			class svr_jailToDB {};
			class svr_releasePrison {};
			class svr_sendToJail {};
		};
	};

	class TON_System
	{
		tag = "TON";
		class Systems
		{
			file = "\life_server\Functions\Systems";
			class dorace {};
			class doRebel {};
			class finishRebel {};
			class startjob {};
			class dorace2 {};
			class racefinish {};
			class racefinish2 {};
			class startRace {};
			class managesc {};
			class cleanup {};
			class vehicleCreate {};
			class vehicleDead {};
			class spawnVehicle {};
			class getVehicles {};
			class vehicleStore {};
			class vehicleDelete {};
			class vehicleIsDead {};
			class getChopCar {};
			class spikeStrip {};
			class huntingZone {};
			class logIt {};
			class chopShopSell {};
			class clientDisconnect {};
			class cleanupRequest {};
			class hideThis {};
			class trafficLights {};
			class loops {};
			class simDisableGlobal {};
			class vehicleInsurance {};
		};
		class Paintball
		{
			file = "\life_server\Functions\paintball";
			class paintball {};
			class game {};
		};
		class Housing
		{
			file = "\life_server\Functions\Housing";
			class addHouse {};
			class fetchPlayerHouses {};
			class initHouses {};
			class sellHouse {};
			class dogivekey1 {};
			class dowipekeys {};
			class updateHouseContainers {};
			class updateHouseTrunk {};
			class houseCleanup {};
		};

		class Gangs
		{
			file = "\life_server\Functions\Gangs";
			class insertGang {};
			class queryPlayerGang {};
			class removeGang {};
			class updateGang {};
		};
	};

	class ProjectRPG
	{
		tag = "PRPG";
		class Systems
		{
			file = "\life_server\Functions\PRPG";
			class msgRequest {};
			class handleMessages {};
			class toMaster {};
		};
	};
};

class CfgVehicles
{
	class Car_F;
	class CAManBase;
	class Civilian;
	class Civilian_F : Civilian
	{
		class EventHandlers;
	};
};