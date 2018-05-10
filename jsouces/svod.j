library svod initializer init uses general

private destructable array forRes
private integer nextfr=0

private svod array Svod
private integer next=0

struct svod
integer index
lightning l
real x
real y
unit u
unit r
real h=1000
integer t=100

    static method go takes nothing returns nothing
        integer i=0
        svod s
        loop
            exitwhen i==next
            s=Svod[i]
            if s.h>GetPointZ(s.x,s.y)
                if s.t<95 and s.l!=null
                    DestroyLightning(s.l)
                    s.l=null
                endif
                s.h=s.h-30//((s.h/100)*s.t)
                SetUnitZ(s.r,s.h)
                s.t--
                i++
            else
                forRes[nextfr]=CreateDestructable( 'B000', s.x,s.y, GetRandomDirectionDeg(), 0.50, 0 )
                nextfr++
                //AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", s.x,s.y )
                UnitDamagePoint(s.u,0,100,s.x,s.y,20,false,false,ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
                KillUnit(s.r)
                s.destroy()
                next--
                Svod[next].index=i
                Svod[i]=Svod[next]
            endif
        endloop
    endmethod
    
    static method clear takes nothing returns nothing
        integer i=nextfr
        loop
            i--
            if forRes[i]!=null
                KillDestructable(forRes[i])
            endif
            exitwhen i<=0
        endloop
        nextfr=0
    endmethod

    static method onInit takes nothing returns nothing
    timer ti=CreateTimer()
    TimerStart(ti,.025,true,function svod.go)
    endmethod

endstruct

private nothing comp() {
    if GetSpellAbilityId() == 'SVOD'
        svod s=svod.create()
        s.u=GetTriggerUnit()
        s.x=GetSpellTargetX()
        s.y=GetSpellTargetY()
        s.l=AddLightningEx( "NONE", true, GetUnitX(s.u), GetUnitY(s.u), GetUnitZ(s.u), s.x, s.y,1000)
        s.r=CreateUnit(GetOwningPlayer(s.u),'roc1',s.x,s.y,0)
        UnitAddAbility(s.r, 'Amrf')
        UnitRemoveAbility(s.r, 'Amrf')
        SetUnitZ(s.r,1000)
        Svod[next]=s
        s.index=next
        next++
    endif
}

private nothing init() {
trigger t=CreateTrigger()
TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_CAST )
TriggerAddAction( t, function comp )
}
endlibrary
