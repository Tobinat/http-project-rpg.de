/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class Maverick_Taxis {
	tag = "mav_taxi";
	class functions {
		file = "maverick\taxis";
		class init { postInit = 1; };
		class getLocalization {};
		class serverQueueRequest {};
		class serverDequeueRequest {};
		class fareRecording {};
		class startFare {};
		class stopFare {};
		class showLargeNotification;
		class nearestLocation {};
		class fareCancelled {};
		class driverCallAccepted {};
		class driverCallAlreadyAccepted {};
		class customerCallAccepted {};
		class serverFareFinished {};
		class serverUnitDied {};
		class serverCallAccepted {};
		class setCallId {};
		class preventClickSpam {};
		class serverUpdateDestination {};
		class driverUpdateDestination {};
		class setTask {};
		class stopTask {};
		class driverCallerReached {};
		class customerDriverReached {};
		class resetClickSpam {};
		class hintClickSpam {};
		class destinationReached {};
		class attemptPayment {};
		class isNavigatorEnabled {};
		class getMaximumMoneyAvailable {};
		class processFareBilling {};
		class driverCallerPaid {};
		class showFareSummary {};
		class setDrivenDistance {};
	};
};