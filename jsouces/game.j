library game initializer init uses creeps, upgradeProgress

boolean NoGem=true
integer Diff=0
integer lvlplus=0

integer LOC=0

nothing initdiff() {
    
    spawnnummax=SPWN_MAX-(activeplayer/2)
    spawnperiod=SPWN_PD-(activeplayer/2)
    engmult=EGRE_ML+activeplayer
    if Diff==0
        NoGem=true
        lvlplus=0
    elseif Diff==1
        NoGem=true
        spawnnummax=spawnnummax+1
        spawnperiod=spawnperiod+1
        engmult=engmult-1
        lvlplus=0
    elseif Diff==2
        NoGem=true
        lvlplus=2
    endif
    
    if (LOC==1) {
       spawnperiod=spawnperiod+2 
    }
    
    lvlnum=1+lvlplus
    spawnnum=0
    if LOC==1 {lvlnum=MAXLVL[0]+lvlplus}
}

function Trig_basegem_Actions takes nothing returns nothing
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 20
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call CreateItemLoc( rock.getrandomgem(), GetRandomLocInRect(gg_rct_base) )
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction

nothing clearmapitems() {
RemoveItem(GetEnumItem())
}

nothing clearmap() {
group g=CreateGroup()
GroupEnumUnitsInRect(g, GetPlayableMapRect(), null)
unit u=FirstOfGroup(g)
loop
    exitwhen u==null
    GroupRemoveUnit(g,u)
    integer id=GetUnitTypeId(u)
    if id!='n004' and id!='n003'
        RemoveUnit(u)
    endif
    if GetUnitTypeId(u)=='prim'
        KillUnit(u)
    endif
    u=FirstOfGroup(g)
endloop
EnumItemsInRect(GetPlayableMapRect(),null,function clearmapitems)
u=null
DestroyGroup(g)
g=null
}

////////////////////////////////////////////////////////////////////////
////////////////
////////////////              БАЗОВЫЕ ПОСТРОЙКИ
////////////////
////////////////////////////////////////////////////////////////////////

nothing addlink(unit a, unit b) {
    ManaLinkStruct.addlink(a,b);
}


nothing initbase() {
player p=Player(11)
unit a
unit b
unit c
unit d
if NoGem==false
    Trig_basegem_Actions()
endif
if Diff!=0
    a=CreateUnit(p,'tow2',90.,-2004.,270.)
    b=CreateUnit(p,'tow2',90.,-1900.,270.)
    addlink(a,b)
    a=CreateUnit(p,'tow2',90.,-1806.,270.)
    addlink(b,a)
    c=CreateUnit(p,'tow3',0.,-1366.,270.)
    addlink(a,c)
    a=CreateUnit(p,'towe',-90.,-2004.,270.)
    b=CreateUnit(p,'tow2',-90.,-1900.,270.)
    addlink(a,b)
    a=CreateUnit(p,'tow2',-90.,-1806.,270.)
    addlink(b,a)
    addlink(a,c)
    b=CreateUnit(p,'tow3',0.,-936.,270.)
    addlink(c,b)
    a=CreateUnit(p,'tow3',-100.,-300.,270.)//последняя перед развилкой
    UnitAddAbility(a,'Ane2')
    addlink(b,a)
    b=CreateUnit(p,'tow3',255.,0.,270.)
    UnitAddAbility(b,'Ane2')
    addlink(a,b)
    c=CreateUnit(p,'tow3',-255.,0.,270.)
    UnitAddAbility(c,'Ane2')
    addlink(a,c)
    a=CreateUnit(p,'gi01',-350.,-350.,270.)
    addlink(c,a)
    a=CreateUnit(p,'gi01',350.,-350.,270.)
    addlink(b,a)
    a=CreateUnit(p,'gi01',-350.,350.,270.)
    addlink(c,a)
    a=CreateUnit(p,'gi01',350.,350.,270.)
    addlink(b,a)
    IssueImmediateOrder(a,"healon")
    a=CreateUnit(p,healL1,-450.,0.,270.)
    addlink(c,a)
    IssueImmediateOrder(a,"healon")
    a=CreateUnit(p,healL1, 450.,0.,270.)
    addlink(b,a)
    IssueImmediateOrder(a,"healon")
    a=CreateUnit(p,'pr01',0.,0.,270.)
    prima.Add(a,150)
    IssueImmediateOrder(a,"webon")
endif

a=null
b=null
c=null

}
nothing initbase1() {
player p=Player(11)
unit a
unit b
unit c
unit d
if NoGem==false
    Trig_basegem_Actions()
endif
if Diff!=0
    a=CreateUnit(p,'gamm',-300.,7200.,270.)
    b=CreateUnit(p,'gamm',180.,7200.,270.)
endif

a=null
b=null
c=null

}
////////////////////////////////////////////////////////////////////////
////////////////
////////////////              СТАРТОВАЯ
////////////////
////////////////////////////////////////////////////////////////////////
/*if Diff==0
    print("Выбрана Начальная Сложность")
elseif Diff==1
    print("Выбрана Средняя Сложность")
endif*/
////////////////////////////////////////////////////////////////////////
////////////////
////////////////              СТАРТОВАЯ
////////////////
////////////////////////////////////////////////////////////////////////

