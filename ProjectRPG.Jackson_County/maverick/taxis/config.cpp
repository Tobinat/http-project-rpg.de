/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

#define true 1
#define false 0

class maverick_taxis_cfg {
	class pricing {
		pricePerKilometre 					= 250; // Dollars
		basePrice							= 1000; // Price at which billing starts, required to call a taxi
		moneyHandVariable					= "life_cash";
		moneyBankVariable					= "life_atmbank";
		paymentSource						= "WALLET";
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
		msgMainInfoNoTaxiCalled	=			"<t size='2'>Sie haben keinen aktiven Taxiruf!</t><br/><t>Klicke auf 'Taxi rufen' um eine Taxi-Anfrage an alle verfügbaren Taxifahrer zu erstellen!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>";
		msgMainInfoNoTaxiYet =				"<t size='2'>Ein Taxi wurde gerufen!</t><br/><t>Kein Taxifahrer hat Ihre Anfrage akzeptiert. Denoch werden Sie benachrichtigt, sobald ein Taxifahrer dies tut!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>";
		msgTaxiCalled = 					"Eine Taxianfrage wurde erstellt!";
		msgTaxiCancelled = 					"Ihre aktuelle Taxianfrage wurde storniert!";
		msgTaxiFareCancelled =				"Sie haben den Tarif storniert";
		msgTaxiCancelConfirm =				"Ein Taxifahrer hat Ihre Anfrage bereits angenommen und ist auf dem Weg zu Ihnen. Sind Sie sicher, dass Sie trotzdem stornieren möchten?";
		msgTaxiCancelHeader	=				"Taxi anfrage abrechen";
		msgTaxiCancelButtonConfirm =		"Ja";
		msgTaxiCancelButtonCancel =			"Nein";
		msgTaxiCancelDriverConfirm =		"Sind Sie sicher, dass Sie den Fahrpreis stornieren möchten? Wenn ein Basispreis bereits an Sie übergeben wurde, wird dieser wieder an den Kunden zurücküberwiesen.";
		msgTaxiMeterInfoText = 				"<t>Gesamtentfernung</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Verstrichene Zeit</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Gesamtpreis (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>";
		msgTaxiMeterStatusTextActive = 		"<t align='right' font='RobotoCondensedBold'>AKTIV</t>";
		msgTaxiMeterStatusTextInactive = 	"<t align='right' font='RobotoCondensedBold'>INACTIV</t>";
		masTaxiInfoPleaseWait =				"<t size='2'>%1 ist auf dem Weg zu dir!</t><br/>Bitte warten Sie an Ihrem aktuellen Standort auf Ihren Taxifahrer. Er ist derzeit %2 entfernt.</t>";
		msgTaxiFareCancelledAsCustomer =	"Dein Taxifahrer hat den Fahrpreis abgebrochen";
		masTaxiFareCancelledAsDriver =		"Ihr Kunde hat den Fahrpreis storniert.";
		msgTaxiCallAccepted =				"Ein Taxifahrer ist unterwegs";
		msgTaxiDriverNotAvailable =			"Sie erfüllen nicht die Voraussetzungen, um als Taxifahrer zu arbeiten";
		msgTaxiDestinationUpdated =			"Das Ziel wurde aktualisiert";
		msgTaxiNoRoadNearFound =			"Kein Straßenabschnitt in der Nähe gefunden!";
		msgTaxiCannotCallWhileDriver =		"Sie können kein Taxi rufen, wenn Sie als Taxifahrer im Einsatz sind!";
		msgTaxiCannotDriveWhileCalling =	"Sie können nicht als Taxifahrer arbeiten, während Sie selbst einen anfordern!";
		msgTaxiSpamClickPrevention =		"Du kannst diese Aktion nicht so schnell machen!";
		msgTaxiAlreadyInFare =				"Sie haben bereits einen Fahrpreis akzeptiert!";
		msgCallTaxi =						"Taxi anfordern";
		msgBaseNotAffordable =				"Sie haben nicht genug Geld, um ein Taxi zu rufen!";
		msgPaidCustomer =					"Sie haben Ihr Ziel erreicht.<br/>Gesamtzahlung getätigt: %1$";
		msgNotFullyPaidCustomer =			"Sie haben Ihr Ziel erreicht. Du könntest dir die Gesamtmenge von %1$, stattdessen %2$ (ohne Grundgebühr) bezahlt worden!";
		msgPaidDriver =						"Sie haben Ihr Ziel erreicht.<br/>Ihr Kunde hat Sie bezahlt <t color='#43a047'>%1$</t>.";
		msgNotFullyPaidDriver =				"Sie haben Ihr Ziel erreicht. Ihr Kunde konnte Ihnen nicht den vollen Betrag von <t color='#43a047'>%1$</t>, stattdessen <t color='#43a047'>%2$</t> (ohne Grundgebühr) auf Sie übertragen worden.";
		msgPayCustomer =					"Sie haben Ihr Ziel erreicht.<br/>Die Gesamtzahlung, die getätigt wird, ist %1$.";
		msgPayDriver =						"Sie haben Ihr Ziel erreicht.<br/>Ihr Kunde wurde aufgefordert %1$ zu zahlen.";
		msgTotalPayment =					"Gesamtzahlung: %1$";
		msgTaximeterPositionSaved =			"Taxameterposition gespeichert";
		msgTaximeterPositionReset =			"Taxameter zurücksetzen";
		msgTaxiPressSpaceSaveSettings = 	"Drücke [SPACE] zum speicher";
		msgNowOnDuty =						"Sie sind jetzt im Einsatz und werden benachrichtigt, wenn ein Taxianruf eingeht!";
		msgNowOffDuty =						"Du bist jetzt dienstfrei";
		msgTaxiMenuActiveCalls =			"Aktive Anrufe anzeigen";
		msgTaxiNewCallCreated = 			"Eine neue Taxianfrage wurde erstellt";
		msgTaxiBillingPayment =				"Gesamtzahlung nach der gefahrenen Strecke";
		msgTaxiBillingDriverMissingP =		"Vom Kunden nicht bezahlbarer Betrag";
		msgTaxiBillingBasePrice =			"Grundpreis";
		msgTaxiBillingCustomerMissingP =	"Betrag nicht erschwinglich";
		msgTaxiCurrentFareInformation =		"Aktuelle Tarifinformationen";
		msgTaxiBillingCancelled =			"Tarif storniert";


		// Tasks
		msgTaskDriverPickupDescription =	"Holen Sie Ihren Passagier an diesem Ort ab";
		msgTaskDriverPickupDescriptionS =	"ABHOLEN";
		msgTaskDriverPickupHUD =			"Abholen";

		msgTaskCustomerDriverDescription =	"Steigen Sie in Ihr Taxifahrer-Fahrzeug ein";
		msgTaskCustomerDriverDescriptionS =	"EINSTEIGEN";
		msgTaskCustomerDriverHUD =			"Einsteigen";

		msgTaskDriverGoToDescription =		"Kundenziel";
		msgTaskDriverGoToDescriptionS =		"REISEZIEL";
		msgTaskDriverGoToDriverHUD =		"Hier hin fahren";

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
