
library general



 define { 
 int = integer 
 bool = boolean 
 void = nothing 
 float = real
 }

    boolean confirm(real a, real min, real max){
        if a>min and a<max
            return true
        endif
        return false
    }

globals
    private location l = Location (0., 0.)
endglobals

function GetPointZ takes real x, real y returns real
    call MoveLocation (l, x, y)
    return GetLocationZ (l)
endfunction

function GetUnitZ takes unit u returns real
    call MoveLocation (l, GetUnitX (u), GetUnitY (u))
    return GetUnitFlyHeight (u) + GetLocationZ (l)
endfunction

function SetUnitZ takes unit u, real z returns nothing
    call MoveLocation (l, GetUnitX (u), GetUnitY (u))
    call SetUnitFlyHeight (u, z - GetLocationZ (l), 0.)
endfunction

integer veccount=0
struct vec
        real x
        real y
        real z
        
        
        static method create takes real x, real y, real z returns vec
            local vec v = vec.allocate()
            set v.x = x
            set v.y = y
            set v.z = z
            veccount++
            return v
        endmethod
        
        method onDestroy takes nothing returns nothing
            veccount--
        endmethod
        
        method past takes vec v returns nothing
            set .x = v.x
            set .y = v.y
            set .z = v.z
        endmethod
        
        static method u2v takes unit u returns vec
            local vec v = vec.allocate()
            v.x = GetUnitX(u)
            v.y = GetUnitY(u)
            v.z = GetUnitZ(u)
            veccount++
            return v
        endmethod
        
        method fromunit takes unit u returns nothing
            .x = GetUnitX(u)
            .y = GetUnitY(u)
            .z = GetUnitZ(u)
        endmethod
        
        method tounit takes unit u returns nothing
            SetUnitX(u,.x)
            SetUnitY(u,.y)
            SetUnitZ(u,.z)
        endmethod
        
        method sum takes vec v returns nothing
            set .x = .x + v.x
            set .y = .y + v.y
            set .z = .z + v.z
        endmethod     
        
        method setsub takes vec v1, vec v2 returns nothing
            set .x = v2.x - v1.x
            set .y = v2.y - v1.y
            set .z = v2.z - v1.z
        endmethod    
        
        method mul takes real r returns nothing
            set .x = r*.x
            set .y = r*.y
            set .z = r*.z
        endmethod
        
        method getl takes nothing returns real
            return SquareRoot(.x*.x+.y*.y+.z*.z)
        endmethod
        
        method setl takes real r returns nothing
            local real l = .getl()
            if l>0 then
                call .mul(r/l)
            endif
        endmethod
        
        method normalize takes nothing returns nothing
            local real l = .getl()
            if l>0 then
                call .mul(1/l)
            endif
        endmethod
    endstruct

    
    

struct pair 
real x=0
real y=0
real z=0
method fromunit takes unit u returns nothing
set .x=GetUnitX(u)
set .y=GetUnitY(u)

endmethod
method past takes pair p returns nothing
set .x=p.x
set .y=p.y
set .z=p.z
endmethod
method tounit takes unit u returns nothing
SetUnitX(u,.x)
SetUnitY(u,.y)
endmethod

static method u2p takes unit u returns pair p
local pair p=pair.create()
set p.x=GetUnitX(u)
set p.y=GetUnitY(u)
p.z=GetUnitZ(u)
return p
endmethod

method u2b takes unit u returns boolean
    if GetUnitX(u)==.x and GetUnitY(u)==.y
        return true
    endif
    return false
endmethod

method polar takes real dist, real angle returns nothing
    .x = .x + dist * Cos(angle * bj_DEGTORAD)
    .y = .y + dist * Sin(angle * bj_DEGTORAD)
endmethod

endstruct

function anglepair takes pair a, pair b returns real
    return bj_RADTODEG * Atan2(b.y - a.y, b.x - a.x)
endfunction

function angleunit takes unit a, unit b returns real
    return bj_RADTODEG * Atan2(GetUnitY(b) - GetUnitY(a), GetUnitX(b) - GetUnitX(a))
