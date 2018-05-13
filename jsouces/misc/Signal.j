library signal {
	
	struct Signal {
		private string array functionNames[20];
		private int functionNamesI;
		
		public void add(string name) {
			this.functionNames[this.functionNamesI] = name;
			this.functionNamesI++;
		}
		
		public void dispatch() {
			int i = functionNamesI;
			whilenot (i-- == 0) {
				ExecuteFunc(functionNames[i]);
			}
		}
	}
	
}

/* 
EXAMPLE

Signal testSignal = Signal.create();
	testSignal.add("testSignalF1");
	testSignal.add("testSignalF2");
	testSignal.add("testSignalF3");
	testSignal.add(CreepsController.test333.name);
	testSignal.dispatch();
}

nothing testSignalF1() {
	BJDebugMsg("testSignalF1");
}

nothing testSignalF2() {
	BJDebugMsg("testSignalF2");
}

nothing testSignalF3() {
	BJDebugMsg("testSignalF3");
} 
*/