library missile uses general

private Miss array MISS
private integer NEXT=0
private vec temp

struct Miss
integer i
unit from
unit m
vec vel
vec vm
vec vtar
real speed
unit utar
real dist

boolean auto=false

boolean bdmg=false
real dmg
attacktype at
boolean splash=false
real srad

boolean eff = false
string effdir

boolean buf =false
integer bufftype
real bufftime

integer Steps

    static method Create takes integer Unitid, unit From, real Speed, unit Target returns Miss
        Miss M=Miss.create()
        M.m=CreateUnit(Player(13),Unitid,GetUnitX(From),GetUnitY(From),0)
        UnitAddAbility(M.m, 'Amrf')
        UnitRemoveAbility(M.m, 'Amrf')
        M.from=From
        M.utar=Target
        M.speed=Speed
        M.vel=vec.create(0,0,0)
        temp.fromunit(From)
        M.vm=vec.u2v(From)
        M.vtar=vec.u2v(Target)
        M.vel.setsub(temp,M.vtar)
        M.dist=M.vel.getl()
        M.vel.normalize()
        M.vel.mul(Speed)
        M.Steps=R2I(M.dist/Speed)
        MISS[NEXT]=M
        M.i=NEXT
        NEXT++
        return M
    endmethod
    
    method ModAuto takes nothing returns nothing
        
    endmethod
    
    method ModBuff takes integer tp, real time returns nothing
        buf=true
        bufftype=tp
        bufftime=time
    endmethod
    
    method ModDmg takes real Dmg, attacktype At, boolean Splash, real SRad returns nothing
        bdmg=true
        dmg=Dmg
        at=At
        splash=Splash
        srad=SRad
    endmethod

    method ModEff takes string dir returns nothing
        
    endmethod
    
    method REM takes nothing returns nothing
        KillUnit(m)
        removeunit(m,4)
        NEXT--
        MISS[NEXT].i=i
        MISS[i]=MISS[NEXT]
    endmethod
    
    method ACT takes nothing returns boolean
        if Steps>0
            vm.sum(vel)
            vm.tounit(m)
            Steps--
        else
            if bdmg==true
                UnitDamageTarget(from,utar,dmg,true,true,at,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
            endif
            if buf==true
                aurabuff.ADD(utar,bufftime,bufftype)
            endif
            this.REM()
            return false
        endif
        return true
    endmethod
    
    static method go takes nothing returns nothing
        integer i=0
        loop
            exitwhen i>=NEXT
            if MISS[i].ACT()
                i++
            endif
        endloop
    endmethod
    
    static method onInit takes nothing returns nothing
        timer t=CreateTimer()
        TimerStart(t,.025,true,function Miss.go)
        temp=vec.create(0,0,0)
    endmethod

endstruct

endlibrary
