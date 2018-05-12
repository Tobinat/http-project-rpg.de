["Sie sind nun Präsident von Silver Lake, Gratulation", false] spawn domsg;
//format["Der Bürgermeister von Silver Lake ist gerade in der Stadt! %1", name player] remoteexec ["hint",-2];
mayor = true;
sleep 10;
playsound "presi";
//player setVariable ["coplevel", 1, false];