[]execVM "zombie\configurations.sqf";
[] execVM "custom\welcome.sqf";
[] execVM "wai\remote.sqf";
#include "A3EAI_Client\A3EAI_initclient.sqf";

if(hasInterface) then{[] execVM "addons\Status_Bar\init_statusBar.sqf"};



if (!isDedicated) then {
	"VEMFChatMsg" addPublicVariableEventHandler {
		systemChat ((_this select 1) select 0);
		[
			[
				[((_this select 1) select 0),"align = 'center' size = '1' font='PuristaBold'"],
				["","<br/>"],
				[((_this select 1) select 1),"align = 'center' size = '0.5'"]
			]
		] spawn BIS_fnc_typeText2;
		VEMFChatMsg = nil;
	};
};
