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
	
	y::
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
	[::
		Send, {Ctrl Down}{Del}{Ctrl Up}
		return
	
	h::BackSpace
	j::Left ;stolen from vim. Reorder, if you don't like it.
	k::Down ;stolen from vim. Reorder, if you don't like it.
	l::Up ;stolen from vim. Reorder, if you don't like it.
	SC027::Right ;stolen from vim. Reorder, if you don't like it.
	'::Del ;stolen from vim. Reorder, if you don't like it.
	
	n::Enter
#If