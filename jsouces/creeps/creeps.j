library creeps initializer init uses general, cmind, createunittime
//ГЛОБАЛКИ_______________________________________)))))))))_________________
globals
leaderboard l

integer falseStartCountDownInitialSec = 10;
integer falseStartCountDown;

timer spawner
integer lvlnum=1
integer spawnnum=0
boolean pause=false
integer creepsnum=0
group creepsgro

player creepsplayer=Player(10)
//ТОЧКИ
private group scangroup

integer nexttarg=0
point array targarray
integer nextresp=0
point array resparray
//ТИПЫ ТОЧЕК
private constant integer PT_RESPAWN=1
    private constant integer ALL=0
    private constant integer BASE=1
    private constant integer SUBSID=2
private constant integer PT_TARGET=2
// АЙДИ ТОЧЕК
integer CREEP_TARGET='targ'
integer CREEP_RESP='resp'

//КРИПИНФА
private creepinfo array allc
private creepinfo array basec
private creepinfo array subc
endglobals

//ТОЧКА _________________________________________________________________________
struct point
pair p
integer Type
integer subType
integer loc

static method make takes unit u returns nothing
local point pt=point.create()

set pt.p=pair.u2p(u)
set pt.subType=R2I(getmana(u))
set pt.loc=R2I(GetUnitFacing(u))
if GetUnitTypeId(u)==CREEP_TARGET then
set pt.Type=PT_TARGET
set targarray[nexttarg]=pt
set nexttarg=nexttarg+1
elseif GetUnitTypeId(u)==CREEP_RESP then

set pt.Type=PT_RESPAWN
set resparray[nextresp]=pt
set nextresp=nextresp+1

endif

endmethod

static method scan takes nothing returns nothing
local unit u
set scangroup=CreateGroup()
      GroupEnumUnitsInRect(scangroup, GetPlayableMapRect(), null)
set u=FirstOfGroup(scangroup)
loop 
    exitwhen u==null
    if GetUnitTypeId(u)!=CREEP_RESP and GetUnitTypeId(u)!=CREEP_TARGET then
              GroupRemoveUnit(scangroup,u)
        //      BJDebugMsg("NNN")
    else
    
              point.make(u)
              GroupRemoveUnit(scangroup,u)
              RemoveUnit(u)
    endif
    set u=FirstOfGroup(scangroup)
endloop
//      BJDebugMsg("out")
u=null
endmethod

static method ptinit takes nothing returns nothing
      point.scan()

endmethod
endstruct

//ИНФА О КРИПАХ _______________________________________________________________
struct creepinfo
integer id
integer lvl
integer Type
integer num
static method setin takes integer id, integer lvl, integer Type, integer num returns nothing
    local creepinfo c=creepinfo.create()
    set c.id=id
    set c.lvl=lvl
    set c.Type=Type
    set c.num=num
    if Type==0 then
        set allc[lvl]=c
    elseif Type==1 then
        set basec[lvl]=c
    elseif Type==2 then
        set subc[lvl]=c
    endif
endmethod
//ИНИТ ВОЛН
static method infinit takes nothing returns nothing
local integer lvl=1
      creepinfo.setin('lv11',lvl,ALL,1)
      creepinfo.setin('lv11',lvl,BASE,1)
      creepinfo.setin('lv11',lvl,SUBSID,1)
      WAVE_SUBNUM[lvl]=20
set lvl=lvl+1//2
      creepinfo.setin('lv11',lvl,ALL,6)
      creepinfo.setin('lv11',lvl,BASE,6)
      creepinfo.setin('lv11',lvl,SUBSID,6)
      WAVE_SUBNUM[lvl]=20
set lvl=lvl+1//2
      creepinfo.setin('lv11',lvl,ALL,3)
      creepinfo.setin('lv12',lvl,BASE,1)
      creepinfo.setin('lv13',lvl,SUBSID,1)
set lvl=lvl+1//3
      creepinfo.setin('lv11',lvl,ALL,3)
      creepinfo.setin('lv12',lvl,BASE,1)
      creepinfo.setin('lv13',lvl,SUBSID,2)
set lvl=lvl+1//4
      creepinfo.setin('lv11',lvl,ALL,3)
      creepinfo.setin('lv14',lvl,BASE,1)
      creepinfo.setin('lv12',lvl,SUBSID,2)
set lvl=lvl+1//5
      creepinfo.setin('lv13',lvl,ALL,1)
      creepinfo.setin('lv14',lvl,BASE,2)
      creepinfo.setin('lv12',lvl,SUBSID,3)
set lvl=lvl+1//6
      creepinfo.setin('lv11',lvl,ALL,5)
      creepinfo.setin('lv15',lvl,BASE,1)
      creepinfo.setin('lv14',lvl,SUBSID,2)
