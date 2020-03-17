	library creeps initializer init uses general, cmind, createunittime
	//ГЛОБАЛКИ_______________________________________)))))))))_________________
	globals
	leaderboard l

	integer falseStartCountDownInitialSec = 5;
	integer falseStartCountDown;

	timer spawner
	boolean pause=false
	integer creepsnum=0
	group creepsgro

	player creepsplayer=Player(10)
	//ТОЧКИ
	private group scangroup

	integer nexttarg=0
	CreepSpawnPoint array targarray
	integer nextresp=0
	CreepSpawnPoint array resparray
	//ТИПЫ ТОЧЕК
	private constant integer PT_RESPAWN=1
		constant integer ALL=0
		constant integer BASE=1
		constant integer SUPPORT=2
	private constant integer PT_TARGET=2
	// АЙДИ ТОЧЕК
	integer CREEP_TARGET='targ'
	integer CREEP_RESP='resp'

	endglobals
	
	struct CreepsController {
		public static CreepWavePack waves_generated;
		public static CreepWavePack waves_classic;
		public static CreepWavePack waves_castle_hall;
		
		public static CreepWavePack currentWaves;
		
		public static void prepareToStart (GameConfig gameConfig) {
			if (gameConfig.currentLocation == Location_Classic) {
				//currentWaves = waves_classic;
				currentWaves = waves_generated;
			} elseif (gameConfig.currentLocation == Location_CastleHall) {
				currentWaves = waves_castle_hall;
			}
			
			gameState.currentWaveNumber=GameConfig.current.startLevelShift;
			gameState.currentSubwaveNumber=0;
			
			PauseTimer(spawner)
			
			ExecuteFunc("initspawnTimer");
		}
		
	}
	
	//ТОЧКА _________________________________________________________________________
	struct CreepSpawnPoint
		pair p
		integer Type
		integer subType
		integer loc

		static method make takes unit u returns nothing
			local CreepSpawnPoint pt=CreepSpawnPoint.create()

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
				
						  CreepSpawnPoint.make(u)
						  GroupRemoveUnit(scangroup,u)
						  RemoveUnit(u)
				endif
				set u=FirstOfGroup(scangroup)
			endloop
			//      BJDebugMsg("out")
			u=null
		endmethod

		static method ptinit takes nothing returns nothing
			  CreepSpawnPoint.scan()
		endmethod
	endstruct

/////////////////////////////////////////////////////////////
// набор волн
/////////////////////////////////////////////////////////////
	
	struct CreepWavePack {
		public int locationID;
		public CreepWave array list[100];
		public int listCounter;
		
		public CreepWave createNextWave() {
			CreepWave wave = CreepWave.create();
			wave.number = this.listCounter;
			this.addWave(wave);
			return wave;
		}
		
		public void addWave(CreepWave wave) {
			this.list[listCounter] = wave;
			this.listCounter++;
		}
	}
	
/////////////////////////////////////////////////////////////
// одна волна
/////////////////////////////////////////////////////////////
	
	struct CreepWave {
		public CreepSpawnPack allc
		public CreepSpawnPack basec
		public CreepSpawnPack subc
		public bool waitAllCreepsAreDying = false;
		public int subwavesNum = 0;
		public int number;

		public void setin ( integer id, integer Type, integer num ) {
			CreepSpawnPack c=CreepSpawnPack.create()
			c.id=id
			c.Type=Type
			c.num=num
			if (Type==ALL) {
				this.allc=c
			} elseif (Type==BASE) {
				this.basec=c
			} elseif (Type==SUPPORT) {
				this.subc=c
			}
		}
        
		public void setinV2 ( integer id, integer Type, integer num, int hp, real scale, pair color) {
			CreepSpawnPack c=CreepSpawnPack.create()
			c.id=id
			c.Type=Type
			c.num=num
			c.hp=hp
			c.scale=scale
			c.color=color
			if (Type==ALL) {
				this.allc=c
			} elseif (Type==BASE) {
				this.basec=c
			} elseif (Type==SUPPORT) {
				this.subc=c
			}
		}
	}
	