boolean restarting=false
string dispOnRes=""

nothing restartgame() {


		//print(I2S('gi01'));
        //print(I2S(ascii.string2int("gi01")));
        //print(I2S('hfoo'));
        //print(I2S(ascii.string2int("hfoo")));
		//print(I2S(ascii.string2int("abcd")));
		//values
        //print(ascii.values[63].char);
        


if restarting==true {return}
restarting=true

CinematicFilterGenericBJ( 3, BLEND_MODE_ADDITIVE, "ReplaceableTextures\\CameraMasks\\DiagonalSlash_mask.blp", 100, 100, 100, 100, 0, 0, 0, 0 )

DisplayCineFilterBJ( true )
//ClearTextMessages()
if dispOnRes!="" {print1(dispOnRes)}

UpgradeProgressStruct.destroyAll() // чистка масиива прогресса апгрейда энергии

//TriggerSleepAction(0.1)

destsave.renu() 

svod.clear()
clearmap()
cftstruct.onRest()
crist.recirculate()  //Обновление кристаллов

PauseTimer(spawner)

if LOC==0
    initbase()
elseif LOC==1
//initbase1()
    SetCameraPosition(0,6777)
endif

gamepr.gameStart()

GroupClear(creepsgro)
creepsnum=0
//CreateUnit(Player(10),'n00B',0,0,0)
PauseGame(false)
PlayMusicBJ("MIDI\\egtd1.mid")
VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 200.00 )
VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_AMBIENTSOUNDS, 0.00 )
DisplayCineFilterBJ( false )
restarting=false
dispOnRes=""
}

/*
integer array educ_page[PL_NUM]
units array U[PL_NUM]
struct units
unit array u[60]
texttag t
integer next=0
    static method onInit takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==slots
            U[i]=units.create()
        endloop
    endmethod
    method clear takes nothing returns nothing
        integer i=0
        loop
            exitwhen i==56
            RemoveUnit(.u[i])
            i++
        endloop
    endmethod
endstruct

private nothing say(player p,string msg,real dur) {
if p==GetLocalPlayer()
    SetCinematicScene('H000', GetPlayerColor(p), "Наставник", msg, 22, dur)
endif
}

private unit createu(integer arr,integer p, integer id, integer ins,real x) {
    unit u
        u=CreateUnit(Player(p),id,rectc[ins].x+x,rectc[ins].y,0)
    if arr==0
        U[ins].u[U[ins].next]=u
        U[ins].next++
    else 
        U[ins].u[arr]=u
    endif
    return u
}
private nothing removeu(integer arr, integer ins) {
    RemoveUnit(U[ins].u[arr])
}


private nothing education() {
unit u
player p=GetTriggerPlayer()
//print1(GetPlayerName(p))
integer id=GetPlayerId(p)
educ_page[id]=educ_page[id]+1
integer i=educ_page[id]
if i==1
    say(p,"Чтобы защитить себя - строй башни. Начни с 'Передатчика'.", 5)
    u=createu(0,id,'towe',id,200)
    UnitAddIndicatorBJ( u, 20.00, 50.00, 100.00, 0 )
    TriggerSleepAction(2)
    say(p,"Чтобы защитить себя - строй башни. Начни с 'Передатчика' и улучшай его.", 5)
    u=createu(0,id,'n002',id,0)
    UnitAddIndicatorBJ( u, 20.00, 50.00, 100.00, 0 )
    u=createu(0,id,'n001',id,400)
    UnitAddIndicatorBJ( u, 20.00, 50.00, 100.00, 0 )
    TriggerSleepAction(0.5)
    u=createu(0,id,'n005',id,-200)
    UnitAddIndicatorBJ( u, 20.00, 50.00, 100.00, 0 )
    u=createu(0,id,'n003',id,600)
    UnitAddIndicatorBJ( u, 20.00, 50.00, 100.00, 0 )
elseif i==2
    U[id].clear()
    say(p,"кристалл", 2)


elseif i==4
    say(p,"Иди лесом!", 1)
    U[id].clear()
elseif i==5
    CinematicModeBJ( false, bj_FORCE_PLAYER[id] )
    restartgame()
endif
}
*/
private nothing Votediff() {
    button b=GetClickedButton()
    player p=GetTriggerPlayer()
    integer id=GetPlayerId(p)
    //if b==b0
    //but0++
    if b==b1
    but1++
    elseif b==b2
    but2++
    endif
    vote--
    if vote==0
        if (but0>=but1 and but0>=but2)// or (but0==but1 and but0!=0) or (but0==but2 and but0!=0 )
            Diff=0
        elseif (but1>=but0 and but1>=but2)// or (but1==but0 and but1!=0) or (but1==but2 and but1!=0 )
            Diff=1
        elseif but2>=but0 and but2>=but1
            Diff=2
        endif
        restartgame()
    endif
}

