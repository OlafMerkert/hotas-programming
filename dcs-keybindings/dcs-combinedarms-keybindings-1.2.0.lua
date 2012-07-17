keyCommands = {
{combos = {{key = 'Space'}},down = iCommandPlaneFire,up = iCommandPlaneFireOff, name = 'Fire Selected Weapon',category = 'Ground unit'},
{combos = {{key = 'Q'}}, down = iCommandGChangeWS, name = 'Select Turret',category = 'Ground unit'},
{combos = {{key = 'E'}}, down = iCommandGChangeLN, name = 'Select Turret Weapon',category = 'Ground unit'},
{combos = {{key = 'Enter'}, }, down = iCommandGLockon, name = 'Target Lock', category = 'Ground unit'},
{combos = {{key = 'Back'}, }, down = iCommandGLockoff, name = 'Target Unlock', category = 'Ground unit'},
{combos = {{key = '='}, }, down = iCommandGZoomIn, name = 'Sight Zoom Narrow Toggle', category = 'Ground unit'},
{combos = {{key = '-'}, }, down = iCommandGZoomNormal, name = 'Sight Zoom Wide Toggle', category = 'Ground unit'},
{combos = {{key = 'O'}},down = iCommandGZoomIn,up = iCommandGZoomNormal, name = 'Sight Zoom Narrow (press and hold)',category = "Ground unit"},
{combos = {{key = 'N'}}, down = iCommandViewNVGOnOff, name = 'Night Vision ON/OFF',category = 'Ground unit'},

{combos = {{key = 'W'}}, down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = 'Vehicle Accelerate', category = 'Moving'},
{combos = {{key = 'S'}}, down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = 'Vehicle Brake', category = 'Moving'},
{combos = {{key = 'A'}}, down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = 'Vehicle Turn Left', category = 'Moving'},
{combos = {{key = 'D'}}, down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = 'Vehicle Turn Right', category = 'Moving'},
{combos = {{key = 'H'}}, down = iCommandPlaneWheelParkingBrake, name = 'Hand Brake Toggle', category = 'Moving'},
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = 'Vehicle Shift Gear Down', category = 'Moving'},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = 'Vehicle Shift Gear Up', category = 'Moving'},
{combos = {{key = 'I'}}, down = iCommandGIsometricView, name = 'Isometric view On/Off', category = 'Ground unit'},
{combos = {{key = 'C'}}, down = iCommandPlaneAutopilot, name = 'Cruise control On/Off', category = 'Ground unit'},

{combos = {{key = 'G'}}, down = iCommandGGroupModeOn, up = iCommandGGroupModeOff, name = 'Group Control Mode', category = 'Ground unit'},
{combos = {{key = '\\'}}, down = iCommandToggleCommandMenu, name = 'Communication menu', category = 'Radio Communications'},

-- JTAC
{combos = {{key = 'B'}}, down = iCommandViewBinocular, name = 'Binocular view toggle', category = 'Ground unit'},
}
