function layout()
return {

modifiers = {
['LShift'] = 'LShift',
['RShift'] = 'RShift',
['LAlt'] = 'LAlt',
['RAlt'] = 'RAlt',
['LCtrl'] = 'LCtrl',
['RCtrl'] = 'RCtrl',
['LWin'] = 'LWin',
['RWin'] = 'RWin',
},

keyCommands = {

-- Cheat - Temporary
{combos = {{key = 'Home', reformers = {'LWin'}}}, down = iCommandEnginesStart, name = 'Auto execute full start procedure', category = 'Cheat'},
{combos = {{key = 'End' , reformers = {'LWin'}}} , down = iCommandEnginesStop, name = 'Auto execute full stop procedure' , category = 'Cheat'},
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}}, down = iCommandActivePauseOnOff, name = 'Active Pause', category = 'Cheat'},


-- General
{combos = {{key = 'Esc'}}, down = iCommandQuit, name = 'End mission', category = 'General'},
{combos = {{key = 'Pause'}}, down = iCommandBrakeGo, name = 'Pause', category = 'General'},
{combos = {{key = 'Z', reformers = {'LCtrl'}}}, down = iCommandAccelerate, name = 'Time accelerate', category = 'General'},
{combos = {{key = 'Z', reformers = {'LAlt'}}}, down = iCommandDecelerate, name = 'Time decelerate', category = 'General'},
{combos = {{key = 'Z', reformers = {'LShift'}}}, down = iCommandNoAcceleration, name = 'Time normal', category = 'General'},
{combos = {{key = 'Tab'}}, down = iCommandChat, name = 'Multiplayer chat - mode All', category = 'General'},
{combos = {{key = 'Tab', reformers = {'RCtrl'}}}, down = iCommandFriendlyChat, name = 'Multiplayer chat - mode Allies', category = 'General'},
{combos = {{key = 'Y', reformers = {'LCtrl'}}}, down = iCommandInfoOnOff, name = 'Info bar toggle', category = 'General'},
{combos = {{key = 'Tab', reformers = {'RCtrl','RShift'}}}, down = iCommandRecoverHuman, name = 'Get New Plane - respawn', category = 'General'},
{combos = {{key = 'C', reformers = {'LAlt'}}}, down = iCommandCockpitClickModeOnOff, name = 'Clickable mouse cockpit mode On/Off', category = 'General'},
{combos = {{key = 'SysRQ'}}, down = iCommandScreenShot, name = 'Screenshot', category = 'General'},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, down = iCommandGraphicsFrameRate, name = 'Frame rate counter - Service info', category = 'General'},
{combos = {{key = 'Y', reformers = {'LAlt'}}}, down = iCommandViewCoordinatesInLinearUnits, name = 'Info bar coordinate units toggle', category = 'General'},
{combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = 'Show Pilot Body', category = 'General'},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}}, down = iCommandPlane_ShowControls, name = 'Show controls indicator' , category = 'General'},
{combos = {{key = 'B', reformers = {'LAlt'}}},				down = iCommandViewBriefing, name = 'View briefing on/off', category = 'General'},
{combos = {{key = '\''}}, 									down = iCommandScoresWindowToggle, name = 'Score window', category = 'General'},
{combos = {{key = '\'', reformers = {'RShift'}}}, 			down = iCommandDebriefing, name = 'Show debriefing window', category = 'General'},


-- View                                                    
{combos = {{key = 'Num4'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = 'View Left slow', category = 'View'},
{combos = {{key = 'Num6'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = 'View Right slow', category = 'View'},
{combos = {{key = 'Num8'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = 'View Up slow', category = 'View'},
{combos = {{key = 'Num2'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = 'View Down slow', category = 'View'},
{combos = {{key = 'Num9'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = 'View Up Right slow', category = 'View'},
{combos = {{key = 'Num3'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = 'View Down Right slow', category = 'View'},
{combos = {{key = 'Num1'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = 'View Down Left slow', category = 'View'},
{combos = {{key = 'Num7'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = 'View Up Left slow', category = 'View'},
{combos = {{key = 'Num5'}}, pressed = iCommandViewCenter, name = 'Center View', category = 'View'},


{combos = {{key = 'Num*'}}, pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = 'Zoom in slow', category = 'View'},

{combos = {{key = 'Num/'}}, pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = 'Zoom out slow', category = 'View'},
{combos = {{key = 'NumEnter'}}, down = iCommandViewAngleDefault, name = 'Zoom normal', category = 'View'},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = 'Zoom external in', category = 'View'},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = 'Zoom external out', category = 'View'},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, down = iCommandViewExternalZoomDefault, name = 'Zoom external normal', category = 'View'},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, down = iCommandViewSpeedUp, name = 'F11 camera moving forward', category = 'View'},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, down = iCommandViewSlowDown, name = 'F11 camera moving backward', category = 'View'},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, down = iCommandViewSwitchForward, name = 'Objects switching direction forward ', category = 'View'},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, down = iCommandViewSwitchReverse, name = 'Objects switching direction reverse ', category = 'View'},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, down = iCommandViewObjectIgnore, name = 'Object exclude ', category = 'View'},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, down = iCommandViewObjectsAll, name = 'Objects all excluded - include', category = 'View'},

{combos = {{key = 'F1'}}, down = iCommandViewCockpit, name = 'F1 Cockpit view', category = 'View'},
{combos = {{key = 'F1', reformers = {'LCtrl'}}}, down = iCommandNaturalViewCockpitIn, name = 'F1 Natural head movement view', category = 'View'},
{combos = {{key = 'F1', reformers = {'LAlt'}}}, down = iCommandViewHUDOnlyOnOff, name = 'F1 HUD only view switch', category = 'View'},
{combos = {{key = 'F2'}}, down = iCommandViewAir, name = 'F2 Aircraft view', category = 'View'},
{combos = {{key = 'F2', reformers = {'LCtrl'}}}, down = iCommandViewMe, name = 'F2 View own aircraft', category = 'View'},
{combos = {{key = 'F2', reformers = {'RAlt'}}}, down = iCommandViewFromTo, name = 'F2 Toggle camera position', category = 'View'},
{combos = {{key = 'F2', reformers = {'LAlt'}}}, down = iCommandViewLocal, name = 'F2 Toggle local camera control', category = 'View'},
{combos = {{key = 'F3'}}, down = iCommandViewTower, name = 'F3 Fly-By view', category = 'View'},
{combos = {{key = 'F3', reformers = {'LCtrl'}}}, down = iCommandViewTowerJump, name = 'F3 Fly-By jump view', category = 'View'},
{combos = {{key = 'F4'}}, down = iCommandViewRear, name = 'F4 Look back view', category = 'View'},
{combos = {{key = 'F4', reformers = {'LCtrl'}}}, down = iCommandViewChase, name = 'F4 Chase view', category = 'View'},
{combos = {{key = 'F4', reformers = {'LShift'}}},down = iCommandViewChaseArcade, name = 'F4 Arcade Chase view', category = 'View'},
{combos = {{key = 'F5'}}, down = iCommandViewFight, name = 'F5 nearest AC view', category = 'View'},
{combos = {{key = 'F5', reformers = {'LCtrl'}}}, down = iCommandViewFightGround, name = 'F5 Ground hostile view', category = 'View'},
{combos = {{key = 'F6'}}, down = iCommandViewWeapons, name = 'F6 Released weapon view', category = 'View'},
{combos = {{key = 'F6', reformers = {'LCtrl'}}}, down = iCommandViewWeaponAndTarget, name = 'F6 Weapon to target view', category = 'View'},
{combos = {{key = 'F7'}}, down = iCommandViewGround, name = 'F7 Ground unit view', category = 'View'},
{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = 'F8 Target view', category = 'View'},
{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = 'F8 Player targets/All targets filter', category = 'View'},
{combos = {{key = 'F9'}}, down = iCommandViewNavy, name = 'F9 Ship view', category = 'View'},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, down = iCommandViewLndgOfficer, name = 'F9 Landing signal officer view', category = 'View'},
{combos = {{key = 'F10'}}, down = iCommandViewAWACS, name = 'F10 Theater map view', category = 'View'},
{combos = {{key = 'F10', reformers = {'LCtrl'}}}, down = iCommandViewAWACSJump, name = 'F10 Jump to theater map view over current point', category = 'View'},
{combos = {{key = 'F11'}}, down = iCommandViewFree, name = 'F11 Airport free camera', category = 'View'},
{combos = {{key = 'F11', reformers = {'LCtrl'}}}, down = iCommandViewFreeJump, name = 'F11 Jump to free camera', category = 'View'},
{combos = {{key = 'F12'}}, down = iCommandViewStatic, name = 'F12 Static object view', category = 'View'},
{combos = {{key = 'F12', reformers = {'LCtrl'}}}, down = iCommandViewMirage, name = 'F12 Civil traffic view', category = 'View'},
{combos = {{key = 'F12', reformers = {'LShift'}}}, down = iCommandViewLocomotivesToggle, name = 'F12 Trains/cars toggle', category = 'View'},

-- View Cockpit
{combos = {{key = 'Num0'}}, down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = 'Cockpit panel view in', category = 'View Cockpit'},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}}, down = iCommandViewTempCockpitToggle, name = 'Cockpit panel view toggle', category = 'View Cockpit'},
--// Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num0', reformers = {'RAlt'}}}, down = iCommandViewSaveAngles, name = 'Save Cockpit Angles', category = 'View Cockpit'},
{combos = {{key = 'Num8', reformers = {'RShift'}}}, pressed = iCommandViewUp, up = iCommandViewStop, name = 'View up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RShift'}}}, pressed = iCommandViewDown, up = iCommandViewStop, name = 'View down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RShift'}}}, pressed = iCommandViewLeft, up = iCommandViewStop, name = 'View left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RShift'}}}, pressed = iCommandViewRight, up = iCommandViewStop, name = 'View right', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RShift'}}}, pressed = iCommandViewUpRight, up = iCommandViewStop, name = 'View up right', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RShift'}}}, pressed = iCommandViewDownRight, up = iCommandViewStop, name = 'View down right', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RShift'}}}, pressed = iCommandViewDownLeft, up = iCommandViewStop, name = 'View down left', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RShift'}}}, pressed = iCommandViewUpLeft, up = iCommandViewStop, name = 'View up left', category = 'View Cockpit'},

