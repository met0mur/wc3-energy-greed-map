library game initializer init uses gameConfig, creeps, upgradeProgress, manatower, passport, initialBuildings

	integer LOC=0
	boolean restarting=false
	string displayedTextOnRestart=""
	
	int nextDifficultyLevel = DifficultyLevel_Ease;

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

	private nothing restartgame() {
		gameState.reset();

		if restarting==true {
			return
		}
		restarting=true

		CinematicFilterGenericBJ( 3, BLEND_MODE_ADDITIVE, "ReplaceableTextures\\CameraMasks\\DiagonalSlash_mask.blp", 100, 100, 100, 100, 0, 0, 0, 0 )

		DisplayCineFilterBJ( true )
		if displayedTextOnRestart!="" {print1(displayedTextOnRestart)}

		UpgradeProgressStruct.destroyAll() // чистка масиива прогресса апгрейда энергии

		TriggerSleepAction(0.1)

		destsave.renu();
		svod.clear();
		clearMap();
		CreepCreationQueueStruct.onRest();
		crist.recirculate();  //Обновление кристаллов
		gamepr.gameStart();
		
		GameConfig.initOnGameStart(nextDifficultyLevel, LOC, activeplayer);
		CreepsController.prepareToStart(GameConfig.current);
		
		GroupClear(creepsgro)
		creepsnum=0
		PauseGame(false)
		//PlayMusicBJ("MIDI\\egtd1.mid")
		//VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 200.00 )
		//VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_AMBIENTSOUNDS, 0.00 )
		DisplayCineFilterBJ( false )
		restarting=false
		displayedTextOnRestart=""
		
		
		if LOC==0
			initbase();
		elseif LOC==1
			initbase1();
			SetCameraPosition(0,6777)
		endif
	}

	
	
	private nothing init() {
	 
		TriggerSleepAction(0.1)
		
		PauseGame(true)
	   
		SetAmbientDaySound( "AshenvaleDay" )
		SetAmbientNightSound( "AshenvaleDay" )
		call VolumeGroupSetVolumeBJ( SOUND_VOLUMEGROUP_MUSIC, 1.00 )
		displayedTextOnRestart=GetLocalizedString("TRIGSTR_2")
		TriggerSleepAction(0.4)
		
		gameState.requestGameRestart.add(restartgame.name);
		gameState.requestGameRestart.dispatch();
	}
	

	

endlibrary