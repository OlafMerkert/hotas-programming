function layout()
return {

keyCommands = {

-- Temporary
{combos = {{key = '`'}}, down = ICommandToggleConsole, name = 'Toggle Console', category = 'Debug'},
{combos = {{key = 'X', reformers = {'LShift', 'LCtrl'}}}, down = iCommandViewExplosion, name = 'Explosion', category = 'Cheat'},

{combos = {{key = 'Home', reformers = {'RWin'}}} , 			down = iCommandEnginesStart, name = 'Start Procedure', category = 'Cheat'},
{combos = {{key = 'End', reformers = {'RWin'}}} , 			down = iCommandEnginesStop, name = 'Stop Procedure', category = 'Cheat'},
{combos = {{key = 'R', reformers = {'RWin'}}},  			down = iCommandReloadTables, name = 'Reload Cockpit', category = 'Debug'},


-- Gameplay
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}}, down = iCommandActivePauseOnOff, name = 'Pause Active', category = 'General'},
{combos = {{key = 'Esc'}}, 									down = iCommandQuit, name = 'Exit mission', category = 'General'},
{combos = {{key = 'B', reformers = {'LAlt'}}},				down = iCommandViewBriefing, name = 'Briefing window', category = 'General'},
{combos = {{key = 'J', reformers = {'RAlt'}}}, 				down = iCommandPlaneJump, name = 'Jump into selected aircraft', category = 'General'},
{combos = {{key = 'Pause'}}, 								down = iCommandBrakeGo, name = 'Pause', category = 'General'},
{combos = {{key = 'Z', reformers = {'LCtrl'}}}, 			down = iCommandAccelerate, name = 'Time accelerate', category = 'General'},
{combos = {{key = 'Z', reformers = {'LAlt'}}}, 				down = iCommandDecelerate, name = 'Time decelerate', category = 'General'},
{combos = {{key = 'Z', reformers = {'LShift'}}}, 			down = iCommandNoAcceleration, name = 'Time normal', category = 'General'},
{combos = {{key = '\''}}, 									down = iCommandScoresWindowToggle, name = 'Score window', category = 'General'},
{combos = {{key = '\'', reformers = {'RShift'}}}, 			down = iCommandDebriefing, name = 'Show debriefing window', category = 'General'},
{combos = {{key = 'Y', reformers = {'LCtrl'}}}, 			down = iCommandInfoOnOff, name = 'Info bar view toggle', category = 'General'},
{combos = {{key = 'Tab', reformers = {'RCtrl', 'RShift'}}}, down = iCommandRecoverHuman, name = 'Get new plane - respawn', category = 'General'},
{combos = {{key = 'SysRQ'}}, 								down = iCommandScreenShot, name = 'Screenshot', category = 'General'},
{combos = {{key = 'Tab', reformers = {'LShift'}}}, 			down = iCommandTrkEsc, name = 'Playback track cancel', category = 'General'},
{combos = {{key = 'Y', reformers = {'LShift'}}}, 			down = iCommandInfoOnOff, name = 'Info bar view toggle', category = 'General'},
{combos = {{key = 'Pause', reformers = {'RShift'}}},		down = iCommandOneFrame, name = 'One frame mode', category = 'General'},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}}, 		down = iCommandGraphicsFrameRate, name = 'Frame rate counter - Service info', category = 'General'},
{combos = {{key = 'Y', reformers = {'LAlt'}}}, 				down = iCommandViewCoordinatesInLinearUnits, name = 'Coordinates units change', category = 'General'},
{combos = {{key = 'C', reformers = {'LAlt'}}}, 				down = iCommandCockpitClickModeOnOff, name = 'Clickable mouse cockpit mode On/Off', category = 'General'},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}}, 		down = iCommandPlane_ShowControls, name = 'Controls indicator' , category = 'General'},
{combos = {{key = 'P', reformers = {'RShift'}}}, 			down = iCommandCockpitShowPilotOnOff, name = 'Show pilot', category = 'General'},

{combos = {{key = 'Tab'}}, 									down = iCommandChat, name = 'Multiplayer chat - mode All', category = 'General'},
{combos = {{key = 'Tab', reformers = {'LCtrl'}}}, 			down = iCommandFriendlyChat, name = 'Multiplayer chat - mode Allies', category = 'General'},
{combos = {{key = 'M', reformers = {'RCtrl'}}}, 			down = iCommandChat, name = 'Multiplayer chat - mode All', category = 'General'},
{combos = {{key = 'M', reformers = {'RAlt'}}}, 				down = iCommandFriendlyChat, name = 'Multiplayer chat - mode Allies', category = 'General'},
{combos = {{key = '\'', reformers = {'LAlt'}}}, 			down = iCommandMissionResourcesManagement, name = 'Rearming and Refueling Window', category = 'General'},


-- Communications
{combos = {{key = 'E', reformers = {'LWin'}}}, 				down = iCommandPlaneDoAndHome, name = 'COMM Dispatch wingmans - complete mission and RTB (easy communication only)', category = 'Communications'},
{combos = {{key = 'R', reformers = {'LWin'}}}, 				down = iCommandPlaneDoAndBack, name = 'COMM Dispatch wingmans - complete mission and rejoin (easy communication only)', category = 'Communications'},
{combos = {{key = 'T', reformers = {'LWin'}}}, 				down = iCommandPlaneFormation, name = 'COMM Toggle formation (easy communication only)', category = 'Communications'},
{combos = {{key = 'Y', reformers = {'LWin'}}}, 				down = iCommandPlaneJoinUp, name = 'COMM Join up formation (easy communication only)', category = 'Communications'},
{combos = {{key = 'Q', reformers = {'LWin'}}}, 				down = iCommandPlaneAttackMyTarget, name = 'COMM Attack my target (easy communication only)', category = 'Communications'},
{combos = {{key = 'W', reformers = {'LWin'}}}, 				down = iCommandPlaneCoverMySix, name = 'COMM Cover me (easy communication only)', category = 'Communications'},
{combos = {{key = 'U', reformers = {'LWin'}}}, 				down = iCommandAWACSHomeBearing, name = 'COMM Ask AWACS home airbase (easy communication only)', category = 'Communications'},
{combos = {{key = 'G', reformers = {'LWin'}}}, 				down = iCommandPlane_EngageGroundTargets, name = 'COMM Attack Ground Targets (easy communication only)', category = 'Communications'},
{combos = {{key = 'D', reformers = {'LWin'}}}, 				down = iCommandPlane_EngageAirDefenses, name = 'COMM Attack Air Defenses (easy communication only)', category = 'Communications'},
{combos = {{key = '\\'}}, 									down = iCommandToggleCommandMenu, up = iCommandToggleCommandMenu, name = 'COMM Communication menu', category = 'Communications'},
{combos = {{key = '\\', reformers = {'LShift'}}}, 			down = ICommandSwitchDialog, name = 'COMM Switch dialog', category = 'Communications'},
{combos = {{key = '\\', reformers = {'LCtrl'}}}, 			down = ICommandSwitchToCommonDialog, name = 'COMM Switch to main menu', category = 'Communications'},

-- View                                                    
{combos = {{key = 'Num4'}}, 								pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = 'View Left slow', category = 'View'},
{combos = {{key = 'Num6'}}, 								pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = 'View Right slow', category = 'View'},
{combos = {{key = 'Num8'}}, 								pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = 'View Up slow', category = 'View'},
{combos = {{key = 'Num2'}}, 								pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = 'View Down slow', category = 'View'},
{combos = {{key = 'Num9'}}, 								pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = 'View Up Right slow', category = 'View'},
{combos = {{key = 'Num3'}}, 								pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = 'View Down Right slow', category = 'View'},
{combos = {{key = 'Num1'}}, 								pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = 'View Down Left slow', category = 'View'},
{combos = {{key = 'Num7'}}, 								pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = 'View Up Left slow', category = 'View'},
{combos = {{key = 'Num5'}}, 								pressed = iCommandViewCenter, name = 'View Center', category = 'View'},