{combos = {{key = ']', reformers = {'LShift'}}}, down = iCommandViewFastKeyboard, name = 'Fast cockpit keyboard', category = 'View Cockpit'},
{combos = {{key = ']', reformers = {'LCtrl'}}}, down = iCommandViewSlowKeyboard, name = 'Slow cockpit keyboard', category = 'View Cockpit'},
{combos = {{key = ']', reformers = {'LAlt'}}}, down = iCommandViewNormalKeyboard, name = 'Normal cockpit keyboard speed', category = 'View Cockpit'},
{combos = {{key = '[', reformers = {'LShift'}}}, down =  iCommandViewFastMouse, name = 'Fast cockpit mouse', category = 'View Cockpit'},
{combos = {{key = '[', reformers = {'LCtrl'}}}, down = iCommandViewSlowMouse, name = 'Slow cockpit mouse', category = 'View Cockpit'},
{combos = {{key = '[', reformers = {'LAlt'}}}, down = iCommandViewNormalMouse, name = 'Normal cockpit mouse speed', category = 'View Cockpit'},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = 'Camera view up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = 'Camera view down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = 'Camera view left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = 'Camera view right', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = 'Camera view up-left', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = 'Camera view down-left', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = 'Camera view up-right', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = 'Camera view down-right', category = 'View Cockpit'},
--{combos = {{key = 'F1', reformers = {'RAlt'}}}, down = iCommandViewPanToggle, name = 'Camera pan mode toggle', category = 'View Cockpit'},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, down = iCommandViewCameraUpSlow, name = 'Camera view up slow', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RAlt'}}}, down = iCommandViewCameraDownSlow, name = 'Camera view down slow', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, down = iCommandViewCameraLeftSlow, name = 'Camera view left slow', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RAlt'}}}, down = iCommandViewCameraRightSlow, name = 'Camera view right slow', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RAlt'}}}, down = iCommandViewCameraUpLeftSlow, name = 'Camera view up-left slow', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, down = iCommandViewCameraDownLeftSlow, name = 'Camera view down-left slow', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RAlt'}}}, down = iCommandViewCameraDownRight, name = 'Camera view up-right slow', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RAlt'}}}, down = iCommandViewCameraUpRightSlow, name = 'Camera view down-right slow', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RShift'}}}, down = iCommandViewCameraCenter, name = 'Center camera view', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}}, down = iCommandViewCameraReturn, name = 'Return camera', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, down = iCommandViewCameraBaseReturn, name = 'Return camera base', category = 'View Cockpit'},

{combos = {{key = 'Num0', reformers = {'LWin'}}}, down = iCommandViewSnapView0, up = iCommandViewSnapViewStop, name = 'Snap View 0', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, down = iCommandViewSnapView1, up = iCommandViewSnapViewStop, name = 'Snap View 1', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, down = iCommandViewSnapView2, up = iCommandViewSnapViewStop, name = 'Snap View 2', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, down = iCommandViewSnapView3, up = iCommandViewSnapViewStop, name = 'Snap View 3', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, down = iCommandViewSnapView4, up = iCommandViewSnapViewStop, name = 'Snap View 4', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, down = iCommandViewSnapView5, up = iCommandViewSnapViewStop, name = 'Snap View 5', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, down = iCommandViewSnapView6, up = iCommandViewSnapViewStop, name = 'Snap View 6', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'LWin'}}}, down = iCommandViewSnapView7, up = iCommandViewSnapViewStop, name = 'Snap View 7', category = 'View Cockpit'},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, down = iCommandViewSnapView8, up = iCommandViewSnapViewStop, name = 'Snap View 8', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, down = iCommandViewSnapView9, up = iCommandViewSnapViewStop, name = 'Snap View 9', category = 'View Cockpit'},

{combos = {{key = 'F1', reformers = {'LWin'}}} , down = iCommandViewPitHeadOnOff, name = 'Head shift movement on / off', category = 'View Cockpit'},

{combos = {{key = 'Num/', reformers = {'RShift'}}}, pressed = iCommandViewBack, up = iCommandViewBackStop, name = 'Zoom out', category = 'View Cockpit'},
{combos = {{key = 'Num*', reformers = {'RShift'}}}, pressed = iCommandViewForward, up = iCommandViewForwardStop, name = 'Zoom in', category = 'View Cockpit'},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Right', category = 'View Cockpit'},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Forward', category = 'View Cockpit'},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Back', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = 'Cockpit Camera Move Center', category = 'View Cockpit'},

-- View Extended
{combos = {{key = 'J', reformers = {'LShift'}}}, down = iCommandViewCameraJiggle, name = 'Camera jiggle toggle', category = 'View Extended'},
{combos = {{key = 'K', reformers = {'LAlt'}}}, down = iCommandViewKeepTerrain, name = 'Keep terrain camera altitude', category = 'View Extended'},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}}, down = iCommandViewPlus, name = 'Toggle tracking fire weapon', category = 'View Extended'},
{combos = {{key = 'F', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewFriends, name = 'View friends mode', category = 'View Extended'},
{combos = {{key = 'D', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewEnemies, name = 'View enemies mode', category = 'View Extended'},
{combos = {{key = 'A', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandViewAll, name = 'View all mode', category = 'View Extended'},

-- View Padlock
{combos = {{key = 'Num.'}}, down = iCommandViewLock, name = 'Lock view (cycle padlock)', category = 'View Padlock'},
{combos = {{key = 'NumLock'}}, down = iCommandViewUnlock, name = 'Unlock view (stop padlock)', category = 'View Padlock'},
{combos = {{key = 'Num.', reformers = {'RShift'}}}, down = iCommandAllMissilePadlock, name = 'All missiles padlock', category = 'View Padlock'},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, down = iCommandThreatMissilePadlock, name = 'Threat missile padlock', category = 'View Padlock'},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, down = iCommandViewTerrainLock, name = 'Lock terrain view', category = 'View Padlock'},

-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, down = iCommandMarkerState, name = 'All Labels', category = 'Labels'},
{combos = {{key = 'F2', reformers = {'LShift'}}}, down = iCommandMarkerStatePlane, name = 'Aircraft Labels', category = 'Labels'},
{combos = {{key = 'F6', reformers = {'LShift'}}}, down = iCommandMarkerStateRocket, name = 'Missile Labels', category = 'Labels'},
{combos = {{key = 'F9', reformers = {'LShift'}}}, down = iCommandMarkerStateShip, name = 'Vehicle & Ship Labels', category = 'Labels'},

-- Ins Forward panel and gauges
{combos = {{key = 'G'}}, down = iCommandPlaneGear, name = 'Gear lever', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'G', reformers = {'LAlt'}}}, down = iCommandEmergencyGear, name = 'Emeregency gear', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'G', reformers = {'LCtrl'}}}, down = iCommandEmergencyGearCover, name = 'Emeregency gear cover', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'C', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandMechClock_LeftLever_Down, up = iCommandMechClock_LeftLever_Down_up, name = 'Mech clock. Left lever Down', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'M', reformers = {'RShift'}}}, down = iCommandMechClock_LeftLever_Up, name = 'Mech clock. Left lever Up', category = 'Ins Forward panel and gauges'},
{combos = {{key = '.', reformers = {'LAlt'}}}, pressed = iCommandMechClock_LeftLever_TurnRight, name = 'Mech clock. Left lever turning right', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'LAlt'}}}, pressed = iCommandMechClock_LeftLever_TurnLeft, name = 'Mech clock. Left lever turning left', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'C', reformers = {'RShift','RAlt'}}}, down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down_up, name = 'Mech clock. Right lever Down', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'RCtrl','RShift'}}}, down = iCommandMechClock_RightLever_Rotate_left, name = 'Mech clock. Right lever Rotate left', category = 'Ins Forward panel and gauges'},
{combos = {{key = '.', reformers = {'RCtrl','RShift'}}}, down = iCommandMechClock_RightLever_Rotate_right, name = 'Mech clock. Right lever Rotate right', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'M'}}, down = iCommandPlaneMasterCaution, up = iCommandPlaneMasterCautionOff, name = 'Master caution push-light', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'L', reformers = {'LShift'}}}, down = iCommandLampsControl, up = iCommandLampsControl_up, name = 'Lamps test', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'B'}}, down = iCommandRotorRPMHigh, up = iCommandRotorRPMHigh_up, name = 'Rotor RPM warning push-light', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'L', reformers = {'LCtrl'}}}, down = iCommandBKOMode, name = 'LWS/CMD operation mode', category = 'Ins Forward panel and gauges'},

{combos = {{key = '.', reformers = {'LCtrl','LAlt'}}}, pressed = iCommandHSI_CourseRotaryRight, name = 'HSI Commanded course rotary right', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'LCtrl','LAlt'}}}, pressed = iCommandHSI_CourseRotaryLeft, name = 'HSI Commanded course rotary left', category = 'Ins Forward panel and gauges'},
{combos = {{key = '.', reformers = {'LCtrl','LShift'}}}, pressed = iCommandHSI_HeadingRotaryRight, name = 'HSI Commanded heading rotary right', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'LCtrl','LShift'}}}, pressed = iCommandHSI_HeadingRotaryLeft, name = 'HSI Commanded heading rotary left', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'H', reformers = {'LCtrl','LAlt'}}}, down = iCommandHSI_Test, up = iCommandHSI_Test_up, name = 'HSI Test', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'H', reformers = {'LCtrl'}}}, down = iCommandHSI_SteeringSelection, name = 'HSI Desired track angle - Desired heading, Auto - Manual', category = 'Ins Forward panel and gauges'},

{combos = {{key = '.', reformers = {'LShift','LAlt'}}}, pressed = iCommandADI_ZeroPitchTrimRight, name = 'ADI Zero pitch trim right', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'LShift','LAlt'}}}, pressed = iCommandADI_ZeroPitchTrimLeft, name = 'ADI Zero pitch trim left', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'A', reformers = {'LShift','LAlt'}}}, down = iCommandADI_Test, up = iCommandADI_Test_up, name = 'ADI Test button', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'A', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandADI_TestCover, name = 'ADI Test button cover', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'A', reformers = {'RShift'}}}, down=iCommand_AGR_Oriet, up=iCommand_AGR_Oriet, name = 'SAI Standby Attitude Indicator Cage/control test handle up', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'A', reformers = {'RShift','RCtrl'}}}, pressed=iCommand_AGR_axis_right, name = 'SAI Standby Attitude Indicator Cage/control test handle right', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'A', reformers = {'RShift','RAlt'}}},  pressed=iCommand_AGR_axis_left, name = 'SAI Standby Attitude Indicator Cage/control test handle left', category = 'Ins Forward panel and gauges'},

{combos = {{key = '.', reformers = {'LShift'}}}, pressed = iCommandRALT_DangerousAltitudeRotaryRight, name = 'Radar altimeter dangerous RALT set rotary right', category = 'Ins Forward panel and gauges'},
{combos = {{key = ',', reformers = {'LShift'}}}, pressed = iCommandRALT_DangerousAltitudeRotaryLeft, name = 'Radar altimeter dangerous RALT set rotary left', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'R', reformers = {'LShift','LAlt'}}}, down = iCommandRALT_Test, up = iCommandRALT_Test_up, name = 'Radar altimeter test button', category = 'Ins Forward panel and gauges'},

