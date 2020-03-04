///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: script.ini
///////////////////////////////////////////////////////////
comment: include("lib/utilities.gsl");
include("lib/io.gsl");

string code = "";
for(int i: map.script.triggers) {
    code += "///////////////////////////////////////////////////////////\n";
    code += "///////////////////////////////////////////////////////////\n";
    code += "///////////////////////////////////////////////////////////\n";
    code += "trigger name: " + map.script.triggers[i].name + "\n";
    code += "///////////////////////////////////////////////////////////\n";
    code += "comment: " + map.script.triggers[i].comment + "\n";
    code += "///////////////////////////////////////////////////////////\n";
    code += map.script.triggers[i].code + "\n";
}

writeString(openFileWrite(@map + "_embeddedSources.j", false), code);
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: lowcpu
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
boolean array lcpu
function Trig_sel_Action1s takes nothing returns nothing
    lcpu[GetPlayerId(GetTriggerPlayer())]=not(lcpu[GetPlayerId(GetTriggerPlayer())])
    if GetLocalPlayer()==GetTriggerPlayer()
        DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "lowcpu "+B2S(lcpu[GetPlayerId(GetTriggerPlayer())]))
    endif
endfunction

//===========================================================================
function InitTrig_lowcpu takes nothing returns nothing
    set gg_trg_lowcpu = CreateTrigger(  )
    integer i=0
    loop
    exitwhen i==slots
    call TriggerRegisterPlayerChatEvent( gg_trg_lowcpu, Player(i), "-lowcpu", false )
    lcpu[i]=false
    i++
    endloop
    call TriggerAddAction( gg_trg_lowcpu, function Trig_sel_Action1s )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: restart
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_re_Actions takes nothing returns nothing
    print1("RESTART")
    restartgame()
endfunction

//===========================================================================
function InitTrig_restart takes nothing returns nothing
    set gg_trg_restart = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_restart, Player(0), "-re", false )
    call TriggerAddAction( gg_trg_restart, function Trig_re_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: restart ÐÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°ÑÑ
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function eTrig_re_Actions takes nothing returns nothing
    print1("RESTART")
    LOC=1
    restartgame()
endfunction

//===========================================================================
function InitTrig_restart_____________________u takes nothing returns nothing
    set gg_trg_restart_____________________u = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_restart_____________________u, Player(0), "-nu", false )
    call TriggerAddAction( gg_trg_restart_____________________u, function eTrig_re_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: spawnnummax
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_SkeepLVL_Actionswd takes nothing returns nothing
    set spawnnummax = ( spawnnummax + S2I(SubStringBJ(GetEventPlayerChatString(), 5, 6)) )
    //call BJDebugMsg("ÐÑÐ¾Ð¿ÑÑÐº "+SubStringBJ(GetEventPlayerChatString(), 4, 5)+"'Ñ Ð²Ð¾Ð»Ð½.")
endfunction

//===========================================================================
function InitTrig_spawnnummax takes nothing returns nothing
    set gg_trg_spawnnummax = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_spawnnummax, Player(0), "-ÑÐ½ ", false )
    call TriggerAddAction( gg_trg_spawnnummax, function Trig_SkeepLVL_Actionswd )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: spawnperiod
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function qTrig_SkeepLVL_Actionswd takes nothing returns nothing
    set spawnperiod = ( spawnperiod + S2I(SubStringBJ(GetEventPlayerChatString(), 5, 6)) )
    //call BJDebugMsg("ÐÑÐ¾Ð¿ÑÑÐº "+SubStringBJ(GetEventPlayerChatString(), 4, 5)+"'Ñ Ð²Ð¾Ð»Ð½.")
endfunction

//===========================================================================
function InitTrig_spawnperiod takes nothing returns nothing
    set gg_trg_spawnperiod = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_spawnperiod, Player(0), "-sp ", false )
    call TriggerAddAction( gg_trg_spawnperiod, function qTrig_SkeepLVL_Actionswd )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: SkeepLVL ÐÐ¾Ð¿Ð¸ÑÐ¾Ð²Ð°ÑÑ
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_SkeepLVL_Actionsw takes nothing returns nothing
    set lvlnum = ( lvlnum + S2I(SubStringBJ(GetEventPlayerChatString(), 4, 5)) )
    call BJDebugMsg("ÐÑÐ¾Ð¿ÑÑÐº "+SubStringBJ(GetEventPlayerChatString(), 4, 5)+"'Ñ Ð²Ð¾Ð»Ð½.")
endfunction

