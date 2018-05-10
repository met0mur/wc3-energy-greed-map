library towers initializer init

globals
integer array attacktowers
integer nextat=0
//towertype
private integer INSTANT=1
private integer POINT=2
private integer TARGET=3
private integer JASSTARGET=3
//
towertype array tta
integer nexttt=0
endglobals

struct towertype
integer array idL[6]
integer abil='g4gs'
string order
integer ordertype=0


    private static method add takes integer l1, integer l2, integer l3, integer l4, integer l5, integer abil, string order, integer ot returns nothing
        local towertype t=towertype.create()
        set t.idL[1]=l1
        set t.idL[2]=l2
        set t.idL[3]=l3
        set t.idL[4]=l4
        set t.idL[5]=l5
        set t.abil=abil
        set t.order=order
        set t.ordertype=ot
        set tta[nexttt]=t
        set nexttt=nexttt+1
    endmethod

    
    static method onInit takes nothing returns nothing
        towertype.add('gi01','gi02','gi03','gi04','gi05','izlu',"revenge",TARGET) 
        towertype.add('gm01','gm02','gm03','gm04','gm05','A00A',"chainlightning",TARGET) ///разрядник
        towertype.add('gp01','gp02','gp03','gp04','gp05','A007',"thunderbolt",TARGET) ///импульс
        
        call towertype.add(chestL1,chestL2,chestL3,'null','null','A003',"carrionswarm",POINT) // боль
        call towertype.add(epicL1,epicL2,epicL3,'null','null','epiC',"volcano",INSTANT) // эпичентр
        
        call towertype.add(fireL1,fireL2,fireL3,'null','null','A00G',"thunderbolt",TARGET) // огонь
        call towertype.add(healL1,healL2,'null','null','null','A008'," ",0) // heal
        call towertype.add(sendL1,sendL2,sendL3,sendL41,sendL42,'send'," ",0)
        
    endmethod

    method inthis takes integer id returns integer
        local integer i=1
        loop
        exitwhen i==6
            if .idL[i]==id then
                return i
            endif
            set i=i+1
        endloop
        return 0
    endmethod
    
endstruct

private function actatt takes nothing returns nothing
local unit from=GetAttacker()
local unit to=GetTriggerUnit()
local integer id=GetUnitTypeId(from)
local integer i=0
loop 
    exitwhen i==nexttt  
    if tta[i].inthis(id)!=0 then
        if tta[i].ordertype==POINT then
            call IssuePointOrder(from, tta[i].order,GetUnitX(to),GetUnitY(to))
            exitwhen true
        elseif tta[i].ordertype==INSTANT then
            call IssueImmediateOrder(from, tta[i].order)
            exitwhen true
        elseif tta[i].ordertype==TARGET then
            call IssueTargetOrder(from, tta[i].order, to)
            exitwhen true
        endif
    endif
    set i=i+1
endloop
set from=null
set to=null
endfunction

private function actupg takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer id=GetUnitTypeId(u)
local integer i=0
loop 
    exitwhen i==nexttt  
    if tta[i].inthis(id)!=0 then
        call SetUnitAbilityLevel(u,tta[i].abil,tta[i].inthis(id))
        call UnitAddAbility(u,'tele')
    endif
    set i=i+1
endloop
u=null
endfunction

private function init takes nothing returns nothing
    local trigger t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( t, function actatt )
    
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_UPGRADE_FINISH )
    call TriggerAddAction( t, function actupg )
endfunction

endlibrary

