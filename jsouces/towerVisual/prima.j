library prima uses general
prima array Prima
integer nextPrima=0

private prima array primaall
private integer nextprimaall=0

struct prima
integer i
integer i1
unit u
integer kill
texttag text
trigger t
boolean bonoff=false
group gu

    static method findt takes trigger t returns prima
        prima p=0
        integer i=0
        loop
            exitwhen i==nextprimaall
            if primaall[i].t==t
                return primaall[i]
            endif
            i++
        endloop
        return p
    endmethod
    
    static method findu takes unit u returns prima
        prima p=0
        integer i=0
        loop
            exitwhen i>=nextprimaall
            if primaall[i].u==u
                return primaall[i]
            endif
            i++
        endloop
        return p
    endmethod
    
    method rem takes nothing returns nothing
            ShowTextTagForceBJ(false,text,GetPlayersAll())
            DestroyTextTag(text)
            KillUnit(u)
            DestroyTrigger(t)
            
            
            DestroyGroup(gu)
            nextprimaall--
            primaall[nextprimaall].i=i
            primaall[i]=primaall[nextprimaall]
            if bonoff==true
                nextPrima--
                Prima[nextPrima].i1=i1
                Prima[i1]=Prima[nextPrima]            
            endif
            this.destroy()
            //print("REM nextPirma "+I2S(nextPrima)+" nextprimaall "+I2S(nextprimaall))
    endmethod
    
    static method hardrem takes nothing returns nothing
        loop
        exitwhen nextprimaall==0
            primaall[0].rem()
        endloop
    endmethod

    static method killDat takes nothing returns nothing
        prima p=findt(GetTriggeringTrigger())
        unit u=GetTriggerUnit()
        if p.kill>0
            if IsUnitEnemy(u,GetOwningPlayer(p.u)) and p.bonoff==true
                KillUnit(u)
                p.kill--
                SetTextTagTextBJ(p.text, I2S(p.kill), 10)
                DestroyEffect(AddSpecialEffectTargetUnitBJ( "overhead", u, "Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl") )
            endif
        else
            KillUnit(p.u)
        endif
        u=null
    endmethod

    static method Add takes unit u, integer kill returns nothing
        if findu(u)!=0
        return
        endif
        prima p=prima.create()
        p.u=u
        p.kill=kill
        p.t=CreateTrigger()
        TriggerRegisterUnitInRangeSimple(p.t, 200, u )
        TriggerAddAction( p.t, function prima.killDat )
        primaall[nextprimaall]=p
        p.i=nextprimaall
        nextprimaall++
        p.gu=CreateGroup()
        p.text=CreateTextTagUnitBJ(I2S(p.kill),u,100,10,30,100,30,0)
        //print("ADD nextPirma "+I2S(nextPrima)+" nextprimaall "+I2S(nextprimaall))
    endmethod
    
    static method onUP takes nothing returns nothing
        unit u=GetTriggerUnit()
        if GetUnitTypeId(u)=='pr01'
            prima.Add(u,10)
        endif
        u=null
    endmethod

    static method onoff takes nothing returns nothing
    unit u=GetTriggerUnit()
    prima p=prima.findu(u)
        if GetIssuedOrderIdBJ() == String2OrderIdBJ("webon")
          UnitRemoveAbility(u,'pron')
          UnitAddAbility(u,'prof')
          p.bonoff=true
          p.i1=nextPrima
          Prima[nextPrima]=p
          nextPrima++
          //print("ON nextPirma "+I2S(nextPrima)+" nextprimaall "+I2S(nextprimaall))
        endif
        if GetIssuedOrderIdBJ() == String2OrderIdBJ("voodoo")
          UnitRemoveAbility(u,'prof')
          UnitAddAbility(u,'pron')
          p.bonoff=false
          nextPrima--
          Prima[nextPrima].i1=p.i1
          Prima[p.i1]=Prima[nextPrima]
          //GroupTargetOrder(p.gu,"attack",p.u)
          GroupClear(p.gu)
          //print("OFF nextPirma "+I2S(nextPrima)+" nextprimaall "+I2S(nextprimaall))
        endif
        u=null
    endmethod
    
    static method onDie takes nothing returns nothing
          unit u=GetTriggerUnit()
          prima p=prima.findu(u)
          if p!=0
          p.rem()
          endif
          u=null
    endmethod
    
    static method onInit takes nothing returns nothing
        trigger tr=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( tr, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
        TriggerAddAction( tr, function prima.onUP )
        tr = CreateTrigger()
        integer i=0
        loop
            exitwhen i==slots
            call TriggerRegisterPlayerUnitEventSimple( tr, Player(i), EVENT_PLAYER_UNIT_ISSUED_ORDER )
            i++
        endloop
        call TriggerRegisterPlayerUnitEventSimple( tr, Player(11), EVENT_PLAYER_UNIT_ISSUED_ORDER )
        call TriggerAddAction( tr, function prima.onoff )
        tr = CreateTrigger(  )
        i=0
        loop
            exitwhen i==slots
            call TriggerRegisterPlayerUnitEventSimple( tr, Player(i), EVENT_PLAYER_UNIT_DEATH )
            i++
        endloop
        call TriggerRegisterPlayerUnitEventSimple( tr, Player(11), EVENT_PLAYER_UNIT_DEATH )
        TriggerAddAction( tr, function prima.onDie )
        endmethod

endstruct

endlibrary
