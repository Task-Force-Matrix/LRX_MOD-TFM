params ["_unit"];

if (rating _unit < -2000) exitWith {_unit setDamage 1};

private _cur_revive = 1;
if (PAR_ai_revive > 0 && !isPlayer _unit && local _unit) then {
	_cur_revive = _unit getVariable ["PAR_revive_max", PAR_ai_revive];
};
if (_cur_revive <= 0) exitWith {_unit setDamage 1};

_unit setUnconscious true;
_unit setCaptive true;
_unit allowDamage false;
_unit setVariable ["PAR_BleedOutTimer", round(time + PAR_bleedout), true];
_unit setVariable ["PAR_isDragged", 0, true];

if (isPlayer _unit) then {
	private _mk1 = createMarkerLocal [format ["PAR_marker_%1", PAR_Grp_ID], getPosATL player];
	_mk1 setMarkerTypeLocal "loc_Hospital";
	_mk1 setMarkerTextLocal format ["%1 Injured", name player];
	_mk1 setMarkerColor "ColorRed";
} else {
	[_unit] call PAR_fn_deathSound;
	sleep 3;
};

waitUntil { sleep 0.5; isNull objectParent _unit };
_unit switchMove "AinjPpneMstpSnonWrflDnon_rolltoback";
_unit playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
sleep 5;

if (!alive _unit) exitWith {};
waituntil { sleep 1; (round (getPos _unit select 2) <= 0) };

private _bld = [_unit] call PAR_spawn_blood;
private _cnt = 0;
private ["_medic", "_msg"];
while { alive _unit && ([_unit] call PAR_is_wounded) && time <= (_unit getVariable ["PAR_BleedOutTimer", 0])} do {
	if (_cnt == 0) then {
		_unit setOxygenRemaining 1;
		if ( {alive _x} count PAR_AI_bros > 0 ) then {
			_medic = _unit getVariable ["PAR_myMedic", nil];
			if (isNil "_medic") then {
				_unit groupchat localize "STR_PAR_UC_01";
				_medic = [_unit] call PAR_fn_medic;
				if (!isNil "_medic") then { [_unit, _medic] call PAR_fn_911 };
			};
		} else {
			_msg = format [localize "STR_PAR_UC_03", name player];
			if ([player] call PAR_is_wounded) then {
				_msg = format [localize "STR_PAR_UC_02", name player];
			};
			_last_msg = player getVariable ["PAR_last_message", 0];
			if (time > _last_msg) then {
				[_unit, _msg] call PAR_fn_globalchat;
				player setVariable ["PAR_last_message", round(time + 20)];
			};
		};
		//systemchat str ((_unit getVariable ["PAR_BleedOutTimer", 0]) - time);
		_cnt = 10;
	};
	_cnt = _cnt - 1;
	sleep 1;
};

if (!isNull _bld) then { _bld spawn {sleep (30 + floor(random 30)); deleteVehicle _this} };

if (isPlayer _unit) then {
	deletemarker format ["PAR_marker_%1", PAR_Grp_ID];
};

if (!alive _unit) exitWith {};

// Bad end
if (time > _unit getVariable ["PAR_BleedOutTimer", 0]) exitWith {
	[(_unit getVariable ["PAR_myMedic", objNull]), _unit] call PAR_fn_medicRelease;
	_unit setDamage 1;
};

// Good end
if (isPlayer _unit) then {
	(group _unit) selectLeader _unit;
	if (primaryWeapon _unit != "") then { _unit selectWeapon primaryWeapon _unit };
} else {
	_unit setSpeedMode (speedMode group player);
	_unit doFollow player;
};
