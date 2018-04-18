params["_tracker"];

if(isNil "trackedby") then { trackedby = []; };

trackedby pushback _tracker;
