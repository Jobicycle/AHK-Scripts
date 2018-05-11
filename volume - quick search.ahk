#MaxHotkeysPerInterval 500
#Persistent

;if wheelUp while middle button is down, increase volume
WheelUp::
	if (GetKeyState("MButton")) {
		Send {Volume_Up 1.5}
	} else {
		Send {WheelUp}
	}
Return

;if wheelUp while middle button is down, decrease volume
WheelDown::
	if (GetKeyState("MButton")) {
		Send {Volume_Down 1.5}
	} else {
		Send {WheelDown}
	}
Return

!MButton::
	if WinActive("ahk_class Chrome_WidgetWin_1") {
		send ^c^t^v{return}
	}
Return

;alt+mButton to search 
^MButton::
	if WinActive("ahk_class Chrome_WidgetWin_1") {
		click 2
		sleep 50
		send ^c^t^v{return}
	}
Return