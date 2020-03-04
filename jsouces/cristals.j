library cristals initializer init uses general, radiusIndicator
globals
private constant integer mincrist=190000
private constant integer maxcrist=300000

private constant real rad=3.5
private constant real maxrad=60
private constant real radius=300
private constant integer cris_id='n004'

private crist array crar
private integer nextcr=0

private cristsender array csa
private integer nextcs=0

endglobals

struct cristsender
integer i
unit from
unit to
lig l
static method add takes unit from, unit to returns nothing
    cristsender c=cristsender.create()
    c.from=from
    c.to=to
    c.l=lig.add(from,to)
    c.l.send(true,4)
    csa[nextcs]=c
    nextcs++
endmethod

private method act takes nothing returns boolean
real r
    crist c=crist.find(.from)
    if c.nrg>1 and IsUnitAliveBJ(to) and DistanceBetweenWidgets(from,to)<radius
        if getmana(to)<getmax(to)
            r=rad
            if getmax(to)-getmana(to)<rad
                r=getmax(to)-getmana(to)
            endif
            setmana(to,getmana(to)+r)
            c.nrg=c.nrg-r
            l.send(true,0)
        else
            l.send(false,4)
        endif
    else
        return false
    endif
    return true
endmethod

private static method go takes nothing returns nothing
    integer i=0
    cristsender c
    loop
        exitwhen i==nextcs
        if csa[i].act()==false
            nextcs--
            csa[i].l.del()
            csa[i]=csa[nextcs]
        else
            i++
        endif
    endloop
endmethod

static method onInit takes nothing returns nothing
    timer t=CreateTimer()
    TimerStart(t,sendtime,true,function cristsender.go)
    t=null
endmethod

endstruct

struct crist
integer i
real nrg
unit u
group g


static method UnitsForCrist takes nothing returns nothing
    local unit u
    local integer i=0
    local group scangroup=CreateGroup()
    local real m
    crist c
    UnitDataStruct p
    loop
        exitwhen i==nextcr
            c=crar[i]
            GroupEnumUnitsInRange(scangroup,GetUnitX(c.u),GetUnitY(c.u),radius,null)
            u=FirstOfGroup(scangroup)
            loop
                exitwhen u==null
                p=GetUnitUserData(u)
                if IsUnitInGroup(u,c.g)==false and c.nrg>1 and getmax(u)>0 and GetUnitTypeId(u)!='kres' and p.ptype!=pAFTERDESTROY
                    GroupAddUnit(c.g,u)
                    cristsender.add(c.u,u)
                endif
                GroupRemoveUnit(scangroup,u)
                u=FirstOfGroup(scangroup)
            endloop
            
        i++
    endloop
    DestroyGroup(scangroup)
    scangroup=null
    u=null
endmethod

static method radiate takes nothing returns nothing
    //local unit u
    local integer i=0
    //local group scangroup=CreateGroup()
    local real m
    loop
        exitwhen i==nextcr
        
        i++
    endloop
    
endmethod

/////////////////////////////////////////////
//////////////////////  Обработка кристаллов
//////////////////////////////////////////////

static method update_g takes nothing returns nothing
    integer i=0
    loop
        exitwhen i==nextcr
        SetResourceAmount(crar[i].u, R2I(crar[i].nrg))
        i=i+1
    endloop
endmethod

static method add takes unit u returns nothing
    crist c=crist.create()
    SetResourceAmount(u,GetRandomInt(mincrist,maxcrist))
    c.nrg=I2R(GetResourceAmount(u))
    c.i=nextcr
    c.u=u
    c.g=CreateGroup()
    crar[nextcr]=c
    nextcr=nextcr+1
endmethod

static method find takes unit u returns crist
    integer i=nextcr
        loop
            i--
            if crar[i].u==u
                return crar[i]
            endif
            exitwhen i==0
        endloop
    return 0
endmethod

static method recirculate takes nothing returns nothing
    integer i=nextcr
        loop
            i--
            crar[i].nrg=GetRandomInt(mincrist,maxcrist)
            RadiusStruct rs = RadiusStruct.initialize(crar[i].u,RadiusStruct.getr(crar[i].u));
            rs.permanent = true;
            exitwhen i==0
        endloop
endmethod

static method onInit takes nothing returns nothing
    timer t=CreateTimer()
    unit u
    group scangroup=CreateGroup()
    GroupEnumUnitsInRect(scangroup, GetPlayableMapRect(), null)
    u=FirstOfGroup(scangroup)
    loop 
        exitwhen u==null
        if GetUnitTypeId(u)==cris_id or GetUnitTypeId(u)=='n003'
            crist.add(u)
            AddSpecialEffect("Abilities\\Spells\\Other\\Drain\\ManaDrainCaster.mdl",GetUnitX(u),GetUnitY(u))
            //AddSpecialEffect("Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCaster.mdl",GetUnitX(u),GetUnitY(u))
            GroupRemoveUnit(scangroup,u)
        else
            GroupRemoveUnit(scangroup,u)
        endif
        u=FirstOfGroup(scangroup)
    endloop
        
    crist.UnitsForCrist()

    TimerStart(t,0.5,true,function crist.update_g)
    t=CreateTimer()
    TimerStart(t,2,true,function crist.UnitsForCrist)
    u=null
    t=null
    DestroyGroup(scangroup)
    scangroup=null
endmethod

endstruct

private function init takes nothing returns nothing
//call crist.initc()
endfunction

endlibrary