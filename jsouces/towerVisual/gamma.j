library gamma uses general
#define Lig_num=20
private gamma array ga
private integer next=0
private constant real Dmg=10
private constant real Dmgadd=10
private constant real Dis100Add=150
private constant real Maxang=90
private constant real Angadd=22
private constant real Maxdis=600
private constant real Disadd=25
struct gamma
unit caster
lightning array l[50]
integer num
///pair array p[Lig_num]
integer time=50

    static method cast takes nothing returns nothing
        if GetSpellAbilityId() == 'izlu'
            unit u=GetTriggerUnit()
            UnitDataStruct data = GetUnitUserData(u);
            integer lvl=GetUnitAbilityLevel(u,'izlu')
            string codelig="RAY1"
            real maxdis=Maxdis
            real maxang=Maxang
            real dmg=data.towerConfig.damage;
            integer num=0
            if lvl>1
                maxdis=Maxdis+Disadd*lvl
                maxang=Maxang+Angadd*lvl
                num=2*lvl
                if lvl==3 or lvl==4
                    codelig="RAY2"
                endif
                if lvl==5
                    codelig="RAYS"
                endif
            endif
            BJDebugMsg(R2S(dmg) + "tc" + I2S(data.towerConfig));
            unit t=GetSpellTargetUnit()
            //Miss M=Miss.Create('roc1', u, 25, t)
            //M.ModDmg(20, ATTACK_TYPE_NORMAL, true, 200)
            gamma g=gamma.create()
            g.caster=u
            integer i=0
            pair up=pair.u2p(u)
            pair ut=pair.u2p(t)
            pair p=pair.create()
            real a=anglepair(up,ut)
            ut.destroy()
            real dis=distp(up,ut)
            if lcpu[GetPlayerId(GetLocalPlayer())] {
                //g.time=30
                }
            if dis>=maxdis
                dis=maxdis
            endif
            real ang=maxang*RAbsBJ((dis/maxdis)-1)
            num=num+R2I(Lig_num*RAbsBJ((dis/maxdis)-1))+1
            g.num=num
            loop
                exitwhen i==num
                p.past(up)
                p.polar(dis+Dis100Add,a+((ang/num)*i)-(ang/2))
                g.l[i]=AddLightningEx( codelig, true, up.x, up.y, 60, p.x, p.y, 0)
                if GetRandomInt(0,2)==2 {
                    DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Incinerate\\IncinerateBuff.mdl",p.x,p.y))
                    }
                i++
            endloop
                DestroyEffect(AddSpecialEffectTargetUnitBJ( "overhead", u, "Abilities\\Spells\\Other\\Incinerate\\IncinerateBuff.mdl" ) )
                //DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", u, "Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl") )
                group gro=CreateGroup()
                GroupEnumUnitsInRange(gro,up.x, up.y, dis+Dis100Add,null)
                unit tar=FirstOfGroup(gro)
            loop
                exitwhen tar==null
                ut.fromunit(tar)
                if IsUnitEnemy(tar,GetOwningPlayer(u)) and IsUnitAliveBJ(tar) and confirm(anglepair(up,ut),a-(ang/2),a+(ang/2))
                    //DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", tar, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl") )
                    UnitDamageTarget(u,tar,dmg,true,true,ATTACK_TYPE_NORMAL ,DAMAGE_TYPE_UNKNOWN,WEAPON_TYPE_WHOKNOWS)
                endif
                GroupRemoveUnit(gro,tar)
                tar=FirstOfGroup(gro)
            endloop
            ga[next]=g
            next++
            DestroyGroup(gro)
            up.destroy()
            p.destroy()
            
            u=null
            t=null
            tar=null
            gro=null
        endif
    endmethod

    static method go takes nothing returns nothing
        integer i=0
        integer j=0
        loop
            exitwhen i==next
            ga[i].time--
            if ga[i].time<=0
                j=0
                loop
                    exitwhen j==ga[i].num
                    DestroyLightning(ga[i].l[j])
                    j++
                endloop
                ga[i].destroy()
                next--
                ga[i]=ga[next]
            else
                i++
            endif
        endloop
    endmethod

    static method onInit takes nothing returns nothing
        timer ti=CreateTimer()
        TimerStart(ti,.01,true,function gamma.go)
        trigger t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_SPELL_EFFECT )
        TriggerAddAction( t, function gamma.cast )
        
    endmethod

endstruct

endlibrary
