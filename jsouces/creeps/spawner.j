library createunittime initializer onInit uses cmind

private cftstruct array cfta
private integer nextcft=0

struct cftstruct
integer i
player p
integer id
real x
real y

static nothing onRest(){
        integer i=0
        loop
            exitwhen i==nextcft
            cfta[i].destroy()
            i++
        endloop
        nextcft=0
    }

endstruct

private function ord takes unit u returns nothing
if u==null {print("null creep/bug/save replay pls")}
call UnitDataStruct.add(u,pCREEP)
call GroupAddUnit(creepsgro,u)
set creepsnum=creepsnum+1
call RemoveGuardPosition(u)
call SetUnitPathing(u,true)
call SetUnitColor (u,ConvertPlayerColor(13))
cmindtarget(u)
endfunction

nothing CreateUnitTime(player p,integer id,real x,real y){
    cftstruct c=cftstruct.create()
    c.p=p
    c.id=id
    c.x=x
    c.y=y
    cfta[nextcft]=c
    c.i=nextcft
    nextcft++
    }

private nothing go(){
integer i
//BJDebugMsg(I2S(nextcft)+"__"+I2S(creepsnum))
i=GetRandomInt(0,nextcft-1)
    if nextcft!=0 and creepsnum<creepsmaxnum+10
        nextcft--
        unit u=CreateUnit(cfta[i].p,cfta[i].id,cfta[i].x,cfta[i].y,0)
        ord(u)        
        cfta[i].destroy()
        cfta[i]=cfta[nextcft]
        if nextcft>spawnperiod/0.25
            go()
        endif
        u=null
    endif
    }

private nothing onInit(){
    timer t=CreateTimer()
    TimerStart(t,.25,true,function go)
    }

endlibrary