endfunction

function polarunit takes unit from, unit to, unit wisp, real d returns nothing
    real a=angleunit(from,to)
    real x = GetUnitX(from) + d * Cos(a * bj_DEGTORAD)
    real y = GetUnitY(from) + d * Sin(a * bj_DEGTORAD)
    SetUnitX(wisp,x)
    SetUnitY(wisp,y)
endfunction

function setmana takes unit whichUnit, real newValue returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_MANA, newValue)
endfunction

function getmana takes unit whichUnit returns real
    return GetUnitState(whichUnit, UNIT_STATE_MANA)
endfunction

function addmana takes unit whichUnit, real newValue returns nothing
    call setmana(whichUnit,getmana(whichUnit)+newValue)
endfunction

function submana takes unit whichUnit, real newValue returns nothing
    call setmana(whichUnit,getmana(whichUnit)-newValue)
endfunction

function getmax takes unit whichUnit returns real
    return GetUnitState(whichUnit, UNIT_STATE_MAX_MANA)
endfunction

function getgold takes player p returns integer
return GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
endfunction

function setgold takes player p, integer i returns nothing
call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, i)
endfunction

function addgold takes player p, integer i returns nothing
call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, getgold(p)+i)
endfunction



/////////////////////////////////////////////////////////////////////////////////
////                                                                         ////
////     Script : SetUnitMaxState                                            ////
////     Created by : Warden                                                 ////
////     Date : 13.09.2007                                                   ////
////                                                                         ////
////     www.XGM.ru | www.MODMAKING.ru                                       ////
////                                                                         ////
/////////////////////////////////////////////////////////////////////////////////

function MaxStateModifierID takes unitstate u returns integer
   if u == UNIT_STATE_MAX_LIFE then
      return 'A000'
   elseif u == UNIT_STATE_MAX_MANA then
      return 'setm'
   endif
   return 0
endfunction

/////////////////////////////////////////////////////////////////////////////////

function SetUnitMaxState takes unit u, unitstate us, integer val returns nothing
 local integer i = MaxStateModifierID(us)
 local integer c = val-R2I(GetUnitState(u,us))
   if i == 0 then
      return
   endif
   if c > 0 then
      loop
         exitwhen c == 0
         call UnitAddAbility(u,i)
         if c >= 100 then
            set c = c - 100
            call SetUnitAbilityLevel(u,i,4)
         elseif c >= 10 then
            set c = c - 10
            call SetUnitAbilityLevel(u,i,3)
         else
            set c = c - 1
            call SetUnitAbilityLevel(u,i,2)
         endif
         call UnitRemoveAbility(u,i)
      endloop
   elseif c < 0 then
      set c = -c
      loop
         exitwhen c == 0
         call UnitAddAbility(u,i)
         if c >= 100 then
            set c = c - 100
            call SetUnitAbilityLevel(u,i,7)
         elseif c >= 10 then
            set c = c - 10
            call SetUnitAbilityLevel(u,i,6)
         else
            set c = c - 1
            call SetUnitAbilityLevel(u,i,5)
         endif
         call UnitRemoveAbility(u,i)
      endloop
   endif
endfunction

/////////////////////////////////////////////////////////////////////////////////

function setmax takes unit whichUnit, real val returns nothing
    SetUnitMaxState(whichUnit, UNIT_STATE_MAX_MANA,R2I(val))
endfunction

nothing trace(string s) {
local integer i = 0
    loop
        call DisplayTimedTextToPlayer(Player(i),0,0,10,"DEV: "+s)
        set i = i + 1
        exitwhen i == bj_MAX_PLAYERS
    endloop
}
nothing print(string s) {BJDebugMsg(s)}
nothing print1(string s) {
    local integer i = 0
    loop
        call DisplayTimedTextToPlayer(Player(i),0,0,10,s)
        set i = i + 1
        exitwhen i == bj_MAX_PLAYERS
    endloop
}

function distp takes pair a, pair b returns real
    local real dx = b.x - a.x
    local real dy = b.y - a.y
    return SquareRoot(dx * dx + dy * dy)
