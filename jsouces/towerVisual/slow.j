library aurabuff

private aurabuff array AURA
private integer NEXT=0
private real QANT=0.04

struct aurabuff
integer i
unit u
unit b
real time=0
real offset

    method REM takes nothing returns nothing
        RemoveUnit(b)
        NEXT--
        AURA[NEXT].i=i
        AURA[i]=AURA[NEXT]
        .destroy()
    endmethod
    
    static method FIND takes unit u returns boolean
        integer i=0
        loop
            exitwhen i>=NEXT
            if AURA[i].u==u
                return true
            endif
            i++
        endloop
        return false
    endmethod

    static method ADD takes unit u, real time, integer i returns nothing
        if FIND(u)
            return
        endif
        aurabuff A=aurabuff.create()
        A.u=u
        A.b=CreateUnit(GetOwningPlayer(u),'dum1',GetUnitX(u),GetUnitY(u),0)
        SetUnitAbilityLevel(A.b,'A00K',i)
        A.offset=time+0.4
        A.i=NEXT
        AURA[NEXT]=A
        NEXT++
    endmethod
    
    method ACT takes nothing returns boolean
        if time<=offset and IsUnitAliveBJ(u)
            time=time+QANT
            SetUnitX(b,GetUnitX(u))
            SetUnitY(b,GetUnitY(u))
            return true
        endif
        return false
    endmethod

    static method go takes nothing returns nothing
        integer i=0
        loop
            exitwhen i>=NEXT
            if AURA[i].ACT()
                i++
            else
                AURA[i].REM()
            endif
        endloop
    endmethod

    static method onInit takes nothing returns nothing
        TimerStart(CreateTimer(),QANT, true, function aurabuff.go)
    endmethod

endstruct

endlibrary
