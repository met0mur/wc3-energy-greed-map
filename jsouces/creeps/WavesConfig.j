library WavesConfig initializer wavesConfigInit uses creeps {
	
	private void wavesConfigInit() {
    
    
        CreepWave wave;
        CreepWavePack pack = CreepWavePack.create();
        
        integer i = 0;
        
        trace("Level Generating");
        
        array test = [10, 5, 3, 10, 1];
        
        whilenot (i++ == 40) {
            int MPS = R2I(100 * i);
            int DPS = MPS;
            int waveTimeSec = 120;
            int waveInterval = 10;
            
            trace("Level:" + I2S(i) + " MPS:" + I2S(MPS));
            //wave = pack.createNextWave();
            //wave.setinV2('lv11',  BASE,   1, 10,  0.5, pair.createSet(100, 30, 0));
        }


        //setinV2 ( integer id, integer Type, integer num, int hp, real scale, pair color)
		wave.setinV2('lv11',    BASE,   1, 10,  0.5, pair.createSet(100, 30, 0));
		wave.subwavesNum=1
        wave.waitAllCreepsAreDying = true;
        
        wave = pack.createNextWave();
        
		wave.setinV2('lv11',    BASE,   1, 2000, 1,     0)
		wave.subwavesNum=1
        wave.waitAllCreepsAreDying = true;
        
        CreepsController.waves_generated = pack;
        
        ///////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////
        ///////////////////////////////////////////////////////////////////
        
		pack = CreepWavePack.create();	
		
		wave = pack.createNextWave();

		wave.setin('lv11',ALL,1)
		wave.setin('lv11',BASE,1)
		wave.setin('lv11',SUPPORT,1)
		wave.subwavesNum=20
		
		wave = pack.createNextWave();

		wave.setin('lv11',ALL,6)
		wave.setin('lv11',BASE,6)
		wave.setin('lv11',SUPPORT,6)
		wave.subwavesNum=20
		
		wave = pack.createNextWave();

		wave.setin('lv11',ALL,3)
		wave.setin('lv12',BASE,1)
		wave.setin('lv13',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv11',ALL,3)
		wave.setin('lv12',BASE,1)
		wave.setin('lv13',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv11',ALL,3)
		wave.setin('lv14',BASE,1)
		wave.setin('lv12',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv13',ALL,1)
		wave.setin('lv14',BASE,2)
		wave.setin('lv12',SUPPORT,3)

		wave = pack.createNextWave();

		wave.setin('lv11',ALL,5)
		wave.setin('lv15',BASE,1)
		wave.setin('lv14',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv14',ALL,1)
		wave.setin('lv15',BASE,2)
		wave.setin('lv14',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv22',ALL,2)
		wave.setin('lv21',BASE,2)
		wave.setin('lv22',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv22',ALL,3)
		wave.setin('lv23',BASE,1)
		wave.setin('lv21',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv22',ALL,4)
		wave.setin('lv24',BASE,1)
		wave.setin('lv23',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv21',ALL,2)
		wave.setin('lv25',BASE,1)
		wave.setin('lv24',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv23',ALL,1)
		wave.setin('lv25',BASE,1)
		wave.setin('lv24',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv25',ALL,1)
		wave.setin('lv25',BASE,1)
		wave.setin('lv22',SUPPORT,7)

		wave = pack.createNextWave();

		wave.setin('lv31',ALL,2)
		wave.setin('lv32',BASE,1)
		wave.setin('lv31',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv31',ALL,2)
		wave.setin('lv33',BASE,1)
		wave.setin('lv32',SUPPORT,2)

		wave = pack.createNextWave();

		wave.setin('lv32',ALL,1)
		wave.setin('lv34',BASE,1)
		wave.setin('lv33',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('lv32',ALL,2)
		wave.setin('lv34',BASE,1)
		wave.setin('lv31',SUPPORT,2)
        wave.waitAllCreepsAreDying = true

		CreepsController.waves_classic = pack;
		
		//||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
		
		pack = CreepWavePack.create();
		
		wave = pack.createNextWave();
		
		wave.setin('1L12',ALL,3)
		wave.setin('1L11',BASE,4)
		wave.setin('1L13',SUPPORT,3)
		wave.waitAllCreepsAreDying = true;

		wave = pack.createNextWave();

		wave.setin('1L12',ALL,4)
		wave.setin('1L11',BASE,6)
		wave.setin('1L13',SUPPORT,2)
		wave.waitAllCreepsAreDying = true;

		wave = pack.createNextWave();

		wave.setin('1L11',ALL,2)
		wave.setin('1L13',BASE,7)
		wave.setin('1L14',SUPPORT,3)
		wave.waitAllCreepsAreDying = true;
		wave.subwavesNum=3

		wave = pack.createNextWave();

		wave.setin('1L12',ALL,2)
		wave.setin('1L15',BASE,1)
		wave.setin('1L14',SUPPORT,6)
		wave.subwavesNum=2

		wave = pack.createNextWave();

		wave.setin('1L14',ALL,2)
		wave.setin('1L15',BASE,2)
		wave.setin('1L14',SUPPORT,1)
		wave.subwavesNum=2

		wave = pack.createNextWave();

		wave.setin('1L14',ALL,2)
		wave.setin('1L15',BASE,2)
		wave.setin('1L16',SUPPORT,1)

		wave = pack.createNextWave();

		wave.setin('1L11',ALL,3)
		wave.setin('1L17',BASE,2)
		wave.setin('1L12',SUPPORT,0)

		wave = pack.createNextWave();

		wave.setin(0,ALL,0)
		wave.setin('1L17',BASE,2)
		wave.setin('1L18',SUPPORT,1)
		wave.subwavesNum=2
		wave.waitAllCreepsAreDying = true;
		
		CreepsController.waves_castle_hall = pack;
	}

}