["Du hast einen Brief bekommen!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

[999,"Du hast einen Brief erhalten!","SMS: Post","Silver Lake Postamt"] call client_fnc_sendMessage;