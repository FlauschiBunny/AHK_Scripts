;This Script emulates my usual keyboard layers from QMK, etc.
;When a mechanical keyboard with layers is in use, CapsLock and the other layer keys are never send...

;Boiler plate
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

;Disable states
SetCapsLockState, AlwaysOff
SetScrollLockState, AlwaysOff

;LAYER1: Focus on navigation and editing
;Use CapsLock for layer activation, Alt + CapsLock for normal CapsLock
!CapsLock::SetCapsLockState, % GetKeyState("CapsLock", "T") ? "AlwaysOff" : "On"

;Right hand
;Cursor
CapsLock & i::Send {Blind}{Up}
CapsLock & k::Send {Blind}{Down}
CapsLock & j::Send {Blind}{Left}
CapsLock & l::Send {Blind}{Right}
;Navigation
CapsLock & u::Send {Blind}{Home}
CapsLock & o::Send {Blind}{End}
CapsLock & n::Send {Blind}{Delete}
CapsLock & p::Send {Blind}{Insert}
CapsLock & y::Send {Blind}{PgUp}
CapsLock & h::Send {Blind}{PgDn}
CapsLock & `;::Send {Blind}{BackSpace}
;Gimmicks
CapsLock & '::Run, Launch_App2 ; calculator
CapsLock & BackSpace::Send #+s ;Screenshot
;Media
CapsLock & [::Send {Volume_Up}
CapsLock & ]::Send {Volume_Down}
CapsLock & \::Send {Volume_Mute}
CapsLock & m::Send {Media_Prev}
CapsLock & ,::Send {Media_Play_Pause}
CapsLock & .::Send {Media_Prev}


;left hand
;lower row
CapsLock & LShift::Send ^a
CapsLock & z::Send ^z
CapsLock & x::Send ^x
CapsLock & c::Send ^c
CapsLock & v::Send ^v
CapsLock & b::Send ^y
;middlerow
CapsLock & f::LShift
CapsLock & d::LCtrl
CapsLock & s::LWin
CapsLock & a::LAlt
CapsLock & g::Send {Browser_Back}
;upper row
CapsLock & q::AltTabMenuDismiss
CapsLock & w::AltTabAndMenu
CapsLock & e::Send ^#{Left}
CapsLock & r::Send ^#{Right}
CapsLock & t::Send {Browser_Search}

;Function row
CapsLock & 1::Send {Blind}{F1}
CapsLock & 2::Send {Blind}{F2}
CapsLock & 3::Send {Blind}{F3}
CapsLock & 4::Send {Blind}{F4}
CapsLock & 5::Send {Blind}{F5}
CapsLock & 6::Send {Blind}{F6}
CapsLock & 7::Send {Blind}{F7}
CapsLock & 8::Send {Blind}{F8}
CapsLock & 9::Send {Blind}{F9}
CapsLock & 0::Send {Blind}{F10}
CapsLock & -::Send {Blind}{F11}
CapsLock & =::Send {Blind}{F12}
CapsLock & Esc::Send {Blind}{SC029}


; TODO additional layers with right ctrl and second key (printscreen for Lenovo iso notebook or Menu for normal 60% Keyb)