{combos = {{key = 'Num*'}}, 								pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = 'Zoom in slow', category = 'View'},
{combos = {{key = 'Num/'}}, 								pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = 'Zoom out slow', category = 'View'},
{combos = {{key = 'NumEnter'}}, 							down = iCommandViewAngleDefault, name = 'Zoom normal', category = 'View'},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}}, 			pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = 'Zoom external in', category = 'View'},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}}, 			pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = 'Zoom external out', category = 'View'},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}}, 		down = iCommandViewExternalZoomDefault, name = 'Zoom external normal', category = 'View'},
{combos = {{key = 'Num*', reformers = {'LAlt'}}}, 			down = iCommandViewSpeedUp, name = 'F11 camera moving forward', category = 'View'},
{combos = {{key = 'Num/', reformers = {'LAlt'}}}, 			down = iCommandViewSlowDown, name = 'F11 camera moving backward', category = 'View'},


{combos = {{key = 'F1'}}, 									down = iCommandViewCockpit, name = 'F1 Cockpit view', category = 'View'},
{combos = {{key = 'F1', reformers = {'LCtrl'}}}, 			down = iCommandNaturalViewCockpitIn, name = 'F1 Natural head movement view', category = 'View'},
{combos = {{key = 'F1', reformers = {'LAlt'}}}, 			down = iCommandViewHUDOnlyOnOff, name = 'F1 HUD only view switch', category = 'View'},
{combos = {{key = 'F2'}}, 									down = iCommandViewAir, name = 'F2 Aircraft view', category = 'View'},
{combos = {{key = 'F2', reformers = {'LCtrl'}}},		 	down = iCommandViewMe, name = 'F2 View own aircraft', category = 'View'},
{combos = {{key = 'F2', reformers = {'RAlt'}}}, 			down = iCommandViewFromTo, name = 'F2 Toggle camera position', category = 'View'},
{combos = {{key = 'F2', reformers = {'LAlt'}}},			 	down = iCommandViewLocal, name = 'F2 Toggle local camera control', category = 'View'},
{combos = {{key = 'F3'}}, 									down = iCommandViewTower, name = 'F3 Fly-By view', category = 'View'},
{combos = {{key = 'F3', reformers = {'LCtrl'}}},		 	down = iCommandViewTowerJump, name = 'F3 Fly-By jump view', category = 'View'},
{combos = {{key = 'F4'}}, 									down = iCommandViewChaseArcade, name = 'F4 Arcade View', category = 'View'},
{combos = {{key = 'F4', reformers = {'LShift'}}}, 			down = iCommandViewRear, name = 'F4 Look back view', category = 'View'},
{combos = {{key = 'F4', reformers = {'LCtrl'}}},		 	down = iCommandViewChase, name = 'F4 Chase view', category = 'View'},
{combos = {{key = 'F5'}}, 									down = iCommandViewFight, name = 'F5 nearest AC view', category = 'View'},
{combos = {{key = 'F5', reformers = {'LCtrl'}}},		 	down = iCommandViewFightGround, name = 'F5 Ground hostile view', category = 'View'},
{combos = {{key = 'F6'}}, 									down = iCommandViewWeapons, name = 'F6 Released weapon view', category = 'View'},
{combos = {{key = 'F6', reformers = {'LCtrl'}}},		 	down = iCommandViewWeaponAndTarget, name = 'F6 Weapon to target view', category = 'View'},
{combos = {{key = 'F7'}}, 									down = iCommandViewGround, name = 'F7 Ground unit view', category = 'View'},
{combos = {{key = 'F7', reformers = {'LCtrl'}}},  			down = iCommandViewJFO, name = 'F7 Ground JFO/JTAC view', category = 'View'},
--{combos = {{key = 'F8'}}, 							down = iCommandViewTargets, name = 'F8 Target view', category = 'View'},
--{combos = {{key = 'F8', reformers = {'RAlt'}}}, 	down = iCommandViewTargetType, name = 'F8 Player targets/All targets filter', category = 'View'},
{combos = {{key = 'F9'}}, 									down = iCommandViewNavy, name = 'F9 Ship view', category = 'View'},
{combos = {{key = 'F9', reformers = {'LAlt'}}}, 			down = iCommandViewLndgOfficer, name = 'F9 Landing signal officer view', category = 'View'},
{combos = {{key = 'F10'}}, 									down = iCommandViewAWACS, name = 'F10 Theater map view', category = 'View'},
{combos = {{key = 'F10', reformers = {'LCtrl'}}},		 	down = iCommandViewAWACSJump, name = 'F10 Jump to theater map view over current point', category = 'View'},
{combos = {{key = 'F11'}}, 									down = iCommandViewFree, name = 'F11 Airport free camera', category = 'View'},
{combos = {{key = 'F11', reformers = {'LCtrl'}}},		 	down = iCommandViewFreeJump, name = 'F11 Jump to free camera', category = 'View'},
{combos = {{key = 'F12'}}, 									down = iCommandViewStatic, name = 'F12 Static object view', category = 'View'},
{combos = {{key = 'F12', reformers = {'LCtrl'}}},		 	down = iCommandViewMirage, name = 'F12 Civil traffic view', category = 'View'},
{combos = {{key = 'F12', reformers = {'LShift'}}}, 			down = iCommandViewLocomotivesToggle, name = 'F12 Trains/cars toggle', category = 'View'},
{combos = {{key = 'F1', reformers = {'LWin'}}} ,		 	down = iCommandViewPitHeadOnOff, name = 'F1 Head shift movement on / off', category = 'View'},

{combos = {{key = ']', reformers = {'LShift'}}}, 			down = iCommandViewFastKeyboard, name = 'Keyboard turn rate fast', category = 'View'},
{combos = {{key = ']', reformers = {'LCtrl'}}},			 	down = iCommandViewSlowKeyboard, name = 'Keyboard turn rate slow', category = 'View'},
{combos = {{key = ']', reformers = {'LAlt'}}}, 				down = iCommandViewNormalKeyboard, name = 'Keyboard turn rate normal', category = 'View'},
{combos = {{key = '[', reformers = {'LShift'}}},		 	down =  iCommandViewFastMouse, name = 'Mouse turn rate fast', category = 'View'},
{combos = {{key = '[', reformers = {'LCtrl'}}}, 			down = iCommandViewSlowMouse, name = 'Mouse turn rate slow', category = 'View'},
{combos = {{key = '[', reformers = {'LAlt'}}}, 				down = iCommandViewNormalMouse, name = 'Mouse turn rate normal', category = 'View'},


-- Cockpit view
{combos = {{key = 'Num0'}}, 								down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = 'Cockpit panel view in', category = 'View Cockpit'},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}}, 			down = iCommandViewTempCockpitToggle, name = 'Cockpit panel view toggle', category = 'View Cockpit'},
{combos = {{key = 'Num0', reformers = {'RAlt'}}}, 			down = iCommandViewSaveAngles, name = 'Save Cockpit Angles', category = 'View Cockpit'}, -- Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num8', reformers = {'RShift'}}}, 		pressed = iCommandViewUp, up = iCommandViewStop, name = 'View up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RShift'}}}, 		pressed = iCommandViewDown, up = iCommandViewStop, name = 'View down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RShift'}}}, 		pressed = iCommandViewLeft, up = iCommandViewStop, name = 'View left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RShift'}}}, 		pressed = iCommandViewRight, up = iCommandViewStop, name = 'View right', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RShift'}}}, 		pressed = iCommandViewUpRight, up = iCommandViewStop, name = 'View up right', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RShift'}}}, 		pressed = iCommandViewDownRight, up = iCommandViewStop, name = 'View down right', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RShift'}}}, 		pressed = iCommandViewDownLeft, up = iCommandViewStop, name = 'View down left', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RShift'}}}, 		pressed = iCommandViewUpLeft, up = iCommandViewStop, name = 'View up left', category = 'View Cockpit'},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = 'Camera view up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = 'Camera view down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = 'Camera view left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = 'Camera view right', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = 'Camera view up-left', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = 'Camera view down-left', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = 'Camera view up-right', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}}, 			down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = 'Camera view down-right', category = 'View Cockpit'},

