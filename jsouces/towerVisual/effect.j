library Effect

private Effect array EFF
private integer NEXT=0
private real QANT=0.05

struct Effect
integer i
unit u
real time=0
real offset

    method REM takes nothing returns nothing
        NEXT--
        EFF[NEXT].i=i
        EFF[i]=EFF[NEXT]
        .destroy()
    endmethod
    
    static method FIND takes unit u returns boolean
        integer i=0
        loop
            exitwhen i>=NEXT
            if EFF[i].u==u
                return true
            endif
            i++
        endloop
        return false
    endmethod

    static method ADD takes unit u, real time, string attach , string dir returns nothing
        if FIND(u)
            return
        endif
        Effect A=Effect.create()
        A.u=u
        DestroyEffect(AddSpecialEffectTargetUnitBJ( attach, u, dir ) )
        A.offset=time
        if lcpu[GetPlayerId(GetLocalPlayer())]
            //A.offset=A.offset+0.5
        endif
        A.i=NEXT
        EFF[NEXT]=A
        NEXT++
    endmethod
    
    method ACT takes nothing returns boolean
        if time<=offset and IsUnitAliveBJ(u)
            time=time+QANT
            return true
        endif
        return false
    endmethod

    static method go takes nothing returns nothing
        integer i=0
        loop
            exitwhen i>=NEXT
            if EFF[i].ACT()
                i++
            else
                EFF[i].REM()
            endif
        endloop
    endmethod

    static method onInit takes nothing returns nothing
        TimerStart(CreateTimer(),QANT, true, function Effect.go)
    endmethod

endstruct

endlibrary