{combos = {{key = '=', reformers = {'RShift'}}}, pressed = iCommandAltimeterPressureIncrease,   up = iCommandAltimeterPressureStop, name = 'Altimeter QFE knob pressure increase', category = 'Ins Forward panel and gauges'},
{combos = {{key = '-', reformers = {'RShift'}}}, pressed = iCommandAltimeterPressureDecrease, up = iCommandAltimeterPressureStop, name = 'Altimeter QFE knob pressure Decrease', category = 'Ins Forward panel and gauges'},
{combos = {{key = '-', reformers = {'LShift'}}}, down = iCommandAccelReset, up = iCommandAccelReset, name = 'G-meter reset', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'O', reformers = {'LShift','LAlt'}}}, down = iCommandLaserRangeModeSwitchCover, name = 'Laser range finder-designator mode switch cover', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'O', reformers = {'LShift'}}}, down = iCommandLaserRangeModeSwitch, name = 'Laser range finder-designator mode switch', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'O', reformers = {'LCtrl','LAlt'}}}, down = iCommandLaserRangeReset, up=iCommandLaserRangeReset, name = 'Laser designater reset button', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'P', reformers = {'LCtrl'}}}, down =iCommand_ENG_INTERF_TempIndTestwRunningEng ,up=iCommand_ENG_INTERF_TempIndTestwRunningEng, name = 'Exhaust gas temperature running engines indicator test button', category = 'Ins Forward panel and gauges'},
{combos = {{key = 'P', reformers = {'LAlt'}}}, down=iCommand_ENG_INTERF_TempIndTestwStoppedEng , up=iCommand_ENG_INTERF_TempIndTestwStoppedEng, name = 'Exhaust gas temperature stopped engines indicator test button', category = 'Ins Forward panel and gauges'},

{combos = {{key = 'P', reformers = {'LShift','LCtrl','LAlt'}}}, down=iCommand_FuelSysInterf_FuelQuantityIndTestOn , up=iCommand_FuelSysInterf_FuelQuantityIndTestOn, name = 'Fuel quantity indicator self test button', category = 'Ins Forward panel and gauges'},





-- Ins HUD controls
{combos = {{key = 'H', reformers = {'RShift'}}}, down = iCommandPlaneHUDFilterOnOff, name = 'Raise/Lower Colour Filter On HUD', category = 'Ins HUD controls'},
{combos = {{key = '8', reformers = {'RShift'}}}, down = iCommandPlaneModeGrid, name = 'HUD Modes Reticle/Night/Day', category = 'Ins HUD controls'},
{combos = {{key = 'H', reformers = {'RCtrl','RShift'}}}, pressed = iCommandHUDBrightnessUp, name = 'HUD Brightness up', category = 'Ins HUD controls'},
{combos = {{key = 'H', reformers = {'RShift','RAlt'}}}, pressed = iCommandHUDBrightnessDown, name = 'HUD Brightness down', category = 'Ins HUD controls'},
{combos = {{key = 'H', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandHUDTest,up = iCommandHUDTest_up, name = 'HUD Test', category = 'Ins HUD controls'},

-- Ins Countermeasures dispensers (Ка-50 - щиток УВ-26)
{combos = {{key = 'Insert'}}, down = iCommandPlaneCMDDispence,  up = iCommandPlaneCMDDispenceOff, name = 'UV-26 Start dispensing', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = 'Delete'}}, down = iCommandPlaneCMDDispenceStop,  up = iCommandPlaneCMDDispenceStopOff, name = 'UV-26 Stop dispensing', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = 'Insert', reformers = {'RShift'}}}, down = iCommandPlaneCMDChangeRippleQuantity,  up = iCommandPlaneCMDChangeRippleQuantityOff, name = 'UV-26 Number of flare sequences', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = 'Insert', reformers = {'RAlt'}}}, down = iCommandPlaneCMDChangeRippleInterval,    up = iCommandPlaneCMDChangeRippleIntervalOff, name = 'UV-26 Delay between sequences', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = 'Insert', reformers = {'RCtrl'}}}, down = iCommandPlaneCMDChangeBurstAmount,  up = iCommandPlaneCMDChangeBurstAmountOff, name = 'UV-26 Number of flares in sequence', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}}, down = iCommandPlaneCMDCancelCurrentProgram, up = iCommandPlaneCMDCancelCurrentProgramOff, name = 'UV-26 Reset current program', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = ']', reformers = {'RAlt'}}}, down = iCommandPlaneCMDChangeBoard, name = 'UV-26 Change dispensing board Left-Both-Right', category = 'Ins Countermeasures dispensers UV-26'},
{combos = {{key = ']', reformers = {'RCtrl'}}}, down = iCommandPlaneCMDShowAmountOrProgram, name = 'UV-26 Amount flares counter / Programming', category = 'Ins Countermeasures dispensers UV-26'},

-- Ins Cyclick Stick
{combos = {{key = 'O'}}, pressed = iCommandPlaneDesignate_CageOn, up = iCommandPlaneDesignate_CageOff, name = 'Uncage SHKVAL, designate target', category = 'Ins Cyclic Stick'},
{combos = {{key = ';'}}, pressed = iCommandPlaneRadarUp, up = iCommandPlaneRadarStop, name = 'KU-31 Shkval slew up', category = 'Ins Cyclic Stick'},
{combos = {{key = '.'}}, pressed = iCommandPlaneRadarDown, up = iCommandPlaneRadarStop, name = 'KU-31 Shkval slew down', category = 'Ins Cyclic Stick'},
{combos = {{key = ','}}, pressed = iCommandPlaneRadarLeft, up = iCommandPlaneRadarStop, name = 'KU-31 Shkval slew left', category = 'Ins Cyclic Stick'},
{combos = {{key = '/'}}, pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop, name = 'KU-31 Shkval slew right', category = 'Ins Cyclic Stick'},
{combos = {{key = 'I', reformers = {'RCtrl'}}}, down = iCommandPlaneRadarCenter, name = 'KU-31 Shkval center', category = 'Ins Cyclic Stick'},
{combos = {{key = 'Space'}}, down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = 'Gun fire', category = 'Ins Cyclic Stick'},
{combos = {{key = 'Space',   reformers = {'RAlt'}}}, down = iCommandPlanePickleOn,    up = iCommandPlanePickleOff, name = 'Release weapons', category = 'Ins Cyclic Stick'},
{combos = {{key = 'C'}},     down = iCommandPlaneModeCannon, name = 'Gun Select', category = 'Ins Cyclic Stick'},

{combos = {{key = 'Up'}},    pressed = iCommandPlaneUpStart    , up = iCommandPlaneUpStop  ,   name = 'Cyclic nose down', category = 'Ins Cyclic Stick'},
{combos = {{key = 'Down'}},  pressed = iCommandPlaneDownStart  , up = iCommandPlaneDownStop,   name = 'Cyclic nose up', category = 'Ins Cyclic Stick'},
{combos = {{key = 'Left'}},  pressed = iCommandPlaneLeftStart  , up = iCommandPlaneLeftStop,   name = 'Cyclic bank left', category = 'Ins Cyclic Stick'},
{combos = {{key = 'Right'}}, pressed = iCommandPlaneRightStart , up = iCommandPlaneRightStop,  name = 'Cyclic bank right', category = 'Ins Cyclic Stick'},

{combos = {{key = 'T'}},     down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff, name = 'Trimmer', category = 'Ins Cyclic Stick'},
{combos = {{key = 'T', reformers = {'LCtrl'}}}, down = iCommandPlaneTrimCancel, name = 'Trimmer reset', category = 'Ins Cyclic Stick'},
{combos = {{key = 'T', reformers = {'LAlt'}}}, down = iCommandHelicopterHover,up = iCommandHelicopterHover_up,  name = 'Hover On/Off', category = 'Ins Cyclic Stick'},

{combos = {{key = 'A', reformers = {'LAlt'}}}, down = iCommandAutopilotEmergOFF,up = iCommandAutopilotEmergOFF_up, name = 'Autopilot Emergency Off', category = 'Ins Cyclic Stick'},
{combos = {{key = 'W'}}, down = iCommandPlaneWheelBrakeOn, pressed = iCommandPlaneWheelBrakeOn,up = iCommandPlaneWheelBrakeOff, name = 'Wheel brake (press and hold)', category = 'Ins Cyclic Stick'},
{combos = {{key = 'W', reformers = {'LShift'}}}, down = iCommandPlaneWheelParkingBrake, name = 'Wheel brake parking', category = 'Ins Cyclic Stick'},
{combos = {{key = 'K', reformers = {'LShift'}}}, down = iCommandHelicopter_PanelsIlluminationButtonDown, up = iCommandHelicopter_PanelsIlluminationButtonUp, name = 'Cockpit gauges illumination (stick)', category = 'Ins Cyclic Stick'},

-- Ins Collective Stick
{combos = {{key = 'Enter'}}, down = iCommandPlane_LockOn_start, up = iCommandPlane_LockOn_finish, name = 'Lock target', category = 'Ins Collective Stick'},
{combos = {{key = '='}}, down = iCommandPlaneZoomIn, name = 'Shkval Narrow View 23x', category = 'Ins Collective Stick'},
{combos = {{key = '-'}}, down = iCommandPlaneZoomOut, name = 'Shkval Wide View 7x', category = 'Ins Collective Stick'},
{combos = {{key = ']'}}, down = iCommandPlaneIncreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = 'TV Target frame Increase size', category = 'Ins Collective Stick'},
{combos = {{key = '['}}, down = iCommandPlaneDecreaseBase_Distance, up = iCommandPlaneStopBase_Distance, name = 'TV Target frame Decrease size', category = 'Ins Collective Stick'},

{combos = {{key = 'R'}}, down = iCommandPlane_RouteMode, name = 'Engage/Disengage Route Mode', category = 'Ins Collective Stick'},
{combos = {{key = 'D'}}, down = iCommandPlane_DescentMode, up = iCommandPlane_DescentModeOff, name = 'Engage Descent Mode', category = 'Ins Collective Stick'},
{combos = {{key = ',', reformers = {'RCtrl'}}},down = iCommandPlane_SpotLight_left,  up = iCommandPlane_SpotLight_hor_stop, name = 'Spot light left', category = 'Ins Collective Stick'},
{combos = {{key = '/', reformers = {'RCtrl'}}},down = iCommandPlane_SpotLight_right, up = iCommandPlane_SpotLight_hor_stop, name = 'Spot light right', category = 'Ins Collective Stick'},
{combos = {{key = ';', reformers = {'RCtrl'}}},down = iCommandPlane_SpotLight_up,    up = iCommandPlane_SpotLight_vert_stop, name = 'Spot light up', category = 'Ins Collective Stick'},
{combos = {{key = '.', reformers = {'RCtrl'}}},down = iCommandPlane_SpotLight_down,  up = iCommandPlane_SpotLight_vert_stop, name = 'Spot light down', category = 'Ins Collective Stick'},
{combos = {{key = 'Num+'}}, down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = 'Collective up', category = 'Ins Collective Stick'},
{combos = {{key = 'Num-'}}, down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = 'Collective down', category = 'Ins Collective Stick'},

