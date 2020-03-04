library manatower initializer init uses general

#define manaperiod=0.1 //время цикла передачи
#define mps=20//базовое маны в секунду


private constant string STRORD_MANASEND="polymorph" 
constant real sendtime=manaperiod
private constant real ltheight=30.
private constant real gval=mps*manaperiod // маны за 1 раз ~ 2


//пропускная способность канала gval*X
real fromlvl (unit u) {
    local integer id=GetUnitTypeId(u)
    UnitDataStruct p
    if id=='towe' then
        return gval*0.5
    elseif id=='tow2' or id=='acc2' then
        return gval*2
    elseif id=='tow3' or id=='acc3' or id=='tow4' then
        return gval*8    
    elseif id=='tow5' then
        return gval*32
    elseif id=='wisp' then
        p=GetUnitUserData(u)
        return p.val
    endif
    return gval
}



integer engsum

	

nothing KillGroupCallback (){
		 unit u = GetEnumUnit();
		 engsum += R2I(getmana(u));
}


struct ManaLinkStruct
    
    ///////////////////////////////////////////////////////////////////////////
    // Collection
    ///////////////////////////////////////////////////////////////////////////
    
    private static ManaLinkStruct array list
    private static integer pointer=0
        
    private static ManaLinkStruct array deleteQueue
    private static integer pointer_deleteQueue=0

    private static ManaLinkStruct array longdist
    private static integer nextld=0
    
    ///////////////////////////////////////////////////////////////////////////
    // Variables
    ///////////////////////////////////////////////////////////////////////////
    
    private integer struct_index=0
    private real send=0
    private lightning lt //еффект
    private boolean act=false
    
    public unit from //донор
    public unit to //реципиент
    public lig l //????
    
    ///////////////////////////////////////////////////////////////////////////
    // Methods
    ///////////////////////////////////////////////////////////////////////////
    
    private nothing initialize (unit from, unit to) {
        this.from=from
        this.to=to
        this.l=lig.add(from,to)
        this.l.send(true,4)
        
        list[pointer]=this
        this.struct_index=pointer
        pointer++;
        
        UnitDataStruct toUserData=GetUnitUserData(to)
        UnitDataStruct fromUserData=GetUnitUserData(from)
        
        //какойто костыль для виспа
        if (GetUnitTypeId(from)=='wisp') {
            if (fromUserData.from==null) {
                toUserData.from = from;
            } else {
                toUserData.from = fromUserData.from;
            }
        } else {
            toUserData.from = from;
        }
        
        //Выделение.
        //если юнит передатчик
        //todo move
        if (UnitDataStruct.getUnitTypeMagicShit(to)==pTRANS and GetOwningPlayer(from)==GetOwningPlayer(to) and toUserData.select) {
            SelectUnitForPlayerSingle(to,GetOwningPlayer(from));
        }
    }
    
    private boolean enqueueForRemove() { 
        boolean b=true
        integer i=0
        loop {// есть ли уже такой маналинк в списке на удаление
            exitwhen i==pointer_deleteQueue;
            if (deleteQueue[i]==this) {
                return false;
            }
            i++;
        }
        UnitDataStruct p=GetUnitUserData(.from);
        
        //если это компенсационный пучок
        if (p.ptype==pAFTERDESTROY and getmana(this.from)==0) {
            KillUnit(.from)
            
            deleteQueue[pointer_deleteQueue]=this
            pointer_deleteQueue++;
            
            return false
        }
        
        //это чо за хуйня
        if (this.from==null or this.to==null or IsUnitDeadBJ(this.from) or IsUnitDeadBJ(this.to) or GetUnitTypeId(this.from)=='n000') {
            
            deleteQueue[pointer_deleteQueue]=this
            pointer_deleteQueue++
            
            return false
        }
        
        return true
    }
    
    private nothing clear() {
        this.l.del()
        this.from=null
        this.to=null
        this.lt=null
       
        pointer--;
        list[pointer].struct_index=this.struct_index;
        list[this.struct_index]=list[pointer];
        
        this.destroy()
    }
    
    // приёмник этой связи иммеет минимальное колличество маны?
    private method ismin takes nothing returns boolean 
        integer j=0
        loop {
            exitwhen j==pointer;
            ManaLinkStruct ml = list[j];
            if (ml.from==this.from and ml.to!=.to and getmana(ml.to)<getmana(this.to) and getmana(ml.to) != getmax(ml.to)) {
                return false
            }
            set j=j+1;
        }
        return true;
    endmethod
    
    ///////////////////////////////////////////////////////////////////////////
    // Static Methods
    ///////////////////////////////////////////////////////////////////////////
    
    //добавить маналинк если его ещё нет
    public static nothing addlink (unit from, unit to){
        integer i=0
        ManaLinkStruct m;
        UnitDataStruct p=GetUnitUserData(to)
        if getmax(to)!=0 and from!=to and p.ptype!=pAFTERDESTROY
            loop {
                exitwhen i==pointer;
                m = list[i];
                if ((m.from==from and m.to==to) or (m.from==to and m.to==from) and getmax(to)>0) {
                    if GetUnitTypeId(m.to)=='wisp'
                        KillUnit(m.to)
                    endif
                    call m.clear();
                    return
                }
                i++;
            }
            if GetUnitTypeId(from)=='wisp'
                UnitRemoveAbility(from,'send')
            endif
            set m=ManaLinkStruct.create()
            call m.initialize(from, to)
        endif
    }
    
    
