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