/////////////////////////////////////////////////////////////
// часть волны
/////////////////////////////////////////////////////////////
	
	struct CreepSpawnPack {
		public integer id
		public integer lvl
		public integer Type
		public integer num
		public integer hp
		public real scale = 0
        //r g b
        public pair color
	}

	
/////////////////////////////////////////////////////////////
// static
/////////////////////////////////////////////////////////////
		

	function GO takes nothing returns nothing
		
		falseStartCountDown--;
		if (falseStartCountDown > 0) {
			trace("Creeps: false start");
			gameState.waveFailStartReason = WaveFailStartReason_Timeout;
			gameState.onWaveFailStart.dispatch();
			return;
		}
		
		if (creepsnum>GameConfig.current.creepsMaxNumber) {
			trace("Creeps: too much");
			gameState.waveFailStartReason = WaveFailStartReason_TooMuch;
			gameState.onWaveFailStart.dispatch();
			return
		}
		
		CreepWavePack pack = CreepsController.currentWaves;
		
		if (gameState.currentWaveNumber >= pack.listCounter) {
			gameState.currentWaveNumber=0
			displayedTextOnRestart="WIN!"
			gameState.requestGameRestart.dispatch();
			LeaderboardSetLabel(l,"WIN!")
			return;
		}
		
		CreepWave wave = pack.list[gameState.currentWaveNumber];
		
		local integer i=0
		local integer n=0
		local CreepSpawnPoint p
		local unit u
		
		int maxSubwaves = GameConfig.current.spawnSubwavesNumber;
		
		if (wave.subwavesNum!=0) {
			maxSubwaves = wave.subwavesNum;
		}
		
		if (gameState.currentSubwaveNumber==maxSubwaves) {
			if (not(wave.waitAllCreepsAreDying) or (wave.waitAllCreepsAreDying and creepsnum==0)) {
				gameState.currentWaveNumber++;
				gameState.currentSubwaveNumber=1;
                trace("Creeps: next wave");
			} else {
				return
			}
		} else {
			gameState.currentSubwaveNumber++;
            trace("Creeps: next subwave");
		}
		
		gameState.maxWaveNumber = pack.listCounter;
		gameState.currentWaveMaxSubwaveNumber = maxSubwaves;

		if (gameState.currentSubwaveNumber == 0) {
			gameState.onWaveStarted.dispatch();
		}
		
		gameState.onSubwaveStarted.dispatch();
		
		LeaderboardSetLabel(l,"Волна "+I2S(gameState.currentWaveNumber + 1)+"/"+I2S(pack.listCounter)+"\nОтряд "+I2S(gameState.currentSubwaveNumber)+"/"+I2S(maxSubwaves) + "\nNUM: " + I2S(creepsnum));
		
		loop
			exitwhen pause==true or i==nextresp
			set p=resparray[i] 
			if p.loc==LOC
				set n=0
				loop
					exitwhen n==wave.allc.num 
					CreateUnitTimeV2(creepsplayer,wave.allc.id,p.p.x,p.p.y,wave.allc)
					set n=n+1
				endloop
				if p.subType==BASE then
					set n=0
					loop
						exitwhen n==wave.basec.num
						CreateUnitTimeV2(creepsplayer,wave.basec.id,p.p.x,p.p.y,wave.basec)
						set n=n+1
					endloop
				elseif p.subType==SUPPORT then
						set n=0
					loop
						exitwhen n==wave.subc.num
						CreateUnitTimeV2(creepsplayer,wave.subc.id,p.p.x,p.p.y,wave.subc)
						set n=n+1
					endloop
				endif
			endif
			set i=i+1
		endloop
		u=null
	endfunction
	
	void initspawnTimer() {
			falseStartCountDown = falseStartCountDownInitialSec / GameConfig.current.spawnSubwavesTimeSec;
			TimerStart(spawner,GameConfig.current.spawnSubwavesTimeSec,true,function GO);
	}
	
	private function ifdie takes nothing returns nothing
		local unit u=GetTriggerUnit();
		GroupRemoveUnit(creepsgro,u)
		set creepsnum=creepsnum-1
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
		CreepSpawnPoint.ptinit()
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