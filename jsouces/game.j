library game initializer init uses gameConfig, creeps, upgradeProgress, manatower

	integer LOC=0
	boolean restarting=false
	string displayedTextOnRestart=""

	nothing initdiff() {
		GameConfig.initOnGameStart(DifficultyLevel_Ease, LOC, activeplayer);
		
		lvlnum=1+GameConfig.current.startLevelShift
		spawnnum=0
		if LOC==1 {lvlnum=MAXLVL[0]+ GameConfig.current.startLevelShift }
	}


	private nothing clearMap() {
		group g=CreateGroup()
		GroupEnumUnitsInRect(g, GetPlayableMapRect(), null)
		unit u=FirstOfGroup(g)
		loop {
			exitwhen u==null
			GroupRemoveUnit(g,u)
			integer id=GetUnitTypeId(u)
			if (id!='n004' and id!='n003') {
				RemoveUnit(u)
			}
			if (GetUnitTypeId(u)=='prim') {
				KillUnit(u)
			}
			u=FirstOfGroup(g)
		}
		u=null
		DestroyGroup(g)
		g=null
	}

	////////////////////////////////////////////////////////////////////////
	////////////////
	////////////////              БАЗОВЫЕ ПОСТРОЙКИ
	////////////////
	////////////////////////////////////////////////////////////////////////

	private nothing addlinkd(unit a, unit b) {
		ManaLinkStruct.addlink(a,b);
	}

	private unit CreateUnitd(player a, integer b, real c, real d, real e) {
		unit x = CreateUnit(a, b, c, d, e)
		UnitDataStruct unitData = UnitDataStruct.add(x,pTOWER);
		unitData.updateTowerSet();
		return x;
	}

	private nothing initbase() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		
		if (GameConfig.current.difficultyLevel != DifficultyLevel_Hard) {
			a=CreateUnitd(p,'tow2',90.,-2004.,270.)
			b=CreateUnitd(p,'tow2',90.,-1900.,270.)
			addlinkd(a,b)
			a=CreateUnitd(p,'tow2',90.,-1806.,270.)
			addlinkd(b,a)
			c=CreateUnitd(p,'tow3',0.,-1366.,270.)
			addlinkd(a,c)
			a=CreateUnitd(p,'towe',-90.,-2004.,270.)
			b=CreateUnitd(p,'tow2',-90.,-1900.,270.)
			addlinkd(a,b)
			a=CreateUnitd(p,'tow2',-90.,-1806.,270.)
			addlinkd(b,a)
			addlinkd(a,c)
			b=CreateUnitd(p,'tow3',0.,-936.,270.)
			addlinkd(c,b)
			a=CreateUnitd(p,'tow3',-100.,-300.,270.)//последняя перед развилкой
			UnitAddAbility(a,'Ane2')
			addlinkd(b,a)
			b=CreateUnitd(p,'tow3',255.,0.,270.)
			UnitAddAbility(b,'Ane2')
			addlinkd(a,b)
			c=CreateUnitd(p,'tow3',-255.,0.,270.)
			UnitAddAbility(c,'Ane2')
			addlinkd(a,c)
			a=CreateUnitd(p,'gi01',-350.,-350.,270.)
			addlinkd(c,a)
			a=CreateUnitd(p,'gi01',350.,-350.,270.)
			addlinkd(b,a)
			a=CreateUnitd(p,'gi01',-350.,350.,270.)
			addlinkd(c,a)
			a=CreateUnitd(p,'gi01',350.,350.,270.)
			addlinkd(b,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,healL1,-450.,0.,270.)
			addlinkd(c,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,healL1, 450.,0.,270.)
			addlinkd(b,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,'pr01',0.,0.,270.)
			prima.Add(a,150)
			IssueImmediateOrder(a,"webon")
		}

		a=null
		b=null
		c=null

	}
		
	private nothing initbase1() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		
		if (GameConfig.current.difficultyLevel != DifficultyLevel_Hard) {
			a=CreateUnit(p,'gamm',-300.,7200.,270.)
			b=CreateUnit(p,'gamm',180.,7200.,270.)
		}

		a=null
		b=null
		c=null

	}

	nothing restartgame() {


		if restarting==true {return}
		restarting=true

		CinematicFilterGenericBJ( 3, BLEND_MODE_ADDITIVE, "ReplaceableTextures\\CameraMasks\\DiagonalSlash_mask.blp", 100, 100, 100, 100, 0, 0, 0, 0 )

		DisplayCineFilterBJ( true )
		//ClearTextMessages()
		if displayedTextOnRestart!="" {print1(displayedTextOnRestart)}

		UpgradeProgressStruct.destroyAll() // чистка масиива прогресса апгрейда энергии

		TriggerSleepAction(0.1)

		destsave.renu();
		svod.clear();
		clearMap();
		cftstruct.onRest();
		crist.recirculate()  //Обновление кристаллов

		PauseTimer(spawner)

		if LOC==0
			initbase()
		elseif LOC==1
			initbase1();
			SetCameraPosition(0,6777)
		endif

		gamepr.gameStart()

		GroupClear(creepsgro)
		creepsnum=0
		PauseGame(false)
		PlayMusicBJ("MIDI\\egtd1.mid")
		VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 200.00 )
		VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_AMBIENTSOUNDS, 0.00 )
		DisplayCineFilterBJ( false )
		restarting=false
		displayedTextOnRestart=""
	}

	private nothing init() {
	 
		TriggerSleepAction(0.1)
		
		PauseGame(true)
	   
		SetAmbientDaySound( "AshenvaleDay" )
		SetAmbientNightSound( "AshenvaleDay" )
		call VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 1.00 )
		displayedTextOnRestart=GetLocalizedString("TRIGSTR_2")
		restartgame()
	}

endlibrary