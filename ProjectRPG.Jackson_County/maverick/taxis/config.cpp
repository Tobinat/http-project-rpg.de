/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define true 1
#define false 0

class maverick_taxis_cfg {
	class pricing {
		pricePerKilometre 					= 500; // Dollars
		basePrice							= 1000; // Price at which billing starts, required to call a taxi
		moneyHandVariable					= "life_cash";
		moneyBankVariable					= "life_atmbank";
		paymentSource						= "BOTH";
		fullRefundOnDriverAbort				= true;
	};

	class keybindings {
		keyCode								= 20; // Keycodes can be found at https://community.bistudio.com/wiki/DIK_KeyCodes
		reqShift							= false;
		reqAlt								= true;
		reqCtrl								= false;
	};

	class general {
		automaticNavigation 				= true; // Automatically starts Navigator once the user has to go to a specific point
	};

	class drivers {
		condition 							= "true";
	};

	class localization {
		// Localization
		msgMainInfoNoTaxiCalled	=			"<t size='2'>You do not have an active taxi call!</t><br/><t>Click on 'Call Taxi' to create a taxi request for all available taxi drivers to see!</t><br/><br/><t font='RobotoCondensedBold'>Available Taxi Drivers: %1</t>";
		msgMainInfoNoTaxiYet =				"<t size='2'>A taxi has been called!</t><br/><t>No taxi driver has accepted your request yet though. You will be notified once a taxi driver does so!</t><br/><br/><t font='RobotoCondensedBold'>Available Taxi Drivers: %1</t>";
		msgTaxiCalled = 					"A taxi request has been created!";
		msgTaxiCancelled = 					"Your current taxi request has been cancelled!";
		msgTaxiFareCancelled =				"You have cancelled the fare";
		msgTaxiCancelConfirm =				"A taxi driver has already accepted your request and is on his way to you. Are you sure that you still want to cancel?";
		msgTaxiCancelHeader	=				"Cancel Taxi Call";
		msgTaxiCancelButtonConfirm =		"Yes";
		msgTaxiCancelButtonCancel =			"No";
		msgTaxiCancelDriverConfirm =		"Are you sure that you want to cancel the fare? If a base price has already been transferred to you, it will be transferred back to the customer again.";
		msgTaxiMeterInfoText = 				"<t>Total Distance</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Time Elapsed</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Total Price (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>";
		msgTaxiMeterStatusTextActive = 		"<t align='right' font='RobotoCondensedBold'>ACTIVE</t>";
		msgTaxiMeterStatusTextInactive = 	"<t align='right' font='RobotoCondensedBold'>INACTIVE</t>";
		masTaxiInfoPleaseWait =				"<t size='2'>%1 is on his way to you!</t><br/>Please wait at your current location for your taxi driver. He is currently %2 away.</t>";
		msgTaxiFareCancelledAsCustomer =	"Your taxi driver has cancelled the fare";
		masTaxiFareCancelledAsDriver =		"Your customer has cancelled the fare.";
		msgTaxiCallAccepted =				"A taxi driver driver is on his way";
		msgTaxiDriverNotAvailable =			"You do not meet the requirements to work as a taxi driver";
		msgTaxiDestinationUpdated =			"The destination has been updated";
		msgTaxiNoRoadNearFound =			"No road segment near position found!";
		msgTaxiCannotCallWhileDriver =		"You cannot call a taxi while being on-duty as a taxi driver!";
		msgTaxiCannotDriveWhileCalling =	"You cannot work as a taxi driver while calling one yourself!";
		msgTaxiSpamClickPrevention =		"You cannot do this action so fast!";
		msgTaxiAlreadyInFare =				"You have already accepted a fare!";
		msgCallTaxi =						"Call Taxi";
		msgBaseNotAffordable =				"You do not have enough money to call a taxi!";
		msgPaidCustomer =					"You have reached your destination.<br/>Total payment made: %1$";
		msgNotFullyPaidCustomer =			"You have reached your destination. You could not afford the total amount of %1$, instead %2$ (excluding base fee) have been paid!";
		msgPaidDriver =						"You have reached the destination.<br/>Your customer has paid you <t color='#43a047'>%1$</t>.";
		msgNotFullyPaidDriver =				"You have reached the destination. Your customer could not pay you the full amount of <t color='#43a047'>%1$</t>, instead <t color='#43a047'>%2$</t> (excluding base fee) have been transferred to you.";
		msgPayCustomer =					"You have reached your destination.<br/>The total payment that has be made is %1$.";
		msgPayDriver =						"You have reached the destination.<br/>Your customer has been prompted to pay %1$.";
		msgTotalPayment =					"Total payment: %1$";
		msgTaximeterPositionSaved =			"Taximeter position saved";
		msgTaximeterPositionReset =			"Taximeter position reset";
		msgTaxiPressSpaceSaveSettings = 	"Press [SPACE] to save";
		msgNowOnDuty =						"You are now on duty and will receive notifications when a taxi call comes in!";
		msgNowOffDuty =						"You are now off duty";
		msgTaxiMenuActiveCalls =			"View Active Calls";
		msgTaxiNewCallCreated = 			"A new taxi call has been created";
		msgTaxiBillingPayment =				"Total payment by driven distance";
		msgTaxiBillingDriverMissingP =		"Amount not affordable by customer";
		msgTaxiBillingBasePrice =			"Base Price";
		msgTaxiBillingCustomerMissingP =	"Amount not affordable";
		msgTaxiCurrentFareInformation =		"Current Fare Information";
		msgTaxiBillingCancelled =			"Fare cancelled";


