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

	w::Volume_Down
	e::Volume_Up
	r::Volume_Mute
	
	a::Esc
	s::Media_Prev
	d::Media_Play_Pause
	f::Media_Next
	v:: ;switch ScrollLock. Alternatively deactivate it by pressing i.
		SetScrollLockState, % GetKeyState("ScrollLock","T") ? "Off" : "On"
		return
	
	z::
		Send, {Ctrl Down}{BackSpace}{Ctrl Up}
		return
	u::Home
	i::
		Send, {Ctrl Down}{Left}{Ctrl Up}
		return
	o::
		Send, {Ctrl Down}{Right}{Ctrl Up}
		return
	p::End
	ü::
		Send, {Ctrl Down}{Del}{Ctrl Up}
		return
	
	h::BackSpace
	j::Left ;stolen from vim. Reorder, if you don't like it.
	k::Down ;stolen from vim. Reorder, if you don't like it.
	l::Up ;stolen from vim. Reorder, if you don't like it.
	ö::Right ;stolen from vim. Reorder, if you don't like it.
	ä::Del ;stolen from vim. Reorder, if you don't like it.
	
	n::Enter
#If

#If NumPad
	q::
		Send, %Percent%
		return
	w::^
	e::-
	r::+
	a::(
	s::/
	d::*
	f::)
	
	9::/
	0::*
	p::-
	ö::+
	-::Enter
	z::$
	h::€
	n::=
	
	u::1 ;change to 7, if you want the other order
	i::2 ;change to 8, if you want the other order
	o::3 ;change to 9, if you want the other order
	j::4
	k::5
	l::6
	m::7 ;change to 1, if you want the other order
	,::8 ;change to 2, if you want the other order
	.::9 ;change to 3, if you want the other order
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
		
	q::PGUP
	w::XButton1
	e::XButton2
	r::PGDN
	a::WheelLeft
	s::WheelUp
	d::WheelDown
	f::WheelRight
	g::
		SetScrollLockState, % GetKeyState("ScrollLock","T") ? "Off" : "On"
		return
	
	z::
		Send, {Ctrl Down}{BackSpace}{Ctrl Up}
		return
	u::Home
	i::
		Send, {Ctrl Down}{Left}{Ctrl Up}
		return
	o::
		Send, {Ctrl Down}{Right}{Ctrl Up}
		return
	p::End
	ü::
		Send, {Ctrl Down}{del}{Ctrl Up}
		return
	
	h::BackSpace
	j::Left ;basically from Vim, reorder if you don't like it
	k::Down ;basically from Vim, reorder if you don't like it
	l::Up ;basically from Vim, reorder if you don't like it
	ö::Right ;basically from Vim, reorder if you don't like it
	ä::Del
	
	n::Enter
#If

;Space commands
;This is why Space fires when released. Put ; in front of every line or delete them if you don't like it.
Space::Space
Space & q::(
Space & w::, ;Need to test, if ; appears when I press Shift
Space & e::.
Space & r::)
Space & t::^
Space & z::=
Space & u::+
Space & i::-
Space & o::*
Space & p::/

;bringing the number line in the home row
Space & a::1
Space & s::2
Space & d::3
Space & f::4
Space & g::5
Space & h::6
Space & j::7
Space & k::8
Space & l::9
Space & ö::0
Space & ä::
	Send, %Percent%
	return