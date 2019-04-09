#SingleInstance force
SetNumlockState, AlwaysOn ;Forces NumLock to be on all the time. Set ; in front of it if you don't want it.
SetCapsLockState, AlwaysOff
NumPad:= false
Percent:= Chr(37)
		
LAlt & RAlt::
RAlt & LAlt::
	NumPad:=!NumPad ;Numpad alternative if you don't have one.
	return

#If, GetKeyState("CapsLock", "P") ;hotkeys when pressing Caps
	RShift:: ;Activates CapsLock
		SetCapsLockState, % GetKeyState("CapsLock","T") ? "AlwaysOff" : "AlwaysOn"
		return

	,::Volume_Down
	.::Volume_Up
	p::Volume_Mute
	
	a::Esc
	o::Media_Prev
	e::Media_Play_Pause
	u::Media_Next
	k:: ;switch ScrollLock. Alternatively deactivate it by pressing i.
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
	/::
		Send, {Ctrl Down}{Del}{Ctrl Up}
		return
	
	d::BackSpace
	h::Left ;stolen from vim. Reorder, if you don't like it.
	t::Down ;stolen from vim. Reorder, if you don't like it.
	n::Up ;stolen from vim. Reorder, if you don't like it.
	s::Right ;stolen from vim. Reorder, if you don't like it.
	-::Del ;stolen from vim. Reorder, if you don't like it.
	
	b::Enter
#If

#If NumPad
	'::
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
	
	g::1 ;change to 7, if you want the other order
	c::2 ;change to 8, if you want the other order
	r::3 ;change to 9, if you want the other order
	h::4
	t::5
	n::6
	m::7 ;change to 1, if you want the other order
	w::8 ;change to 2, if you want the other order
	v::9 ;change to 3, if you want the other order
	Space::0
#If

#If GetKeyState("ScrollLock", "T") ;basically tried to implement ScrollLock again, as it is not used anymore.
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
		
	'::PGUP
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
	/::
		Send, {Ctrl Down}{del}{Ctrl Up}
		return
	
	d::BackSpace
	h::Left ;basically from Vim, reorder if you don't like it
	t::Down ;basically from Vim, reorder if you don't like it
	n::Up ;basically from Vim, reorder if you don't like it
	s::Right ;basically from Vim, reorder if you don't like it
	-::Del
	
	b::Enter
#If

;Space commands
;This is why Space fires when released. Put ; in front of every line or delete them if you don't like it.
Space::Space
Space & '::(
Space & ,::, ;Need to test, if ; appears when I press Shift
Space & .::.
Space & p::)
Space & y::^
Space & f::=
Space & g::+
Space & c::-
Space & r::*
Space & l::/

;bringing the number line in the home row
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
Space & -::
	Send, %Percent%
	return