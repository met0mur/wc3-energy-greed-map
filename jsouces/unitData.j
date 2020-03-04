library passport uses partsStruct
globals
    //ЮНИТ ТАЙПЫ
    integer pUNKNOW=0
    integer pCREEP=1
    integer pHERO=2
    integer pTRANS=3
    integer pTOWER=4
    integer pAFTERDESTROY=5
endglobals

struct UnitDataStruct
    unit u //ссылка на юнита хозяина
    unit wisp //
    unit from //
    integer ptype //тип юнита

    integer Sender

    group froms
    group s

    //передатчик
    boolean b0=false //пере: передача была осуществлена
    boolean b1 //
    integer recivers=0
    integer resful=0
    real val=0
    real freeval=0
    real forsend=0
    boolean select=true



    //крип
    real x=0
    real y=0
    integer times=0
    trigger ondest //триггер для поиска userdata крипа
    boolean prima=false
    integer intprima=0

    //скин башни
    partsStruct_TowerSetStruct towerSet;

    //настройки скина башни
    TowerBaseConfig towerConfig;
    
    //обновить настройки скина
	public boolean updateTowerConfig () {
		TowerBaseConfig conf = TowerBaseConfig.getByObjectId(GetUnitTypeId(u));
		TowerBaseConfig oldConf = this.towerConfig;
		this.towerConfig = conf;
		return oldConf != conf;
	}
	
	//обновить скин
    public nothing updateTowerSet () {
		if (this.towerSet != 0) {
			this.towerSet.destroy();
		}
		SetUnitVertexColorBJ( this.u, 100, 100, 100, 100 );
		this.towerSet = partsStruct_checkAndCreate(this.u);
        //trace("UnitDataStruct: updateTowerSet() id" + I2S(this) + " -->" + I2S(this.towerSet));
	}
    
    nothing onDestroy() {
		/* if (this.ptype==pCREEP) {
            trace("UnitDataStruct: onDestroy() id" + I2S(this));
        } */
        if (this.towerSet != 0) {
			this.towerSet.destroy();
            //trace("UnitDataStruct: towerSet.destroy()");
		}
	}
	
	public static UnitDataStruct getData (unit u) {
        UnitDataStruct data = GetUnitUserData(u);
        return data;
    }

//чот пиздец
    static integer getUnitTypeMagicShit (unit u) {
        local integer id=GetUnitTypeId(u)
        local integer t=0
        if id=='towe' or id=='tow1' or id=='wisp' then
            set t=pTRANS
        endif
        return t
    }
    
    //передача была осуществлена?
    static method settrans takes unit u, boolean b returns nothing
            UnitDataStruct p=GetUnitUserData(u)
            p.b0=b
    endmethod
    
    static method setval takes unit u, real v returns nothing
            UnitDataStruct p=GetUnitUserData(u)
            p.val=v
    endmethod
    
    static method getval takes unit u returns real
            UnitDataStruct p=GetUnitUserData(u)
            return p.val
    endmethod
    
    static method gettrans takes unit u returns boolean
            UnitDataStruct p=GetUnitUserData(u)
            return p.b0
    endmethod
    
    static method isCreep takes unit u returns boolean
            UnitDataStruct p=GetUnitUserData(u)
            if p.ptype==pCREEP
            return true
            endif
            return false
    endmethod
    
    static method findCreepFromT takes trigger t returns UnitDataStruct
        integer i=0
        UnitDataStruct p
        loop
            exitwhen i>1000
            p=i
            if p.ondest==t
                return p
            endif
        endloop
        return 0
    endmethod
	
    static method add takes unit u, integer t returns UnitDataStruct
        local UnitDataStruct p=UnitDataStruct.create()
        if t==0 then
            set p.ptype=UnitDataStruct.getUnitTypeMagicShit(u)
        else
            set p.ptype=t
        endif
        p.u=u
		p.updateTowerConfig();
        call SetUnitUserData(u,p)
		//trace("UnitDataStruct: add() id:" + I2S(p));
        return p
    endmethod
    
    static method rem takes unit u returns nothing
        UnitDataStruct unitStruct=GetUnitUserData(u)
        if (unitStruct != 0) {
            unitStruct.destroy();
        }
    endmethod

    static nothing handler_construct () { 
        UnitDataStruct unitStruct = add(GetConstructingStructure(),pTOWER);
		//unitStruct.updateTowerConfig();
    }
    
    static nothing handler_death () { 
        unit u=GetTriggerUnit();
        UnitDataStruct unitStruct=GetUnitUserData(u);
		if (unitStruct != 0) {
            unitStruct.destroy();
        }
    }

    static nothing onInit () {
        trigger t = CreateTrigger();
        TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START);
        TriggerAddAction(t, function UnitDataStruct.handler_construct);
        
        t=CreateTrigger();
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_DEATH);
        TriggerAddAction(t, function UnitDataStruct.handler_death);
    }
    
endstruct

endlibrary