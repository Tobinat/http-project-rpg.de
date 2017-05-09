["You've got Mail!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

["Hello valued customer! You have new mail awaiting you, you can pick it up from either the post office or your house address!","SMS: Mail Update","Silver Lake Post"] call client_fnc_sendMessage;