{combos = {{key = 'Num8', reformers = {'RAlt'}}}, 			down = iCommandViewCameraUpSlow, name = 'Camera view up slow', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RAlt'}}},		 	down = iCommandViewCameraDownSlow, name = 'Camera view down slow', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RAlt'}}}, 			down = iCommandViewCameraLeftSlow, name = 'Camera view left slow', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RAlt'}}},		 	down = iCommandViewCameraRightSlow, name = 'Camera view right slow', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'RAlt'}}},		 	down = iCommandViewCameraUpLeftSlow, name = 'Camera view up-left slow', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'RAlt'}}}, 			down = iCommandViewCameraDownLeftSlow, name = 'Camera view down-left slow', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'RAlt'}}},		 	down = iCommandViewCameraDownRight, name = 'Camera view down-right slow', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'RAlt'}}},		 	down = iCommandViewCameraUpRightSlow, name = 'Camera view up-right slow', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RShift'}}},			down = iCommandViewCameraCenter, name = 'Center camera view', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}},		 	down = iCommandViewCameraReturn, name = 'Return camera', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RAlt'}}}, 			down = iCommandViewCameraBaseReturn, name = 'Return camera base', category = 'View Cockpit'},

{combos = {{key = 'Num0', reformers = {'LWin'}}},			down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = 'Snap View 0', category = 'View Cockpit'},
{combos = {{key = 'Num1', reformers = {'LWin'}}}, 			down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = 'Snap View 1', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'LWin'}}}, 			down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = 'Snap View 2', category = 'View Cockpit'},
{combos = {{key = 'Num3', reformers = {'LWin'}}}, 			down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = 'Snap View 3', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'LWin'}}}, 			down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = 'Snap View 4', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'LWin'}}}, 			down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = 'Snap View 5', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'LWin'}}}, 			down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = 'Snap View 6', category = 'View Cockpit'},
{combos = {{key = 'Num7', reformers = {'LWin'}}},			down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = 'Snap View 7', category = 'View Cockpit'},
{combos = {{key = 'Num8', reformers = {'LWin'}}}, 			down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = 'Snap View 8', category = 'View Cockpit'},
{combos = {{key = 'Num9', reformers = {'LWin'}}}, 			down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = 'Snap View 9', category = 'View Cockpit'},

{combos = {{key = 'N', reformers = {'RWin'}}}, 				down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = 'Mirror left glance', category = 'View Cockpit'},
{combos = {{key = 'M', reformers = {'RWin'}}}, 				down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = 'Mirror right glance', category = 'View Cockpit'},

{combos = {{key = 'Num*', reformers = {'RShift'}}}, 		pressed = iCommandViewForward, up = iCommandViewForwardStop, name = 'Zoom in', category = 'View Cockpit'},
{combos = {{key = 'Num/', reformers = {'RShift'}}}, 		pressed = iCommandViewBack, up = iCommandViewBackStop, name = 'Zoom out', category = 'View Cockpit'},

-- Cockpit Camera Motion (������������ ������ � ������)
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Up', category = 'View Cockpit'},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Down', category = 'View Cockpit'},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Left', category = 'View Cockpit'},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Right', category = 'View Cockpit'},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Forward', category = 'View Cockpit'},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = 'Cockpit Camera Move Back', category = 'View Cockpit'},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = 'Cockpit Camera Move Center', category = 'View Cockpit'},

-- Extended view
{combos = {{key = 'J', reformers = {'LShift'}}}, 			down = iCommandViewCameraJiggle, name = 'Camera jiggle toggle', category = 'View Extended'},
{combos = {{key = 'K', reformers = {'LAlt'}}}, 				down = iCommandViewKeepTerrain, name = 'Camera terrain altitude hold', category = 'View Extended'},
{combos = {{key = 'Home', reformers = {'RCtrl','RShift'}}}, down = iCommandViewFriends, name = 'View friends mode', category = 'View Extended'},
{combos = {{key = 'End', reformers = {'RCtrl' ,'RShift'}}}, down = iCommandViewEnemies, name = 'View enemies mode', category = 'View Extended'},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}}, 		down = iCommandViewAll, name = 'View all mode', category = 'View Extended'},
{combos = {{key = 'Num+', reformers = {'RShift'}}}, 		down = iCommandViewPlus, name = 'Camera ordinance tracking', category = 'View Extended'},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}}, 		down = iCommandViewSwitchForward, name = 'Objects switching direction forward ', category = 'View Extended'},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}}, 		down = iCommandViewSwitchReverse, name = 'Objects switching direction reverse ', category = 'View Extended'},
{combos = {{key = 'Delete', reformers = {'LAlt'}}}, 		down = iCommandViewObjectIgnore, name = 'Object exclude ', category = 'View Extended'},
{combos = {{key = 'Insert', reformers = {'LAlt'}}}, 		down = iCommandViewObjectsAll, name = 'Objects all excluded - include', category = 'View Extended'},

-- Padlock

{combos = {{key = 'Num.', reformers = {'RShift'}}}, 		down = iCommandAllMissilePadlock, name = 'Padlock missiles all', category = 'View Padlock'},
{combos = {{key = 'Num.', reformers = {'RAlt'}}}, 			down = iCommandThreatMissilePadlock, name = 'Padlock missile threat', category = 'View Padlock'},
{combos = {{key = 'Num.'}}, 								down = iCommandViewLock, name = 'Padlock cycle', category = 'View Padlock'},
{combos = {{key = 'NumLock'}}, 								down = iCommandViewUnlock, name = 'Padlock Off (stop padlock)', category = 'View Padlock'},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}}, 			down = iCommandViewTerrainLock, name = 'Padlock terrain point', category = 'View Padlock'},


-- Labels
{combos = {{key = 'F10', reformers = {'LShift'}}}, 			down = iCommandMarkerState, name = 'Labels All', category = 'Labels'},
{combos = {{key = 'F2', reformers = {'LShift'}}}, 			down = iCommandMarkerStatePlane, name = 'Labels Aircraft', category = 'Labels'},
{combos = {{key = 'F6', reformers = {'LShift'}}}, 			down = iCommandMarkerStateRocket, name = 'Labels Missile', category = 'Labels'},
{combos = {{key = 'F9', reformers = {'LShift'}}}, 			down = iCommandMarkerStateShip, name = 'Labels Vehicle & Ship', category = 'Labels'},

-- Stick
{combos = {{key = 'Space', reformers = {'RAlt'}}}, 			down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = 'Weapon release', category = 'Stick'},
{combos = {{key = 'Space'}}, 								down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = 'Gun fire', category = 'Stick'},

-- Flight Control
{combos = {{key = 'Up'}},									down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = 'Flight Nose Down', category = 'Flight Control'},
{combos = {{key = 'Down'}},									down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = 'Flight Nose Up', category = 'Flight Control'},
{combos = {{key = 'Left'}},									down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = 'Flight Left Wing Down', category = 'Flight Control'},
{combos = {{key = 'Right'}},								down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = 'Flight Right Wing Down', category = 'Flight Control'},
{combos = {{key = 'Z'}},									down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = 'Flight Rudder Left', category = 'Flight Control'},
{combos = {{key = 'X'}},									down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = 'Flight Rudder Right', category = 'Flight Control'},

{combos = {{key = 'Num+'}}, 								pressed = 3023, cockpit_device_id = 5, value_pressed = 1.0, 	name = 'Throttle Increase', category = 'Flight Control'},
{combos = {{key = 'Num-'}}, 								pressed = 3023, cockpit_device_id = 5, value_pressed = -1.0,	name = 'Throttle Decrease', category = 'Flight Control'},
{combos = {{key = 'PageUp'}}, 								pressed = 3024, cockpit_device_id = 5, value_pressed = 1.0,	name = 'Engine RPM Increase', category = 'Flight Control'},
{combos = {{key = 'PageDown'}}, 							pressed = 3024, cockpit_device_id = 5, value_pressed = -1.0,	name = 'Engine RPM Decrease', category = 'Flight Control'},

