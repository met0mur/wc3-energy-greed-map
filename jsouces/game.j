library game initializer init uses creeps, upgradeProgress

	integer Diff=0
	integer lvlplus=0
	integer LOC=0
	boolean restarting=false
	string displayedTextOnRestart=""

	nothing initdiff() {
		
		spawnnummax=SPWN_MAX-(activeplayer/2)
		spawnperiod=SPWN_PD-(activeplayer/2)
		engmult=EGRE_ML+activeplayer
		if Diff==0 
			lvlplus=0
		elseif Diff==1
			spawnnummax=spawnnummax+1
			spawnperiod=spawnperiod+1
			engmult=engmult-1
			lvlplus=0
		elseif Diff==2
			lvlplus=2
		endif
		
		if (LOC==1) {
		   spawnperiod=spawnperiod+2 
		}
		
		lvlnum=1+lvlplus
		spawnnum=0
		if LOC==1 {lvlnum=MAXLVL[0]+lvlplus}
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

	nothing addlink(unit a, unit b) {
		ManaLinkStruct.addlink(a,b);
	}


	private nothing initbase() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		
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
		
	private nothing initbase1() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		
		if Diff!=0
			a=CreateUnit(p,'gamm',-300.,7200.,270.)
			b=CreateUnit(p,'gamm',180.,7200.,270.)
		endif

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
		Diff=1
		displayedTextOnRestart=GetLocalizedString("TRIGSTR_2")
		restartgame()
	}

endlibrary