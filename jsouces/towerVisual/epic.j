library epicentr uses general
//#define Lig_num=20
//private gamma3 array ga
//private integer next=0


struct epic
unit caster
lightning array l[50]
integer num
///pair array p[Lig_num]
integer time=50

    static method cast takes nothing returns nothing
        if GetSpellAbilityId() == 'epiC'
            unit u=GetTriggerUnit()
            group g=CreateGroup()
            GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),320,null)
            unit t=FirstOfGroup(g)
            real dmg=20*GetUnitAbilityLevel(u,'epiC')
            
            loop
                exitwhen t==null
                if IsUnitEnemy(t,GetOwningPlayer(u)) and IsUnitAliveBJ(t)
                    Miss M=Miss.Create('roc2',u, 30, t)
                    M.ModDmg(dmg, ATTACK_TYPE_NORMAL, false, 0 )
                    M.ModBuff (2, 0.8)
                endif
                GroupRemoveUnit(g,t)
                t=FirstOfGroup(g)
            endloop
            //DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", u, "Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl" ) )
            u=null
            t=null
            g=null
        endif
    endmethod

    static method go takes nothing returns nothing
        integer i=0
        integer j=0
    endmethod

    static method onInit takes nothing returns nothing
        //timer ti=CreateTimer()
        //TimerStart(ti,.01,true,function gamma.go)
        trigger t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )

        TriggerAddAction( t, function epic.cast )
    endmethod

endstruct

endlibrary
