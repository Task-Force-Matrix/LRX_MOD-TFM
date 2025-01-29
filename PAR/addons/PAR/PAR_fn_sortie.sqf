params ["_wnded", "_medic"];

if (isDedicated) exitWith {};
if !(local _wnded) exitWith { [_wnded, _medic] remoteExec ["PAR_remote_sortie", 2] };
if (!([_wnded] call PAR_is_wounded) || (!alive _wnded)) exitWith { [_medic, _wnded] call PAR_fn_medicRelease };

if (!isPlayer _medic) then {
	private _msg = format [localize "STR_PAR_ST_01", name _medic, name _wnded];
	[_wnded, _msg] call PAR_fn_globalchat;
	private _bleedOut = _wnded getVariable ["PAR_BleedOutTimer", 0];
	_wnded setVariable ["PAR_BleedOutTimer", _bleedOut + PAR_bleedout_extra, true];
	_medic setDir (_medic getDir _wnded);
	if (stance _medic == "PRONE") then {
		_medic switchMove "AinvPpneMstpSlayWrflDnon_medicOther";
		_medic playMoveNow "AinvPpneMstpSlayWrflDnon_medicOther";
	} else {
		_medic switchMove "AinvPknlMstpSlayWrflDnon_medicOther";
		_medic playMoveNow "AinvPknlMstpSlayWrflDnon_medicOther";
	};
	[_wnded] call PAR_spawn_gargbage;
	_cnt = 6;
	while { _cnt > 0 && (_wnded getVariable ["PAR_myMedic", objNull]) == _medic } do {
		sleep 1;
		_cnt = _cnt -1
	};
};

if (local _medic && _medic != (_wnded getVariable ["PAR_myMedic", objNull])) exitWith { _medic switchMove "" };
if ((!alive _wnded) || (!alive _medic) || ([_medic] call PAR_is_wounded) ) exitWith { [_medic, _wnded] call PAR_fn_medicRelease };

// Revived
if (PAR_revive == 2) then {
	_medic removeItem "FirstAidKit";
};

if (PAR_ai_revive > 0 && !isPlayer _wnded && local _wnded) then {
	[_wnded] spawn PAR_revive_max;
};

if ([_medic] call PAR_is_medic) then {
	_wnded setDamage 0;
} else {
	_wnded setDamage 0.25;
};

_wnded setUnconscious false;
_wnded setVariable ["PAR_isUnconscious", false, true];
_wnded setVariable ["PAR_isDragged", 0, true];

_wnded switchMove "AinjPpneMstpSnonWrflDnon_rolltofront";
_wnded playMoveNow "AinjPpneMstpSnonWrflDnon_rolltofront";
sleep 2;
_wnded switchmove "AidlPpneMstpSrasWrflDnon_G01";

[_medic, _wnded] call PAR_fn_medicRelease;
[_medic, _wnded] call PAR_fn_fixPos;

if (_wnded == player) then {
	group _wnded selectLeader _wnded;
} else {
	_wnded setSpeedMode (speedMode group player);
	_wnded doFollow player;
};

[_wnded] spawn {
	params ["_unit"];
	sleep 10;   //time to recover
	_unit allowDamage true;
	_unit setCaptive false;
};
