class CfgPatches {
    class NoPixel_Server {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {};
    };
};
class CfgFunctions {
    class Server {
        class Init {
            file = "NoPixel_Server\server\core\Init";
            class init {};
            class setupVariablesServer {};
            class resetConnected {};
            class cleanup {};
            class resetRespawn {};
        };
        class Save {
            file = "NoPixel_Server\server\core\Save";
            class autolock {};
            class initStats {};
            class SetVariable {};
        };
        class SLPD {
            file = "NoPixel_Server\server\core\SLPD";
			class slpdComputerLoad {};
			class slpdCheckPlayer {};
			class slpdCheckCase {};
			class slpdCheckVehicle {};
			class slpdCaseClose {};
			class slpdCaseAdd {};
			class slpdCaseUpdate {};
			class slpdTicketAdd {};
			class slpdPrisonInsert {};
			class slpdPrisonUpdate {};
			class slpdPrisonGet {};
            class slpdRetreivePoliceStorage {};
        };
        class Sync {
            file = "NoPixel_Server\server\core\Sync";
            class invSave {};
            class statSaveDisconnect {};
            class statSaveLoop {};
            class steppedSync {};
            class statSave {};
            class syncMoney {};
            class PhoneBackgroundSync {};
            class syncHouseLevel {};
            class syncStatuses {};
            class syncPosition {};
            class syncRespawn {};
            class statDisconnect {};
        };
        class Mafia {
            file = "NoPixel_Server\server\core\Mafia";
            class updateMafiaOwed {};
            class updatemafiabank {};
            class mafiabank {};
            class MafiaOwed {};
        };
        class EventHandlers {
            file = "NoPixel_Server\server\core\EventHandlers";
            class handleDisconnect {};
            class connected {};
        };
        class Race {
            file = "NoPixel_Server\server\core\Race";
            class updatefastest {};
            class updatefastestRally {};
            class racetimes {};
            class rallyracetimes {};
        };
        class Misc {
            file = "NoPixel_Server\server\core\Misc";
            class deleteDeadPlayers {};
            class promote {};
            class paintball {};
        };
        class Phone {
            file = "NoPixel_Server\server\core\Phone";
            class sendMessage {};
            class sendMail {};
            class retreivePhonebook {};
        };
        class Shopping {
            file = "NoPixel_Server\server\core\Shopping";
            class retreiveStore {};
            class retreiveStoreCop {};
            class retreiveStoreShopper {};
            class shopPurchase {};
            class storeUpdateName {};
            class finishStoreUpdate {};
			class closeshop {};
			class vehBuy {};
            class economyEvents {};
        };
        class Wanted {
            file = "NoPixel_Server\server\core\Wanted";
            class jailsetup {};
            class robberyCall {};
            class robberyCallBank {};
        };
        class Housing {
            file = "NoPixel_Server\server\core\Housing";
            class retreiveHouse {};
            class retreiveHouseCop {};
        };
        class Logs {
            file = "NoPixel_Server\server\core\Logs";
            class actionLog {};
            class moneyLog {};
            class vehicleLog {};
            class copLog {};
            class deathLog {};
            class economyLog {};
            class adminLog {};
            class craftLog {};
            class jobLog {};
            class connectionLog {};
        };
        class Admin {
            file = "NoPixel_Server\server\core\Admin";
            class rconServerCommand {};
            class rconExtdb {};
        };
        class Mayor {
            file = "NoPixel_Server\server\core\Mayor";
            class paymayor {};
            class mayorsetup {};
            class mayorupdate {};
			class taxupdate {};
        };
        class Garage {
            file = "NoPixel_Server\server\core\Garage";
            class upgradeVehicle {};
            class getVehInfo {};
            class policechecklicense {};
            class platechange {};
            class garageUpdate {};
            class updateCarStatus {};
            class lock {};
            class raceenter {};
			class srvholmsg {};
			class updateVehicleColor {};
            class updateFuelDamage {};
            class removeVehiclesDamage {};
        };
        class Jobs {
            file = "NoPixel_Server\server\core\Jobs";
            class refreshjobs {};
            class drugjob {};
            class firestart {};
            class rentoffice {};
            class requestmedic {};
            class quitJob {};
            class requestJobs {};
            class addJob {};
            class jobAction {};
            class jobStart {};
            class quitDispatch {};
            class giveTask {};
        };
    };
    class ExternalS {
        class ExtDB {
            file = "NoPixel_Server\External\ExtDB";
            class ExtDBasync {};
            class ExtDBinit {};
            class ExtDBstrip {};
            class ExtDBquery {};
        };
    };
};