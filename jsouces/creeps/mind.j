library cmind initializer init uses general

///////////////////////////
//////////////////////////////  критическое колличество крипов в одном месте

private boolexpr crit_num_bexpr
private group g
private integer cnum=0

private integer PL_TG=0
private unit TARG 
private timer OMTI
private trigger OMTR

nothing overmind() {
//print("overmind()")
/*if GetTriggeringTrigger()!=null
    TARG=GroupPickRandomUnit(actgpa[PL_TG].units)
    OMTR=CreateTrigger()
    TriggerRegisterUnitEvent( OMTR, TARG, EVENT_UNIT_DEATH )
    TriggerAddAction( OMTR, function overmind )
    TimerStart(OMTI,4,false,function overmind)
else*/
    //DestroyTrigger(OMTR)
    PL_TG=GetRandomInt(0,activeplayer-1)
    TARG=GroupPickRandomUnit(actgpa[PL_TG].units)
    if TARG==null {
            TARG=actgpa[PL_TG].u
    }
    //OMTR=CreateTrigger()
    //TriggerRegisterUnitEvent( OMTR, TARG, EVENT_UNIT_DEATH )
    //TriggerAddAction( OMTR, function overmind )
    TimerStart(OMTI,GetRandomReal(15,30),false,function overmind)
//endif
}

nothing cmindtarget(unit u) {
    integer i
    UnitDataStruct p=GetUnitUserData(u)
    if (nextPrima>0 or p.prima==true)
        if p.prima==true
            i=p.intprima
        else
            i=GetRandomInt(0,nextPrima-1)
        endif
        IssuePointOrder(u,"move",GetUnitX(Prima[i].u),GetUnitY(Prima[i].u))
        p.prima=true
        return
    endif
    i=PL_TG
    if  actgpa[i].krestis==false and GroupPickRandomUnit(actgpa[i].units)==null
    overmind()
    endif
    if  IsUnitDeadBJ(TARG)
    overmind()
    endif
    i=PL_TG
    if actgpa[i].krestis==false and GetRandomInt(0,2)>=1
        IssuePointOrder(u,"attack",GetUnitX(actgpa[i].u),GetUnitY(actgpa[i].u))
    else
        if TARG==null {
                TARG=GroupPickRandomUnit(creepsgro)
        }
        IssuePointOrder(u,"attack",GetUnitX(TARG),GetUnitY(TARG))
    endif
}

nothing targroup(group g) {
group gg=CreateGroup()
GroupAddGroup(g,gg)
unit u
loop
    u=FirstOfGroup(gg)
    exitwhen u==null
    if IsUnitAliveBJ(u)
        cmindtarget(u)
    endif
    GroupRemoveUnit(gg,u)
endloop
DestroyGroup(gg)
gg=null
u=null
}

private boolean crit_num() {
    if GetOwningPlayer(GetFilterUnit())==creepsplayer
        cnum++
    endif
    return false
}

boolean critical_num_of_creeps_in_area(unit u) {
    cnum=0
    GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),190,crit_num_bexpr)
    if cnum>=8
        return true
    endif
    return false
}

//////////////////////////////////////
////////////////////////////////////
private destructable de
private real dist
private unit ud

nothing destr() {
destructable ede=GetEnumDestructable()
real edist=DistanceBetweenWidgets(ede,ud)
if de==null
    de=ede
    dist=edist
else
    if dist>edist
        de=ede
        dist=edist
    endif
endif
ede=null
}

nothing ondest() {
UnitDataStruct p=UnitDataStruct.findCreepFromT(GetTriggeringTrigger())
cmindtarget(p.u)
}

nothing destroyDestructable(unit u) {
real r=350
UnitDataStruct p
ud=u
de=null
dist=0
EnumDestructablesInRect(Rect(GetUnitX(u)-r,GetUnitY(u)-r,GetUnitX(u)+r,GetUnitY(u)+r),null, function destr)
if de!=null
    p=GetUnitUserData(u)
    IssueTargetOrder(u,"attack",de)
endif
}

globals
    private real Wx = 500
    private real Wy = 500
    private constant integer Width = 25
    private integer array stands
endglobals

function getstands takes integer index1, integer index2 returns integer
    return stands[index1*Width+index2]
endfunction

function setstands takes integer index1, integer index2, integer i returns nothing
    stands[index1*Width+index2]=i
endfunction

nothing enumerateDestructableAndDestroy() {
    destructable ede=GetEnumDestructable()
    if GetRandomInt(0,1)==0
    DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", GetDestructableX(ede),GetDestructableY(ede) ))
    endif
    KillDestructable(ede)
    ede=null
}

nothing destroyALL(unit u) {
    real r=180
    DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", u, "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl" ))
    EnumDestructablesInRect(Rect(GetUnitX(u)-r,GetUnitY(u)-r,GetUnitX(u)+r,GetUnitY(u)+r),null, function enumerateDestructableAndDestroy)
}


nothing updstands(unit u) {
real x=GetUnitX(u)
real y=GetUnitX(u)
real minx=GetRectMinX(GetPlayableMapRect())
real miny=GetRectMinY(GetPlayableMapRect())
real xx=x+(-minx)
real yy=y+(-miny)
real dex=xx/Wx
real dey=yy/Wy
integer d1=R2I(dex)
integer d2=R2I(dey)
setstands(d1,d2,getstands(d1,d2)+1)
//print(I2S(getstands(d1,d2)))
if getstands(d1,d2)>12
DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", u, "Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl" ))
endif
if getstands(d1,d2)>24
    destroyALL(u)
    setstands(d1,d2,0)
endif
}

nothing compareXY(unit u) {
real r=50
UnitDataStruct p=GetUnitUserData(u)
if p.x==0 and p.y==0
    p.x=GetUnitX(u)
    p.y=GetUnitY(u)
    return
endif
if (GetUnitX(u)<p.x+r and GetUnitX(u)>p.x-r) and (GetUnitY(u)<p.y+r and GetUnitY(u)>p.y-r)
    p.times++
    //print("Юнит встал")
else
    p.times=0
    p.x=GetUnitX(u)
    p.y=GetUnitY(u)
endif
if p.times>10
    //print("Юнит стоит "+I2S(p.times))
    p.times=0
    p.x=GetUnitX(u)
    p.y=GetUnitY(u)
    PingMinimapForPlayer(Player(0),GetUnitX(u),GetUnitY(u),1)
    updstands(u)
    if GetRandomInt(0,3)==0
    IssuePointOrder(p.u,"move",GetUnitX(actgpa[GetRandomInt(0,activeplayer-1)].u),GetUnitY(actgpa[GetRandomInt(0,activeplayer-1)].u))
    else
    destroyDestructable(u)
    endif
endif
}

private nothing minus() {
integer i=0
loop
    exitwhen i==Width*Width
    if stands[i]>0
        stands[i]--
    endif
    i++
endloop
}

private nothing init() {
    g=CreateGroup()
    crit_num_bexpr=Filter(function crit_num)
    real minx=GetRectMinX(GetPlayableMapRect())
    real miny=GetRectMinY(GetPlayableMapRect())
    real mapx=-minx*2
    real mapy=-miny*2
    Wx=mapx/Width
    Wy=mapy/Width
    OMTI=CreateTimer()
    TimerStart(OMTI,10,false,function overmind)
    TimerStart(CreateTimer(),5,true,function minus)
}

endlibrary