endfunction

    real distcord (real Xa, real Ya, real Xb, real Yb) { 
        real dx = Xb - Xa
        real dy = Yb - Ya
        return SquareRoot(dx * dx + dy * dy)
    }

function DistanceBetweenWidgets takes widget a, widget b returns real
    local real dx = GetWidgetX(b) - GetWidgetX(a)
    local real dy = GetWidgetY(b) - GetWidgetY(a)
    return SquareRoot(dx * dx + dy * dy)
endfunction

string B2S(boolean b){
if b==true
    return "true"
endif
return "false"
}

function GroupAddUnitsInTriangle_AngleCheck takes real angle, real angle1, real angle2, real PI2 returns boolean
 local real x
    if (angle1>angle2) then
        set x=angle1
        set angle1=angle2
        set angle2=x
    endif
    if (angle2-angle1>angle1 - (angle2-PI2)) then
        set angle2=angle2-PI2
        if (angle < bj_PI) then
            set angle=angle-PI2
        endif
        return (angle>=angle2) and (angle<=angle1)
    endif
 return (angle>=angle1) and (angle<=angle2)
endfunction

function GetRectThatLimitsTriangle takes real x1, real y1, real x2, real y2, real x3, real y3 returns rect
 local real maxx
 local real minx
    if (x1>x2) then
        if (x2>x3) then     //x1>x2>x3
            set maxx=x1
            set minx=x3
        elseif (x3>x1) then //x3>x1>x2
            set maxx=x3
            set minx=x2
        else                //x3>x1>x2
            set maxx=x1
            set minx=x2
        endif
    elseif (x1>x3) then //x2>x1>x3
        set maxx=x2
        set minx=x3
    elseif (x3>x2) then //x3>x2>x1 
        set maxx=x3
        set minx=x1
    else                //x2>x3>x1
        set maxx=x2
        set minx=x1
    endif

    if (y1>y2) then
        if (y2>y3) then     //y1>y2>y3
            return Rect(minx,y3,maxx,y1)
        elseif (y3>y1) then //y3>y1>y2
            return Rect(minx,y2,maxx,y3)
        else                //y3>y1>y2
            return Rect(minx,y2,maxx,y1)
        endif
    elseif (y1>y3) then //y2>y1>y3
        return Rect(minx,y3,maxx,y2)
    elseif (y3>y2) then //y3>y2>y1 
        return Rect(minx,y1,maxx,y3)
    endif
 //y2>y3>y1
 return Rect(minx,y1,maxx,y2)
endfunction



function GroupAddUnitsInTriangle takes group whichGroup, real x1, real y1, real x2, real y2, real x3, real y3 returns nothing
 local rect semi=GetRectThatLimitsTriangle(x1,y1,x2,y2,x3,y3)
 local group inrect=CreateGroup()
 local unit picked
 local real x
 local real y
 local real alpha=Atan2(y2-y1,x2-x1)
 local real beta =Atan2(y3-y1,x3-x1)
 local real gama =Atan2(y1-y2,x1-x2)
 local real delta=Atan2(y3-y2,x3-x2)
 local real PI2=bj_PI+bj_PI

    call GroupEnumUnitsInRect( inrect, semi,null)
    loop
        set picked=FirstOfGroup(inrect)
        exitwhen picked==null
        set x=GetUnitX(picked)
        set y=GetUnitY(picked)
        if IsUnitInGroup(picked,whichGroup) then
        elseif (GroupAddUnitsInTriangle_AngleCheck(Atan2(y-y1,x-x1),alpha,beta,PI2) and GroupAddUnitsInTriangle_AngleCheck( Atan2(y-y2,x-x2) ,gama,delta,PI2)) then
            call GroupAddUnit( whichGroup, picked)
        endif
        call GroupRemoveUnit(inrect,picked)
    endloop
 call RemoveRect(semi)
 call DestroyGroup(inrect)
 set whichGroup=null
 set picked=null
 set semi=null
 set inrect=null
endfunction
   


endlibrary