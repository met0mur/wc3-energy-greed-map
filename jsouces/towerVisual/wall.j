library energywall uses general

#define SECTION_INI=5
#define SECTION_MAX=11
#define SECTION_MIN=3
#define SECTION_MAX_LEN=500
#define SECTION_MIN_LEN=100
#define BASE_MAX_DIST=600
#define LIG_MAX=4

private wall array WALL
private integer NEXTW=0

private real Zcord=37.5

struct wall
integer i
unit base
section array section [SECTION_MAX]
integer nextS=0

real MP=1.5
real DMG=5.8

    method REM takes nothing returns nothing
        NEXTW--
        WALL[NEXTW].i=i
        WALL[i]=WALL[NEXTW]
        integer j=0
        loop
            exitwhen j==nextS
            section[j].REM()
            j++
        endloop
        
    endmethod
    
    static method UP takes nothing returns nothing
        unit u=GetTriggerUnit()
        wall W=Findw(u)
        if W!=0
            if GetUnitTypeId(u)=='wal1'
                W.MP=2
                W.DMG=7.6
            elseif GetUnitTypeId(u)=='wal2'
                W.MP=2.5
                W.DMG=10
            endif
        endif
        u=null
    endmethod
    
    static method Findw takes unit u returns wall
        integer i=0
        loop
            exitwhen i==NEXTW
            if WALL[i].base==u
                return WALL[i]
            endif
            i++        
        endloop
        return 0
    endmethod

    static method Findu takes unit u returns boolean
        integer i=0
        loop
            exitwhen i==NEXTW
            if WALL[i].base==u
                return true
            endif
            i++        
        endloop
        return false
    endmethod
    
    static method ADD takes unit u returns nothing
        if wall.Findu(u)
            return
        endif
        wall W=wall.create()
        W.base=u
        pair p=pair.u2p(u)
        integer i=0
        section last=0
        section new=0
        loop
            exitwhen i==SECTION_INI
            p.fromunit(u)
            p.polar(350,(360/SECTION_INI)*i)
            new=section.ADD(W,p.x,p.y,last,0,W.nextS)
            last.next=new
            last=new
            W.section[W.nextS]=new
            W.nextS++
            i++
        endloop
        last.next=W.section[0]
        W.section[0].last=last
        i=0
        loop
            exitwhen i==W.nextS
            W.section[i].INIT()
            i++
        endloop
        W.i=NEXTW
        WALL[NEXTW]=W
        NEXTW++
        p.destroy()
    endmethod
    
    static method refresh takes nothing returns nothing
        integer i=0
        integer j=0
        pair p=pair.create()
        real d
        section S
        loop
            exitwhen i==NEXTW
            if IsUnitAliveBJ(WALL[i].base)
                j=0
                loop
                    exitwhen j>=WALL[i].nextS
                    d=DistanceBetweenWidgets(WALL[i].section[j].pole,WALL[i].section[j].next.pole)
                    if d>SECTION_MAX_LEN and WALL[i].nextS<SECTION_MAX-1
                        p.fromunit(WALL[i].section[j].pole)
                        p.polar(d/2,angleunit(WALL[i].section[j].pole,WALL[i].section[j].next.pole))
                        WALL[i].section[WALL[i].nextS]=section.ADD(WALL[i],p.x,p.y,WALL[i].section[j],WALL[i].section[j].next,WALL[i].nextS )
                        WALL[i].section[WALL[i].nextS].INIT()
                        WALL[i].section[j].next.last=WALL[i].section[WALL[i].nextS]
                        WALL[i].section[j].next=WALL[i].section[WALL[i].nextS]
                        WALL[i].nextS++
                        j++
                    elseif d<SECTION_MIN_LEN and WALL[i].nextS>SECTION_MIN\
                            and DistanceBetweenWidgets(WALL[i].section[j].last.pole,WALL[i].section[j].next.pole)<SECTION_MAX_LEN-100
                        WALL[i].section[j].next.last=WALL[i].section[j].last
                        WALL[i].section[j].last.next=WALL[i].section[j].next
                        S=WALL[i].section[j]
                        WALL[i].nextS--
                        WALL[i].section[j]=WALL[i].section[WALL[i].nextS]
                        S.REM()
                    elseif DistanceBetweenWidgets(WALL[i].section[j].pole,WALL[i].base)>BASE_MAX_DIST
                        p.fromunit(WALL[i].base)
                        p.polar(DistanceBetweenWidgets(WALL[i].section[j].pole,WALL[i].base)*0.995\
                            ,angleunit(WALL[i].base,WALL[i].section[j].pole))
                        p.tounit(WALL[i].section[j].pole)
                        IssueImmediateOrder(WALL[i].section[j].pole,"stop")
                        //print("wertwer")
                        j++
                    else
                        j++
                    endif
                endloop
            i++
            else
                WALL[i].REM()
            endif
        endloop
        p.destroy()
    endmethod
    
    static method onInit takes nothing returns nothing
        TimerStart(CreateTimer(),.2,true,function wall.refresh)
        trigger t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_UPGRADE_FINISH)
        TriggerAddAction(t,function wall.UP)
        
    endmethod