{combos = {{key = 'I'}}, down = iCommandHelicopter_SelectWeapon_Internal,up = iCommandHelicopter_SelectWeapon_hor_up, name = 'Weapon selection inward stations', category = 'Ins Collective Stick'},
{combos = {{key = 'Y'}}, down = iCommandHelicopter_SelectWeapon_External,up = iCommandHelicopter_SelectWeapon_hor_up, name = 'Weapon selection outward stations', category = 'Ins Collective Stick'},
{combos = {{key = 'U'}}, down = iCommandHelicopter_SelectWeapon_ALL,up = iCommandHelicopter_SelectWeapon_vert_up, name = 'Weapon selection all stations', category = 'Ins Collective Stick'},
{combos = {{key = 'U', reformers = {'LCtrl'}}},down = iCommandHelicopter_SelectWeapon_AA,up = iCommandHelicopter_SelectWeapon_vert_up	     , name = 'Weapon selection A-A mode', category = 'Ins Collective Stick'},

{combos = {{key = 'Num+', reformers = {'RAlt'}}}, down = iCommandPlane_ReadjustFreeTurbineRPM_Up, name = 'Readjust Free Turbine RPM to Nominal', category = 'Ins Collective Stick'},
{combos = {{key = 'Num-', reformers = {'RAlt'}}}, down = iCommandPlane_ReadjustFreeTurbineRPM_Down, name = 'Readjust Free Turbine RPM to Low', category = 'Ins Collective Stick'},
{combos = {{key = 'F'}}, down = iCommandHelicopter_CollectiveStopper_Up, up = iCommandHelicopter_CollectiveStopper_Down, name = 'Collective brake - Assign altitude lever', category = 'Ins Collective Stick'},

--Ins Rudder
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = 'Rudder left', category = 'Ins Rudder'},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = 'Rudder right', category = 'Ins Rudder'},

--Ins Engines Start-Up Control Panel and levers
{combos = {{key = 'Home'}}, down = iCommandHelicopter_Selected_Engine_start, up = iCommandHelicopter_Selected_Engine_start_up, name = 'Start-up engine', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'Home', reformers = {'RAlt'}}}, down = iCommandHelicopter_Selected_Engine_interrupt_start, up = iCommandHelicopter_Selected_Engine_interrupt_start_up, name = 'Interrupt start-up sequence', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'End'}}, down = iCommandHelicopter_APU_stop, up = iCommandHelicopter_APU_stop_up, name = 'Stop APU button', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'E'}}, down = iCommandHelicopter_Engine_Select, name = 'Engine selector', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'E', reformers = {'LAlt'}}}, down = iCommandEngineLaunchMethod, name = 'Engine Startup/Crank/False Start selector', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageUp'}}, down = iCommandPlaneAUTIncreaseRegime, name = 'Throttle up (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageDown'}}, down = iCommandPlaneAUTDecreaseRegime, name = 'Throttle down (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageUp', reformers = {'RAlt'}}}, down = iCommandPlaneAUTIncreaseRegimeLeft, name = 'Left Throttle up (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageDown', reformers = {'RAlt'}}}, down = iCommandPlaneAUTDecreaseRegimeLeft, name = 'Left Throttle down (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageUp', reformers = {'RShift'}}}, down = iCommandPlaneAUTIncreaseRegimeRight, name = 'Right Throttle up (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageDown', reformers = {'RShift'}}}, down = iCommandPlaneAUTDecreaseRegimeRight, name = 'Right Throttle down (Idle-Medium-Auto-Full)', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageUp', reformers = {'RCtrl'}}}, down = iCommandHelicopter_Left_Engine_Lock, name = 'Cut-off valve left engine', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'PageDown', reformers = {'RCtrl'}}}, down = iCommandHelicopter_Right_Engine_Lock, name = 'Cut-off valve right engine', category = 'Ins Engines start-up control panel and levers'},
{combos = {{key = 'R', reformers = {'LShift'}}}, down = iCommandHelicopter_Rotor_Lock, name = 'Rotor brake', category = 'Ins Engines start-up control panel and levers'},

-- Ins Targeting Mode Controls Panel PVR (Ка-50 - ПВР)
{combos = {{key = 'Back'}}, down = iCommandPlaneCancelWeaponsDelivery, up = iCommandPlaneCancelWeaponsDelivery_up, name = 'Button Targeting mode reset', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'H'}}, down = iCommandPlaneModeHelmet, name = 'Helmet-mounted system On/Off', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'O', reformers = {'RShift'}}}, down = iCommandPlaneLaserRangerOnOff, name = 'Laser standby On/Off switch', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'P'}}, down = iCommandPlane_AutomaticTracking_Gunsight_switch , name = 'Automatic tracking/gun sight', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'D', reformers = {'LShift'}}}, down = iCommandPlane_K041_Power						, name = 'K-041 Targeting system power switch', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'Q'}}, down = iCommandPlane_AutomaticTurn, up = iCommandPlane_AutomaticTurn_up, name = 'Button Automatic turn on target mode', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'N'}}, down = iCommandPlane_GroundMovingTarget, up =	iCommandPlane_GroundMovingTarget_up, name = 'Button Ground moving target', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'V'}}, down = iCommandPlane_AirborneTarget, up = iCommandPlane_AirborneTarget_up, name = 'Button Airborne target', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'S', reformers = {'LAlt'}}}  , down = iCommandPlane_HeadOnAspect, up = iCommandPlane_HeadOnAspect_up, name = 'Button Head-on airborne target aspect', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'F', reformers = {'LAlt'}}}  , down = iCommandPlane_ChangeDeliveryMode_right, name = 'Weapon system mode selector (to right)', category = 'Ins Targeting Mode Controls Panel PVR'},
{combos = {{key = 'F', reformers = {'LCtrl'}}} , down = iCommandPlane_ChangeDeliveryMode_left, name = 'Weapon system mode selector (to left)', category = 'Ins Targeting Mode Controls Panel PVR'},

--Ins Weapons Status and Control Panel PUI-800 (Ка-50 - ПУИ-800)
{combos = {{key = 'W', reformers = {'LAlt'}}} , down = iCommandSwitchMasterArm, name = 'Master arm on/off', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'R', reformers = {'LAlt'}}} , down = iCommandPlaneJettisonFuelTanks,up = iCommandPlaneJettisonFuelTanksUp, name = 'External stores jettison', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'W', reformers = {'RCtrl'}}}, down = iCommandPlaneJettisonWeapons,up = iCommandPlaneJettisonWeaponsUp, name   = 'Expedite emergency ATGM launch', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'A'}}						   , down = iCommandPlane_WeaponMode_Manual_Auto, name = 'Weapon system control switch Manual/Auto ', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'S'}}						   , down = iCommandPlane_WeaponMode_switch		, name = 'Weapon mode switch', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'C', reformers = {'LCtrl'}}} , down = iCommandPlane_AmmoTypeSelect		, name = 'Cannon round selector switch', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'C', reformers = {'LShift'}}}, down = iCommandPlane_FireRate				, name = 'Cannon rate of fire setting', category = 'Ins Weapons Status and Control Panel PUI-800'},
{combos = {{key = 'W', reformers = {'LShift','LAlt'}}}, down = 	iCommandPlane_JettisonMode_explosion, name = 'Jettison arm mode - explosive/unexplosive', category = 'Ins Weapons Status and Control Panel PUI-800'},

