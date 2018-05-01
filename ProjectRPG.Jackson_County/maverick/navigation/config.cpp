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
		msgStartPosInvalid = 		"The start position was invalid";
		msgEndPosInvalid = 			"The end position was invalid";
		msgCheckpointInvalid = 		"A checkpoint position was invalid";
		msgNoRoadsegmentFound = 	"Cannot find road segment within %1 meters at position %2, aborting...";
		msgAbortCurrentRoute = 		"You need to end your current route to access this feature!";
		msgSettingsSaved = 			"Navigation Settings successfully saved!";
		msgPositionReset = 			"GPS GUI position has been successfully reset!";
		msgCalcRoadDirs = 			"Calculating road directions";
		msgCalcRoadDirsProgress = 	"Calculating road directions (%1/%2)";
		msgOneMinute = 				"&lt; 1 min";
		msgSmallerThanMinute = 		"< 1 min";
		msgMinutesLeft = 			"%1 min";
		msgReachDestination = 		"You will reach your destination in %1";
		msgFollowThenTurnLeft = 	"Follow the road for %1, then turn left";
		msgFollowThenTurnRight = 	"Follow the road for %1, then turn right";
		msgArrivedFormatted = 		"<t align='center'>Arrived!</t>";
		msgReachedDestination = 	"You have reached your destination";
		msgNoRoadsFound = 			"No roads found";
		msgInvalidRoadSegment = 	"No route available on this road";
		msgCurrentLocation = 		"Current location";
		msgStart = 					"Start";
		msgCheckpoint = 			"Mid-Point";
		msgDestination = 			"Destination";
		msgPressSpace = 			"Press [SPACE] to save GUI position";
		msgGpsPosSaved = 			"GPS GUI position successfully saved!";
		msgNoRouteFound = 			"No Route Found";
		msgTimedOut = 				"Timed Out... Try Again!";
		msgRouteFound = 			"Route Found";
		msgRouteInfo = 				"Route Information";
		msgFrom = 					"From";
		msgTo = 					"To";
		msgTotalDistance = 			"Total Distance";
		msgTotalravelTime = 		"Total Travel Time";
		msgRoadPreference = 		"Road Preference";
		msgRouteCalculate = 		"Route is being calculated...";
		msgCancelConfirm = 			"Are you sure you want to cancel your current Route?";
		msgCancelRoute = 			"Cancel Route";
		msgCancel = 				"Cancel";
		msgProceed = 				"Proceed";
		msgNoRouteNameGiven = 		"No Route Name given.";
		msgRouteNameLimit = 		"Route Name over 30chars limit!";
		msgIllegalChars = 			"Route Name contains restricted characters!";
		msgRouteLimit = 			"You've reached your Saved Routes limit! You will have to delete a Route.";
		msgRouteSaved = 			"Route successfully saved!";
		msgRouteDeleted = 			"Route has been successfully deleted!";
		msgFinishRouteFirst = 		"You need to either finish your current route or cancel it!";
		msgNoSavedRoutes = 			"No Routes saved...";
		msgTurnNow =				"Turn Now";

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