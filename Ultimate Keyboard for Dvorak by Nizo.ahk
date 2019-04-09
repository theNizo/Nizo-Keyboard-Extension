;made by Nizo

#SingleInstance force
SetNumlockState, AlwaysOn
SetCapsLockState, AlwaysOff
NumPad:= false
Percent:= Chr(37)
		
LAlt & RAlt::
RAlt & LAlt::
	NumPad:=!NumPad
	return

#If, GetKeyState("CapsLock", "P")
	RShift::
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "AlwaysOff" : "AlwaysOn"
		return

	,::Volume_Down
	.::Volume_Up
	p::Volume_Mute
	
	a::Esc
	o::Media_Prev
	e::Media_Play_Pause
	u::Media_Next
	k::
		SetScrollLockState, % GetKeyState("ScrollLock","T") ? "Off" : "On"
		return
	
	f::
		Send, {Ctrl Down}{BackSpace}{Ctrl Up}
		return
	g::Home
	c::
		Send, {Ctrl Down}{Left}{Ctrl Up}
		return
	r::
		Send, {Ctrl Down}{Right}{Ctrl Up}
		return
	l::End
	?::
		Send, {Ctrl Down}{}{Ctrl Up}
		return
	
	d::BackSpace
	h::Left
	t::Down
	n::Up
	s::Right
	ß::Del
	
	b::Enter
#If

#If NumPad
	ü::
		Send, %Percent%
		return
	,::^
	.::-
	p::+
	a::(
	o::/
	e::*
	u::)
	
	9::/
	0::*
	l::-
	s::+
	z::Enter
	f::$
	d::€
	b::=
	
	g::1
	c::2
	r::3
	h::4
	t::5
	n::6
	m::7
	w::8
	v::9
	Space::0
#If

#If GetKeyState("ScrollLock", "T")
	Up::
		if(getKeyState("Up", "P"))
			Send, {WheelUp}
		return
	Down::
		if(getKeyState("Down", "P"))
			Send, {WheelDown}
		return
	Left::
		if(getKeyState("Left", "P"))
			Send, {WheelLeft}
		return
	Right::
		if(getKeyState("Right", "P"))
			Send, {WheelRight}
		return
		
	ü::PGUP
	,::XButton1
	.::XButton2
	p::PGDN
	a::WheelLeft
	o::WheelUp
	e::WheelDown
	u::WheelRight
	i::
		SetScrollLockState, % GetKeyState("ScrollLock","T") ? "Off" : "On"
		return
	
	f::
		Send, {Ctrl Down}{BackSpace}{Ctrl Up}
		return
	g::Home
	c::
		Send, {Ctrl Down}{Left}{Ctrl Up}
		return
	r::
		Send, {Ctrl Down}{Right}{Ctrl Up}
		return
	l::End
	?::
		Send, {Ctrl Down}{del}{Ctrl Up}
		return
	
	d::BackSpace
	h::Left
	t::Down
	n::Up
	s::Right
	ß::Del
	
	b::Enter
#If

;Space commands
Space::Space
Space & ü::(
Space & ,::, ;Need to test, if ; appears when I press Shift
Space & .::.
Space & p::)
Space & y::^
Space & f::=
Space & g::+
Space & c::-
Space & r::*
Space & l::/

Space & a::1
Space & o::2
Space & e::3
Space & u::4
Space & i::5
Space & d::6
Space & h::7
Space & t::8
Space & n::9
Space & s::0
Space & ß::
	Send, %Percent%
	return