set lvl=lvl+1//7
      creepinfo.setin('lv14',lvl,ALL,1)
      creepinfo.setin('lv15',lvl,BASE,2)
      creepinfo.setin('lv14',lvl,SUBSID,1)
set lvl=lvl+1//8
      creepinfo.setin('lv22',lvl,ALL,2)
      creepinfo.setin('lv21',lvl,BASE,2)
      creepinfo.setin('lv22',lvl,SUBSID,1)
set lvl=lvl+1//9
      creepinfo.setin('lv22',lvl,ALL,3)
      creepinfo.setin('lv23',lvl,BASE,1)
      creepinfo.setin('lv21',lvl,SUBSID,2)
set lvl=lvl+1//10
      creepinfo.setin('lv22',lvl,ALL,4)
      creepinfo.setin('lv24',lvl,BASE,1)
      creepinfo.setin('lv23',lvl,SUBSID,1)
set lvl=lvl+1//11
      creepinfo.setin('lv21',lvl,ALL,2)
      creepinfo.setin('lv25',lvl,BASE,1)
      creepinfo.setin('lv24',lvl,SUBSID,1)
set lvl=lvl+1//12
      creepinfo.setin('lv23',lvl,ALL,1)
      creepinfo.setin('lv25',lvl,BASE,1)
      creepinfo.setin('lv24',lvl,SUBSID,2)
set lvl=lvl+1//13
      creepinfo.setin('lv25',lvl,ALL,1)
      creepinfo.setin('lv25',lvl,BASE,1)
      creepinfo.setin('lv22',lvl,SUBSID,7)
set lvl=lvl+1//14
      creepinfo.setin('lv31',lvl,ALL,2)
      creepinfo.setin('lv32',lvl,BASE,1)
      creepinfo.setin('lv31',lvl,SUBSID,2)
set lvl=lvl+1//15
      creepinfo.setin('lv31',lvl,ALL,2)
      creepinfo.setin('lv33',lvl,BASE,1)
      creepinfo.setin('lv32',lvl,SUBSID,2)
set lvl=lvl+1//16
      creepinfo.setin('lv32',lvl,ALL,1)
      creepinfo.setin('lv34',lvl,BASE,1)
      creepinfo.setin('lv33',lvl,SUBSID,1)
set lvl=lvl+1//17
      creepinfo.setin('lv32',lvl,ALL,2)
      creepinfo.setin('lv34',lvl,BASE,1)
      creepinfo.setin('lv31',lvl,SUBSID,2)
set lvl=lvl+1
MAXLVL[0]=lvl
//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
      creepinfo.setin('1L12',lvl,ALL,3)
      creepinfo.setin('1L11',lvl,BASE,4)
      creepinfo.setin('1L13',lvl,SUBSID,3)
      WAVE_END[lvl]=true
set lvl=lvl+1
      creepinfo.setin('1L12',lvl,ALL,4)
      creepinfo.setin('1L11',lvl,BASE,6)
      creepinfo.setin('1L13',lvl,SUBSID,2)
      WAVE_END[lvl]=true
set lvl=lvl+1
      creepinfo.setin('1L11',lvl,ALL,2)
      creepinfo.setin('1L13',lvl,BASE,7)
      creepinfo.setin('1L14',lvl,SUBSID,3)
      WAVE_END[lvl]=true
      WAVE_SUBNUM[lvl]=3
set lvl=lvl+1
      creepinfo.setin('1L12',lvl,ALL,2)
      creepinfo.setin('1L15',lvl,BASE,1)
      creepinfo.setin('1L14',lvl,SUBSID,6)
      WAVE_SUBNUM[lvl]=2
set lvl=lvl+1
      creepinfo.setin('1L14',lvl,ALL,2)
      creepinfo.setin('1L15',lvl,BASE,2)
      creepinfo.setin('1L14',lvl,SUBSID,1)
      WAVE_SUBNUM[lvl]=2
set lvl=lvl+1
      creepinfo.setin('1L14',lvl,ALL,2)
      creepinfo.setin('1L15',lvl,BASE,2)
      creepinfo.setin('1L16',lvl,SUBSID,1)
set lvl=lvl+1
      creepinfo.setin('1L11',lvl,ALL,3)
      creepinfo.setin('1L17',lvl,BASE,2)
      creepinfo.setin('1L12',lvl,SUBSID,0)
set lvl=lvl+1
      creepinfo.setin(0,lvl,ALL,0)
      creepinfo.setin('1L17',lvl,BASE,2)
      creepinfo.setin('1L18',lvl,SUBSID,1)
      WAVE_SUBNUM[lvl]=2
      WAVE_END[lvl]=true
set lvl=lvl+1
      MAXLVL[1]=lvl

//init
integer n=0
loop
    exitwhen n>lvl
    WAVE_SUBNUM[lvl]=0
    n++
