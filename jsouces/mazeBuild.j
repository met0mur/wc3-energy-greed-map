library rock
globals

endglobals

destsave array dsa
integer nextdsa=0
struct destsave
destructable d
real x
real y
integer id
trigger t

static method add takes destructable d returns nothing
    destsave ds=destsave.create()
    ds.d=d
    ds.x=GetDestructableX(d)
    ds.y=GetDestructableY(d)
    ds.id=GetDestructableTypeId(d)
    /*integer i=GetRandomInt(0,100)
    integer step=1 //вероятность
    if ds.id!='bloc' and ds.id!='B007' and ds.id!='B008'
        if i<step
            ds.id='B002'
        elseif i<step*2
            ds.id='B003'
        elseif i<step*3
            ds.id='B004'
        elseif i<step*4
            ds.id='B005'
        endif
    endif*/
    dsa[nextdsa]=ds
    nextdsa++
    ds.t=CreateTrigger()
    TriggerRegisterDeathEvent(ds.t,d)
    TriggerAddAction(ds.t, function rock.onDeath)
    //if GetDestructableTypeId(d)=='bloc'
    //    RemoveDestructable(d)
    //    return
    //endif
    //print("next"+I2S(nextdsa))
endmethod

static method renu takes nothing returns nothing
    integer i=0
    real m
    loop
        exitwhen i==nextdsa
            m=0.5
            if dsa[i].id=='B003'
                m=0.25
            elseif dsa[i].id=='B004'
                m=0.7
            elseif dsa[i].id=='GTtw'
                m=GetRandomReal(0.5,1.2)
            endif
            if dsa[i].id=='bloc'
                if Diff==0 and (IsDestructableDeadBJ(dsa[i].d) or dsa[i].d==null)
                    RemoveDestructable(dsa[i].d)
                    dsa[i].d=CreateDestructable(dsa[i].id,dsa[i].x,dsa[i].y,GetRandomReal(1,340),m,GetRandomInt(1,4))
                elseif Diff!=0 
                    RemoveDestructable(dsa[i].d)
                endif
            elseif IsDestructableDeadBJ(dsa[i].d)
                dsa[i].d=CreateDestructable(dsa[i].id,dsa[i].x,dsa[i].y,GetRandomReal(1,340),m,GetRandomInt(1,4))
                TriggerRegisterDeathEvent(dsa[i].t, dsa[i].d)
            elseif GetDestructableTypeId(dsa[i].d)!=dsa[i].id
                RemoveDestructable(dsa[i].d)
                dsa[i].d=CreateDestructable(dsa[i].id,dsa[i].x,dsa[i].y,GetRandomReal(1,340),m,GetRandomInt(1,2))
                TriggerRegisterDeathEvent(dsa[i].t, dsa[i].d)
            elseif GetDestructableLife(dsa[i].d)!=GetDestructableMaxLife(dsa[i].d)
                SetDestructableLife(dsa[i].d,GetDestructableMaxLife(dsa[i].d))    
            endif
            if ModuloInteger(i, 800) == 0 then
                TriggerSleepAction(0.1)
            endif
        //print("i"+I2S(i))
        
        i++
    endloop

endmethod

endstruct


struct rock
destructable d
trigger t

static method getrandomgem takes nothing returns integer
local real r=GetRandomReal(0,100)
integer step=6
if r<step then
return obsidian
elseif r<step*2 then
return opal
elseif r<step*3 then
return dioptaz
elseif r<step*4 then
return pirrotin
endif
return 0
endmethod

static method onDeath takes nothing returns nothing
item i
if NoGem==false
    integer id=GetDestructableTypeId(GetTriggerDestructable())
    if id=='B000'
        i = CreateItem(getrandomgem(),GetDestructableX(GetTriggerDestructable()),GetDestructableY(GetTriggerDestructable()))
    elseif id=='B002'
        i = CreateItem(pirrotin,GetDestructableX(GetTriggerDestructable()),GetDestructableY(GetTriggerDestructable()))
    elseif id=='B003'
        i = CreateItem(opal,GetDestructableX(GetTriggerDestructable()),GetDestructableY(GetTriggerDestructable()))
    elseif id=='B004'
        i = CreateItem(dioptaz,GetDestructableX(GetTriggerDestructable()),GetDestructableY(GetTriggerDestructable()))
    elseif id=='B005'
        i = CreateItem(obsidian,GetDestructableX(GetTriggerDestructable()),GetDestructableY(GetTriggerDestructable()))
    endif
endif
i=null
endmethod

static method onInitEnum takes nothing returns nothing
local rock r=rock.create()
set r.d=GetEnumDestructable()
destsave.add(r.d)
endmethod

static method onInit takes nothing returns nothing
call EnumDestructablesInRect(bj_mapInitialPlayableArea, null, function rock.onInitEnum)
endmethod
endstruct


endlibrary