{combos = {{key = 'M', reformers = {'LShift'}}}, 			down = 3011, cockpit_device_id = 5, value_down = 0.0, name = 'Mixture IDLE CUT OFF', category = 'Flight Control'},
{combos = {{key = 'M', reformers = {'LCtrl'}}}, 			down = 3011, cockpit_device_id = 5, value_down = 0.1, name = 'Mixture RUN', category = 'Flight Control'},
{combos = {{key = 'M', reformers = {'LAlt'}}}, 				down = 3011, cockpit_device_id = 5, value_down = 0.2, name = 'Mixture EMERGENCY FULL RICH', category = 'Flight Control'},
{combos = {{key = 'M'}},						 			down = 3020, cockpit_device_id = 5, value_down = 1.0, name = 'Mixture control (rotary)', category = 'Flight Control'},

{combos = {{key = 'X', reformers = {'LShift'}}}, 			down = 3015, up = 3015, cockpit_device_id = 12, value_down = 1.0, value_up = 0.0, name = 'Stick lock in the Forward Position', category = 'Flight Control'},
{combos = {{key = 'X', reformers = {'LAlt', 'LShift'}}},	down = 3016, up = 3016, cockpit_device_id = 12, value_down = 1.0, value_up = 0.0, name = 'Stick lock in the Neutral Position', category = 'Flight Control'},

{combos = {{key = 'X', reformers = {'LCtrl'}}}, 			pressed = 3013, cockpit_device_id = 5, value_pressed = 1.0, name = 'Throttle Control Lock', category = 'Flight Control'},
{combos = {{key = 'X', reformers = {'LCtrl', 'LAlt'}}},		pressed = 3013, cockpit_device_id = 5, value_pressed = -1.0, name = 'Throttle Control Unlock', category = 'Flight Control'},
{combos = {{key = 'X', reformers = {'LAlt'}}}, 				pressed = 3015, cockpit_device_id = 5, value_pressed = 1.0, name = 'Propeller & Mixture Lock', category = 'Flight Control'},
{combos = {{key = 'X', reformers = {'LShift', 'LAlt'}}},	pressed = 3015, cockpit_device_id = 5, value_pressed = -1.0, name = 'Propeller & Mixture Unlock', category = 'Flight Control'},

--flaps
{combos = {{key = 'F', reformers = {'LShift'}}} , 			down = 3002, cockpit_device_id = 12, value_down = 1.0, name = 'Flaps Up', category = 'Flight Control'},
{combos = {{key = 'F'}}, 									down = 3002, cockpit_device_id = 12, value_down = 0.0, name = 'Flaps Down', category = 'Flight Control'},

--Trimmers
{combos = {{key = ',', reformers = {'RCtrl'}}}, 			pressed = 3011, cockpit_device_id = 12, value_pressed = -0.1, name = 'Trim Aileron Left', category = 'Flight Control'},
{combos = {{key = '/', reformers = {'RCtrl'}}}, 			pressed = 3011, cockpit_device_id = 12, value_pressed = 0.1, name = 'Trim Aileron Right', category = 'Flight Control'},
{combos = {{key = ';', reformers = {'RCtrl'}}}, 			pressed = 3012, cockpit_device_id = 12, value_pressed = 0.05, name = 'Trim Elevator Down', category = 'Flight Control'},
{combos = {{key = '.', reformers = {'RCtrl'}}}, 			pressed = 3012, cockpit_device_id = 12, value_pressed = -0.05, name = 'Trim Elevator Up', category = 'Flight Control'},
{combos = {{key = 'Z', reformers = {'RCtrl'}}},				pressed = 3013, cockpit_device_id = 12, value_pressed = -0.1, name = 'Trim Rudder Left', category = 'Flight Control'},
{combos = {{key = 'X', reformers = {'RCtrl'}}}, 			pressed = 3013, cockpit_device_id = 12, value_pressed = 0.1, name = 'Trim Rudder Right', category = 'Flight Control'},
{combos = {{key = 'T', reformers = {'LCtrl'}}}, 			down = 3014, cockpit_device_id = 12, value_down = 1.0, name = 'Trimmers Reset', category = 'Flight Control'},

-- Systems
{combos = {{key = 'W'}}, 									down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = 'Wheel brake Both', category = 'Systems'},
{combos = {{key = 'W', reformers = {'LCtrl'}}}, 			down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = 'Wheel brake Left', category = 'Systems'},
{combos = {{key = 'W', reformers = {'LAlt'}}}, 				down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = 'Wheel brake Right', category = 'Systems'},
{combos = {{key = 'W', reformers = {'LCtrl', 'LAlt'}}},		down = 3006, up = 3006, cockpit_device_id = 12, value_down = 1.0,	value_up = 0.0, name = 'Wheel brake Parking', category = 'Systems'},
{combos = {{key = 'E', reformers = {'LCtrl'}}}, 			down = iCommandPlaneEject, name = 'Bailout', category = 'Systems'},
{combos = {{key = 'Space', reformers = {'LCtrl'}}},			down = 3005, cockpit_device_id = 4, value_down = 1, name = 'Bomb salvo release Left', category = 'Systems'},
{combos = {{key = 'Space', reformers = {'RCtrl'}}},			down = 3006, cockpit_device_id = 4, value_down = 1, name = 'Bomb salvo release Right', category = 'Systems'},

{combos = {{key = 'C', reformers = {'LCtrl'}}}, 			pressed = 3004, cockpit_device_id = 6, value_pressed = -1.0, name = 'Canopy Opening', category = 'Systems'},
{combos = {{key = 'C', reformers = {'LShift'}}}, 			pressed = 3004, cockpit_device_id = 6, value_pressed = 1.0, name = 'Canopy Closing', category = 'Systems'},
{combos = {{key = 'C', reformers = {'LShift', 'LCtrl'}}},	down = 3005, cockpit_device_id = 6, value_down = 1.0, name = 'Canopy Emergency Release', category = 'Systems'},

{down = 3002, cockpit_device_id = 3, value_down = 1.0, name = 'Hydraulic Emergency Release Knob', category = 'Systems'},

{combos = {{key = 'G'}}, 									down = 3004, cockpit_device_id = 12, value_down = 1.0, name = 'Landing Gear Up/Down', category = 'Systems'},
{down = 3018, up = 3018, cockpit_device_id = 12, value_down = 1.0, value_up = 0.0, name = 'Landing Gear Safe Light Test', category = 'Systems'},
{down = 3007, up = 3007, cockpit_device_id = 12, value_down = 1.0, value_up = 0.0, name = 'Landing Gear Unsafe Light Test', category = 'Systems'},

{combos = {{key = 'B', reformers = {'RShift'}}},			down = 3002, cockpit_device_id = 7, value_down = 1.0, name = 'Oxygen regulator Deluter lever Auto-Mix On-Off', category = 'Systems'},
{combos = {{key = 'B', reformers = {'RCtrl'}}},				down = 3004, cockpit_device_id = 7, value_down = 1.0, name = 'Oxygen regulator Emergency By-Pass Valve', category = 'Systems'},

--K-14 GunSight
{combos = {{key = '/'}}, 									pressed = 3014, cockpit_device_id = 1, value_pressed = 0.5,   name = 'Gunsight target span Increase', category = 'K-14 gunsight'},
{combos = {{key = ','}}, 									pressed = 3014, cockpit_device_id = 1, value_pressed = -0.5,   name = 'Gunsight target span Decrease', category = 'K-14 gunsight'},

{combos = {{key = ';'}}, 									pressed = 3002, cockpit_device_id = 1, value_pressed = 0.7,	 name = 'Gunsight range to target Increase', category = 'K-14 gunsight'},
{combos = {{key = '.'}}, 									pressed = 3002, cockpit_device_id = 1, value_pressed = -0.7,	 name = 'Gunsight range to target Decrease', category = 'K-14 gunsight'},

{combos = {{key = '4'}}, 									down = 3003, cockpit_device_id = 1, value_down = 0.0,	 name = 'Gunsight mode FIXED', category = 'K-14 gunsight'},
{combos = {{key = '3'}}, 									down = 3003, cockpit_device_id = 1, value_down = 0.1,	 name = 'Gunsight mode FIXED GYRO', category = 'K-14 gunsight'},
{combos = {{key = '2'}}, 									down = 3003, cockpit_device_id = 1, value_down = 0.2,	 name = 'Gunsight mode GYRO', category = 'K-14 gunsight'},
{combos = {{key = '5'}}, 									down = 3009, cockpit_device_id = 1, value_down = 1.0,	 name = 'Gunsight fixed ring blanc lever', category = 'K-14 gunsight'},
{combos = {{key = '1'}}, 									down = 3017, cockpit_device_id = 1, value_down = 1.0,	 name = 'Gunsight mode (rotary)', category = 'K-14 gunsight'},

