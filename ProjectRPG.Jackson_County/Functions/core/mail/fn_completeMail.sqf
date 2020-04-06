["Du hast einen Brief bekommen!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

["Hallo! Ein Brief erwartet dich, Du kannst es bei der Post oder zu Hause abholen!","SMS: Post","Silver Lake Postamt"] call client_fnc_sendMessage;