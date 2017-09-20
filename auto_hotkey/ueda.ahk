GroupAdd RealVim, ahk_exe gvim.exe
GroupAdd RealVim, ahk_exe ExceedonDemand.exe

F1::return  

SetTitleMatchMode, 2
#IfWinNotActive, ahk_group RealVim
  *>^h::SendEvent {Left}   
  *>^j::SendEvent {Down} 
  *>^k::SendEvent {Up} 
  *>^l::SendEvent {Right}
  *+>^h::SendEvent +{Left}   
  *+>^j::SendEvent +{Down} 
  *+>^k::SendEvent +{Up} 
  *+>^l::SendEvent +{Right}
  *!>^h::SendEvent !{Left}   
  *!>^j::SendEvent !{Down} 
  *!>^k::SendEvent !{Up} 
  *!>^l::SendEvent !{Right}
  *>^u::SendEvent ^{z}
  *>^r::SendEvent ^{y}
  *>^y::SendEvent ^{c}
  *>^p::SendEvent ^{v}
  *>^x::SendEvent ^{x}
#IfWinNotActive
#IfWinActive, ahk_exe EXCEL.EXE
  >^i::SendEvent {F2}   
#IfWinActive
