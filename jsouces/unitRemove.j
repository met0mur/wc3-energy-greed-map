library unittimerremove initializer init

globals
private unit array ua
private real array ta
private integer ne=0
endglobals

private function GO takes nothing returns nothing
local integer i=0
loop
    exitwhen i==ne
    if ta[i]<=0 then
        call RemoveUnit(ua[i])
        set ua[i]=ua[ne-1]
        set ta[i]=ta[ne-1]
        set ne=ne-1
    else
        set ta[i]=ta[i]-.25
        set i=i+1
    endif
endloop
endfunction

function removeunit takes unit u, real t returns nothing
set ua[ne]=u
set ta[ne]=t
set ne=ne+1
endfunction

private function init takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t,0.25,true,function GO)
endfunction

endlibrary