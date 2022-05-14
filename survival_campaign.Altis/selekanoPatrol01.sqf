//random spawn markers:
_randomspawn01 = getMarkerPos "Selakano_randomSpawn_01";
_randomspawn02 = getMarkerPos "Selakano_randomSpawn_02";
_randomspawn03 = getMarkerPos "Selakano_randomSpawn_03";
_randomspawn04 = getMarkerPos "Selakano_randomSpawn_04";
_randomspawn05 = getMarkerPos "Selakano_randomSpawn_05";
_randomspawn06 = getMarkerPos "Selakano_randomSpawn_06";
_randomspawn07 = getMarkerPos "Selakano_randomSpawn_07";
_randomspawn08 = getMarkerPos "Selakano_randomSpawn_08";
_randomspawn09 = getMarkerPos "Selakano_randomSpawn_09";
_randomspawn10 = getMarkerPos "Selakano_randomSpawn_10";
_randomspawn11 = getMarkerPos "Selakano_randomSpawn_11";

//select 1 of the random spawns:
_randomSelect = selectRandom [ _randomspawn01, _randomspawn02, _randomspawn03,_randomspawn04, _randomspawn05, _randomspawn06, _randomspawn07, _randomspawn08, _randomspawn09, _randomspawn10, _randomspawn11];

//make all the waypoints:
_selakanoWaypointPos01 = getMarkerPos "Selakano_waypoint_01";
_selakanoWaypointPos02 = getMarkerPos "Selakano_waypoint_02";
_selakanoWaypointPos03 = getMarkerPos "Selakano_waypoint_03";
_selakanoWaypointPos04 = getMarkerPos "Selakano_waypoint_04";
_selakanoWaypointPos05 = getMarkerPos "Selakano_waypoint_05";
_selakanoWaypointPos06 = getMarkerPos "Selakano_waypoint_06";
_selakanoWaypointPos07 = getMarkerPos "Selakano_waypoint_07";
_selakanoWaypointPos08 = getMarkerPos "Selakano_waypoint_08";
_selakanoWaypointPos09 = getMarkerPos "Selakano_waypoint_09";
_selakanoWaypointPos10 = getMarkerPos "Selakano_waypoint_10";
_selakanoWaypointPos11 = getMarkerPos "Selakano_waypoint_11";
_selakanoWaypointPos12 = getMarkerPos "Selakano_waypoint_12";

//make the feresWaypoints array variable:
SelakanoWaypoints = [_selakanoWaypointPos01,_selakanoWaypointPos02,_selakanoWaypointPos03,_selakanoWaypointPos04,_selakanoWaypointPos05,_selakanoWaypointPos06,_selakanoWaypointPos07,_selakanoWaypointPos08,_selakanoWaypointPos09,_selakanoWaypointPos10,_selakanoWaypointPos11,_selakanoWaypointPos12];

//create the unit group:
_selakanoPatrol01 = createGroup [east, true];
_selakanoPatrol01 setFormation "LINE";
_selakanoPatrol01 setSpeedMode "LIMITED";
_selakanoPatrol01 enableDynamicSimulation true;

//select the random loadout for each unit taht you want to spawn:
_randomLoadout1 = selectRandom AIloadoutArray;
_randomLoadout2 = selectRandom AIloadoutArray;
_randomLoadout3 = selectRandom AIloadoutArray;
//copyToClipboard str _randomLoadout1;

_unit01 = _selakanoPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit01 setUnitLoadout _randomLoadout1;
_unit02 = _selakanoPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit02 setUnitLoadout _randomLoadout2;
_unit03 = _selakanoPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit03 setUnitLoadout _randomLoadout3;
_selakanoPatrol01 setBehaviour "SAFE";

// define a function that adds a random waypoint to the group
 addSelakanoRandomWaypoint = {
    _group = _this; // the group that was passed in to the function call
    
    // delete all existing waypoints
    while { (count (waypoints _group)) > 0 } do {
        deleteWaypoint [_group, 0];
    };
    
    _randomWaypointPos = selectRandom SelakanoWaypoints;
    _waypoint = _group addWaypoint [_randomWaypointPos, 0];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointStatements ["true",  "this call processSelakanoWaypointComplete;" ];
};

 processSelakanoWaypointComplete = {
    _groupLeader = _this;
    if (local _groupLeader) then {
        (group _groupLeader) call addSelakanoRandomWaypoint;
    };
};

_selakanoPatrol01 call addSelakanoRandomWaypoint;