//===========================================================================
function InitTrig_SkeepLVL_____________________u takes nothing returns nothing
    set gg_trg_SkeepLVL_____________________u = CreateTrigger(  )
    call TriggerRegisterPlayerChatEvent( gg_trg_SkeepLVL_____________________u, Player(0), "-s ", false )
    call TriggerAddAction( gg_trg_SkeepLVL_____________________u, function Trig_SkeepLVL_Actionsw )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: lms
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_SkeepLVL_Actions takes nothing returns nothing
    if GetLocalPlayer()==GetTriggerPlayer()
    lspeed = (S2I(SubStringBJ(GetEventPlayerChatString(), 6, 7)) )
    //print(SubStringBJ(GetEventPlayerChatString(), 6, 7))
    if lspeed<10
        lspeed=10
    elseif lspeed>80
        lspeed=80
    endif
    endif
endfunction

//===========================================================================
function InitTrig_lms takes nothing returns nothing
    set gg_trg_lms = CreateTrigger(  )

    integer i=0
    loop
    exitwhen i==slots
    call TriggerRegisterPlayerChatEvent( gg_trg_lms, Player(i), "-lms ", false )
    i++
    endloop
    call TriggerAddAction( gg_trg_lms, function Trig_SkeepLVL_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: MOOVE
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_MOOVE_Conditions takes nothing returns boolean

    if  GetSpellAbilityId() == 'mov2' or  GetSpellAbilityId() == 'mov1' 
        return true
    endif
    return false
endfunction

function Trig_MOOVE_Actions takes nothing returns nothing
    unit u=GetTriggerUnit()
    location l=GetSpellTargetLoc()
    call TriggerSleepAction( 0.10 )
    call SetUnitPositionLoc(u,l)
    lig.renu(u)
    u=null
endfunction

//===========================================================================
function InitTrig_MOOVE takes nothing returns nothing
    set gg_trg_MOOVE = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_MOOVE, EVENT_PLAYER_UNIT_SPELL_CAST )
    call TriggerAddCondition( gg_trg_MOOVE, Condition( function Trig_MOOVE_Conditions ) )
    call TriggerAddAction( gg_trg_MOOVE, function Trig_MOOVE_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: moxer
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: autorem
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_autorem_Func002C takes nothing returns boolean
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'n007' ) ) then
        return true
    endif
    if ( ( GetUnitTypeId(GetTriggerUnit()) == 'n008' ) ) then
        return true
    endif
    return false
endfunction

function Trig_autorem_Conditions takes nothing returns boolean
    if ( not Trig_autorem_Func002C() ) then
        return false
    endif
    return true
endfunction

function Trig_autorem_Actions takes nothing returns nothing
    call IssueImmediateOrderBJ( GetTriggerUnit(), "healon" )
endfunction

//===========================================================================
function InitTrig_autorem takes nothing returns nothing
    set gg_trg_autorem = CreateTrigger(  )
     call TriggerRegisterAnyUnitEventBJ( gg_trg_autorem, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH )
 call TriggerRegisterAnyUnitEventBJ( gg_trg_autorem, EVENT_PLAYER_UNIT_UPGRADE_FINISH )
    call TriggerAddCondition( gg_trg_autorem, Condition( function Trig_autorem_Conditions ) )
    call TriggerAddAction( gg_trg_autorem, function Trig_autorem_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: selfkill
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////
//TESH.scrollpos=-1
//TESH.alwaysfold=0
function Trig_selfkill_Conditions takes nothing returns boolean
    if ( not ( GetIssuedOrderIdBJ() == String2OrderIdBJ("roar") ) ) then
        return false
    endif
    return true
endfunction

function Trig_selfkill_Actions takes nothing returns nothing
    unit u=GetTriggerUnit()
    //UpgradeProgressStruct.onSelfDestroy(u)
    KillUnit( u )
    u=null
endfunction

//===========================================================================
function InitTrig_selfkill takes nothing returns nothing
    set gg_trg_selfkill = CreateTrigger(  )
    integer i=0
    loop
        exitwhen i==slots
        call TriggerRegisterPlayerUnitEventSimple( gg_trg_selfkill, Player(i), EVENT_PLAYER_UNIT_ISSUED_ORDER )
        i++
    endloop
    call TriggerAddCondition( gg_trg_selfkill, Condition( function Trig_selfkill_Conditions ) )
    call TriggerAddAction( gg_trg_selfkill, function Trig_selfkill_Actions )
endfunction


///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: onTowerDie
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: questMenu
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
trigger name: weather
///////////////////////////////////////////////////////////
comment: 
///////////////////////////////////////////////////////////

 