		// Tasks
		msgTaskDriverPickupDescription =	"Pick up your passenger at this location";
		msgTaskDriverPickupDescriptionS =	"PICK UP";
		msgTaskDriverPickupHUD =			"Pick Up";

		msgTaskCustomerDriverDescription =	"Get into your taxi drivers vehicle";
		msgTaskCustomerDriverDescriptionS =	"GET IN";
		msgTaskCustomerDriverHUD =			"Get In";

		msgTaskDriverGoToDescription =		"Customer destination";
		msgTaskDriverGoToDescriptionS =		"DESTINATION";
		msgTaskDriverGoToDriverHUD =		"Move Here";

		#define dialogCallTaxiTitle			"Taxi Service"
		#define dialogCancelTaxi			"Cancel Taxi Request"
		#define dialogClose					"Close"
		#define dialogTaxiMeter				"Taxi-Meter"
		#define dialogTaxiFareList			"Available Taxi Calls"
		#define dialogTaxiGoOnDuty			"Go On Duty"
		#define dialogTaxiGoOffDuty			"Go Off Duty"
		#define dialogTaxiAcceptCall		"Accept Selected Call"
		#define dialogTaxiCancelCall		"Cancel Current Call"
		#define dialogMenuCustomer			"Call A Taxi"
		#define dialogMenuDriver			"Work as a driver"
		#define dialogMenuSettings			"Settings"
		#define dialogDestination			"Destination"
		#define dialogHowToDestination		"Double-click a position on the map to mark it as your destination. If you already have a taxi driver coming to you, he will be notified of the updated position."
		#define dialogStatusTitle			"Call Status"
		#define dialogStatusMarkedDest		"Destination Selected"
		#define dialogStatusCreatedCall		"Taxi Call Created"
		#define dialogStatusDriverFound		"Taxi Driver Accepted Call"
		#define dialogStatusPickedUp		"Get Picked Up"
		#define dialogSettingsCustomizePos	"Taximeter Position"
		#define dialogSettingsCustomize		"Customize"
		#define dialogSettingsReset			"Reset"
		#define dialogDragMe				"Drag Me"
		#define dialogFareSummaryTitle		"Fare Summary"
		#define dialogSummaryClosePromt		"[ALT]+[T] to close"
		#define dialogAvaibleDrivers		"Available Drivers"
	};
};

#include "gui\taxi_gui_master.cpp"
