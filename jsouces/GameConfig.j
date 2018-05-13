library gameConfig initializer init uses general {
	
	enum { DifficultyLevel_Ease, DifficultyLevel_Medium, DifficultyLevel_Hard, DifficultyLevel_DevFast }
	enum (locenum) { Location_Classic, Location_CastleHall }
	
	/*
		основные параметры влияющие на геймплей
	*/
	struct GameConfig {
		public static GameConfig current;
		
		private static GameConfig ease;
		private static GameConfig medium;
		private static GameConfig hard;
		
		public integer difficultyLevel = DifficultyLevel_Ease;
		public integer currentLocation = Location_Classic;
		public integer startLevelShift;
		public integer spawnSubwavesNumber;
		public integer spawnSubwavesTimeSec;
		public integer upgradeCostMultiplier;/*множитель для определения максимального значения маны на время апгрейда*/
		public integer creepsMaxNumber = 55;
		
		/*
			копируются предопределённые конфиги и модифицируются по обстановке
		*/
		public static nothing initOnGameStart(integer difficultyLevel, integer currentLocation, integer activePlayers) {
			print("config initialize");
			GameConfig newConf;
			
			if (difficultyLevel == DifficultyLevel_Ease) {
				newConf = GameConfig.ease.clone();
			} elseif (difficultyLevel == DifficultyLevel_Medium) {
				newConf = GameConfig.medium.clone();
			} elseif (difficultyLevel == DifficultyLevel_Hard) {
				newConf = GameConfig.hard.clone();
			}elseif (difficultyLevel == DifficultyLevel_DevFast) {
				newConf = GameConfig.ease.clone();
				newConf.spawnSubwavesNumber = 2;
				newConf.spawnSubwavesTimeSec = 2;
				newConf.upgradeCostMultiplier = 3;
				newConf.creepsMaxNumber = 1000;
				newConf.difficultyLevel = DifficultyLevel_DevFast;
			}
			
			newConf.currentLocation = currentLocation;
			
			if (currentLocation == Location_CastleHall) {
				newConf.spawnSubwavesTimeSec += 2;
			}
			
			newConf.upgradeCostMultiplier -= activePlayers / 2;
			
			GameConfig.current = newConf;
			
			gameState.onGameConfigUpdated.dispatch();
		}
		
		public GameConfig clone () {
			GameConfig newConf = GameConfig.create();
			newConf.difficultyLevel = difficultyLevel;
			newConf.startLevelShift = startLevelShift;
			newConf.spawnSubwavesNumber = spawnSubwavesNumber;
			newConf.spawnSubwavesTimeSec = spawnSubwavesTimeSec;
			newConf.upgradeCostMultiplier = upgradeCostMultiplier;
			return newConf;
		}
		
		public static nothing setup() {
			GameConfig.ease = GameConfig.create();
			GameConfig ease = GameConfig.ease;
			
			ease.difficultyLevel = 		DifficultyLevel_Ease;
			ease.startLevelShift = 		0;
			ease.spawnSubwavesNumber = 	8;
			ease.spawnSubwavesTimeSec = 12;
			ease.upgradeCostMultiplier= 8;
			
			GameConfig.medium = GameConfig.create();
			GameConfig medium = GameConfig.medium;
			
			medium.difficultyLevel = 		DifficultyLevel_Medium;
			medium.startLevelShift = 		1;
			medium.spawnSubwavesNumber = 	7;
			medium.spawnSubwavesTimeSec = 	10;
			medium.upgradeCostMultiplier= 	10;
			
			GameConfig.hard = GameConfig.create();
			GameConfig hard = GameConfig.hard;
			
			hard.difficultyLevel = 		DifficultyLevel_Hard;
			hard.startLevelShift = 		2;
			hard.spawnSubwavesNumber = 	7;
			hard.spawnSubwavesTimeSec = 8;
			hard.upgradeCostMultiplier= 12;
		}
	}
	
	private nothing init() {
		GameConfig.setup();
	}
	
}