endloop
endmethod
endstruct

integer array MAXLVL
boolean array WAVE_END
integer array WAVE_SUBNUM

function GO takes nothing returns nothing
    falseStartCountDown--;
    if (falseStartCountDown > 0) {return;}
    
    local integer i=0
    local integer n=0
    local point p
    local unit u
    //      BJDebugMsg("creepsnum - "+I2S(creepsnum) +", lvl - "+I2S(lvlnum)+" , "+I2S(spawnnum))
    if lvlnum>=MAXLVL[LOC] then
        lvlnum=0
            //PauseTimer(spawner)
                //gamepr.win()
        displayedTextOnRestart="WIN!"
        ExecuteFunc("restartgame")
        LeaderboardSetLabel(l,"WIN!")
            return
    endif
    if creepsnum>creepsmaxnum then
     u=null
     return
    endif
    integer subwave_sub=0
    if WAVE_SUBNUM[lvlnum]!=0 then
        subwave_sub= GameConfig.current.spawnSubwavesNumber -WAVE_SUBNUM[lvlnum]
    endif
    if spawnnum==GameConfig.current.spawnSubwavesNumber-subwave_sub then
        if not(WAVE_END[lvlnum]) or (WAVE_END[lvlnum] and creepsnum==0)
            lvlnum=lvlnum+1
            spawnnum=1
        else
            return
        endif
    else
        spawnnum=spawnnum+1
    endif
    if LOC==0
        LeaderboardSetLabel(l,"Волна "+I2S(lvlnum-GameConfig.current.startLevelShift)+"."+I2S(spawnnum))
    else
        LeaderboardSetLabel(l,"Волна: "+I2S(lvlnum-MAXLVL[LOC-1]+1)+"/" + I2S(MAXLVL[LOC] - MAXLVL[LOC-1]) + "\nСпавн: " + I2S(spawnnum) + "/" + I2S(GameConfig.current.spawnSubwavesNumber-subwave_sub))
    endif
    loop
        exitwhen pause==true or i==nextresp
        set p=resparray[i] 
        if p.loc==LOC
            set n=0
            loop
                exitwhen n==allc[lvlnum].num 
                CreateUnitTime(creepsplayer,allc[lvlnum].id,p.p.x,p.p.y)
                set n=n+1
            endloop
            if p.subType==BASE then
                set n=0
                loop
                    exitwhen n==basec[lvlnum].num
                    CreateUnitTime(creepsplayer,basec[lvlnum].id,p.p.x,p.p.y)
                    set n=n+1
                endloop
            elseif p.subType==SUBSID then
                    set n=0
                loop
                    exitwhen n==subc[lvlnum].num
                    CreateUnitTime(creepsplayer,subc[lvlnum].id,p.p.x,p.p.y)
                    set n=n+1
                endloop
            endif
        endif
        set i=i+1
    endloop
    u=null
endfunction

private function ifdie takes nothing returns nothing
    local unit u=GetTriggerUnit()
          UnitDataStruct.rem(u)
          GroupRemoveUnit(creepsgro,u)
    set creepsnum=creepsnum-1
    //print(I2S(creepsnum))
          removeunit(u,4)
    set u=null
endfunction

private function forgroonsto takes nothing returns nothing
        unit u=GetEnumUnit()
        compareXY(u)
        if GetUnitCurrentOrder(u) == 0
            cmindtarget(u)
        endif
        u=null
endfunction

private function onStop takes nothing returns nothing //даёт мозг крипам
    unit u
    integer i=7 //сколько крипов получают мозг
    //return
    loop
        exitwhen i<1
        u=GroupPickRandomUnit(creepsgro)
        if critical_num_of_creeps_in_area(u) //если крипов дохуя
            destroyDestructable(u)
        endif
        i--
    endloop
    u=null
          ForGroup(creepsgro, function forgroonsto)
endfunction


//ИНИЦИАЛИЗАЦИЯ БИБЛЫ_________________________________________________________________-
private function init takes nothing returns nothing
spawner = CreateTimer()
timer t=CreateTimer()
local trigger tt=CreateTrigger()
local integer i=0
TimerStart(t,1,true,function onStop)
set creepsgro=CreateGroup()
      creepinfo.infinit()
      point.ptinit()
          TriggerRegisterPlayerUnitEventSimple( tt, Player(10), EVENT_PLAYER_UNIT_DEATH )
          TriggerAddAction( tt, function ifdie)
      TriggerSleepAction(0.2)
set l=CreateLeaderboard()
      LeaderboardSetLabel(l,GetLocalizedString("TRIGSTR_24"))
loop
      PlayerSetLeaderboard(Player(i), l)           
set i=i+1
exitwhen i==slots
endloop
endfunction
endlibrary