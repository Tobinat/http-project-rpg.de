["Dostałeś list!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

["Witaj, kliencie! Czeka na Ciebie list, możesz go odebrać na poczcie, lub we własnym domu!","SMS: Poczta","Silver Lake Poczta"] call client_fnc_sendMessage;