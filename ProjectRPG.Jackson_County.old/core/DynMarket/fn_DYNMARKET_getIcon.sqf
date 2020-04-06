/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemName = param [0,""];

_iconPath = "";

switch (_itemName) do {
	//case "apple": {_iconPath = "icons\apple.paa";};
	case default {_iconPath = "";};
};

_iconPath;