{combos = {{key = 'O', reformers = {'RShift'}}}, 			down = 3008, cockpit_device_id = 1, value_down = 1.0,	 name = 'Gunsight gyromotor power', category = 'K-14 gunsight'},
{combos = {{key = 'O', reformers = {'RCtrl'}}}, 			pressed = 3010, cockpit_device_id = 1, value_pressed = 1.0,	 name = 'Gunsight brightness Increase', category = 'K-14 gunsight'},
{combos = {{key = 'O', reformers = {'RAlt'}}}, 				pressed = 3010, cockpit_device_id = 1, value_pressed = -1.0,	 name = 'Gunsight brightness Decrease', category = 'K-14 gunsight'},


--Right Switch Panel
{combos = {{key = 'B'}},									down = 3002, cockpit_device_id = 14, value_down = 1.0,	 name = 'Battery', category = 'Right Switch Panel'},
{combos = {{key = 'V'}},									down = 3004, cockpit_device_id = 14, value_down = 1.0,	 name = 'Generator', category = 'Right Switch Panel'},
{combos = {{key = 'C', reformers = {'LShift', 'LAlt'}}}, 	down = 3020, cockpit_device_id = 14, value_down = 1.0, name = 'Gun heat', category = 'Right Switch Panel'},
{combos = {{key = 'P', reformers = {'RCtrl'}}}, 			down = 3006, cockpit_device_id = 14, value_down = 1.0,	 name = 'Pitot heat', category = 'Right Switch Panel'},

{combos = {{key = 'U', reformers = {'RCtrl'}}}, 			down = 3008, cockpit_device_id = 14, value_down = -1.0, name = 'Position lights wing DIM', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'RShift'}}}, 			down = 3008, cockpit_device_id = 14, value_down = 0.0,	 name = 'Position lights wing OFF', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'RAlt'}}},				down = 3008, cockpit_device_id = 14, value_down = 1.0,	 name = 'Position lights wing BRIGHT', category = 'Right Switch Panel'},
{combos = {{key = 'U'}},									down = 3017, cockpit_device_id = 14, value_down = 1.0,	 name = 'Position lights wing (rotary)', category = 'Right Switch Panel'},

{combos = {{key = 'I', reformers = {'RCtrl'}}}, 			down = 3009, cockpit_device_id = 14, value_down = -1.0, name = 'Position light tail DIM', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'RShift'}}}, 			down = 3009, cockpit_device_id = 14, value_down = 0.0,	 name = 'Position light tail OFF', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'RAlt'}}},				down = 3009, cockpit_device_id = 14, value_down = 1.0,	 name = 'Position light tail BRIGHT', category = 'Right Switch Panel'},
{combos = {{key = 'I'}},									down = 3018, cockpit_device_id = 14, value_down = 1.0,	 name = 'Position light tail (rotary)', category = 'Right Switch Panel'},


{combos = {{key = 'Y', reformers = {'RCtrl', 'RShift'}}}, 	down = 3021, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light red Steady', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'LCtrl', 'LShift'}}}, 	down = 3022, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light green Steady', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'LCtrl', 'LShift'}}}, 	down = 3023, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light amber Steady', category = 'Right Switch Panel'},
{combos = {{key = 'Y', reformers = {'RShift'}}}, 			down = 3021, cockpit_device_id = 14, value_down = 0.0, name = 'Recognition light red Off', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'LShift'}}}, 			down = 3022, cockpit_device_id = 14, value_down = 0.0, name = 'Recognition light green Off', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'LShift'}}}, 			down = 3023, cockpit_device_id = 14, value_down = 0.0, name = 'Recognition light amber Off', category = 'Right Switch Panel'},
{combos = {{key = 'Y', reformers = {'RAlt'}}}, 				down = 3021, cockpit_device_id = 14, value_down = -1.0, name = 'Recognition light red Key', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'LAlt'}}}, 				down = 3022, cockpit_device_id = 14, value_down = -1.0, name = 'Recognition light green Key', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'LAlt'}}}, 				down = 3023, cockpit_device_id = 14, value_down = -1.0, name = 'Recognition light amber Key', category = 'Right Switch Panel'},