-- Ins Datalink panel PRTs (Пульт Режимов Целеуказания ПРЦ)
{combos = {{key = '1', reformers = {'LShift'}}}, down = iCommandPlaneDLK_Target1, up = iCommandPlaneDLK_Target1_up, name = 'PRTs Target 1 / Vehicle', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '2', reformers = {'LShift'}}}, down = iCommandPlaneDLK_Target2, up = iCommandPlaneDLK_Target2_up, name = 'PRTs Target 2 / SAM', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '3', reformers = {'LShift'}}}, down = iCommandPlaneDLK_Target3, up = iCommandPlaneDLK_Target3_up, name = 'PRTs Target 3 / Other', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '4', reformers = {'LShift'}}}, down = iCommandPlaneDLK_RefPoint, up = iCommandPlaneDLK_RefPoint_up, name = 'PRTs Reference point', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '1', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_Wingman1, up = iCommandPlaneDLK_Wingman1_up, name = 'PRTs To Wingman 1', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '2', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_Wingman2, up = iCommandPlaneDLK_Wingman2_up, name = 'PRTs To Wingman 2', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '3', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_Wingman3, up = iCommandPlaneDLK_Wingman3_up, name = 'PRTs To Wingman 3', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '4', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_Wingman4, up = iCommandPlaneDLK_Wingman4_up, name = 'PRTs To Wingman 4', category = 'Ins Datalink panel PRTs'},
{combos = {{key = '5', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_All, up = iCommandPlaneDLK_All_up, name = 'PRTs To All', category = 'Ins Datalink panel PRTs'},
{combos = {{key = 'T', reformers = {'LShift'}}}, down = iCommandPlaneDLK_Erase, up = iCommandPlaneDLK_Erase_up, name = 'PRTs Erase Entering Data', category = 'Ins Datalink panel PRTs'},
{combos = {{key = 'Y', reformers = {'LShift'}}}, down = iCommandPlaneDLK_Ingress, up = iCommandPlaneDLK_Ingress_up, name = 'PRTs Ingress to Target', category = 'Ins Datalink panel PRTs'},
{combos = {{key = 'U', reformers = {'LShift'}}}, down = iCommandPlaneDLK_SendMemory, up = iCommandPlaneDLK_SendMemory_up, name = 'PRTs Send / Memory', category = 'Ins Datalink panel PRTs'},
{combos = {{key = 'I', reformers = {'LShift'}}}, down = iCommandPlaneDLK_None, up = iCommandPlaneDLK_None_up, name = 'PRTs void button', category = 'Ins Datalink panel PRTs'},


-- Ins  NAV panel controls PVI (Ка-50 - щиток ПВИ)
{combos = {{key = 'B', reformers = {'RAlt'}}}, down = iCommandPlaneNavChangePanelModeRight, name = 'PVI Change Master Mode (to right)', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'V', reformers = {'RAlt'}}}, down = iCommandPlaneNavChangePanelModeLeft, name = 'PVI Change Master Mode (to left)', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'V', reformers = {'RCtrl'}}}, down = iCommandPlaneNavSetFixtakingMode, name = 'PVI Set Fixtaking Method', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'B', reformers = {'RCtrl'}}}, down = iCommandPlaneNav_DLK_OnOff, name = 'PVI Datalink Power', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '1', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB1, up = iCommandPlaneNav_PB1_off, name = 'PVI Pushbutton 1', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '2', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB2, up = iCommandPlaneNav_PB2_off, name = 'PVI Pushbutton 2', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '3', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB3, up = iCommandPlaneNav_PB3_off, name = 'PVI Pushbutton 3', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '4', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB4, up = iCommandPlaneNav_PB4_off, name = 'PVI Pushbutton 4', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '5', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB5, up = iCommandPlaneNav_PB5_off, name = 'PVI Pushbutton 5', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '6', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB6, up = iCommandPlaneNav_PB6_off, name = 'PVI Pushbutton 6', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '7', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB7, up = iCommandPlaneNav_PB7_off, name = 'PVI Pushbutton 7', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '8', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB8, up = iCommandPlaneNav_PB8_off, name = 'PVI Pushbutton 8', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '9', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB9, up = iCommandPlaneNav_PB9_off, name = 'PVI Pushbutton 9', category = 'Ins NAV panel controls PVI'},
{combos = {{key = '0', reformers = {'RAlt'}}}, down = iCommandPlaneNav_PB0, up = iCommandPlaneNav_PB0_off, name = 'PVI Pushbutton 0', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'Q', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Steerpoints,       up=iCommandPlaneNav_Steerpoints_off,  name = 'PVI Waypoint Mode', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'W', reformers = {'RAlt'}}}, down = iCommandPlaneNav_INU_realign,       up=iCommandPlaneNav_INU_realign_off, name = 'PVI In-flight INU Realignment', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'E', reformers = {'RAlt'}}}, down = iCommandPlaneNav_POS_corrMode,      up=iCommandPlaneNav_POS_corrMode_off, name = 'PVI Navpos Correction Mode', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'R', reformers = {'RAlt'}}}, down = iCommandPlaneNav_INU_precise_align, up=iCommandPlaneNav_INU_precise_align_off, name = 'PVI Precise INU Alignment', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'T', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Airfields,         up=iCommandPlaneNav_Airfields_off, name = 'PVI Airfields Mode', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'Y', reformers = {'RAlt'}}}, down = iCommandPlaneNav_INU_normal_align,  up=iCommandPlaneNav_INU_normal_align_off, name = 'PVI Normal INU Alignment', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'U', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Targets,           up=iCommandPlaneNav_Targets_off, name = 'PVI Targets Mode', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'I', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Enter,             up=iCommandPlaneNav_Enter_off, name = 'PVI Enter', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'O', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Cancel,            up=iCommandPlaneNav_Cancel_off, name = 'PVI Cancel', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'P', reformers = {'RAlt'}}}, down = iCommandPlaneNav_POS_init,          up=iCommandPlaneNav_POS_init_off,  name = 'PVI Initial NAV Position', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'A', reformers = {'RAlt'}}}, down = iCommandPlaneNav_SelfCoord,         up=iCommandPlaneNav_SelfCoord_off,  name = 'PVI Self Coordinates', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'S', reformers = {'RAlt'}}}, down = iCommandPlaneNav_CourseTimeRange,   up=iCommandPlaneNav_CourseTimeRange_off, name = 'PVI Course / Time / Range', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'D', reformers = {'RAlt'}}}, down = iCommandPlaneNav_Wind,              up=iCommandPlaneNav_Wind_off, name = 'PVI Wind Heading / Speed', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'F', reformers = {'RAlt'}}}, down = iCommandPlaneNav_THeadingTimeRangeF,up=iCommandPlaneNav_THeadingTimeRangeF_off, name = 'PVI True Heading / Time / Range to Final STP', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'G', reformers = {'RAlt'}}}, down = iCommandPlaneNav_BearingRangeT,     up=iCommandPlaneNav_BearingRangeT_off, name = 'PVI Bearing / Range to Target', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'P', reformers = {'RShift','RCtrl'}}}, down =iCommand_PVI_BRIGHTNESS_LEVER_up , name = 'PVI Lighting up', category = 'Ins NAV panel controls PVI'},
{combos = {{key = 'P', reformers = {'RShift','RAlt'}}}, down =iCommand_PVI_BRIGHTNESS_LEVER_down , name = 'PVI Lighting down', category = 'Ins NAV panel controls PVI'},