public static nothing sender(){
    local integer i=0
    local integer j=0
    local unit from
    local unit to
    local real val
    ManaLinkStruct ml
    UnitDataStruct p
    //пробежка по паспортам
    loop
        exitwhen j==pointer
        p=GetUnitUserData(list[j].from)
        p.b0=false
        p.val=getmana(list[j].from)
        p.recivers=0
        p.resful=0
        j++
    endloop
    j=0
    //удаление из очереди
    loop
        exitwhen j==pointer_deleteQueue
        p=GetUnitUserData(deleteQueue[j].from)
        if GetUnitTypeId(deleteQueue[j].from)=='wisp'
            KillUnit(deleteQueue[j].from)
        endif
        if GetUnitTypeId(deleteQueue[j].to)=='wisp' and p.ptype!=pAFTERDESTROY
            KillUnit(deleteQueue[j].to)
        endif
        deleteQueue[j].clear()
        j=j+1
    endloop
    j=0
    pointer_deleteQueue=0
    //создание пучков для сокращения длины связи
    unit wisp
    loop
        exitwhen j==nextld
        ml=longdist[j]
        wisp=CreateUnit(GetOwningPlayer(ml.from),'wisp',0,0,0)
        p=UnitDataStruct.add(wisp,3)
        p.val=fromlvl(ml.from)
        p.select=false
        UnitDataStruct.setval(wisp,fromlvl(ml.from))
        polarunit(ml.from,ml.to,wisp,450)
            UnitApplyTimedLifeBJ( 120, 'BTLF', wisp )
            SetUnitAbilityLevel(wisp,'send',GetUnitAbilityLevel(ml.from,'send'))
        call addlink(ml.from,wisp)
        call addlink(wisp,ml.to)
        ml.clear()
        j++
    endloop
    wisp=null
    j=0
    nextld=0
    loop
        exitwhen i==pointer
        ml=list[i]
        boolean b=ml.enqueueForRemove()
        set from=ml.from
        set to=ml.to
        if b
            //проверка длины связи
            if DistanceBetweenWidgets(from,to)>650 and GetUnitTypeId(from)!=sendL41
                longdist[nextld]=ml
                nextld++
            endif
            //расчёт колличества маны
            set val=fromlvl(from)
            if getmana(from)<val then
                set val=getmana(from)
            endif
            if getmax(to)-getmana(to)<val then
                set val=getmax(to)-getmana(to)
            endif
        endif
        p=GetUnitUserData(list[j].from)
        if b and val>0 and getmana(to)<getmax(to) and ml.ismin() then
            setmana(from, getmana(from)-val)
            setmana(to, getmana(to)+val)
            if val/fromlvl(from)<0.4 and not(lcpu[GetPlayerId(GetTriggerPlayer())])
            ml.l.send(true,0)
            elseif val/fromlvl(from)<0.7 and not(lcpu[GetPlayerId(GetTriggerPlayer())])
            ml.l.send(true,1)
            else
            ml.l.send(true,2)
            endif
            UnitDataStruct.settrans(from,true)
            SetUnitAnimation(from,"stand alternate")
        elseif b and ( getmana(to)==getmax(to) or (getmana(from)==0 and getmana(to)==0 ) or UnitDataStruct.gettrans(from)==true) then
            ml.l.send(false,4)
            SetUnitAnimation(from,"stand")
        elseif b
            ml.l.send(false,5)
            SetUnitAnimation(from,"stand")
        endif
        i++
    endloop
    from=null
    to=null
	
	
	j = activeplayer;
	whilenot (j-- == 0) {
		 engsum = 0;
		 ForGroup(actgpa[j].units, function KillGroupCallback);
		 SetPlayerState(actgpa[j].p, PLAYER_STATE_RESOURCE_GOLD, engsum);
	}
}


    // какойто костыль
    static method bug takes unit to returns nothing
    return
        integer i=0
        loop
            exitwhen i==pointer
            if list[i].to==to then
                list[i].clear()
            endif
            set i=i+1
        endloop
    endmethod
    
