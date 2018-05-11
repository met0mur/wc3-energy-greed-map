library gameplayer initializer init uses general , game

globals
trigger herodie
integer activeplayer=0
gamepr array actgpa
integer slots=PL_NUM
gamepr array gpa //список структур игроков

endglobals

struct gamepr//todo rename to GamePlayerData
player p//todo rename to nativePlayer
group units //юниты плаерпа
integer act //системный ID игрока

unit u//ГГ
unit krest//респавнилка
effect but
boolean krestis=false // юзер умер и стоит респавнилка
boolean educ=false

static method onLeave takes nothing returns nothing //действия при уходе игрока
integer j=0
print1(GetPlayerName(GetTriggerPlayer())+GetLocalizedString("TRIGSTR_7"))
gamepr gp=gpa[GetPlayerId(GetTriggerPlayer())]
    RemoveUnit(gp.u)
    RemoveUnit(gp.krest)
    DestroyEffect(gp.but)
    group g=gp.units
    integer i=0
    loop
        exitwhen i==activeplayer
        if actgpa[i]==gp
            if i!=activeplayer
                g=actgpa[i].units
                actgpa[i]=actgpa[activeplayer-1]
            else
                activeplayer--
            endif
        endif
        i++
    endloop
    unit u=FirstOfGroup(g)
    loop
        exitwhen u==null
        RescueUnitBJ(u,Player(11),false)
        GroupRemoveUnit(g,u)
        u=FirstOfGroup(g)
    endloop
    
    gamepr.compareLost()
endmethod

static method onRev takes nothing returns nothing
    unit u=GetTriggerUnit()
    gamepr gp=gpa[GetPlayerId(GetOwningPlayer(u))]
    ReviveHero(gp.u, GetUnitX(gp.krest), GetUnitY(gp.krest), true)
    DestroyEffect(gp.but)
    gp.krestis=false
    UnitDataStruct p=GetUnitUserData(gp.krest)
    SetUnitX(gp.u,GetUnitX(p.from))
    SetUnitY(gp.u,GetUnitY(p.from))
    KillUnit(gp.krest)
    u=null
endmethod

static method compareLost takes nothing returns nothing
        boolean array b
        integer i=0
        loop
            exitwhen i==slots
            if (GetPlayerSlotState(Player(i))!=PLAYER_SLOT_STATE_PLAYING) or (CountUnitsInGroup(gpa[i].units)==0 and gpa[i].krestis==true)
                b[i]=true 
            else
                b[i]=false
            endif
            i++
        endloop
        //print1("I0"+B2S(b[0])+"I0"+B2S(b[1])+"I0"+B2S(b[2])+"I0"+B2S(b[3]))
        boolean l=true
        i=0
        loop
            exitwhen i==slots
            l = l and b[i]
            i++
        endloop
        //print1("L"+B2S(l))
        if l
            displayedTextOnRestart=GetLocalizedString("TRIGSTR_8")
            restartgame()
        endif
endmethod

static method onDeath takes nothing returns nothing
    unit u=GetTriggerUnit()
    trigger t=CreateTrigger()
    gamepr gp=gpa[GetPlayerId(GetOwningPlayer(u))]
    gp.krest=CreateUnit(gp.p,'kres',GetUnitX(u),GetUnitY(u),0)
    //AddSpecialEffectTargetUnitBJ( "origin", gp.krest, "Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl" )
    gp.but=AddSpecialEffect("Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl",GetUnitX(gp.krest),GetUnitY(gp.krest))
    
    UnitDataStruct.add(gp.krest,0)
    gp.krestis=true
    TriggerRegisterUnitManaEvent( t, gp.krest, GREATER_THAN_OR_EQUAL, 9.00 )
    TriggerAddAction( t, function gamepr.onRev )
    DisplayTextToPlayer(GetLocalPlayer(), 0, 0, GetPlayerName(GetOwningPlayer(u))+GetLocalizedString("TRIGSTR_10"))
    if GetLocalPlayer()==GetOwningPlayer(u)
        DisplayTextToPlayer(GetLocalPlayer(), 0, 0, GetLocalizedString("TRIGSTR_9"))
    endif
    gamepr.compareLost()
    u=null
    t=null
endmethod

static method playerpointinit takes player p returns nothing
        if LOC==0
            playerpoint.x=0
            playerpoint.y=0
        elseif LOC==1
            playerpoint.x=0
            playerpoint.y=6777
        endif
endmethod

method initPlayer takes nothing returns nothing //инициализация структуры игрока
    trigger t=CreateTrigger()
    TriggerRegisterPlayerEventLeave(t,p)
    TriggerAddAction(t,function gamepr.onLeave)
        if u!=null
            UnitDataStruct.rem(u)
            RemoveUnit(u)
            DestroyEffect(but)
        endif
    gamepr.playerpointinit(p)
    u=CreateUnit(p,'H000',playerpoint.x,playerpoint.y,0)
    UnitAddTypeBJ( UNIT_TYPE_PEON, u )
    UnitDataStruct.add(u,pHERO)
    units=CreateGroup()
    t=CreateTrigger()
    TriggerRegisterUnitEvent( t, u, EVENT_UNIT_DEATH )
    TriggerAddAction( t, function gamepr.onDeath )
endmethod

static method gameStart takes nothing returns nothing //инициализация всех игроков перед началом игры
    integer i=0
    gamepr gp
    loop
        exitwhen i==slots
        RemoveUnit(gpa[i].u)
        i++
    endloop
    i=0
    activeplayer=0
    loop
        exitwhen i==slots
        if (GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING and GetPlayerController(Player(i))==MAP_CONTROL_USER) {
            gp=gamepr.create()
            gp.p=Player(i)
            gpa[i]=gp
            actgpa[activeplayer]=gp
            gp.act=activeplayer
            activeplayer++
            gp.initPlayer()
            }
        i++
    endloop
    i=0;
    loop
        exitwhen i == activeplayer;
        SetPlayerStateBJ(actgpa[i].p,PLAYER_STATE_RESOURCE_FOOD_CAP,40+(60/ activeplayer));
        i++;
    endloop
    
    
    
    initdiff()
    print("gameStart Called")
    
    falseStartCountDown = falseStartCountDownInitialSec / GameConfig.current.spawnSubwavesTimeSec;
    TimerStart(spawner,GameConfig.current.spawnSubwavesTimeSec,true,function GO)
endmethod

static method win takes nothing returns nothing
    displayedTextOnRestart="WIN!"
    restartgame()
    //govote()
endmethod

static method gpunits takes nothing returns nothing
    unit u=GetConstructedStructure()
        //print("333333333333333333333333333333333333")
    if u!=null and GetUnitTypeId(u)!='wisp' and GetUnitTypeId(u)!='acc1'
        GroupAddUnit(gpa[GetPlayerId(GetTriggerPlayer())].units,u)
    else
        u=GetDyingUnit()
        GroupRemoveUnit(gpa[GetPlayerId(GetTriggerPlayer())].units,u)
    endif
        gamepr.compareLost()

endmethod

static method onInit takes nothing returns nothing
    //gamepr.gameStart()
endmethod

endstruct

pair playerpoint

private function init takes nothing returns nothing
    trigger tr=CreateTrigger()
    TriggerRegisterAnyUnitEventBJ( tr, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH )
    TriggerRegisterAnyUnitEventBJ( tr, EVENT_PLAYER_UNIT_DEATH )
    TriggerAddAction( tr, function gamepr.gpunits)
    playerpoint=pair.create()
    gamepr.gameStart()
endfunction

endlibrary
