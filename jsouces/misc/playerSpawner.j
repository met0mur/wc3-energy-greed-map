library playerspawner uses manatower
#define MaxUnitsInSpawner=3

private constant integer apgrader='apgr'
private group Started

private playerspawner array psa
private integer Next=0

private group playercreeps

struct playerspawner
unit u
unit array spawns[MaxUnitsInSpawner]
integer next=0
boolean auto=true

static nothing target(unit u) {
    integer i=GetRandomInt(0,nextresp-1)
        IssuePointOrder(u,"attack",resparray[i].p.x,resparray[i].p.y)
        GroupAddUnit(playercreeps,u)
        passport.add(u,pCREEP)
}
    
    static method Add takes unit u returns nothing
        playerspawner ps=playerspawner.create()
        ps.u=u
        psa[Next]=ps
        Next++
        UnitRemoveAbility(u, 'ARal' )
        //print("add "+I2S(ps))
    endmethod
    
    static method findSpawner takes unit u returns playerspawner
        integer i=0
        loop
            exitwhen i==Next
            if psa[i].u==u
                return psa[i]
            endif
            i++
        endloop
        return 0
    endmethod
    
    static method findSpawn takes unit u returns playerspawner
        integer i=0
        integer j=0
        loop
            exitwhen i==Next
            loop
                exitwhen j==psa[i].next
                if psa[i].spawns[j]==u
                    return psa[i]
                endif
                j++
            endloop
            j=0
            i++
        endloop
        return 0
    endmethod
    
    static method onUnitTrainStart takes nothing returns nothing
        //Создать апгрейдер. ап делает ап в солдет. солдет удаляется. манасенд. аддд в структуру.
        unit u=GetTriggerUnit()
        unit s=GetTrainedUnit()
        playerspawner ps=playerspawner.findSpawner(u)
        if ps.next+1>MaxUnitsInSpawner
            //print("max")
            RemoveUnit( s )
            IssueImmediateOrderById(u,851976)
            u=null
            s=null
            return
        endif
        unit up=CreateUnit(GetOwningPlayer(u),apgrader,GetUnitX(u),GetUnitY(u),0)
        IssueImmediateOrderById(up, GetTrainedUnitType())
        if GetUnitTypeId(up)==apgrader
            RemoveUnit( up )
            IssueImmediateOrderById(u,851976)
            return
        endif
        IssueImmediateOrderById(u,851976)
        //
        addlink(u,up)
        ps.spawns[ps.next]=up
        ps.next++
        ps.auto=true
    endmethod
    
    static method onUnitUpFin takes nothing returns nothing
        //Если юнит типа спавнер -АДД. Если юнит есть в Стартед то- искать его в структурах,убирать манасенд,удалять из структур, если авто то адд некст.
        unit u=GetTriggerUnit()
        unit f
        playerspawner ps
        if GetUnitTypeId(u)=='spa1'
            playerspawner.Add(u)
            u=null
            f=null
            return
        endif
        ps=playerspawner.findSpawn(u)
        f=ps.u
        addlink(ps.u,u)
        integer j=0
            loop
                if ps.spawns[j]==u
                    ps.spawns[j]=ps.spawns[ps.next-1]
                    ps.next--
                    playerspawner.target(u)
                    if ps.next==0 and ps.auto==true
                        IssueImmediateOrderById(ps.u, GetUnitTypeId(u))
                    endif
                    exitwhen true
                endif
                exitwhen j==ps.next
                j++
            endloop
            u=null
            f=null
        //print("end "+I2S(ps))
    endmethod
    
    static method onCancel takes nothing returns nothing
        unit u=GetTriggerUnit()
        playerspawner ps=playerspawner.findSpawn(u)
        if ps!=0
            integer j=0
            loop
                if ps.spawns[j]==u
                    ps.spawns[j]=ps.spawns[ps.next-1]
                    ps.next--
                    exitwhen true
                endif
                exitwhen j==ps.next
                j++
            endloop
            //addlink(ps.u,u)
            passport p=GetUnitUserData(u)
            addlink(p.wisp,ps.u)
            RemoveUnit(u)
        endif
        u=null
    endmethod
    
    static method onStop takes nothing returns nothing
        if GetIssuedOrderIdBJ() == String2OrderIdBJ("resurrection")
            unit u=GetTriggerUnit()
            playerspawner ps=playerspawner.findSpawner(u)
            ps.auto=false
        endif
    endmethod
    
    private static method forgroonsto takes nothing returns nothing
        unit u=GetEnumUnit()
        //compareXY(u)
        if GetUnitCurrentOrder(u) == 0
            playerspawner.target(u)
        endif
        u=null
    endmethod
    
    static method compord takes nothing returns nothing
        ForGroup(playercreeps, function playerspawner.forgroonsto)
    endmethod

    static method onInit takes nothing returns nothing
        Started=CreateGroup()
        playercreeps=CreateGroup()
        trigger t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_UPGRADE_FINISH )
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH )
        TriggerAddAction( t, function playerspawner.onUnitUpFin )
        t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_TRAIN_START )
        TriggerAddAction( t, function playerspawner.onUnitTrainStart )
        t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_UPGRADE_CANCEL )
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH )
        TriggerAddAction( t, function playerspawner.onCancel )
        t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ISSUED_ORDER )
        TriggerAddAction( t, function playerspawner.onStop )
        
        timer ti=CreateTimer()
        TimerStart(ti,2,true,function playerspawner.compord)
        
    endmethod

endstruct

endlibrary
