_spawnPos01 = getMarkerPos "spawnMarker01";
_waypointPos01 = getMarkerPos "waypointMarker01";
_waypointPos02 = getMarkerPos "Encampment_01";
_attackSquad01 = createGroup [east, true];
_attackSquad01 setFormation "VEE";
_attackSquad01 setSpeedMode "NORMAL";

//select the random loadout for each unit taht you want to spawn:
_randomLoadout1 = selectRandom AIloadoutArray;
_randomLoadout2 = selectRandom AIloadoutArray;
_randomLoadout3 = selectRandom AIloadoutArray;


_unit = _attackSquad01 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit setUnitLoadout _randomLoadout1;
_unit2 = _attackSquad01 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit2 setUnitLoadout  _randomLoadout2;
_unit3 = _attackSquad01 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit3 setUnitLoadout _randomLoadout3;
_attackSquad01 setBehaviour "CARELESS";
_attackSquad01 setCombatMode "GREEN";

_waypoint01 = _attackSquad01 addWaypoint [_waypointPos01,0];
_waypoint02 = _attackSquad01 addWaypoint [_waypointPos02,0];
_waypoint02 setWaypointType "SAD";
[_attackSquad01, 2] setWaypointBehaviour "AWARE";
[_attackSquad01, 2] setWaypointCombatMode "YELLOW";
