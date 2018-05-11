library upgradeProgress uses general, partsStruct

private real UPDATE_INTERVAL_SECONDS = 0.1; //update period in seconds

//структура для инфы об улучшаемом юните на время наполнения маной
struct UpgradeProgressStruct
    
    ///////////////////////////////////////////////////////////////////////////
    // Collection
    ///////////////////////////////////////////////////////////////////////////
    
    private static integer pointer=0
    private static UpgradeProgressStruct array list //массив всех строек
    
    ///////////////////////////////////////////////////////////////////////////
    // Variables
    ///////////////////////////////////////////////////////////////////////////
    
    private integer struct_index
    private unit target
    private real maxmana
    private real lastMana=0 //mana value in last cicle
    private real time=0 //время прошедшее с начала стройки without progress or regress
    
    ///////////////////////////////////////////////////////////////////////////
    // Methods
    ///////////////////////////////////////////////////////////////////////////
    
	private nothing destroyInstance () {
		
		//возвращаем ману на исходную
		unit ut=CreateUnit(Player(11),GetUnitTypeId(this.target),0,0,0)
		setmax(this.target,getmax(ut))
		RemoveUnit(ut)
		
		setmana(this.target,0)
		call UnitAddTypeBJ( UNIT_TYPE_MECHANICAL, this.target )
		ut=null
		this.target=null
		
		pointer--
		list[pointer].struct_index=this.struct_index
		list[this.struct_index]=list[pointer]
		
		this.destroy()
	}

    ///////////////////////////////////////////////////////////////////////////
    // Static Methods
    ///////////////////////////////////////////////////////////////////////////
    
	static method getmult takes unit u returns real //множитель для определения максимального значения маны
		integer id=GetUnitTypeId(u)
		if id=='acc1' or id=='acc2' or id=='acc3'
		return 0.06
		endif
		return I2R(GameConfig.current.upgradeCostMultiplier);
	endmethod

	static nothing initUpdgradeHandling (unit u) {
		UnitDataStruct unitData = GetUnitUserData(u);
		unitData.updateTowerSet();
		
		//для изначальных построек энергии не нужно
		if (GetUnitTypeId(u)=='towe') {
			return;
		}
		
		UpgradeProgressStruct progress = UpgradeProgressStruct.create();
		progress.target=u;
		progress.maxmana=getmax(u);
		
		list[pointer]=progress;
		progress.struct_index=pointer;
		pointer++;
		
		real buildCost = 0;
		if (unitData.towerConfig != 0) {
			buildCost = unitData.towerConfig.buildCost;
			trace("buildCost @ towerConfig: " + R2S(buildCost));
		} else {
			buildCost = getmax(u) * UpgradeProgressStruct.getmult(u);
			trace("buildCost @ getmult: " + R2S(buildCost));
		}
		setmax(u,buildCost);
		setmana(u,0);
		
		UnitRemoveTypeBJ( UNIT_TYPE_MECHANICAL, u );
	}

	public static nothing destroyAll () {
		integer i=pointer;
		pointer=0;
		loop {
			exitwhen i==0;
			i--;
			list[i].destroy();
		}
	}

	//calling from selfdestoy button
	//todo move that
	public static nothing onSelfDestroy (unit u) {
		if ( GetUnitTypeId(u)!='wisp' and GetUnitTypeId(u)!='towe' ) {
			unit wisp = CreateUnit( GetOwningPlayer(u), 'wisp', GetUnitX(u), GetUnitY(u), 0 );
			SetUnitPathing( wisp, false );
			//todo wtf calculating
			setmax( wisp, getmax( u ) * UpgradeProgressStruct.getmult( u ) + getmana( u ) );
			setmana( wisp, getmax(wisp) );
			UnitDataStruct.add( wisp, pAFTERDESTROY );
			UnitDataStruct.setval(wisp,1)
			wisp=null
		}
	}

    ///////////////////////////////////////////////////////////////////////////
    // Private Static Methods
    ///////////////////////////////////////////////////////////////////////////
    

	private static UpgradeProgressStruct getByUnit (unit u) {
		integer i=0;
		loop {
			exitwhen i==pointer;
			if (list[i].target==u) {
				return list[i];
			}
			i++
		}
		return 0
	}

	private static nothing handler_timerUpdate() {
		integer i=0;
		unit u;
		integer p=0;
		loop {
			exitwhen i==pointer;
			UpgradeProgressStruct progress = list[i];
			u=progress.target;
			if (u!=null and IsUnitAliveBJ(u)) {
				p=R2I((getmana(u)/getmax(u))*100)
				UnitSetUpgradeProgress(u,p)
				UnitSetConstructionProgress(u,p)
				if (progress.lastMana==getmana(u)) {
					progress.time+=UPDATE_INTERVAL_SECONDS;
				}
				progress.lastMana=getmana(u);
				if (progress.time==30 or progress.time==60){
					string warnText;
					if (progress.time==30) {
						warnText = GetLocalizedString("TRIGSTR_4")
					} else {
						warnText = GetLocalizedString("TRIGSTR_5");
					}
					if (GetLocalPlayer()==GetOwningPlayer(u)){
						DisplayTextToPlayer(GetLocalPlayer(), 0, 0,GetLocalizedString("TRIGSTR_3")+GetUnitName(u)+warnText);
					}
					Effect.ADD(u,3,"overhead","Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl");
					progress.time+=UPDATE_INTERVAL_SECONDS;//prevent message doubling
				}
				if (progress.time>=90) {
					IssueImmediateOrderById(u,851976);// 0____0 maybe selfdestroy
				}
			}
			if (p>=99) {
				UnitSetUpgradeProgress(u,100);
				progress.destroyInstance()
			} else {
				i++
			}
		}
		u=null
	}
	
	private static nothing handler_upgradeCancel() {
		unit u=GetTriggerUnit()
		
		UpgradeProgressStruct progress=UpgradeProgressStruct.getByUnit(u)
		
		if (progress==0) {
			u=null
			return
		}
		
		if (getmana(u)>10) {
			unit wisp=CreateUnit(GetOwningPlayer(u),'wisp',GetUnitX(u),GetUnitY(u),0);
			SetUnitPathing(wisp,false);
			UnitDataStruct.add(wisp,pAFTERDESTROY);
			UnitDataStruct.setval(wisp,1);
			setmax(wisp,getmana(u));
			setmana(wisp,getmax(wisp));
			if (GetDyingUnit()==null) {
				UnitDataStruct p=GetUnitUserData(u);
				p.wisp=wisp;
			}
			wisp=null;
		}
		
		//update tower config after upgrade
		UnitDataStruct data = UnitDataStruct.getData(u);
		data.updateTowerConfig();
		
		progress.destroyInstance();
		//UnitDataStruct.rem(u)
		ManaLinkStruct.bug(u)
		u=null;
	}

	private static nothing handler_upgradeStart() { 
		unit u=GetTriggerUnit();
		unit c=GetConstructingStructure();
		if (u==null) {
			u=c;
		}
		
		//update tower config after upgrade
		UnitDataStruct data = UnitDataStruct.getData(u);
		data.updateTowerConfig();
		
		UpgradeProgressStruct.initUpdgradeHandling(u);
	}

	private static nothing onInit() {     
		//progress interrupt trigger
		trigger trig = CreateTrigger();
		TriggerRegisterAnyUnitEventBJ( trig, EVENT_PLAYER_UNIT_UPGRADE_CANCEL );
		TriggerRegisterAnyUnitEventBJ( trig, EVENT_PLAYER_UNIT_DEATH );
		TriggerAddAction( trig, function UpgradeProgressStruct.handler_upgradeCancel );
		
		//progress update timer
		TimerStart( CreateTimer(), UPDATE_INTERVAL_SECONDS, true, function UpgradeProgressStruct.handler_timerUpdate );
		
		//progress init trigger
		trig = CreateTrigger();
		TriggerRegisterAnyUnitEventBJ( trig, EVENT_PLAYER_UNIT_UPGRADE_START );
		TriggerRegisterAnyUnitEventBJ( trig, EVENT_PLAYER_UNIT_CONSTRUCT_START );
		TriggerAddAction( trig, function UpgradeProgressStruct.handler_upgradeStart );
	}

endstruct

endlibrary