{combos = {{key = 'Y', reformers = {'RCtrl'}}}, 			down = 3030, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light red (rotary)', category = 'Right Switch Panel'},
{combos = {{key = 'U', reformers = {'LCtrl'}}}, 			down = 3031, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light green (rotary)', category = 'Right Switch Panel'},
{combos = {{key = 'I', reformers = {'LCtrl'}}}, 			down = 3032, cockpit_device_id = 14, value_down = 1.0, name = 'Recognition light amber (rotary)', category = 'Right Switch Panel'},

{combos = {{key = 'Y'}}, 									down = 3024, up = 3024, cockpit_device_id = 14, value_down = 1.0, value_up = 0.0, name = 'Recognition lights key', category = 'Right Switch Panel'},
{down = 3025, up = 3025, cockpit_device_id = 14, value_down = 1.0, value_up = 0.0, name = 'Circuit Protectors Cover', category = 'Right Switch Panel'},


--Remote compass 
{combos = {{key = 'C', reformers = {'RAlt'}}}, 				pressed = 3002, cockpit_device_id = 23, value_pressed = -1.0, name = 'Compass course Decrease', category = 'Front Dash'},
{combos = {{key = 'C', reformers = {'RCtrl'}}},				pressed = 3002, cockpit_device_id = 23, value_pressed = 1.0, name = 'Compass course Increase', category = 'Front Dash'},

--Directional gyro 
{combos = {{key = 'G', reformers = {'RAlt'}}},				pressed = 3002, cockpit_device_id = 20, value_pressed =-1.0, name = 'Directional gyro heading Decrease', category = 'Front Dash'},
{combos = {{key = 'G', reformers = {'RCtrl'}}},				pressed = 3002, cockpit_device_id = 20, value_pressed = 1.0, name = 'Directional gyro heading Increase', category = 'Front Dash'},
{combos = {{key = 'G', reformers = {'RShift'}}},			down = 3004, cockpit_device_id = 20, value_down = 1, name = 'Directional gyro Cage/Uncage', category = 'Front Dash'},

--	AN5736 Flight Indicator (Gyro Horizon Indicator) 
{combos = {{key = 'V', reformers = {'RCtrl'}}},				pressed = 3004, cockpit_device_id = 19, value_pressed = -1.0, name = 'Horizon pitch Decrease', category = 'Front Dash'},
{combos = {{key = 'V', reformers = {'RAlt'}}},				pressed = 3004, cockpit_device_id = 19, value_pressed = 1.0, name = 'Horizon pitch Increase', category = 'Front Dash'},
{combos = {{key = 'V', reformers = {'LShift'}}},			down = 3005, cockpit_device_id = 19, value_down = 1.0, name = 'Horizon Cage', category = 'Front Dash'},
{combos = {{key = 'V', reformers = {'LAlt'}}},				pressed = 3006, cockpit_device_id = 19, value_pressed = -1.0, name = 'Horizon cage knob OFF', category = 'Front Dash'},
{combos = {{key = 'V', reformers = {'LCtrl'}}},				pressed = 3006, cockpit_device_id = 19, value_pressed = 1.0, name = 'Horizon cage knob ON', category = 'Front Dash'},

--Clock 
{combos = {{key = 'Q', reformers = {'RShift'}}},			down = 3003, cockpit_device_id = 22, value_down = 1.0,  name = 'Clock Winding/Adjust', category = 'Front Dash'},
{combos = {{key = 'Q', reformers = {'RCtrl'}}},				pressed = 3004, cockpit_device_id = 22, value_pressed = -1.0, name = 'Clock Winding/Adjust Decrease', category = 'Front Dash'},
{combos = {{key = 'Q', reformers = {'RAlt'}}},				pressed = 3004, cockpit_device_id = 22, value_pressed = 1.0, name = 'Clock Winding/Adjust Increase', category = 'Front Dash'},

--Altimeter 
{combos = {{key = 'B', reformers = {'LCtrl'}}},				pressed = 3002, cockpit_device_id = 17, value_pressed = -1.0, name = 'Altimeter pressure set Decrease', category = 'Front Dash'},
{combos = {{key = 'B', reformers = {'LShift'}}},			pressed = 3002, cockpit_device_id = 17, value_pressed = 1.0, name = 'Altimeter pressure set Increase', category = 'Front Dash'},

--VHF Radio 
{combos = {{key = '`', reformers = {'LCtrl'}}},				down = 3009, cockpit_device_id = 24, value_down = 1.0, name = 'Radio Power', category = 'VHF Radio'},
{combos = {{key = '1', reformers = {'LCtrl'}}},				down = 3010, cockpit_device_id = 24, value_down = 1.0, name = 'Radio chanel A', category = 'VHF Radio'},
{combos = {{key = '2', reformers = {'LCtrl'}}},				down = 3011, cockpit_device_id = 24, value_down = 1.0, name = 'Radio chanel B', category = 'VHF Radio'},
{combos = {{key = '3', reformers = {'LCtrl'}}},				down = 3012, cockpit_device_id = 24, value_down = 1.0, name = 'Radio chanel C', category = 'VHF Radio'},
{combos = {{key = '4', reformers = {'LCtrl'}}},				down = 3013, cockpit_device_id = 24, value_down = 1.0, name = 'Radio chanel D', category = 'VHF Radio'},
{pressed = 3014, cockpit_device_id = 24, value_pressed = -1.0, name = 'Radio lights dimmer Decrease', category = 'VHF Radio'},
{pressed = 3014, cockpit_device_id = 24, value_pressed = 1.0, name = 'Radio lights dimmer Increase', category = 'VHF Radio'},

{combos = {{key = '5', reformers = {'LAlt'}}},				down = 3008, up = 3008, cockpit_device_id = 24, value_down = -1.0, value_up = 0.0, name = 'Radio Mode T', category = 'VHF Radio'},
{combos = {{key = '5', reformers = {'LCtrl'}}},				down = 3007, cockpit_device_id = 24, value_down = 0.0, name = 'Radio mode R', category = 'VHF Radio'},
{combos = {{key = '5', reformers = {'LShift'}}},			down = 3007, cockpit_device_id = 24, value_down = 1.0, name = 'Radio mode REM', category = 'VHF Radio'},
{combos = {{key = '5', reformers = {'LCtrl', 'LAlt'}}},		down = 3018,  cockpit_device_id = 24, value_down = 1.0,  name = 'Radio mode switch locking lever', category = 'VHF Radio'},
{combos = {{key = '6', reformers = {'RCtrl'}}},				pressed = 3016, cockpit_device_id = 24, value_pressed = -1.0, name = 'VHF radio volume Decrease', category = 'VHF Radio'},
{combos = {{key = '6', reformers = {'RAlt'}}},				pressed = 3016, cockpit_device_id = 24, value_pressed = 1.0, name = 'VHF radio volume Increase', category = 'VHF Radio'},

--Front Switch Box
{combos = {{key = 'Q', reformers = {'LCtrl'}}},				down = 3007, cockpit_device_id = 13, value_down = 1.0, name = 'Gun safety switch GUN CAMERA SIGHT', category = 'Front Switch Box'},
{combos = {{key = 'Q', reformers = {'LShift'}}},			down = 3007, cockpit_device_id = 13, value_down = 0.0, name = 'Gun safety switch OFF', category = 'Front Switch Box'},
{combos = {{key = 'Q', reformers = {'LAlt'}}},				down = 3007, cockpit_device_id = 13, value_down = -1.0, name = 'Gun safety switch CAMERA SIGHT', category = 'Front Switch Box'},
{combos = {{key = 'Q'}},									down = 3016, cockpit_device_id = 13, value_down = 1.0, name = 'Gun safety switch (rotary)', category = 'Front Switch Box'},

{combos = {{key = 'End', reformers = {'RShift'}}}, 			down = 3002, cockpit_device_id = 13, value_down = 0.0,	 name = 'Ignition switch OFF', category = 'Front Switch Box'},
{down = 3002, cockpit_device_id = 13, value_down = 0.1,	 name = 'Ignition switch Right', category = 'Front Switch Box'},
{down = 3002, cockpit_device_id = 13, value_down = 0.2,	 name = 'Ignition switch Left', category = 'Front Switch Box'},
{combos = {{key = 'End', reformers = {'RCtrl'}}}, 			down = 3002, cockpit_device_id = 13, value_down = 0.3,	 name = 'Ignition switch BOTH', category = 'Front Switch Box'},
{combos = {{key = 'End'}}, 									down = 3006, cockpit_device_id = 13, value_down = 0.3,	 name = 'Ignition switch (rotary)', category = 'Front Switch Box'},

{combos = {{key = 'L', reformers = {'RCtrl'}}}, 			pressed = 3003, cockpit_device_id = 13, value_pressed = -1.0, name = 'Cockpit Lights Decrease', category = 'Front Switch Box'},
{combos = {{key = 'L', reformers = {'RAlt'}}}, 				pressed = 3003, cockpit_device_id = 13, value_pressed = 1.0, name = 'Cockpit Lights Increase', category = 'Front Switch Box'},

{combos = {{key = 'H', reformers = {'RAlt'}}}, 				down = 3008, up = 3008, cockpit_device_id = 13, value_down = 1.0,	value_up = 0.0, name = 'Silence Horn', category = 'Front Switch Box'},

{combos = {{key = '6', reformers = {'LCtrl'}}},				down = 3009, cockpit_device_id = 13, value_down = -1.0, name = 'Bomb arming switch left ARM', category = 'Front Switch Box'},
{combos = {{key = '6', reformers = {'LShift'}}},			down = 3009, cockpit_device_id = 13, value_down = 0.0, name = 'Bomb arming switch left OFF', category = 'Front Switch Box'},
{combos = {{key = '6', reformers = {'LAlt'}}},				down = 3009, cockpit_device_id = 13, value_down = 1.0, name = 'Bomb arming switch left CHEM. RELEASE', category = 'Front Switch Box'},
{combos = {{key = '6'}},									down = 3017, cockpit_device_id = 13, value_down = 1.0, name = 'Bomb arming switch left (rotary)', category = 'Front Switch Box'},
{combos = {{key = '7', reformers = {'LCtrl'}}},				down = 3010, cockpit_device_id = 13, value_down = -1.0, name = 'Bomb arming switch right ARM', category = 'Front Switch Box'},
{combos = {{key = '7', reformers = {'LShift'}}},			down = 3010, cockpit_device_id = 13, value_down = 0.0, name = 'Bomb arming switch right OFF', category = 'Front Switch Box'},
{combos = {{key = '7', reformers = {'LAlt'}}},				down = 3010, cockpit_device_id = 13, value_down = 1.0, name = 'Bomb arming switch right CHEM. RELEASE', category = 'Front Switch Box'},
{combos = {{key = '7'}},									down = 3018, cockpit_device_id = 13, value_down = 1.0, name = 'Bomb arming switch right (rotary)', category = 'Front Switch Box'},

{combos = {{key = 'D', reformers = {'LCtrl', 'LShift'}}},	down = 3011, cockpit_device_id = 13, value_down = 0.0, name = 'Bomb-rocket selector switch SAFE', category = 'Front Switch Box'},
{combos = {{key = 'D', reformers = {'LAlt'}}}, 				down = 3011, cockpit_device_id = 13, value_down = 0.1, name = 'Bomb-rocket selector switch TRAIN', category = 'Front Switch Box'},
{combos = {{key = 'D', reformers = {'LCtrl'}}}, 			down = 3011, cockpit_device_id = 13, value_down = 0.2, name = 'Bomb-rocket selector switch BOTH', category = 'Front Switch Box'},
{combos = {{key = 'D', reformers = {'LShift'}}},			down = 3011, cockpit_device_id = 13, value_down = 0.3, name = 'Bomb-rocket selector switch ROCKETS', category = 'Front Switch Box'},
{combos = {{key = 'D'}},									down = 3019, cockpit_device_id = 13, value_down = 1.0, name = 'Bomb-rocket selector switch (rotary)', category = 'Front Switch Box'},

--Rocket Control Panel
{combos = {{key = '8', reformers = {'RShift'}}},			down = 3007, cockpit_device_id = 4, value_down = 0.0, name = 'Rockets release control switch OFF', category = 'Rocket Control Panel'},
{combos = {{key = '8', reformers = {'RCtrl'}}},				down = 3007, cockpit_device_id = 4, value_down = 0.1, name = 'Rockets release control switch SINGLE', category = 'Rocket Control Panel'},
{combos = {{key = '8', reformers = {'RAlt'}}},				down = 3007, cockpit_device_id = 4, value_down = 0.2, name = 'Rockets release control switch AUTO', category = 'Rocket Control Panel'},
{combos = {{key = '8'}},									down = 3015, cockpit_device_id = 4, value_down = 1.0, name = 'Rockets release control switch (rotary)', category = 'Rocket Control Panel'},
{combos = {{key = '8', reformers = {'LAlt'}}},				down = 3012, cockpit_device_id = 4, value_down = -1.0, name = 'Rocket counter reset', category = 'Rocket Control Panel'},

{down = 3011, cockpit_device_id = 4, value_down = 1, name = 'Rockets Delay/Inst', category = 'Rocket Control Panel'},

--Engine control panel
{combos = {{key = 'S', reformers = {'RCtrl', 'RShift'}}},	down = 3003, cockpit_device_id = 15, value_down = 1.0, name = 'Supercharger switch Cover', category = 'Engine Control Panel'},
{combos = {{key = 'S', reformers = {'RAlt'}}},				down = 3001, cockpit_device_id = 15, value_down = 0.0, name = 'Supercharger switch AUTO', category = 'Engine Control Panel'},
{combos = {{key = 'S', reformers = {'RCtrl'}}},				down = 3001, cockpit_device_id = 15, value_down = 0.1, name = 'Supercharger switch LOW', category = 'Engine Control Panel'},
{combos = {{key = 'S', reformers = {'RShift'}}},			down = 3001, up = 3001, cockpit_device_id = 15, value_down = 0.2, value_up = 0.1, name = 'Supercharger switch HIGH', category = 'Engine Control Panel'},

{combos = {{key = 'L', reformers = {'LShift'}}},			down = 3004, up = 3004, cockpit_device_id = 15, value_down = 1.0, value_up = 0.0, name = 'High Blower lamp test', category = 'Engine Control Panel'},
{combos = {{key = 'Delete'}},								down = 3006, cockpit_device_id = 15, value_down = 1.0, name = 'Fuel Booster', category = 'Engine Control Panel'},
{down = 3007, up = 3007, cockpit_device_id = 15, value_down = 1.0, value_up = 0.0, name = 'Oil Dilute', category = 'Engine Control Panel'},
{combos = {{key = 'Home'}},									down = 3008, up = 3008, cockpit_device_id = 15, value_down = 1.0, value_up = 0.0, name = 'Starter', category = 'Engine Control Panel'},
{combos = {{key = 'Home', reformers = {'RShift'}}},			down = 3010, cockpit_device_id = 15, value_down = 1.0, name = 'Starter Switch Cover', category = 'Engine Control Panel'},
{combos = {{key = 'Insert'}},								down = 3011, up = 3011, cockpit_device_id = 15, value_down = 1.0, value_up = 0.0, name = 'Primer', category = 'Engine Control Panel'},

--Fuel Control
{combos = {{key = 'T', reformers = {'RShift'}}},			down = 3001, cockpit_device_id = 9, value_down = 0.0, name = 'Fuel selector Right Combat Tank', category = 'Fuel Control'},
{combos = {{key = 'T', reformers = {'LAlt'}}},				down = 3001, cockpit_device_id = 9, value_down = 0.1, name = 'Fuel selector Left Main Tank', category = 'Fuel Control'},
{combos = {{key = 'T', reformers = {'RCtrl'}}},				down = 3001, cockpit_device_id = 9, value_down = 0.2, name = 'Fuel selector Fuselage Tank', category = 'Fuel Control'},
{combos = {{key = 'T', reformers = {'RAlt'}}},				down = 3001, cockpit_device_id = 9, value_down = 0.3, name = 'Fuel selector Right Main Tank', category = 'Fuel Control'},
{combos = {{key = 'T', reformers = {'LShift'}}},			down = 3001, cockpit_device_id = 9, value_down = 0.4, name = 'Fuel selector Left Combat Tank', category = 'Fuel Control'},
{combos = {{key = 'T', reformers = {'LCtrl', 'LShift'}}},	down = 3003, cockpit_device_id = 9, value_down = 1.0, name = 'Fuel shut-off valve', category = 'Fuel Control'},
{combos = {{key = 'T'}},									down = 3006, cockpit_device_id = 9, value_down = 1.0, name = 'Fuel selector valve (rotary)', category = 'Fuel Control'},

--Rear Warning Radar
{combos = {{key = 'R'}},									down = 3002, cockpit_device_id = 25, value_down = 1.0, name = 'Rear warning radar Power', category = 'Rear Warning Radar'},
{combos = {{key = 'R', reformers = {'LShift'}}},			down = 3003, up = 3003, cockpit_device_id = 25, value_down = 1.0, value_up = 0.0, name = 'Rear warning radar Test', category = 'Rear Warning Radar'},
{combos = {{key = 'R', reformers = {'LCtrl'}}},				pressed = 3005, cockpit_device_id = 25, value_pressed = -1.0, name = 'Rear warning radar signal light Decrease', category = 'Rear Warning Radar'},
{combos = {{key = 'R', reformers = {'LAlt'}}},				pressed = 3005, cockpit_device_id = 25, value_pressed = 1.0, name = 'Rear warning radar signal light Increase', category = 'Rear Warning Radar'},

--Detrola receiver
{pressed = 3003, cockpit_device_id = 26, value_pressed = -1.0, name = 'Detrola Frequency Selector Decrease', category = 'Detrola Receiver'},
{pressed = 3003, cockpit_device_id = 26, value_pressed = 1.0, name = 'Detrola Frequency Selector Increase', category = 'Detrola Receiver'},
{pressed = 3004, cockpit_device_id = 26, value_pressed = -1.0, name = 'Detrola Volume Decrease', category = 'Detrola Receiver'},
{pressed = 3004, cockpit_device_id = 26, value_pressed = 1.0, name = 'Detrola Volume Increase', category = 'Detrola Receiver'},

--Homing Adapter
{down = 3001, cockpit_device_id = 28, value_down = 0.0, name = 'Homing Adapter TRANS', category = 'Homing Adapter'},
{down = 3001, cockpit_device_id = 28, value_down = 0.1, name = 'Homing Adapter COMM', category = 'Homing Adapter'},
{down = 3001, cockpit_device_id = 28, value_down = 0.2, name = 'Homing Adapter HOMING', category = 'Homing Adapter'},
{down = 3007, cockpit_device_id = 28, value_down = 0.2, name = 'Homing Adapter Mode', category = 'Homing Adapter'},
{down = 3004, cockpit_device_id = 28, value_down = 1.0, name = 'Homing Adapter CW/MCW', category = 'Homing Adapter'},
{down = 3003, up = 3003, cockpit_device_id = 28, value_down = 1.0, value_up = 0.0, name = 'Homing Adapter Circuit Breaker', category = 'Homing Adapter'},

--Iff radio set
{down = 3009, cockpit_device_id = 27, value_down = 1.0, name = 'IFF Power On/Off', category = 'IFF'},
{down = 3012, cockpit_device_id = 27, value_down = -1, name = 'IFF Code Decrease', category = 'IFF'},
{down = 3012, cockpit_device_id = 27, value_down = 1, name = 'IFF Code Increase', category = 'IFF'},
{down = 3018, cockpit_device_id = 27, value_down = 1, name = 'IFF Code', category = 'IFF'},
{down = 3003, cockpit_device_id = 27, value_down = -1, name = 'IFF TIME', category = 'IFF'},
{down = 3003, cockpit_device_id = 27, value_down = 0, name = 'IFF OFF', category = 'IFF'},
{down = 3003, cockpit_device_id = 27, value_down = 1, name = 'IFF ON', category = 'IFF'},
{down = 3019, cockpit_device_id = 27, value_down = 1, name = 'IFF Mode', category = 'IFF'},
{down = 3013, cockpit_device_id = 27, value_down = 1.0, name = 'IFF Detonator Circuit On/Off', category = 'IFF'},
{down = 3010, cockpit_device_id = 27, value_down = 1, name = 'IFF Distress Signal', category = 'IFF'},
{down = 3007, up = 3007, cockpit_device_id = 27, value_down = 1.0, value_up = 0.0, name = 'IFF Detonator Left', category = 'IFF'},
{down = 3008, up = 3008, cockpit_device_id = 27, value_down = 1.0, value_up = 0.0, name = 'IFF Detonator Right', category = 'IFF'},


--Environment
{pressed = 3004, cockpit_device_id = 11, value_pressed = -1.0, name = 'Defroster Decrease', category = 'Environment System'},
{pressed = 3004, cockpit_device_id = 11, value_pressed = 1.0, name = 'Defroster Increase', category = 'Environment System'},

{pressed = 3005, cockpit_device_id = 11, value_pressed = -1.0, name = 'Air Cold Decrease', category = 'Environment System'},
{pressed = 3005, cockpit_device_id = 11, value_pressed = 1.0, name = 'Air Cold Increase', category = 'Environment System'},

{pressed = 3006, cockpit_device_id = 11, value_pressed = -1.0, name = 'Air Hot Decrease', category = 'Environment System'},
{pressed = 3006, cockpit_device_id = 11, value_pressed = 1.0, name = 'Air Hot Increase', category = 'Environment System'},

{combos = {{key = 'N', reformers = {'LCtrl'}}}, 			pressed = 3005, cockpit_device_id = 10, value_pressed = -1.0, name = 'Cockpit Fluorescent Light Left Decrease', category = 'Environment System'},
{combos = {{key = 'N', reformers = {'LShift'}}}, 			pressed = 3005, cockpit_device_id = 10, value_pressed = 1.0, name = 'Cockpit Fluorescent Light Left Increase', category = 'Environment System'},
{combos = {{key = 'N', reformers = {'RCtrl'}}}, 			pressed = 3010, cockpit_device_id = 14, value_pressed = -1.0, name = 'Cockpit Fluorescent Light Right Decrease', category = 'Environment System'},
{combos = {{key = 'N', reformers = {'RShift'}}}, 			pressed = 3010, cockpit_device_id = 14, value_pressed = 1.0, name = 'Cockpit Fluorescent Light Right Increase', category = 'Environment System'},
{combos = {{key = 'L'}}, 									down = 3004, cockpit_device_id = 10, value_down = 1.0, name = 'Landing Light', category = 'Environment System'},

----------------------------------------------------
--Radiator Air Controls
{combos = {{key = 'A', reformers = {'LCtrl'}}}, 			down = 3001, up = 3001, cockpit_device_id = 5, value_down = 0.1, value_up = 0.0, name = 'Radiator coolant Close', category = 'Radiator Air Controls'},
{combos = {{key = 'A'}},						 			down = 3009, cockpit_device_id = 5, value_down = 0.2, name = 'Radiator coolant Auto', category = 'Radiator Air Controls'},
{combos = {{key = 'A', reformers = {'LAlt'}}},	 			down = 3001, up = 3001, cockpit_device_id = 5, value_down = 0.3, value_up = 0.0, name = 'Radiator coolant Open', category = 'Radiator Air Controls'},
{combos = {{key = 'A', reformers = {'LShift', 'LCtrl'}}},	down = 3005, cockpit_device_id = 5, value_down = 1.0, name = 'Radiator coolant Cover', category = 'Radiator Air Controls'},

{combos = {{key = 'S', reformers = {'LCtrl'}}}, 			down = 3002, up = 3002, cockpit_device_id = 5, value_down = 0.1, value_up = 0.0, name = 'Radiator oil Close', category = 'Radiator Air Controls'},
{combos = {{key = 'S'}}, 									down = 3010, cockpit_device_id = 5, value_down = 0.2, name = 'Radiator oil Auto', category = 'Radiator Air Controls'},
{combos = {{key = 'S', reformers = {'LAlt'}}}, 				down = 3002, up = 3002, cockpit_device_id = 5, value_down = 0.3, value_up = 0.0, name = 'Radiator oil Open', category = 'Radiator Air Controls'},
{combos = {{key = 'S', reformers = {'LShift', 'LCtrl'}}}, 	down = 3006, cockpit_device_id = 5, value_down = 1.0, name = 'Radiator oil Cover', category = 'Radiator Air Controls'},

--Carburetor air control
{combos = {{key = 'H', reformers = {'LShift', 'LCtrl'}}}, 	pressed = 3008, cockpit_device_id = 5, value_pressed = -1.0, name = 'Cold Air Control to UNRAMMED FILTERED', category = 'Carburetor Air Controls'},
{combos = {{key = 'H', reformers = {'LShift'}}}, 			pressed = 3008, cockpit_device_id = 5, value_pressed = 1.0, name = 'Cold Air Control to RAM', category = 'Carburetor Air Controls'},
{combos = {{key = 'H', reformers = {'LCtrl'}}}, 			pressed = 3028, cockpit_device_id = 5, value_pressed = -1.0, name = 'Warm Air Control to HOT', category = 'Carburetor Air Controls'},
{combos = {{key = 'H', reformers = {'LAlt'}}}, 				pressed = 3028, cockpit_device_id = 5, value_pressed = 1.0, name = 'Warm Air Control to NORMAL', category = 'Carburetor Air Controls'},


--- Kneeboard
{combos = {{key = ']'}}						   , 			down = 3001, cockpit_device_id = 29, value_down = 1.0, name = 'Kneeboard Next Page'  , category = 'Kneeboard'},
{combos = {{key = '['}}						   , 			down = 3002, cockpit_device_id = 29, value_down = 1.0, name = 'Kneeboard Previous Page', category = 'Kneeboard'},
{combos = {{key = 'K', reformers = {'RShift'}}}, 			down = iCommandPlaneShowKneeboard,	name = 'Kneeboard ON/OFF', category = 'Kneeboard'},
{combos = {{key = 'K'}}						   , 			down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = 'Kneeboard glance view'  , category = 'Kneeboard'},
{combos = {{key = 'K', reformers = {'RCtrl'}}} , 			down = 3003	, cockpit_device_id = 29,value_down = 1.0, name = 'Kneeboard current position mark point'  , category = 'Kneeboard'},

--Night Vision Goggles
{combos = {{key = 'H', reformers = {'RShift'}}}		   , 	down    = iCommandViewNightVisionGogglesOn   , name = 'Night Vision Goggles'   , category = 'Sensors'},
{combos = {{key = 'H', reformers = {'RShift','RCtrl'}}}, 	pressed = iCommandPlane_Helmet_Brightess_Up  , name = 'Night Vision Goggles Gain Up'  , category = 'Sensors'},
{combos = {{key = 'H', reformers = {'RShift','RAlt'}}} , 	pressed = iCommandPlane_Helmet_Brightess_Down, name = 'Night Vision Goggles Gain Down', category = 'Sensors'},

--FAC
--{combos = {{key = 'B', reformers = {'LWin'}}}, down = iCommandViewBinocular , name = 'Binocular view toggle', category = 'FAC'},
--{combos = {{key = 'L', reformers = {'LAlt'}}}, down = iCommandViewLaserOnOff, name = 'Binocular laser illumination toggle', category = 'FAC'},
--{combos = {{key = 'Z', reformers = {'LWin'}}}, down = iCommandViewIR		, name = 'Binocular view IR mode', category = 'FAC'},


},
}
end
