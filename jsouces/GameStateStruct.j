library gameStateLib initializer start {

	GameStateStruct gameState;
	
	enum {WaveFailStartReason_Nope, WaveFailStartReason_Timeout, WaveFailStartReason_TooMuch}

	struct GameStateStruct {
		public bool restartInProgress = false;
		public bool winInProgress = false;
		
		public int waveFailStartReason = WaveFailStartReason_Nope;
		public int currentWaveNumber= 0;
		public int currentWaveMaxSubwaveNumber= 0;
		public int currentSubwaveNumber= 0;
		public int maxWaveNumber= 0;
		
		public Signal requestGameRestart;
		
		public Signal onGameFinished;
		public Signal onGameStarted;
		public Signal onWaveFailStart;
		public Signal onWaveStarted;
		public Signal onSubwaveStarted;
		public Signal onActivePlayersUpdated;
		public Signal onGameConfigUpdated;
		
		public void reset() {
			restartInProgress = false;
			winInProgress = false;
			waveFailStartReason = WaveFailStartReason_Nope;
			currentWaveNumber = 0;
			currentSubwaveNumber = 0;
		}
	}
	
	private void start() {
		gameState = GameStateStruct.create();
		
		gameState.requestGameRestart = Signal.create();
		
		gameState.onGameFinished = Signal.create();
		gameState.onGameStarted = Signal.create();
		gameState.onWaveFailStart = Signal.create();
		gameState.onWaveStarted = Signal.create();
		gameState.onSubwaveStarted = Signal.create();
	}
	
}