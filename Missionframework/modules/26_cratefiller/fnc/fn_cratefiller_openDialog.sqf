/*
    KPLIB_fnc_cratefiller_openDialog

    File: fn_cratefiller_openDialog.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2019-04-06
    Last Update: 2019-04-06
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
        Opens the cratefiller dialog.

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/

// Create dialog
createDialog "KPLIB_cratefiller";
disableSerialization;

// Dialog controls
private _dialog = findDisplay 758026;
private _ctrlCat = _dialog displayCtrl 75810;
private _ctrlWeapon = _dialog displayCtrl 75811;

// Hide controls
_ctrlWeapon ctrlShow false;

// Reset variables
_ctrlCat lbAdd "WEAPONS";
_ctrlCat lbAdd "MAGAZINES";
_ctrlCat lbAdd "ATTACHMENTS";
_ctrlCat lbAdd "GRENADES";
_ctrlCat lbAdd "EXPLOSIVES";
_ctrlCat lbAdd "VARIOUS";
_ctrlCat lbAdd "BACKPACKS";

[] call KPLIB_fnc_cratefiller_showPresets;
[] call KPLIB_fnc_cratefiller_getNearStorages;

true
