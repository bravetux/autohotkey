;;;;;;;;;;;; Script Compiled By Vignesh Kumar B <vigneshkumarb@hcl.com> ;;;;;;;;;;
;
;
; assign a hotkey to launch a app
;#n::Run Notepad     ; Win+n
;!n::Run Notepad     ; Alt+n
;^n::Run Notepad     ; Ctrl+n
;+n::Run Notepad     ; Shift+n
;F6::Run Notepad     ; F6
;^F6::Run Notepad    ; Ctrl+F6
;^!n::Run Notepad    ; Ctrl+Alt+n
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;;;;;;;;;;;;;;;;;;;;KEY MAPPING ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Shift + Fn Keys
+F1::Run Notepad 
+F2::Run C:\Program Files\Notepad++\notepad++.exe

;Alt + n
!1::Run %view_path%\
!2::Run %view_path%\Release

;Win + Key
#Del::FileRecycleEmpty ; win + del
return

#m::
{
  ;Open Google in Browser
	Run, www.google.co.in
	Return
}

#i::
{
	;Display IP Address of Machines
	MsgBox, % "IPAddress1:`t" A_IPAddress1 "`n"
                . "IPAddress2:`t" A_IPAddress2 "`n"
	Return
}

#h::
{
  ;Display Help in MsgBox
	MsgBox, 0,, Universal HotKeys by VigneshKumar B <vigneshkumarb@hcl.com>:
								.`r`rShift+F1 - NotePad
								.`rShift+F2 - NotePad++
								.`r`rAlt+1 - VIEW_PATH
								.`rAlt+2 - VIEW_PATH\Release
								.`r`rWin+g - www.google.co.in
								.`rWin+Del - Empty Recylebin
								.`rWin+ScrollLock - Suspend AutoHotKey Script
								.`r`rCtrl+Space - Toggle Windows Always on Top
								.`r`rWin+h - Help
								
	Return
}

; Always on Top
^SPACE:: Winset, Alwaysontop, , A ; ctrl + space
Return

; Suspend AutoHotKey
#ScrollLock::Suspend ; Win + scrollLock
return

;;;;;;;;;; KEY MAPPING ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;CAPSLOCK KEY Minimizes Windows
Capslock::WinMinimize,A

;Turn Caps Lock into a Shift key
;Capslock::Shift
;return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