endstruct

private section array SECT
private integer NEXTS=0

struct section
integer i
integer iw
wall wall
unit pole
lightning array l [LIG_MAX]

section last
section next

trigger t
group g

    method REM takes nothing returns nothing
        integer j=0
        loop
            exitwhen j==LIG_MAX
            DestroyLightning(l[j])
            l[j]=null
            j++
        endloop
        RemoveUnit(pole)
        NEXTS--
        SECT[NEXTS].i=i
        SECT[i]=SECT[NEXTS]
        this.destroy()
    endmethod
    
    static method FINDt takes trigger t returns section
        integer i=0
        loop
            exitwhen i==NEXTS
            if SECT[i].t==t
                return SECT[i]
            endif
            i++       
        endloop
        return 0
    endmethod
    
    static method TRIG takes nothing returns nothing
        trigger t=GetTriggeringTrigger()
        unit u=GetTriggerUnit()
        section S=section.FINDt(t)
        if GetUnitTypeId(u)!='dum1' and GetUnitTypeId(u)!='prim' and GetUnitTypeId(u)!='wisp' and IsUnitEnemy(u,GetOwningPlayer(S.wall.base)) \
        and IsUnitAliveBJ(u)
            GroupAddUnit(S.g,u)
            //print("ADD "+GetUnitName(u))
        endif
        u=null
        t=null
    endmethod

    static method ADD takes wall W, real x ,real y, section last, section next, integer iw returns section
        section S=section.create()
        S.wall=W
        S.last=last
        S.next=next
        S.pole=CreateUnit(GetOwningPlayer(W.base),'pole',x,y,0)
        //UnitAddAbility(S.pole, 'Amrf')
        //UnitRemoveAbility(S.pole, 'Amrf')
        SetUnitPathing(S.pole,false)
        //SetUnitFlyHeight (S.pole, , 0.)
        S.iw=iw
        S.i=NEXTS
        S.t = CreateTrigger(  )
        TriggerRegisterUnitInRangeSimple( S.t, SECTION_MAX_LEN, S.pole )
        TriggerAddAction( S.t, function section.TRIG )
        S.g=CreateGroup()
        SECT[NEXTS]=S
        NEXTS++
        return S
    endmethod
    
    method INIT takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==LIG_MAX
            l[i]=AddLightningEx( "WALL", true, GetUnitX(pole), GetUnitY(pole), GetUnitZ(pole)+Zcord*i, GetUnitX(next.pole), GetUnitY(next.pole), GetUnitZ(next.pole)+Zcord*i)
            i++
        endloop
    endmethod
    
    method REFRESH takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==LIG_MAX
            if l[i]!=null
                MoveLightningEx(l[i], true, GetUnitX(pole), GetUnitY(pole), GetUnitZ(pole)+Zcord*i, GetUnitX(next.pole), GetUnitY(next.pole), GetUnitZ(next.pole)+Zcord*i)
            endif
            i++
        endloop
    endmethod
    
    static method GO takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==NEXTS
            SECT[i].REFRESH()
            i++
        endloop
    endmethod
    
    static boolean perpendicular(unit a,unit b,unit c) {
        real width=55
        real Xa=GetUnitX(a)
        real Ya=GetUnitY(a)
        real Xb=GetUnitX(b)
        real Yb=GetUnitY(b)
        real Xc=GetUnitX(c)
        real Yc=GetUnitY(c)
    	real alpha = Atan2(Yc-Ya,Xc-Xa) - Atan2(Yb-Ya,Xb-Xa)
    	real ac = distcord(Xa,Ya,Xc,Yc)
        real co = ac*Sin(alpha)
        real beta = 1.5708 - alpha
        real gama = Atan2(Ya-Yc,Xa-Xc) + beta
        real Xo=Xc+co*Cos(gama)
        real Yo=Yc+co*Sin(gama)
        if co<width and co>-width and \
            distcord(Xa,Ya,Xo,Yo)<distcord(Xa,Ya,Xb,Yb) and distcord(Xb,Yb,Xo,Yo)<distcord(Xa,Ya,Xb,Yb)
            return true
        endif
        return false
    }
    
    method ACT takes nothing returns nothing
        integer i=0
        integer j=0
        real r
        group G=CreateGroup()
        GroupAddGroup(g,G)
        unit u=FirstOfGroup(G)
        boolean bo
        real m=4
        loop
            exitwhen u==null
            if IsUnitDeadBJ(u)// or DistanceBetweenWidgets(u,pole)>SECTION_MAX_LEN+10
                GroupRemoveUnit(g,u)
            endif
            GroupRemoveUnit(G,u)
            u=FirstOfGroup(G)
        endloop
        GroupAddGroup(g,G)
        u=FirstOfGroup(G)
        loop
            exitwhen u==null
            bo=perpendicular(pole,next.pole,u) and IsUnitInGroup(u,next.g)
            m=wall.MP
            if bo and getmana(wall.base)>=m
                setmana(wall.base,getmana(wall.base)-m)
                UnitDamageTarget(wall.base,u,wall.DMG,true,true,ATTACK_TYPE_MAGIC,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
                aurabuff.ADD(u,1.3,1)
                //DestroyEffect(AddSpecialEffectTargetUnitBJ( "origin", u, "" ) )
                Effect.ADD(u,0.7,"origin","Abilities\\Weapons\\Bolt\\BoltImpact.mdl")
                j=0
                loop 
                exitwhen j==wall.nextS
                    i=0
                    loop
                        exitwhen i==LIG_MAX
                        SetLightningColor(wall.section[j].l[i],1,1,1,0.5)
                        i++
                    endloop
                    j++
                endloop
            elseif bo and getmana(wall.base)<5
                j=0
                loop 
                exitwhen j==wall.nextS
                    i=0
                    loop
                        exitwhen i==LIG_MAX
                        SetLightningColor(wall.section[j].l[i],1,0.7,0,0.5)
                        i++
                    endloop
                    j++
                endloop
            endif
            GroupRemoveUnit(G,u)
            u=FirstOfGroup(G)
        endloop
        DestroyGroup(G)
        G=null
        u=null
    endmethod
    
    static method GO1 takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==NEXTS
            SECT[i].ACT()
            i++
        endloop
    endmethod

    static method onInit takes nothing returns nothing
        timer t=CreateTimer()
        TimerStart(t,.06,true,function section.GO)
        t=CreateTimer()
        TimerStart(t,.1,true,function section.GO1)
    endmethod

endstruct

endlibrary
