_spawnPos01 = getMarkerPos "spawnMarker02";
_waypointPos01 = getMarkerPos "waypointMarker02";
_waypointPos02 = getMarkerPos "Encampment_01";
_attackSquad02 = createGroup [east, true];
_attackSquad02 setFormation "VEE";
_attackSquad02 setSpeedMode "NORMAL";

//select the random loadout for each unit taht you want to spawn:
_randomLoadout1 = selectRandom AIloadoutArray;
_randomLoadout2 = selectRandom AIloadoutArray;
_randomLoadout3 = selectRandom AIloadoutArray;


_unit = _attackSquad02 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit setUnitLoadout _randomLoadout1;
_unit2 = _attackSquad02 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit2 setUnitLoadout _randomLoadout2;
_unit3 = _attackSquad02 createUnit [ "O_G_Soldier_F", _spawnPos01 , [], 0.5, "FORM"];
_unit3 setUnitLoadout _randomLoadout3;
_attackSquad02 setBehaviour "CARELESS";
_attackSquad02 setCombatMode "GREEN";

_waypoint01 = _attackSquad02 addWaypoint [_waypointPos01,0];
_waypoint02 = _attackSquad02 addWaypoint [_waypointPos02,0];
_waypoint02 setWaypointType "SAD";
[_attackSquad02, 2] setWaypointBehaviour "AWARE";
[_attackSquad02, 2] setWaypointCombatMode "YELLOW";