--Ins datalink panel PVTs (Блок ПВЦ-800 из комплекта К-041)
{combos = {{key = 'I', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_Self_ID_change, name = 'Self ID', category = 'Ins Datalink panel PVTs '},
{combos = {{key = 'M', reformers = {'LCtrl'}}}, down = iCommandPlaneDLK_mode_change, name = 'Datalink mode', category = 'Ins Datalink panel PVTs '},

-- Ins ABRIS AMMS
{combos = {{key = '0', reformers = {'RShift'}}}, down = iCommandPlane_ABRIS_Power, name = 'ABRIS Power', category = 'Ins ABRIS AMMS'},
{combos = {{key = '1'}}, down = iCommandPlane_ABRIS_BT_1, up = iCommandPlane_ABRIS_BT_1_up, name = 'ABRIS Button 1', category = 'Ins ABRIS AMMS'},
{combos = {{key = '2'}}, down = iCommandPlane_ABRIS_BT_2, up = iCommandPlane_ABRIS_BT_2_up, name = 'ABRIS Button 2', category = 'Ins ABRIS AMMS'},
{combos = {{key = '3'}}, down = iCommandPlane_ABRIS_BT_3, up = iCommandPlane_ABRIS_BT_3_up, name = 'ABRIS Button 3', category = 'Ins ABRIS AMMS'},
{combos = {{key = '4'}}, down = iCommandPlane_ABRIS_BT_4, up = iCommandPlane_ABRIS_BT_4_up, name = 'ABRIS Button 4', category = 'Ins ABRIS AMMS'},
{combos = {{key = '5'}}, down = iCommandPlane_ABRIS_BT_5, up = iCommandPlane_ABRIS_BT_5_up, name = 'ABRIS Button 5', category = 'Ins ABRIS AMMS'},
{combos = {{key = '6'}}, down = iCommandPlane_ABRIS_Axis_Push, up = iCommandPlane_ABRIS_Axis_Push_up, name = 'ABRIS Axis Push', category = 'Ins ABRIS AMMS'},
{combos = {{key = '7'}}, pressed = iCommandPlane_ABRIS_Axis_Decrease, name = 'ABRIS Axis Decrease', category = 'Ins ABRIS AMMS'},
{combos = {{key = '8'}}, pressed = iCommandPlane_ABRIS_Axis_Increase, name = 'ABRIS Axis Increase', category = 'Ins ABRIS AMMS'},
{combos = {{key = '9'}}, pressed = iCommandPlane_ABRIS_Brightness_Decrease, name = 'ABRIS Brightness Decrease', category = 'Ins ABRIS AMMS'},
{combos = {{key = '0'}}, pressed = iCommandPlane_ABRIS_Brightness_Increase, name = 'ABRIS Brightness Increase', category = 'Ins ABRIS AMMS'},

-- Ins Wall panel (Боковая панель)
{combos = {{key = 'Q', reformers = {'LCtrl','LShift'}}}, down = iCommandGroundPowerDC, name = 'Electrical power ground power DC', category = 'Ins Wall panel'},
{combos = {{key = 'Q', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandGroundPowerDC_Cover, name = 'Electrical power ground power DC cover', category = 'Ins Wall panel'},
{combos = {{key = 'W', reformers = {'LCtrl','LShift'}}}, down = iCommandPowerBattery2, name = 'Electrical power battery 2', category = 'Ins Wall panel'},
{combos = {{key = 'W', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandPowerBattery2_Cover, name = 'Electrical power battery 2 cover', category = 'Ins Wall panel'},
{combos = {{key = 'E', reformers = {'LCtrl','LShift'}}}, down = iCommandPowerBattery1, name = 'Electrical power battery 1', category = 'Ins Wall panel'},
{combos = {{key = 'E', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandPowerBattery1_Cover, name = 'Electrical power battery 1 cover', category = 'Ins Wall panel'},
{combos = {{key = 'R', reformers = {'LCtrl','LShift'}}}, down = iCommandGroundPowerAC, name = 'Electrical power ground power AC', category = 'Ins Wall panel'},
{combos = {{key = 'Y', reformers = {'LCtrl','LShift'}}}, down = iCommandPowerGeneratorLeft, name = 'Electrical power generator left', category = 'Ins Wall panel'},
{combos = {{key = 'U', reformers = {'LCtrl','LShift'}}}, down = iCommandPowerGeneratorRight, name = 'Electrical power generator right', category = 'Ins Wall panel'},
{combos = {{key = 'I', reformers = {'LCtrl','LShift'}}}, down = iCommandElectricalPowerInverter, name = 'Electrical power inverter AUTO/OFF/MAN', category = 'Ins Wall panel'},

{combos = {{key = 'Z', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_SPU9_SPU_9_on_off, name = 'Radio equipment AVSK (SPU-9) intercom', category = 'Ins Wall panel'},
{combos = {{key = 'P', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_Power_on_off, name = 'Radio equipment VHF-2 (R-800)', category = 'Ins Wall panel'},
{combos = {{key = 'P', reformers = {'RCtrl','RAlt'}}}, down = iCommandPlane_R_828_Power_on_off, name = 'Radio equipment VHF-1 (R-828)', category = 'Ins Wall panel'},
{combos = {{key = 'O', reformers = {'LCtrl','LShift'}}}, down = iCommandDatalinkTLK, name = 'Radio equipment datalink TLK', category = 'Ins Wall panel'},
{combos = {{key = 'P', reformers = {'LCtrl','LShift'}}}, down = iCommandDatalinkUHF_TLK, name = 'Radio equipment datalink UHF TLK', category = 'Ins Wall panel'},

{combos = {{key = 'A', reformers = {'LCtrl','LShift'}}}, down = iCommandFuelPumpsTankForward, name = 'Fuel pumps tank forward', category = 'Ins Wall panel'},
{combos = {{key = 'D', reformers = {'LCtrl','LShift'}}}, down = iCommandFuelPumpsTankRear, name = 'Fuel pumps tank rear', category = 'Ins Wall panel'},
{combos = {{key = 'F', reformers = {'LCtrl','LShift'}}}, down = iCommandFuelExternalPumpsTanksInner, name = 'Fuel pumps external tanks inner', category = 'Ins Wall panel'},
{combos = {{key = 'G', reformers = {'LCtrl','LShift'}}}, down = iCommandFuelExternalPumpsTanksOuter, name = 'Fuel pumps external tanks outer', category = 'Ins Wall panel'},
{combos = {{key = 'H', reformers = {'LCtrl','LShift'}}}, down = iCommandFuelmeterPower, name = 'Fuel meter power', category = 'Ins Wall panel'},
{combos = {{key = 'J', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandLeftEngineFuelValveShutOffCover, name = 'Shutoff valve left engine fuel cover', category = 'Ins Wall panel'},
{combos = {{key = 'J', reformers = {'RCtrl','RShift'}}}, down = iCommandLeftEngineFuelValveShutOff, name = 'Shutoff valve left engine fuel', category = 'Ins Wall panel'},
{combos = {{key = 'K', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandRightEngineFuelValveShutOffCover, name = 'Shutoff valve right engine fuel cover', category = 'Ins Wall panel'},
{combos = {{key = 'K', reformers = {'RCtrl','RShift'}}}, down = iCommandRightEngineFuelValveShutOff, name = 'Shutoff valve right engine fuel ', category = 'Ins Wall panel'},
{combos = {{key = 'L', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandAPUFuelValveShutOffCover, name = 'Shutoff valve APU fuel cover', category = 'Ins Wall panel'},
{combos = {{key = 'L', reformers = {'RCtrl','RShift'}}}, down = iCommandAPUFuelValveShutOff, name = 'Shutoff valve APU fuel', category = 'Ins Wall panel'},
{combos = {{key = ';', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandFuelBypassValveCover, name = 'Fuel bypass valve cover', category = 'Ins Wall panel'},
{combos = {{key = ';', reformers = {'RCtrl','RShift'}}}, down = iCommandFuelBypassValve, name = 'Fuel bypass valve', category = 'Ins Wall panel'},

{combos = {{key = 'E', reformers = {'RCtrl','RShift','RAlt'}}}, down = iCommandEjectingSystemPower1Cover, name = 'Ejecting system power cover', category = 'Ins Wall panel'},
{combos = {{key = 'E', reformers = {'RShift','RAlt'}}}, down = iCommandEjectingSystemPower1, name = 'Ejecting system power 1', category = 'Ins Wall panel'},
{combos = {{key = 'R', reformers = {'RShift','RAlt'}}}, down = iCommandEjectingSystemPower2, name = 'Ejecting system power 2', category = 'Ins Wall panel'},
{combos = {{key = 'T', reformers = {'RShift','RAlt'}}}, down = iCommandEjectingSystemPower3, name = 'Ejecting system power 3', category = 'Ins Wall panel'},

{combos = {{key = 'D', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandWeaponsControlSystemCover, name = 'Weapons control system cover', category = 'Ins Wall panel'},
{combos = {{key = 'D', reformers = {'LShift','LAlt'}}}, down = iCommandWeaponsControlSystem, name = 'Weapons control system', category = 'Ins Wall panel'},

{combos = {{key = 'H', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandMainHydraulicsCover, name = 'Main hydraulics cover', category = 'Ins Wall panel'},
{combos = {{key = 'H', reformers = {'LShift','LAlt'}}}, down = iCommandMainHydraulics, name = 'Main hydraulics', category = 'Ins Wall panel'},
{combos = {{key = 'I', reformers = {'LCtrl','LShift','LAlt'}}}, down = iCommandIFF_PowerCover, name = 'IFF power cover', category = 'Ins Wall panel'},
{combos = {{key = 'I', reformers = {'LShift','LAlt'}}}, down = iCommandIFF_Power, name = 'IFF power', category = 'Ins Wall panel'},
{combos = {{key = 'N', reformers = {'LShift'}}}, down = iCommandTargetingNavigationSystemsPower, name = 'Targeting-Navigation system power', category = 'Ins Wall panel'},
{combos = {{key = 'L', reformers = {'LShift', 'RCtrl'}}}, down = iCommand_WEAP_INTERF_MasterSimulate, name = 'Training mode switch', category = 'Ins Targeting Mode Controls Panel PVR'},

{combos = {{key = 'M', reformers = {'LCtrl', 'LShift'}}}, down =iCommand_SHKVAL_scan_vel_up , name = 'Shkval auto scan rate dial up', category = 'Ins Wall panel'},
{combos = {{key = 'M', reformers = {'LCtrl', 'LAlt'}}}, down =iCommand_SHKVAL_scan_vel_down , name = 'Shkval auto scan rate dial down', category = 'Ins Wall panel'},
{combos = {{key = 'M', reformers = {'LShift', 'RCtrl'}}}, down =iCommand_SHKVAL_windscreen_wiper , name = 'Shkval windshield wiper', category = 'Ins Wall panel'},

{combos = {{key = 'F', reformers = {'LShift'}}}, down =iCommand_FireExting_LeftEngineExting, up=iCommand_FireExting_LeftEngineExting  , name = 'Fire extinguisher left engine ', category = 'Ins Wall panel'},
{combos = {{key = 'F', reformers = {'RShift'}}}, down =iCommand_FireExting_RightEngineExting, up=iCommand_FireExting_RightEngineExting , name = 'Fire extinguisher right engine', category = 'Ins Wall panel'},
{combos = {{key = 'F', reformers = {'LShift','LAlt'}}}, down =iCommand_FireExting_APUExting, up=iCommand_FireExting_APUExting , name = 'Fire extinguisher APU', category = 'Ins Wall panel'},
{combos = {{key = 'F', reformers = {'LShift','LCtrl','LAlt'}}}, down =iCommand_FireExting_VentilatorExting, up=iCommand_FireExting_VentilatorExting , name = 'Fire extinguisher oil cooling fan', category = 'Ins Wall panel'},
{combos = {{key = 'Z', reformers = {'LShift', 'LCtrl','LAlt'}}}, down =iCommand_FireExting_ExtinguishersCover , name = 'Fire extinguishers WORK - OFF - TEST cover', category = 'Ins Wall panel'},
{combos = {{key = 'Z', reformers = {'LShift', 'LCtrl'}}}, down =iCommand_FireExting_ExtinguishersToDown , name = 'Fire extinguishers WORK - OFF - TEST', category = 'Ins Wall panel'},
{combos = {{key = 'Z', reformers = {'RShift','RAlt'}}}, down =iCommand_FireExting_Signals , name = 'Fire signaling', category = 'Ins Wall panel'},
{combos = {{key = 'Z', reformers = {'RShift','RCtrl','RAlt'}}}, down =iCommand_FireExting_ReservoirsCover , name = 'Fire extinguisher First (Auto) / Second (Manual) selector cover', category = 'Ins Wall panel'},
{combos = {{key = 'Z', reformers = {'RShift','RCtrl'}}}, down =iCommand_FireExting_Reservoirs , name = 'Fire extinguisher First (Auto) / Second (Manual) selector', category = 'Ins Wall panel'},
{combos = {{key = 'Num1', reformers = {'LShift'}}}, up = iCommand_FireDetectorsTest1stGroup, down = iCommand_FireDetectorsTest1stGroup, name = 'Fire warning 1st sensors group BIT selector', category = 'Ins Wall panel'},
{combos = {{key = 'Num2', reformers = {'LShift'}}}, up = iCommand_FireDetectorsTest2ndGroup, down = iCommand_FireDetectorsTest2ndGroup, name = 'Fire warning 2nd sensors group BIT selector', category = 'Ins Wall panel'},
{combos = {{key = 'Num3', reformers = {'LShift'}}}, up = iCommand_FireDetectorsTest3rdGroup, down = iCommand_FireDetectorsTest3rdGroup, name = 'Fire warning 3rd sensors group BIT selector', category = 'Ins Wall panel'},

{combos = {{key = 'Home', reformers = {'RCtrl',  'RAlt'}}}, down = iCommandElectronicControlSystemLeftEngineCover, name = 'EEG Electronic Engine Governor left engine cover', category = 'Ins Wall panel'},
{combos = {{key = 'Home', reformers = {'RCtrl'         }}}, down = iCommandElectronicControlSystemLeftEngine, name = 'EEG Electronic Engine Governor left engine', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'RCtrl',  'RAlt'}}}, down = iCommandElectronicControlSystemRightEngineCover, name = 'EEG Electronic Engine Governor right engine cover', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'RCtrl'         }}}, down = iCommandElectronicControlSystemRightEngine, name = 'EEG Electronic Engine Governor right engine', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'LShift','LCtrl'}}}, down = iCommandHelicopter_Engine_Temperature_Control_Cover, name = 'EEG power turbine channel 1 test / channel 2 test three-switch contactor cover', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'LCtrl','LAlt'  }}}, down = iCommandHelicopter_Engine_Temperature_Control, name = 'EEG power turbine channel 1 test / channel 2 test three-switch contactor', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'RShift','RCtrl'}}}, down = iCommandHelicopter_TC_RPM_Cover, name = 'EEG gas generator test - Operate switch cover', category = 'Ins Wall panel'},
{combos = {{key = 'End',  reformers = {'RShift','RAlt'}}}, down = iCommandHelicopter_TC_RPM, name = 'EEG gas generator test - Operate switch', category = 'Ins Wall panel'},


{combos = {{key = 'G',  reformers = {'LShift','LAlt'}}}, down = iCommandHeadingMethodSwitch, name = 'Gyro/Mag/Manual heading', category = 'Ins Wall panel'},

{combos = {{key = 'N', reformers = {'RShift'}}}, down = iCommand_AGR_Power, name = 'SAI Standby Attitude Indicator power switch', category = 'Ins Wall panel'},
{combos = {{key = 'N', reformers = {'RShift','LShift'}}}, down = iCommand_AGR_Test, up = iCommand_AGR_Test, name = 'SAI Standby Attitude Indicator self test button', category = 'Ins Wall panel'},

{combos = {{key = 'K', reformers = {'RCtrl'}}}, down = iCommandPlaneCockpitIlluminationGauges, name = 'Lighting cockpit panel switch', category = 'Ins Wall panel'},
{combos = {{key = 'K', reformers = {'RShift'}}}, down = iCommandPlaneCockpitIlluminationPanels, name = 'Lighting night vision cockpit switch', category = 'Ins Wall panel'},
{combos = {{key = 'K'}},						 		down = iCommandPlaneCockpitIllumination, name = 'Lighting cockpit interior lamp switch', category = 'Ins Wall panel'},
{combos = {{key = 'K', reformers = {'RShift','RAlt'}}}, down = iCommandPlaneADIAHRIllumination, name = 'Lighting HSI and ADI switch', category = 'Ins Wall panel'},
{combos = {{key = 'K', reformers = {'RCtrl','RAlt'}}}, down = iCommandControlPanelIllumination, name = 'Lighting auxiliary panel switch', category = 'Ins Wall panel'},
{combos = {{key = 'J', reformers = {'RAlt'}}},   down = iCommandPlaneRotorTipLights, name = 'Lights rotor tip', category = 'Ins Wall panel'},
{combos = {{key = 'J', reformers = {'RShift'}}},  down =  iCommandPlaneAntiCollisionLights , name  = 'Light anti-collision', category = 'Ins Wall panel'},
{combos = {{key = 'J', reformers = {'RCtrl'}}},  down =  iCommandPlaneFormationLights , name  =  'Lights formation 10\%/30\%/100\%/Off', category = 'Ins Wall panel'},

{combos = {{key = '0', reformers = {'RCtrl'}}},down = iCommandHelicopter_SignalFlares_switch_OnOff, name = 'Signal flares power' , category = 'Ins Wall panel'},
{combos = {{key = '1', reformers = {'LAlt'}}},down = iCommandHelicopter_SignalFlares_RED		, name = 'Signal flares - red flare'   , category = 'Ins Wall panel'},
{combos = {{key = '2', reformers = {'LAlt'}}},down = iCommandHelicopter_SignalFlares_GREEN		, name = 'Signal flares - green flare' , category = 'Ins Wall panel'},
{combos = {{key = '3', reformers = {'LAlt'}}},down = iCommandHelicopter_SignalFlares_WHITE		, name = 'Signal flares - white flare' , category = 'Ins Wall panel'},
{combos = {{key = '4', reformers = {'LAlt'}}},down = iCommandHelicopter_SignalFlares_YELLOW		, name = 'Signal flares - yellow flare', category = 'Ins Wall panel'},

{combos = {{key = 'M', reformers = {'RShift', 'RAlt'}}}, down =iCommand_ZMS_3_MagVarRotaryRight, name = 'Magnetic variation knob right', category = 'Ins Wall panel'},
{combos = {{key = 'M', reformers = {'RShift', 'RCtrl'}}}, down =iCommand_ZMS_3_MagVarRotaryLeft, name = 'Magnetic variation knob left', category = 'Ins Wall panel'},



-- Ins Overhead panel (Верхняя панель)
{combos = {{key = 'L', reformers = {'RAlt'}}}, down = iCommandPlaneLightsOnOff, name = 'Lights navigation 10\%/30\%/100\%/Off', category = 'Ins Overhead panel'},
{combos = {{key = 'L', reformers = {'LAlt'}}},  down = iCommandPlaneNavLights_CodeModeOn, up = iCommandPlaneNavLights_CodeModeOff , name = 'Lights navigation Code Mode', category = 'Ins Overhead panel'},
{combos = {{key = 'W', reformers = {'LCtrl','LAlt'}}},  down = iCommand_CPT_MECH_WindscreenWiper_Speed, name = 'Windshield wiper switch', category = 'Ins Overhead panel'},
{combos = {{key = 'L'}}, down =iCommand_LWS_Reset, up=iCommand_LWS_Reset , name = 'L-140 Laser warning system reset button', category = 'Ins Overhead panel'},
{combos = {{key = 'S', reformers = {'LShift','LAlt'}}}, down =iCommandPitotAoAHeat, name = 'Pitot static port and AoA sensors heat switch', category = 'Ins Overhead panel'},
{combos = {{key = 'S', reformers = {'LShift','LCtrl'}}}, down =iCommandPitotRam, name = 'Pitot ram air and clock heat switch', category = 'Ins Overhead panel'},
{combos = {{key = 'S', reformers = {'RShift','RCtrl'}}}, up =iCommand_CPT_MECH_PitotSystemHeatTest, down =iCommand_CPT_MECH_PitotSystemHeatTest, name = 'Pitot system heat test', category = 'Ins Overhead panel'},
{combos = {{key = 'S', reformers = {'LShift','LCtrl','LAlt'}}}, down =iCommandHelicopter_Rotor_Anti_Icing_Dust_Protection_System, name = 'Rotor de-icing system switch', category = 'Ins Overhead panel'},
{combos = {{key = 'I',  reformers = {'LAlt'}}}, down = iCommandHelicopter_Engines_Anti_Icing_Dust_Protection_System, name = 'Engines de-icing / dust-protection systems switch', category = 'Ins Overhead panel'},


-- Targeting Display Control Panel PUR (Панель управления режимами ПУР)
{combos = {{key = 'S', reformers = {'RCtrl'}}}, down = iCommandPlaneScalesReject, name = 'HUD Scales Reject On/Off', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = '[', reformers = {'RCtrl','RAlt'}}}, pressed = iCommandPlane_I251_Brightness_Down, name = 'IT-23 brightness Down', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = ']', reformers = {'RCtrl','RAlt'}}}, pressed = iCommandPlane_I251_Brightness_Up, name = 'IT-23 brightness Up', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = '[', reformers = {'RShift','RCtrl'}}}, pressed = iCommandPlane_I251_Contrast_Down, name = 'IT-23 contrast Down', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = ']', reformers = {'RShift','RCtrl'}}}, pressed = iCommandPlane_I251_Contrast_Up, name = 'IT-23 contrast Up', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = '[', reformers = {'RShift','RCtrl','RAlt'}}}, pressed = iCommandPlane_Helmet_Brightess_Down, name = 'Helmet device brightness Down', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = ']', reformers = {'RShift','RCtrl','RAlt'}}}, pressed = iCommandPlane_Helmet_Brightess_Up, name = 'Helmet device brightness Up', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = 'I', reformers = {'RShift','RCtrl','RAlt'}}}, down = iCommandPlane_LaserCode_Previous, name = 'Laser code selector left', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = 'O', reformers = {'RShift','RCtrl','RAlt'}}}, down = iCommandPlane_LaserCode_Next, name = 'Laser code selector right', category = 'Ins Targeting Display Control Panel PUR'},
{combos = {{key = 'B', reformers = {'RShift','RCtrl'}}}, down = iCommandPlane_I251_Background_WhiteBlack, name = 'IT-23 Black-White indication switch', category = 'Ins Targeting Display Control Panel PUR'},


