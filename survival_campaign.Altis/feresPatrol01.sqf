//random spawn markers:
_randomspawn01 = getMarkerPos "Feres_randomSpawn_01";
_randomspawn02 = getMarkerPos "Feres_randomSpawn_02";
_randomspawn03 = getMarkerPos "Feres_randomSpawn_03";
_randomspawn04 = getMarkerPos "Feres_randomSpawn_04";
_randomspawn05 = getMarkerPos "Feres_randomSpawn_05";
_randomspawn06 = getMarkerPos "Feres_randomSpawn_06";
_randomspawn07 = getMarkerPos "Feres_randomSpawn_07";


//select 1 of the random spawns:
_randomSelect = selectRandom [ _randomspawn01, _randomspawn02, _randomspawn03, _randomspawn04, _randomspawn05, _randomspawn06, _randomspawn07];

//make all the waypoints:
_feresWaypointPos01 = getMarkerPos "Feres_waypoint_01";
_feresWaypointPos02 = getMarkerPos "Feres_waypoint_02";
_feresWaypointPos03 = getMarkerPos "Feres_waypoint_03";
_feresWaypointPos04 = getMarkerPos "Feres_waypoint_04";
_feresWaypointPos05 = getMarkerPos "Feres_waypoint_05";
_feresWaypointPos06 = getMarkerPos "Feres_waypoint_06";
_feresWaypointPos07 = getMarkerPos "Feres_waypoint_07";
_feresWaypointPos08 = getMarkerPos "Feres_waypoint_08";
_feresWaypointPos09 = getMarkerPos "Feres_waypoint_09";

//make the feresWaypoints array variable:
feresWaypoints = [_feresWaypointPos01,_feresWaypointPos02,_feresWaypointPos03,_feresWaypointPos04,_feresWaypointPos05,_feresWaypointPos06,_feresWaypointPos07,_feresWaypointPos08,_feresWaypointPos09];

//create the unit group:
_feresPatrol01 = createGroup [east, true];
_feresPatrol01 setFormation "LINE";
_feresPatrol01 setSpeedMode "LIMITED";
_feresPatrol01 enableDynamicSimulation true;

//select the random loadout for each unit taht you want to spawn:
_randomLoadout1 = selectRandom AIloadoutArray;
_randomLoadout2 = selectRandom AIloadoutArray;
_randomLoadout3 = selectRandom AIloadoutArray;
//copyToClipboard str _randomLoadout1;

_unit01 = _feresPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit01 setUnitLoadout _randomLoadout1;
_unit02 = _feresPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit02 setUnitLoadout _randomLoadout2;
_unit03 = _feresPatrol01 createUnit [ "O_G_Soldier_F", _randomSelect , [], 0.5, "FORM"];
_unit03 setUnitLoadout _randomLoadout3;
_feresPatrol01 setBehaviour "SAFE";

// define a function that adds a random waypoint to the group
addFeresRandomWaypoint = {
    _group = _this; // the group that was passed in to the function call
    
    // delete all existing waypoints
    while { (count (waypoints _group)) > 0 } do {
        deleteWaypoint [_group, 0];
    };
    
    _randomWaypointPos = selectRandom feresWaypoints;
    _waypoint = _group addWaypoint [_randomWaypointPos, 0];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointStatements ["true",  "this call processFeresWaypointComplete;" ];
};

processFeresWaypointComplete = {
    _groupLeader = _this;
    if (local _groupLeader) then {
        (group _groupLeader) call addFeresRandomWaypoint;
    };
};

_feresPatrol01 call addFeresRandomWaypoint;
