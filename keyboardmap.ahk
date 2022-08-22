#singleinstance force
#InstallKeybdHook

$^Del::Suspend

+Capslock::Capslock
Capslock::Ctrl

$LAlt::
	KeyWait, LAlt, T0.2
	if (ErrorLevel = 1)
	{
		SendInput, {LAlt down}
		KeyWait, LAlt
		Send, {LAlt up}
	}
	else
	{
		SendInput, ^#{Left}
	}
	
return

$RAlt::
	KeyWait, RAlt, T0.2
	if (ErrorLevel = 1)
	{
		SendInput, {RAlt down}
		KeyWait, RAlt
		SendInput, {RAlt up}
	}
	else
	{
		SendInput, ^#{Right}
	}
	
return

; $RShift::
; 	KeyWait, RShift, T0.2
; 	if (ErrorLevel = 1)
; 	{
; 		SendInput, {RShift down}
; 		KeyWait, RShift
; 		SendInput, {RShift up}
; 	}
; 	else
; 	{
; 		SendInput, {End}				
; 	}
	
; return

; $LShift::
; 	KeyWait, LShift, T0.2
; 	if (ErrorLevel = 1)
; 	{
; 		SendInput, {LShift down}
; 		KeyWait, LShift
; 		SendInput, {LShift up}
; 	}
; 	else
; 	{
; 		SendInput, {Home}				
; 	}
	
; return

; $Capslock::
; 	KeyWait, Capslock, T0.2
; 	if (ErrorLevel = 1)
; 	{
; 		SendInput, {LControl down}
; 		KeyWait, LControl
; 		SendInput, {LControl up}
; 	}
; 	else
; 	{
; 		SendInput, {Capslock}				
; 	}
	
; return