-- Landing Lights & Voice Warning Panel (Панель управления освещением, переключением каналов АРК и речевым информатором)
{combos = {{key = 'L', reformers = {'RShift'}}},   down = iCommandPlaneHeadLightOnOff, name = 'Light landing search On/Retraction/Off', category = 'Ins Landing Lights & Voice Warning Panel'},
{combos = {{key = 'L', reformers = {'RCtrl'}}},  down =  iCommandPlane_SpotSelect_switch  , name  = 'Lights landing search change Main/Reserved', category = 'Ins Landing Lights & Voice Warning Panel'},
{combos = {{key = '=', reformers = {'LAlt'}}}, down = iCommandPlane_ADF_Homer_change, name = 'ADF Beacon select', category = 'Ins Landing Lights & Voice Warning Panel'},
{combos = {{key = 'V', reformers = {'LCtrl'}}}, down =iCommand_VMS_ALMAZ_UP_EmergencyOn , name = 'Voice message emergency mode', category = 'Ins Landing Lights & Voice Warning Panel'},
{combos = {{key = 'V', reformers = {'LShift','LAlt'}}}, down=iCommand_VMS_ALMAZ_UP_SpeechInfoOff , up=iCommand_VMS_ALMAZ_UP_SpeechInfoOff, name = 'Voice message cease', category = 'Ins Landing Lights & Voice Warning Panel'},
{combos = {{key = 'V', reformers = {'LAlt'}}}, down=iCommand_VMS_ALMAZ_UP_Repeat , up=iCommand_VMS_ALMAZ_UP_Repeat, name = 'Voice message repeat', category = 'Ins Landing Lights & Voice Warning Panel'},


