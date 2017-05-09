// Koil

class CfgFunctions 
{
	class Client
	{
		class Phone
		{
			file = "Functions\core\Phone";
			class takeplayermoney {};
			class returnwallet {};
			class tracecall {};
			class trackedby {};
			class trackedcall {};
			class requestcurrentcall {};
			class entertappedcall {};
			class findTapped {};
			class giveCallInformation {};
			class updatePhoneBook {};
			class updatePhoneBookPlayers {};
			class updateBG {};
			class loadBG {};
			class saveBG {};
			class updateSkin {};
			class loadSkin {};
			class saveSkin {};			
			class fadePhone {};
			class answerCall {};
			class Answered {};
			class busyAnswer {};
			class callMenuPP {};
			class callMenu {};
			class callProgress {};
			class callSomebody {};
			class changeDOC {};
			class changeEMS {};
			class changePolice {};
			class checkCall {};
			class currentCallMenu {};
			class dVol {};
			class hangUp {};
			class iVol {};
			class noAnswer {};
			class PhoneDisabled {};
			class resetCall {};
			class ringPlayer {};
			class speakerMode {};
			class stereoRotation {};
			class tryCall {};
			class tryHangup {};
			class openMessages {};
			class chooseUserMessage {};
			class sendMessage {};
		};

		class PoliceItems {
			file = "Functions\core\PoliceItems";
			class spikestrip {};
			class spikestripeffect {};
			class useBarrier {};
			class placeBarrier {};
		};

		class Drugs {
			file = "Functions\core\Drugs";
			class useDrug {};
			class dumpDrugs {};
			class mafiaDrugEvent {};
			class finishDrugRun {};
		};

		class JailBreak {
			file = "Functions\core\JailBreak";
			class workout {};
			class craftlockpick {};
			class crafthackingdevice {};
			class blowdoor {};
			class climbrope {};
			class sendhook {};
			class hackdoor {};
		};

		class HUD {
			file = "Functions\core\Hud";
			class hudbattery {};
			class hudeffects {};
			class hudhealth {};
			class hudhunger {};
			class hudthirst {};
			class hudunhealthiness {};
			class hudwork {};
		};

		class admin {
			file = "Functions\core\admin";
			class adminexecute {};
			class adminloadplayers {};
			class adminupdateplayer {};
			class adminESP {};
			class nametags {};
		};		

		class police {
			file = "Functions\core\police";
			class trylicense {};
			class setGear {};
			class seizeObjects {};
			class raidshop {};
			class raidhouse {};
			class seizeproperty {};
		};

		class Wanted {
			file = "Functions\core\wanted";
			class revokesend {};
			class revokeupdate {};
			class revoke {};
			class revokelicense {};
			class licenseCheck {};
			class licenseReturn {};
			class licenseRead {};
			class searchlicense {};
			class questionPlayer {};
			class jurycall {};
			class startJury {};
			class wantedredirect {};
			class processJail {};
			class wantedAdd {};		
			class wantedLoad {};	
			class wantedproduce {};	
			class wantedRemove {};
			class loadwantedProcessing {};
			class writeticket {};
			class ticketresult {};	
			class taketicket {};	
			class jailsetup {};
			class wantedinformationupdate {};
		};

		class Mail {
			file = "Functions\core\mail";
			class chooseUserMail {};
			class sendMail {};
			class openMail {};
			class completeMail {};
			class mailSystem {};
		};

		class jobFactions {
			file = "Functions\core\jobs\JobFactions";
			class startDispatch {};
			class startCop {};
			class startMafia {};
			class startFire {};
			class startEMS {};
		};

		class jobs {
			file = "Functions\core\jobs";
			class jobstart {};
			class firestart {};
			class fireDelete {};
			class BATrobbery {};
			class paintball {};
			class listfurniture {};
			class spawnfurniture {};
			class rentoffice {};
			class completeoffice {};
			class startJob {};
			class selectJob {};
			class spawnJobVehicle {};
			class jobMarker {};
			class jobEnd {};
			class jobClothing {};
			class repairNear {};
			class startGenericJob {};
		};
		class shop {
			file = "Functions\core\Shopping";
			class upgradeHouse {};
			class playerselect {};
			class playerselectfinish {};
			class updatePrices {};
			class clothesUpdate {};
			class storeSetup {};
			class openShop {};
			class purchaseAI {};
			class confirmPurchase {};
			class payShopOwner {};
			class loadstore {};
			class purchase {};
		};
		class JobMeth {
			file = "Functions\core\Jobs\JobMeth";
			class usedrugtable {};
			class dropdrugtable {};
			class upmethcooking {};
			class methcooking {};
		};
		class JobLegalAid {
			file = "Functions\core\Jobs\JobLegalAid";
			class startLegalAid {};
			class startJudge {};
			class startLawyer {};
		};
		class JobTaxi {
			file = "Functions\core\Jobs\JobTaxi";
			class startTaxi {};
		};
		class JobTowTruck {
			file = "Functions\core\Jobs\JobTowTruck";
			class startTowTruck {};
			class startrepair {};
		};		
		class JobNews {
			file = "Functions\core\Jobs\JobNews";
			class startNews {};
		};			
		class JobSecurity {
			file = "Functions\core\Jobs\JobSecurity";
			class startSecurity {};
		};				
		class JobGarbage {
			file = "Functions\core\Jobs\JobGarbage";
			class collectGarbage {};
			class startGarbage {};
		};
		class Medical
		{
			file = "Functions\core\Medical";
			class copmapmarkers {};
			class bleed{};
			class bandagetarget {};
			class loadcargo {};
			class loadbasket {};
			class lowerbasket {};
			class raisebasket {};
			class unloadbasket {};
			class givedisease {};
			class spreaddisease {};
			class mapmarkers {};
			class chooseUser {};
			class damageChance {};
			class doInjuriesUpdate {};
			class findPlayers {};
			class findPlayersALL {};
			class fixProblem {};
			class healTime {};
			class medicUpdater {};
			class totalPain {};	
			class sendrevive {};		
			class revived {};
		};
		class Mayor
		{
			file = "Functions\core\Mayor";
			class paymayor {};
			class setmayor {};
			class lockvote {};
			class loadvote {};
			class settax {};
			class mayorsetup {};
			class loadassassin {};
		};	

