GroupAdd RealVim, ahk_exe gvim.exe
GroupAdd RealVim, ahk_exe ExceedonDemand.exe
GroupAdd RealVim, ahk_class mintty
GroupAdd RealVim, ahk_exe cmd.exe

;F1::return  

SetTitleMatchMode, 2

*>^q::SendEvent !{F4}

#IfWinActive, ahk_exe Explorer.EXE
  *!LButton::SendEvent {BS}
;  *>^h::SendEvent !{Left}
;  *>^j::SendEvent {Enter}
;  *>^k::SendEvent {BS}
;  *>^l::SendEvent !{Right}
#IfWinActive
#IfWinActive, ahk_class CabinetWClass
;  *h::SendEvent {BS}   
;  *j::SendEvent {Down} 
;  *k::SendEvent {Up} 
;  *l::SendEvent {Enter}
;  *>^h::SendEvent {BS}   
;  *>^j::SendEvent {Down} 
;  *>^k::SendEvent {Up} 
;  *>^l::SendEvent {Enter}
;  *>-::SendEvent {BS}   
#IfWinActive
#IfWinNotActive, ahk_group RealVim
  *>^h::SendEvent {Left}   
  *>^j::SendEvent {Down} 
  *>^k::SendEvent {Up} 
  *>^l::SendEvent {Right}
  *+>^h::SendEvent +{Left}   
  *+>^j::SendEvent +{Down} 
  *+>^k::SendEvent +{Up} 
  *+>^l::SendEvent +{Right}
  *!>^h::SendEvent {Home}   
  *!>^j::SendEvent {PgDn} 
  *!>^k::SendEvent {PgUp} 
  *!>^l::SendEvent {End}
  *>^u::SendEvent ^{z}
  *>^r::SendEvent ^{y}
  *>^y::SendEvent ^{c}
  *>^p::SendEvent ^{v}
;  *>^x::SendEvent ^{x}
  >^i::SendEvent {F2}   
#IfWinNotActive
#IfWinActive, ahk_exe EXCEL.EXE
  *>^.::SendEvent ^{PgDn}
  *>^,::SendEvent ^{PgUp}
#IfWinActive
#IfWinActive, ahk_exe WinMergeU.exe
  *>^.::SendEvent ^+{Tab}
  *>^,::SendEvent ^{Tab}
#IfWinActive
#IfWinActive, ahk_exe SumatraPDF.exe
  *>^.::SendEvent ^{Tab}
  *>^,::SendEvent ^+{Tab}
  *!LButton::SendEvent !{Left}
  *!RButton::SendEvent !{Right}
#IfWinActive
#IfWinActive, ahk_exe chrome.exe
  *>^.::SendEvent ^{Tab}
  *>^,::SendEvent ^+{Tab}
#IfWinActive
#IfWinActive, ahk_exe PaintDotNet.exe
  *>^.::SendEvent ^{Tab}
  *>^,::SendEvent ^+{Tab}
#IfWinActive
#IfWinActive, ahk_exe sakura.exe
  *>^.::SendEvent ^{Tab}
  *>^,::SendEvent ^+{Tab}
  *>^w::SendEvent ^{F4}
#IfWinActive
#IfWinActive, ahk_exe WINWORD.EXE
  *>^.::SendEvent {PgDn}
  *>^,::SendEvent {PgUp}
#IfWinActive
#IfWinActive, ahk_exe ExceedonDemand.exe
  *>^.::SendEvent ^{PgDn}
  *>^,::SendEvent ^{PgUp}
  *>^=::SendEvent ^{-}
  *>^-::SendEvent ^{=}
#IfWinActive
#IfWinActive, ahk_class AtokDvWndClass
  *>^w::SendEvent !{F4}
#IfWinActive