-- Ins ADF (ARK-22)
{combos = {{key = '=', reformers = {'LCtrl'}}}, down = iCommandPlane_ADF_Channel_next, name = 'ADF Channel next', category = 'Ins ADF'},
{combos = {{key = '-', reformers = {'LCtrl'}}}, down = iCommandPlane_ADF_Channel_prevous, name = 'ADF Channel prevous', category = 'Ins ADF'},
{combos = {{key = '[', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_ADF_Mode_change, name = 'ADF Mode change', category = 'Ins ADF'},
{combos = {{key = ']', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_ADF_Receiver_Mode_change, name = 'ADF Receiver mode change', category = 'Ins ADF'},
{combos = {{key = '=', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_ADF_Volume_up, name = 'ADF Volume up', category = 'Ins ADF'},
{combos = {{key = '-', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_ADF_Volume_down, name = 'ADF Volume down', category = 'Ins ADF'},
{combos = {{key = 'T', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_ADF_Test, up = iCommandPlane_ADF_Test_up, name = 'ADF Self test', category = 'Ins ADF'},

-- Ins Autopilot
{combos = {{key = 'B', reformers = {'LShift'}}}, down = iCommandHelicopter_PPR_button_K,up = iCommandHelicopter_PPR_button_K_up, name = 'Autopilot Bank hold', category = 'Ins Autopilot'},
{combos = {{key = 'P', reformers = {'LShift'}}}, down = iCommandHelicopter_PPR_button_T,up = iCommandHelicopter_PPR_button_T_up, name = 'Autopilot Pitch hold', category = 'Ins Autopilot'},
{combos = {{key = 'H', reformers = {'LShift'}}}, down = iCommandHelicopter_PPR_button_H,up = iCommandHelicopter_PPR_button_H_up, name = 'Autopilot Heading hold', category = 'Ins Autopilot'},
{combos = {{key = 'A', reformers = {'LShift'}}}, down = iCommandHelicopter_PPR_button_B,up = iCommandHelicopter_PPR_button_B_up, name = 'Autopilot Altitude hold', category = 'Ins Autopilot'},
{combos = {{key = 'A', reformers = {'LCtrl'}}}, down = iCommandHelicopter_PPR_button_DIR,up = iCommandHelicopter_PPR_button_DIR_up, name = 'Autopilot Director control', category = 'Ins Autopilot'},
{combos = {{key = 'X', reformers = {'LCtrl'}}}, down = iCommandHelicopter_PPR_BAR_RV , name = 'Autopilot BARO/RALT altitude hold mode', category = 'Ins Autopilot'},
{combos = {{key = 'X', reformers = {'LAlt'}}},  down =iCommand_NAVINTERF_HeadingCourse , name = 'Autopilot Desired heading - Desired track', category = 'Ins Autopilot'},

--Ins Radio R-800 VHF-2 
{combos = {{key = '1', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_800_1st_wheel_up, name = 'R-800 Rotary 1 Up', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '1', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_1st_wheel_down, name = 'R-800 Rotary 1 Down', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '2', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_800_2nd_wheel_up, name = 'R-800 Rotary 2 Up', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '2', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_2nd_wheel_down, name = 'R-800 Rotary 2 Down', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '3', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_800_3rd_wheel_up, name = 'R-800 Rotary 3 Up', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '3', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_3rd_wheel_down, name = 'R-800 Rotary 3 Down', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '4', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_800_4th_wheel_up, name = 'R-800 Rotary 4 Up', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '4', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_4th_wheel_down, name = 'R-800 Rotary 4 Down', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = 'R', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_Noise_Reductor_on_off, name = 'R-800 Squelch', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = 'M', reformers = {'LShift','LCtrl','LAlt'}}}, down = iCommandPlane_R_800_Modulation_change, name = 'R-800 AM-FM Mode switch', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = '5', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_50_100_switch, name = 'Data transfer rate switch', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = 'A', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_ADF_Sound_switch, name = 'ADF switch', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = 'E', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_R_800_Emergency_Radio, name = 'Emergency receiver', category = 'Ins Radio R-800 VHF-2'},
{combos = {{key = 'T', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_800_Test, up = iCommandPlane_R_800_Test_up, name = 'Test button', category = 'Ins Radio R-800 VHF-2'},


--Ins Radio R-828 VHF-1
{combos = {{key = 'M', reformers = {'RCtrl','RAlt'}}}, down = iCommandPlane_R_828_Channel_next, name = 'Channel selector next', category = 'Ins Radio R-828 VHF-1'},
{combos = {{key = 'N', reformers = {'RCtrl','RAlt'}}}, down = iCommandPlane_R_828_Channel_prevous, name = 'Channel selector previous', category = 'Ins Radio R-828 VHF-1'},
{combos = {{key = 'R', reformers = {'RCtrl','RAlt'}}}, down = iCommandPlane_R_828_Noise_Reductor_on_off, name = 'R-828 Squelch', category = 'Ins Radio R-828 VHF-1'},
{combos = {{key = 'T', reformers = {'RCtrl','RShift'}}}, down = iCommandPlane_R_828_ASU, up = iCommandPlane_R_828_ASU_up, name = 'Tuner button', category = 'Ins Radio R-828 VHF-1'},
{combos = {{key = ']', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_828_volume_up, name = 'Volume up', category = 'Ins Radio R-828 VHF-1'},
{combos = {{key = '[', reformers = {'LCtrl','LShift'}}}, down = iCommandPlane_R_828_volume_down, name = 'Volume down', category = 'Ins Radio R-828 VHF-1'},




-- Ins Auxiliary Control Panel
{combos = {{key = 'N' , reformers = {'LShift','LCtrl','LAlt'}}} , down = iCommand_CPT_MECH_VMG_HYDRO_EKRAN_Cover, name = 'Power plant, hydraulics, EKRAN self-test systems switch cover' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'N' , reformers = {'LShift','LCtrl'}}} , down = iCommand_CPT_MECH_VMG_HYDRO_EKRAN, name = 'Power plant, hydraulics, EKRAN self-test systems switch' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'N' , reformers = {'LCtrl','LAlt'}}}, down = iCommand_LWS_BIT_On, up=iCommand_LWS_BIT_On , name = 'LWS L-140 self-test button' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'N' , reformers = {'LCtrl'}}}, down = iCommand_LWS_Power , name = 'LWS L-140 power switch' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'L' , reformers = {'RAlt','RShift'}}}, down = iCommand_IlluminationInterf_Control_Panel_Illumination , name = 'Illumination control panel switch' , category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'C' , reformers = {'LShift','LAlt'}}}, down = iCommand_UV26_PowerCover , name = 'CMD UV-26 power switch cover' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'C' , reformers = {'LShift','LCtrl'}}}, down = iCommand_UV26_Power , name = 'CMD UV-26 power switch' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'C' , reformers = {'LShift','LCtrl','LAlt'}}}, down = iCommand_UV26_BITCover , name = 'CMD UV-26 BIT switch cover' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'C' , reformers = {'LCtrl','LAlt'}}}, down = iCommand_UV26_BIT , name = 'CMD UV-26 BIT switch' , category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'I' , reformers = {'RCtrl','RAlt'}}}, down = iCommand_C061K_power , name = 'INU power switch' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'I' , reformers = {'RShift','RAlt'}}}, down = iCommand_C061K_heat , name = 'INU heater switch' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'B' , reformers = {'LCtrl','LAlt'}}}, down = iCommandWeaponsBallisticSelectorRight , name = 'Rocket and gun pods ballistics data settings selector Right' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'B' , reformers = {'LCtrl'}}}, down = iCommandWeaponsBallisticSelectorLeft , name = 'Rocket and gun pods ballistics data settings selector Left' , category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'V' , reformers = {'RCtrl','RAlt'}}}, down = iCommand_VMS_ALMAZ_UP_Check , up=iCommand_VMS_ALMAZ_UP_Check , name = 'ALMAZ Voice alert system test button' , category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'E' , reformers = {'RShift','RCtrl'}}}, down =iCommand_EjectInterface_Circuit_Test  , up=iCommand_EjectInterface_Circuit_Test , name = 'Eject system circuit test button' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'B' , reformers = {'LShift','LAlt'}}}, down =iCommand_EjectInterface_Circuit_SelectRight, name = 'Eject system circuit check selector right' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'B' , reformers = {'LShift','LCtrl'}}}, down =iCommand_EjectInterface_Circuit_SelectLeft, name = 'Eject system circuit check selector left' , category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'G' , reformers = {'RShift','RCtrl'}}}, down =iCommand_ENG_INTERF_Right_Engine_RT_12_6  , up=iCommand_ENG_INTERF_Right_Engine_RT_12_6 , name = 'EGT right threshold governor button' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'G' , reformers = {'RShift','RAlt'}}}, down =iCommand_ENG_INTERF_Left_Engine_RT_12_6  , up=iCommand_ENG_INTERF_Left_Engine_RT_12_6 , name = 'EGT left threshold governor button' , category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'V' , reformers = {'RShift','RCtrl','RAlt'}}}, down =iCommand_ENG_INTERF_EngVibrDetectorBIT  , up=iCommand_ENG_INTERF_EngVibrDetectorBIT , name = 'Engine vibration monitor system button' , category = 'Ins Auxiliary Control Panel'},


{combos = {{key = 'K', reformers = {'LShift','LCtrl'}}}, pressed = iCommand_IlluminationInterf_Cockpit_Night_Illumination_brightness_up	  , name = 'Lighting night vision cockpit brightness knob Down', category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'K', reformers = {'LCtrl','LAlt'}}},   pressed = iCommand_IlluminationInterf_Cockpit_Night_Illumination_brightness_down , name = 'Lighting night vision cockpit brightness knob Up', category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'L', reformers = {'LShift','LCtrl'}}}, pressed = iCommand_IlluminationInterf_Panels_Illumination_brightness_up, name = 'Lighting cockpit panel brightness knob Down', category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'L', reformers = {'LCtrl','LAlt'}}},   pressed = iCommand_IlluminationInterf_Panels_Illumination_brightness_down, name = 'Lighting cockpit panel brightness knob Up', category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'J', reformers = {'LShift','LCtrl'}}}, pressed = iCommand_IlluminationInterf_ADI_AHR_Illumination_brightness_up			, name = 'Lighting HSI and ADI brightness knob Down', category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'J', reformers = {'LCtrl','LAlt'}}},   pressed = iCommand_IlluminationInterf_ADI_AHR_Illumination_brightness_down			, name = 'Lighting HSI and ADI brightness knob  Up', category = 'Ins Auxiliary Control Panel'},

{combos = {{key = 'U', reformers = {'LShift','LCtrl','RAlt'}}}, pressed = iCommand_IlluminationInterf_Control_Panel_Illumination_brightness_up 			, name = 'Lighting auxiliary panel brightness knob Down', category = 'Ins Auxiliary Control Panel'},
{combos = {{key = 'U', reformers = {'LShift','LCtrl','LAlt'}}}, pressed = iCommand_IlluminationInterf_Control_Panel_Illumination_brightness_down		, name = 'Lighting auxiliary panel brightness knob  Up', category = 'Ins Auxiliary Control Panel'},


-- Systems
{combos = {{key = 'C', reformers = {'RCtrl'}}}, down = iCommandPlaneFonar, name = 'Cockpit door open/close', category = 'Systems'},
{combos = {{key = 'E', reformers = {'LCtrl'}}}, down = iCommandPlaneEject, name = 'Eject (3 times)', category = 'Systems'},
--{combos = {{key = 'H' , reformers = {'LWin'}}} , down = iCommandPlane_CallHelpWindow, name = 'Checklists' , category = 'Systems'},
{combos = {{key = '/', reformers = {'LCtrl','LAlt'}}}, down = iCommandPlane_SPU9_radio_change, name = 'SPU-9 Radio communicator selector', category = 'Systems'},

-- Radio Communications
{combos = {{key = '\\'}}, down = iCommandToggleCommandMenu, name = 'Communication menu', category = 'Radio Communications'},
{combos = {{key = 'E', reformers = {'LWin'}}}, down = iCommandPlaneDoAndHome, name = 'Flight - Complete mission and RTB', category = 'Radio Communications'},
{combos = {{key = 'R', reformers = {'LWin'}}}, down = iCommandPlaneDoAndBack, name = 'Flight - Complete mission and rejoin', category = 'Radio Communications'},
{combos = {{key = 'T', reformers = {'LWin'}}}, down = iCommandPlaneFormation, name = 'Toggle formation', category = 'Radio Communications'},
{combos = {{key = 'Y', reformers = {'LWin'}}}, down = iCommandPlaneJoinUp, name = 'Join up formation', category = 'Radio Communications'},
{combos = {{key = 'Q', reformers = {'LWin'}}}, down = iCommandPlaneAttackMyTarget, name = 'Attack my target', category = 'Radio Communications'},
{combos = {{key = 'W', reformers = {'LWin'}}}, down = iCommandPlaneCoverMySix, name = 'Cover me', category = 'Radio Communications'},
{combos = {{key = 'G', reformers = {'LWin'}}}, down = iCommandPlane_EngageGroundTargets, name = 'Flight - Attack ground targets', category = 'Radio Communications'},
{combos = {{key = 'D', reformers = {'LWin'}}}, down = iCommandPlane_EngageAirDefenses, name = 'Flight - Attack air defenses', category = 'Radio Communications'},
{combos = {{key = '\\', reformers = {'LShift'}}}, down = ICommandSwitchDialog, name = 'Switch dialog', category = 'Communications'},
{combos = {{key = '\\', reformers = {'LCtrl'}}}, down = ICommandSwitchToCommonDialog, name = 'Switch to main menu', category = 'Communications'},

--FAC
{combos = {{key = 'B', reformers = {'LWin'}}}, down = iCommandViewBinocular , name = 'Binocular view toggle', category = 'FAC'},
{combos = {{key = 'L', reformers = {'LAlt'}}}, down = iCommandViewLaserOnOff, name = 'Binocular laser illumination toggle', category = 'FAC'},
{combos = {{key = 'Z', reformers = {'LWin'}}}, down = iCommandViewIR		, name = 'Binocular view IR mode', category = 'FAC'},


},
}

end