		class Crafting
		{
			file = "Functions\core\crafting";
			class craftMenu {};
		};

		class ATM
		{
			file = "Functions\core\ATM";
			class wallet {};
			class atmDeposit {};
			class atmTransfer {};
			class atmWithdraw {};
			class openATM {};
			class openMafiaATM {};
			class findplayersatm {};
		};

		class Garage
		{
			file = "Functions\core\Garage";
			class findplayerskeys {};
			class choosekeyuser {};
			class givekeys {};
			class carUpdate {};
			class racetimes {};
			class lock {};
			class openF1 {};
			class opengaragepolice {};
			class finishLicense {};
			class processplates {};
			class changeplates {};
			class spawnvehicle {};
			class numberplate {};
			class fetchCarList {};
			class pushveh {};
			class fetchCar {};
			class fetchCar2 {}; // single car no information added - f1 races etc
			class openGarage {};
			class storeCar {};
			class openCarYard {};
			class initvehicle {};
			class IvoryInitVehicle {};
			class carShop {};
			class carshopbuy {};
		};

		class Init
		{
			file = "Functions\core\Init";
			class loadInventory {};
			class miscVariables {};
			class karmaPhoneInit {};
		};

		class Interaction
		{
			file = "Functions\core\Interaction";
			class hudHelper {};
			class initInteractions {};
			class interactionAction {};
			class openInteraction {};
		};
		class Farming
		{
			file = "Functions\core\Farming";
			class rarePelt {};
			class plantweed {};
			class dropweedplot {};
			class upweedgrowing {};
			class weedgrowing {};
			class processBricks {};
			class poleFishing {};
			class dynamiteFishing {};
			class cutTree {};
			class packLogs {};
			class refineLogs {};
			class refineFish {};
			class refinepelts {};
			class refineOil {};
			class refineMetal1 {};
			class mineMetal {};
			class sellore {};
			class searchCrates {};
			class sellfish {};

		};
		class EventHandlers
		{
			file = "Functions\core\EventHandlers";
			class rotateLight {};
			class HandleDamage {};
			class HandleKilled {};
			class HandleFired {};
			class HandleFiredNear {};
			class forceFPS {};
			class HandleKeys {};
			class HandleKeysUp {};
			class fetchitemtype {};
			class inventoryOpened {};
			class removeitem {};
			class fuckyoucgandprorpandothershitmods {};
		};

		class Misc
		{
			file = "Functions\core\Misc";
			class closedialogs {};
			class robfinish {};
			class trackPlayer {};
			class sellvehicle {};
			class vehinforeturn {};
			class pee {};
			class pee2 {};
			class gunholster {};
			class seatbelts {};
			class lockpick {};
			class ejectdriver {};
			class pulloutveh {};
			class pulloutplayers {};
			class knockout {};
			class knockedout {};
			class destroyGroundHolders {};
			class promote {};
			class promotionstart {};
			class hideobjectnear {};
			class createvehicle {};
			class setvariable {};
			class medicRequest {};
			class requestMedic {};
			class surrender {};
			class fullHeal {};
			class startFresh {};
			class getMagazineName {};
			class getWeaponName {};
			class deathscreen {};
			class getVehicleName {};
			class hintMP {};
			class nearMarker {};
			class playAnim {};
			class playSound {};
			class sortArray {};
			class doHealth {};
			class hudElements {};
			class survival {};
			class sustain {};
			class setLevel {};
			class doTask2 {};
			class doTask {};
			class repair {};
			class attach {};
			class detach {};
			class PatDown {};		
			class putincar {};
			class restrain {};
			class unrestrain {};
			class startpatdown {};	
			class blindfold {};
			class unblindfold {};
			class attemptKO {};
			class successKO {};	
			class tazed {};
			class sharphit {};
			class blunthit {};
		};
		class Money
		{
			file = "Functions\core\Money";
			class securefunds {};
			class bankrobbery {};
			class repairdrill {};
			class takecash {};
			class updateloanmenu {};
			class acceptLoan {};
			class takeLoan {};
			class setOwed {};
			class mafiaOwed {};
			class loanUpdate {};
			class numberText {};
			class addcashmayor {};
			class addBank {};
			class addCash {};
			class checkMoney {};
			class giveLoan {};
			class giveLoanSubmit {};			
			class giveCash {};
			class giveCashSubmit {};
			class removeBank {};
			class removeCash {};
		};
		class Vehicle
		{
			file = "Functions\core\Vehicle";
			class playermapmarkers {};
			class trackingme {};
			class disabletrackingme {};
			class dorace {};
			class dorally {};
			class kickoutwindows {};			
			class confirmfillvehicle {};
			class fillvehicle {};
			class useKey {};
			class addafuckingcar {};
		};
	};
};