endstruct

////////////////////////////////////////////////////////
//
//      Library Methods
//
////////////////////////////////////////////////////////






function Trig_send_Actions takes nothing returns nothing
    if GetIssuedOrderIdBJ() == String2OrderIdBJ(STRORD_MANASEND) then
            ManaLinkStruct.addlink(GetTriggerUnit(),GetOrderTargetUnit())
    endif
endfunction

////////////////////////////////////////////////////////
//      Способность создавать канал
////////////////////////////////////////////////////////

private group groupUnitSearching
private unit selectedUnit=null
private real selectedUnitDistance=0
private pair ppp
private pair pp1
private boolexpr nearestUnitEnumerator

private boolean nearestUnitSearching() {
    pp1.fromunit(GetFilterUnit())
    if selectedUnit==null
        selectedUnit=GetFilterUnit()
        selectedUnitDistance=distp(ppp,pp1)
    elseif distp(ppp,pp1)<selectedUnitDistance
        selectedUnit=GetFilterUnit()
        selectedUnitDistance=distp(ppp,pp1)
    endif
    return false
}

    nothing handler_createLinkAction() { 
        if (GetIssuedOrderId() == String2OrderIdBJ(STRORD_MANASEND)) {
            unit triggeredUnit = GetTriggerUnit();
            ppp.x=GetOrderPointX()
            ppp.y=GetOrderPointY()
            pp1.fromunit(triggeredUnit)
            GroupEnumUnitsInRange(groupUnitSearching, GetOrderPointX(), GetOrderPointY(), 110, nearestUnitEnumerator);
            if ((selectedUnit==null or GetUnitTypeId(selectedUnit)=='wisp') and GetUnitTypeId(triggeredUnit)!=sendL41 and distp(ppp,pp1)<550) {
                    unit u = CreateUnit(GetOwningPlayer(triggeredUnit),'wisp',GetOrderPointX(),GetOrderPointY(),0)
                    SetUnitPathing(u,false)
                    UnitDataStruct.add(u,3)
                    //сетим виспам пропускную способность
                    UnitDataStruct.setval(u,fromlvl(triggeredUnit))
                    //виспы живут определённое время
                    UnitApplyTimedLifeBJ( 80, 'BTLF', u );
                    SetUnitAbilityLevel(u,'send',GetUnitAbilityLevel(triggeredUnit,'send'))
                    ManaLinkStruct.addlink(triggeredUnit,u)
                    //если линк кидал висп то удаляем абилку
                    if (GetUnitTypeId(GetTriggerUnit())=='wisp') {
                        UnitRemoveAbility(GetTriggerUnit(),'send');
                    }
                    u=null
            } else {
                ManaLinkStruct.addlink(GetTriggerUnit(),selectedUnit)
            }
            triggeredUnit = null;
        }
        selectedUnit=null
    }

    private nothing init () {
        nearestUnitEnumerator = Filter(function nearestUnitSearching)
        groupUnitSearching = CreateGroup()
        ppp=pair.create()
        pp1=pair.create()
        
        
        trigger t=CreateTrigger();
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER );
        TriggerAddAction( t, function Trig_send_Actions );

        call TimerStart(CreateTimer(), sendtime, true, function ManaLinkStruct.sender)

        t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER )
        TriggerAddAction( t, function handler_createLinkAction )
    }

endlibrary