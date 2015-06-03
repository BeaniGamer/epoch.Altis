waitUntil {!isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};
waitUntil {isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};

//Status Bar Config and Startup Options

//Choose Options
//--------------------------------------------------------------------------------------------------------------------------------------		
_WSC = true;  //Option whether to use and display world space coords in the admin status bar (true or false)


_sb_admin_list =  ["76561198037378320","76561198008194780","76561197968070740"]; ;	
//--------------------------------------------------------------------------------------------------------------------------------------

//Start the Status Bar
	
if ((getPlayerUID player) in _sb_admin_list) then  //admins id here
{ 
	if (((getPlayerUID player) in _sb_admin_list) && (_WSC)) then
	{
		[] execVM "addons\status_bar\adminbar_ws.sqf";
	}
	else
	{
		[] execVM "addons\status_bar\adminbar.sqf";
	};
} 
else 
{
	[] execVM "addons\status_bar\PlayerBar.sqf";
};