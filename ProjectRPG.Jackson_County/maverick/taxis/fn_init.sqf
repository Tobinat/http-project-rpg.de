/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

0 spawn {
	// Server
	if (isServer) then {
		mav_taxi_v_callQueue					= [];
		mav_taxi_v_activeFares					= [];

		publicVariable "mav_taxi_v_callQueue";

		// Create eventhandlers to delete people off the queue list automatically when someoen dies or disconnects
		addMissionEventHandler ["EntityKilled", {
			params ["_killed", "_killedBy", "_instigator"];

			if (isPlayer _killed) then {
				[_killed] call mav_taxi_fnc_serverDequeueRequest;
				[_killed] call mav_taxi_fnc_serverUnitDied;
			};
		}];

		addMissionEventHandler ["HandleDisconnect", {
			params ["_unit", "_id", "_uid", "_name"];

			if (isPlayer _unit) then {
				[_unit] call mav_taxi_fnc_serverDequeueRequest;
				[_unit] call mav_taxi_fnc_serverUnitDied;
			};
		}];
	};

	// Client
	if (hasInterface) then {
		waitUntil {!isNil "mav_taxi_v_callQueue"};

		mav_taxi_v_callAmount					= count mav_taxi_v_callQueue;
		mav_taxi_v_hasCalledTaxi				= false;
		mav_taxi_v_isOnDuty						= false;
		mav_taxi_v_isDriver						= false;
		mav_taxi_v_myDriver						= objNull;
		mav_taxi_v_myCustomer					= objNull;
		mav_taxi_v_currentFare_startTime		= 0;
		mav_taxi_v_currentFare_totalDistance 	= 0;
		mav_taxi_v_myCallId						= -1;
		mav_taxi_v_destination					= [];

		// Vars from config
		mav_taxi_v_pricePerKilometre 			= getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "pricePerKilometre");
	};

	// Keyhandler
	if(!hasInterface) exitWith {};

	0 spawn {
		waitUntil {!isNull player};
		waitUntil {!isNull (findDisplay 46)};

		uiSleep 1;

		mav_taxi_v_dialog_keyCode = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "keyCode");
		mav_taxi_v_dialog_reqShift = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqShift")) == 1;
		mav_taxi_v_dialog_reqCtrl = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqCtrl")) == 1;
		mav_taxi_v_dialog_reqAlt = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqAlt")) == 1;
		mav_taxi_v_dialog_handlerBlockedUntil = 0;

		(findDisplay 46) displayAddEventHandler ["KeyDown", {
			private _handled = false;

			params [
				"_display",
				"_keyCode",
				"_isShift",
				"_isCtrl",
				"_isAlt"
			];

			if (_keyCode == (missionNamespace getVariable ["mav_taxi_v_dialog_keyCode", -1])) then {
				if ((missionNamespace getVariable ["mav_taxi_v_dialog_reqShift", false]) && !_isShift) exitWith {};
				if ((missionNamespace getVariable ["mav_taxi_v_dialog_reqCtrl", false]) && !_isCtrl) exitWith {};
				if ((missionNamespace getVariable ["mav_taxi_v_dialog_reqAlt", false]) && !_isAlt) exitWith {};

				if ((missionNamespace getVariable ["mav_taxi_v_dialog_handlerBlockedUntil", 0]) > diag_tickTime) exitWith { _handled = true; };
				missionNamespace setVariable ["mav_taxi_v_dialog_handlerBlockedUntil", diag_tickTime + 1];

				if (!isNull (uiNamespace getVariable ["RscTitleTaxiFareSummary", displayNull])) then {
					["RscTitleTaxiFareSummary", 1] call mav_gui_fnc_destroyLayer;

					missionNamespace setVariable ["mav_taxi_v_dialog_handlerBlockedUntil", diag_tickTime + 4];
				} else {
					if (!dialog) then {
						createDialog "RscDisplayTaxiMenu";
					};
				};
			};

			_handled
		}];
	};

	// Public calls handler
	"mav_taxi_v_callQueue" addPublicVariableEventHandler {
		params ["_var", "_newValue"];

		if (count _newValue > (missionNamespace getVariable ["mav_taxi_v_callAmount", 0])) then {
			if (mav_taxi_v_isOnDuty) then {
				[["msgTaxiNewCallCreated"] call mav_taxi_fnc_getLocalization, false, "maverick\taxis\data\images\information-symbol.paa"] spawn mav_taxi_fnc_showLargeNotification;
			};
		};

		missionNamespace setVariable ["mav_taxi_v_callAmount", count _newValue];
	};
};