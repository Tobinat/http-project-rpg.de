/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

// Configuration file for the navigation script

class maverick_navigation_cfg {

	class bindings {
		keyCode		= 49; // Keycodes can be found at https://community.bistudio.com/wiki/DIK_KeyCodes
		reqShift	= 0;
		reqAlt		= 0;
		reqCtrl		= 1;
	};

	option_list[] = {
		{"Current Route", "maverick\navigation\data\currentroute.paa", "!isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationCurrent';"},
		{"New Route", "maverick\navigation\data\newroute.paa", "isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationNew';"},
		{"Saved Routes", "maverick\navigation\data\savedroutes.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSaved';"},
		{"GPS Settings", "maverick\navigation\data\mapsettings.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSettings';"},
		{"GPS Information", "maverick\navigation\data\help.paa", "false", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationHelp';"}
	};

	class presets {
		class Altis {
			presetLocations[] = {

			};
		};
		class Malden {
			presetLocations[] = {

			};
		};
		class Stratis {
			presetLocations[] = {

			};
		};
		class Tanoa {
			presetLocations[] = {

			};
		};
	};

	class localization {

		// Display messages from around the navigation system
		msgStartPosInvalid = 		"Die Startposition war ungültig";
		msgEndPosInvalid = 			"Die Endposition war ungültig";
		msgCheckpointInvalid = 		"Eine Checkpoint-Position war ungültig";
		msgNoRoadsegmentFound = 	"Cannot find road segment within %1 meters at position %2, aborting...";
		msgAbortCurrentRoute = 		"Sie müssen Ihre aktuelle Route beenden, um auf diese Funktion zugreifen zu können!";
		msgSettingsSaved = 			"Navigationseinstellungen erfolgreich gespeichert!";
		msgPositionReset = 			"GPS GUI Position wurde erfolgreich zurückgesetzt!";
		msgCalcRoadDirs = 			"Straßenangaben berechnen";
		msgCalcRoadDirsProgress = 	"Straßenangaben berechnen (%1/%2)";
		msgOneMinute = 				"&lt; 1 min";
		msgSmallerThanMinute = 		"< 1 min";
		msgMinutesLeft = 			"%1 min";
		msgReachDestination = 		"Sie erreichen Ihr Ziel in %1";
		msgFollowThenTurnLeft = 	"Folgen Sie der Straße %1, dann biegen Sie links ab";
		msgFollowThenTurnRight = 	"Folgen Sie der Straße %1, dann biegen Sie rechts ab";
		msgArrivedFormatted = 		"<t align='center'>Arrived!</t>";
		msgReachedDestination = 	"Sie haben ihr Ziel erreicht";
		msgNoRoadsFound = 			"Keine Straßen gefunden";
		msgInvalidRoadSegment = 	"Keine Route auf dieser Straße verfügbar";
		msgCurrentLocation = 		"Aktueller Standort";
		msgStart = 					"Start";
		msgCheckpoint = 			"Mittelpunkt";
		msgDestination = 			"Reiseziel";
		msgPressSpace = 			"Drücken Sie [SPACE] um Ihre GUI-Position zu speichern";
		msgGpsPosSaved = 			"GPS-GUI-Position erfolgreich gespeichert!";
		msgNoRouteFound = 			"Keine Route gefunden";
		msgTimedOut = 				"Zeitüberschreitung ... Versuchen Sie es erneut!";
		msgRouteFound = 			"Route gefunden";
		msgRouteInfo = 				"Route Information";
		msgFrom = 					"Von";
		msgTo = 					"nach";
		msgTotalDistance = 			"Gesamtentfernung";
		msgTotalravelTime = 		"Gesamtfahrzeit";
		msgRoadPreference = 		"Straßenpräferenz";
		msgRouteCalculate = 		"Die Route wird berechnet ...";
		msgCancelConfirm = 			"Sind Sie sicher, dass Sie Ihre aktuelle Route löschen möchten?";
		msgCancelRoute = 			"Route abbrechen";
		msgCancel = 				"abbrechen";
		msgProceed = 				"fortfahren";
		msgNoRouteNameGiven = 		"Kein Routenname angegeben.";
		msgRouteNameLimit = 		"Route Name über 30chars Limit!";
		msgIllegalChars = 			"Routenname enthält eingeschränkte Zeichen!";
		msgRouteLimit = 			"Sie haben das Limit für gespeicherte Routen erreicht! Sie müssen eine Route löschen.";
		msgRouteSaved = 			"Route erfolgreich gespeichert!";
		msgRouteDeleted = 			"Route wurde erfolgreich gelöscht!";
		msgFinishRouteFirst = 		"Sie müssen entweder Ihre aktuelle Route beenden oder sie abbrechen.";
		msgNoSavedRoutes = 			"Keine Routen gespeichert ...";
		msgTurnNow =				"Jetzt drehen";

		// Localization for the dialogs
		#define dialogMainMenu 		"Navigator - Menu"
		#define dialogClose 		"Close"
		#define dialogCurrentRoute 	"Navigator - Current Route"
		#define dialogResetRoute 	"Cancel Route"
		#define dialogRecalculate	"Recalculate Route"
		#define dialogNewRoute 		"Navigator - New Route"
		#define dialogCalcRoute		"Calculate Route"
		#define dialogBack 			"Back"
		#define dialogStart 		"Start"
		#define dialogLoad 			"Load"
		#define dialogCheckpoint 	"Mid-Point"
		#define dialogDestination 	"Destination"
		#define dialogCommonDest	"Common Destination Points"
		#define dialogSavedRouts	"Saved Routes"
		#define dialogMenuSettings	"Navigator - Settings"
		#define dialogSave			"Save"
		#define dialogUnitSpeed		"Unit of speed"
		#define dialogPreference	"Preferred Path"
		#define dialogGpsPos		"GPS GUI Position"
		#define dialogCustomize		"Customize"
		#define dialogReset			"Reset"
		#define dialogGpsColor		"GPS Color"
		#define dialogDragHere		"DRAG HERE"
		#define dialogSavedTitle	"Navigator - Saved Routes"
		#define dialogDelete		"Delete"
		#define dialogCalcProgress	"<t size='1.2' align='center'>Route is being calculated...</t>"
		#define dialogNavigation	"navigation"
		#define dialogSaveRoute		"Navigator - Save Route"
		#define dialogRouteName		"Enter Route Name"
		#define dialogCalculating	"Calculating..."
		#define dialogRouteInfo		"Route Information"
		#define dialogRouteMapPrev	"Route Preview"
		#define dialogVoiceSetting	"Voice Announcements"
		#define dialogCalculationH	"Navigator - Route Calculations"
	};

	/*
		You should only add / remove / edit any of these parameters if you were advised to do so by Maverick Applications
		Unauthorized Changes can lead to a complete failure of the navigation system!
	*/
	class AlgorithmParameters {

		class Chernarus_Summer {
			greedy = 3.2;
		};

		class australia {
			greedy = 3.2;
		};

		class Malden {
			radius = 45;
		};

		class Sara {
			radius = 66;
		};
	};

	// Do not touch below
	#include "sounds\voicepacks\config.cpp"
};

//Do not touch below
#include "gui\gps_gui_master.cpp"