integer but0=0
integer but1=0
integer but2=0
nothing govotedif() {
    vote=activeplayer
    dialog d=DialogCreate()
    DialogSetMessage(d,"Уровень сложности:")
    //b0=DialogAddButton(d,"Начальный",0)
    b1=DialogAddButton(d,"Средний",0)
    b2=DialogAddButton(d,"Высокий",0)
    trigger t=CreateTrigger()
    TriggerRegisterDialogEvent (t,d)
    TriggerAddAction(t,function Votediff)
    integer i=0
    loop
        exitwhen i==activeplayer
        DialogDisplay(actgpa[i].p,d,true)
        i++
    endloop
    but0=0
    but1=0
    but2=0
}

boolean go=true
integer vote
button b0
button b1
button b2

private nothing Vote() {
button b=GetClickedButton()
player p=GetTriggerPlayer()
integer id=GetPlayerId(p)
//if b==b1
//    gpa[id].educ=true
//    go=false
//    print1(GetPlayerName(p)+" желает обучатся")
//elseif b==b2
    gpa[GetPlayerId(p)].educ=false
//endif
vote--
if vote==0 and go==true
    govotedif()

elseif vote==0 and go!=true
    /*print1("Начинает Обучение")
    integer i=0
    PauseGame(false)
    trigger t=CreateTrigger()
    TriggerAddAction(t,function education )
    loop
        exitwhen i==slots
        if gpa[id].educ==true
            CinematicModeBJ( true, bj_FORCE_PLAYER[GetPlayerId(p)] )
            if (GetLocalPlayer() == Player(id))
                PanCameraToTimed(rectc[id].x, rectc[id].y, 0)
            endif
            //SetCameraBoundsToRectForPlayerBJ( Player(id), recta[id] )
            say(p,"Приветствую тебя, брат! Я постараюсь по-быстрому ввести тебя в курс дела. |n|n|cffffcc00(Для продолжения жмите ~ESC~)|r", 7)
            educ_page[i]=0
            TriggerRegisterPlayerEvent(t, Player(i), EVENT_PLAYER_END_CINEMATIC)
        endif    
        
        i++
    endloop*/
endif
}
/*
rect array recta
pair array rectc

private nothing initrects() {
integer i=0
recta[0]=gg_rct_p1
recta[1]=gg_rct_p2
recta[2]=gg_rct_p3
recta[3]=gg_rct_p4
loop
    exitwhen i==slots
    rectc[i]=pair.create()
    rectc[i].x=GetRectCenterX(recta[i])
    rectc[i].y=GetRectCenterY(recta[i])
    i++
endloop
}*/

private nothing init() {
    //string e="|cFF80D890Правила игры:|r Для постройки/улучшения/работы зданий необходима энергия. Если вы начнёте строить здание без энергии прогресс строительства остановится на нуле. "
    //string ee="Чтобы здание построилось необходимо наполнить здание энергией. |cFF80D890Где взять энергию?:|r Энергия излучатся кристаллами. Если строить здание рядом с кристаллом, оно само по себе начнёт наполнятся энергией.|cFF80D890Как подвести энергию к зданию?:|r Если строящееся здание в дали от кристалла, необходимо построить энергопровод. Это последовательность зданий передатчиков энергии соединённых каналом передачи энергии."
    //initrects()
    TriggerSleepAction(0.1)
    //DisplayTimedTextFromPlayer(GetLocalPlayer(),0,0,90,e)
    PauseGame(true)
    go=true
    vote=activeplayer
    /*
    dialog d=DialogCreate()
    b2=DialogAddButton(d,"Начать Игру",0)
    //b1=DialogAddButton(d,"Инструктаж",0)
    DialogSetMessage(d,MAP_NAME)
    
    trigger t=CreateTrigger()
    TriggerRegisterDialogEvent (t,d)
    TriggerAddAction(t,function Vote)
    
    integer i=0
    loop
        exitwhen i==activeplayer
        DialogDisplay(actgpa[i].p,d,true)
        i++
    endloop
    */
    SetAmbientDaySound( "AshenvaleDay" )
SetAmbientNightSound( "AshenvaleDay" )
    call VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 1.00 )
    Diff=1
    dispOnRes=GetLocalizedString("TRIGSTR_2")
restartgame()
}

nothing govote() {
//MAP_NAME=GetLocalizedString("TRIGSTR_24")
//TriggerSleepAction(0.4)
    PauseGame(true)
    go=true
    vote=activeplayer
    dialog d=DialogCreate()
    b2=DialogAddButton(d,"Начать Заново",0)
    //b1=DialogAddButton(d,"Обучение",0)
    //b0=DialogAddButton(d,"Продолжить",0)
    DialogSetMessage(d,MAP_NAME)
    trigger t=CreateTrigger()
    TriggerRegisterDialogEvent (t,d)
    TriggerAddAction(t,function Vote)
    integer i=0
    loop
        exitwhen i==activeplayer
        DialogDisplay(actgpa[i].p,d,true)
        i++
    endloop
    //print("такто дилог должно показать")
}

endlibrary