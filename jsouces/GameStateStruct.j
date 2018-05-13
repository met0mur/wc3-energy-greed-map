library gameStateLib initializer start {

	GameStateStruct gameState;

	struct GameStateStruct {
		public bool restartInProgress = false;
		public bool winInProgress = false;
		
		public Signal requestGameRestart;
		
		public Signal onGameFinished;
		public Signal onGameStarted;
		public Signal onWaveStarted;
		public Signal onSubwaveStarted;
		public Signal onWaveInterrupted;
		public Signal onActivePlayersUpdated;
		public Signal onGameConfigUpdated;
		
		public void reset() {
			restartInProgress = false;
			winInProgress = false;
		}
	}
	
	private void start() {
		gameState = GameStateStruct.create();
		
		gameState.requestGameRestart = Signal.create();
		
		gameState.onGameFinished = Signal.create();
		gameState.onGameStarted = Signal.create();
		gameState.onWaveStarted = Signal.create();
		gameState.onSubwaveStarted = Signal.create();
		gameState.onWaveInterrupted = Signal.create();
		gameState.onActivePlayersUpdated = Signal.create();
		gameState.onGameConfigUpdated = Signal.create();
	}
	
}