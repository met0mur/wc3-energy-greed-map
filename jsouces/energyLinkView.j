library Lightning uses general

function movel takes lightning l, vec a, vec b returns nothing
if l!=null
    MoveLightningEx (l,false,a.x,a.y,a.z,b.x,b.y,b.z)
endif
endfunction

function ifcam takes unit f,unit t returns boolean
real Camdist=1300
if lcpu[GetPlayerId(GetLocalPlayer())]
    Camdist=600
endif

    real dx = GetWidgetX(f) - GetCameraTargetPositionX()
    real dy = GetWidgetY(f) - GetCameraTargetPositionY()
    real fr= SquareRoot(dx * dx + dy * dy)
    dx = GetWidgetX(t) - GetCameraTargetPositionX()
    dy = GetWidgetY(t) - GetCameraTargetPositionY()
    real tr= SquareRoot(dx * dx + dy * dy)
if fr>Camdist and tr>Camdist
    return false
endif
return true
endfunction

private lig array LIG
private integer NEXT=0

struct lig
integer i
sendlig sl
unit from
unit to
boolean sendb=false
integer ty
integer cicles=0

method send takes boolean b, integer ty returns nothing
if .cicles>=3 or (lcpu[GetPlayerId(GetLocalPlayer())]==false and .cicles>=1)
    if ifcam(.from,.to)
        if b==true
            if .sendb==false
                .sendb=true
                .sl.b=false
                .sl=sendlig.add(from,to,ty)
                .ty=ty
            else
                if .ty!=ty
                    .sl.b=false
                    .sl=sendlig.add(from,to,ty)
                    .ty=ty
                endif
            endif
        else
            if .sendb==true
                .sendb=false
                .sl.b=false
                .sl=sendlig.add(from,to,ty)
                .ty=ty
            else
                if .ty!=ty
                    .sl.b=false
                    .sl=sendlig.add(from,to,ty)
                    .ty=ty
                endif
            endif
        endif
    endif
    .cicles=0
else 
    .cicles++
endif
endmethod

static method add takes unit from, unit to returns lig
    lig l=lig.create()
    l.from=from
    l.to=to
    l.i=NEXT
    LIG[NEXT]=l
    NEXT++
    return l
endmethod

static method renu takes unit u returns nothing
    integer i=0
    loop
        exitwhen i==NEXT
            if LIG[i].from==u or LIG[i].to==u
                LIG[i].send(not(LIG[i].sendb),LIG[i].ty)
            endif
        i++
    endloop
endmethod

method del takes nothing returns nothing
    NEXT--
    LIG[NEXT].i=i
    LIG[i]=LIG[NEXT]
    .sl.b=false
    .destroy()
endmethod

endstruct

private vec f
private vec t
private vec a
private vec c
private pair p
private pair pp
private sendlig array sla
private integer nextsl=0
real lspeed=26      //////////////////////////////////

struct sendlig
integer i
lightning l
boolean b=true
boolean move=false
unit from
unit to
pair pfrom
pair pto
real d1=0
real d2=0
vec start
vec pos1
vec pos2
vec vel
real dist=0
real speed

static method add takes unit from, unit to, integer ltype returns sendlig
    sendlig sl=sendlig.create()
    sl.speed=lspeed
    sl.from=from
    sl.to=to
//    sl.pfrom=pair.u2p(from)
//    sl.pto=pair.u2p(to)
    sl.pos1=vec.u2v(from)
    sl.pos2=vec.u2v(from)
    sl.start=vec.u2v(from)
    f.fromunit(from)
    t.fromunit(to)
    sl.vel=vec.create(0,0,0)
    sl.vel.setsub(f,t)
    sl.dist=sl.vel.getl()
    sl.vel.normalize()
    sl.vel.mul(lspeed)
    if ltype==0
    sl.l=AddLightningEx( "SEND", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==4
    sl.l=AddLightningEx( "FULL", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==6
    sl.l=AddLightningEx( "DRAM", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==5
    sl.l=AddLightningEx( "NONE", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==1
    sl.l=AddLightningEx( "SEN1", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==2
    sl.l=AddLightningEx( "SEN2", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    elseif ltype==3
    sl.l=AddLightningEx( "SEN3", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from),0)
    endif  
    if GetUnitDefaultMoveSpeed(from)>0 or GetUnitDefaultMoveSpeed(to)>0
        sl.move=true
    else
        sl.move=false
    endif
    sla[nextsl]=sl
    sl.i=nextsl
    nextsl++
    return sl
endmethod

static method hardrem takes nothing returns nothing
integer i=nextsl
nextsl=0
loop 
    exitwhen i==0
    sla[i].rem()
    i--
endloop
endmethod

method rem takes nothing returns nothing
    .pos1.destroy()
    .pos2.destroy()
    .vel.destroy()
    .start.destroy()
    nextsl--
    sla[nextsl].i=.i
    sla[.i]=sla[nextsl]
    DestroyLightning(.l)
    .destroy()
endmethod

method act takes nothing returns boolean
        a.setsub(start,pos1)
        c.setsub(start,pos2)
        if move
            dist=DistanceBetweenWidgets(from,to)
            if b==true and c.getl()+speed<dist
                d2=d2+speed
            elseif b==false and a.getl()+speed<dist
                d1=d1+speed
                if c.getl()+speed<dist
                    d2=d2+speed
                endif
            endif
            if b==true and d2>dist
                d2=dist+1
            endif
            pos1.fromunit(from)
            pos2.fromunit(from)
            f.fromunit(from)
            t.fromunit(to)
            vel.setsub(f,t)
            vel.normalize()
            f.past(vel)
            t.past(vel)
            f.mul(d1)
            pos1.sum(f)
            t.mul(d2)
            pos2.sum(t)
            movel(l,pos1,pos2)
        else
            if b==true and c.getl()+speed<dist
                pos2.sum(vel)
                movel(l,pos1,pos2)
            elseif b==false and a.getl()+speed<dist
                pos1.sum(vel)
                if c.getl()+speed<dist
                    pos2.sum(vel)
                endif
                movel(l,pos1,pos2)
            endif
        endif
        if a.getl()+speed>dist or d1+speed>dist
            return false
        endif
    return true
endmethod

static method go takes nothing returns nothing
    integer i=0
    sendlig s
    //print(I2S(veccount))
    loop
        exitwhen i==nextsl
        s=sla[i]
        if s.act()==false
            //print("рем")
            s.rem()
            i--
        endif
        i++
    endloop
endmethod

static method onInit takes nothing returns nothing
    timer ti=CreateTimer()
    TimerStart(ti,.025,true,function sendlig.go)
f=vec.create(0,0,0)
t=vec.create(0,0,0)
a=vec.create(0,0,0)
c=vec.create(0,0,0)
endmethod
endstruct



endlibrary

