//     Instructions:
//
//     Writes log if the condition is satisfied:
// IFDEBUG( ARGUMENT ) 
//
//     Writes log if the condition is NOT satisfied and TERMINATES its thread:
// ASSERT( ARGUMENT ) 
//
//     Writes log if the condition is satisfied and returns value from the second argument:
// IFDEBUG( ARGUMENT, RET )
//
// Note: If the function returns nothing but you wanna stop it anyway, use the space like: IFDEBUG(u == null, );
// Note: Log is written only in JNGP "Debug Mode".

//     Configuration:
#define
{
    Debug = true
    private SavePath = NS_SNW_LOGS\\Logs
    private PerformanceSavePath = NS_SNW_LOGS\\PerformanceLogs
    private SaveOnHardDrive = true
    private HardDriveLetter = C
    private AutoSaveLog = true
    private LogSavePeriod = 5.0
}

// by Faion, 2012
// by DoctorGester (Doc), 2011

library DebugLog initializer DebugLogInit
{
    public bool EnableLogging = true
    private string array DebugLog
    private string array PerformanceDebugLog
    private int CurrentString = 0
    private int miliSeconds = 0
    private int Seconds = 0
    private int Minutes = 0
    private int Hours = 0
    private constant int StringLimit = 200
    
    private int pastVal = 0;
    private int PerformanceString = 0
    
    void PerformanceLogAdd()
    {
        if (!EnableLogging)
        {
            return
        }
        string min = I2S(Minutes)
        string sec = I2S(Seconds)
        string msec = I2S(miliSeconds)
        if (Minutes < 10)
        {
            min = "0" + min
        }
        if (Seconds < 10)
        {
            sec = "0" + sec
        }
        if (miliSeconds < 10)
        {
            msec = "0" + msec
        }
        location loc = Location(0,0);
        int hId = GetHandleId(loc);
        
        RemoveLocation(loc);
        loc = null;
        PerformanceDebugLog[PerformanceString] = PerformanceDebugLog[PerformanceString] + ("[" + I2S(Hours)+":" + min + ":" + sec + ":" + msec + "] " + I2S(hId-0x100000) + "\n")
        if (StringLength(PerformanceDebugLog[PerformanceString]) >= StringLimit)
        {
            PerformanceString++
        }
    }
    
    void PerformanceLogUpdate()
    {
        if (!EnableLogging)
        {
            return
        }
        PreloadGenClear()
        PreloadGenStart()
        int i = 0
        while (i <= PerformanceString)
        {
            Preload("\")\n" + PerformanceDebugLog[i] + "\n(\"")
            i++
        }
        #if SaveOnHardDrive
            PreloadGenEnd(`HardDriveLetter` + ":\\" + `PerformanceSavePath` + ".txt")
        #else
            PreloadGenEnd("\\" + `PerformanceSavePath` + ".txt")
        #endif
    }
    
    void LogAdd(string s)
    {
        if (!EnableLogging)
        {
            return
        }
        string min = I2S(Minutes)
        string sec = I2S(Seconds)
        string msec = I2S(miliSeconds)
        if (Minutes < 10)
        {
            min = "0" + min
        }
        if (Seconds < 10)
        {
            sec = "0" + sec
        }
        if (miliSeconds < 10)
        {
            msec = "0" + msec
        }
        DebugLog[CurrentString] = DebugLog[CurrentString] + ("[" + I2S(Hours)+":" + min + ":" + sec + ":" + msec + "] " + s + "\n")
        if (StringLength(DebugLog[CurrentString]) >= StringLimit)
        {
            CurrentString++
        }
    }
    
    void LogClear()
    {
        int i = 0
        while (i <= CurrentString)
        {
            DebugLog[i] = ""
            i++
        }
        CurrentString = 0
    }
    
    void LogUpdate()
    {
        if (!EnableLogging)
        {
            return
        }
        PreloadGenClear()
        PreloadGenStart()
        int i = 0
        while (i <= CurrentString)
        {
            Preload("\")\n" + DebugLog[i] + "\n(\"")
            i++
        }
        #if SaveOnHardDrive
            PreloadGenEnd(`HardDriveLetter` + ":\\" + `SavePath` + ".txt")
        #else
            PreloadGenEnd("\\" + `SavePath` + ".txt")
        #endif
    }
    
    private void DebugLogOnTimer()
    {
        miliSeconds++
        if (miliSeconds > 99)
        {
            miliSeconds = 0
            Seconds++
            if (Seconds > 59)
            {
                Seconds = 0
                Minutes++
                if (Minutes > 59)
                {
                    Minutes = 0
                    Hours++
                }
            }
        }
    }
    
    private void DebugLogInit()
    {
        #if AutoSaveLog
            TimerStart(CreateTimer(), LogSavePeriod, true, function LogUpdate)
            TimerStart(CreateTimer(), LogSavePeriod, true, function PerformanceLogUpdate)
        #endif
        TimerStart(CreateTimer(), 0.01, true, function DebugLogOnTimer)
        TimerStart(CreateTimer(), 0.10, true, function PerformanceLogAdd)
        LogAdd("Logger by FaionBezarius. Last compilation: " + `DATE` + " " + `TIME`)
	#if Debug 
        	BJDebugMsg("Logger by FaionBezarius. Last compilation: " + `DATE` + " " + `TIME`)
	#endif
    }
	
	
//   by ScorpioT1000, 2009
//   powered by AdicHelper(cJass.xgm.ru)

    #define private assert_color = "FF404040"
    
    nothing Ifdebug_debug_msg(string message, integer whichPlayer) {
    	LogAdd("|c"+assert_color+"Debug: "+message+"|r")
    }
    
    #define private DMSGFUNC = Ifdebug_debug_msg
    
	#define IFDEBUGF(ARG,DEST_PLAYER) =  
    #define IFDEBUGFA(ARG,DEST_PLAYER) = {
        if(ARG) {
        } else {
			I2R(2/0)
		}
    }
	    #define IFDEBUGR(ARG,WHATRET,DEST_PLAYER) = {
        if(ARG) {
            return WHATRET
        }
    }
	
    #if DEBUG == 1
        //#setdef IFDEBUGF(ARG,DEST_PLAYER) = {
        //    if(ARG) {
        //        DMSGFUNC(`FUNCNAME` + ": " + `ARG`,DEST_PLAYER)
        //    }
        //}
        //#setdef IFDEBUGFA(ARG,DEST_PLAYER) = {
        //    if(ARG) {
        //    } else {
        //    DMSGFUNC(`FUNCNAME` + ": " + `ARG` + " failed",DEST_PLAYER)
        //    I2R(2/0)
        //    }
        //}
        //
        //#setdef IFDEBUGR(ARG,WHATRET,DEST_PLAYER) = {
        //    if(ARG) {
        //        DMSGFUNC(`FUNCNAME` + ": " + `ARG`,DEST_PLAYER)
        //        return WHATRET
        //    }
        //}
    #endif
//    
//    //overloading
//    #define {
//    ASSERT(ARGUMENT) = IFDEBUGFA(ARGUMENT, -1)
//        IFDEBUG(ARGUMENT) = IFDEBUGF(ARGUMENT, -1) // with condition to all players
//        IFDEBUG(ARGUMENT,RET) = IFDEBUGR(ARGUMENT,RET, -1) // with condition and return to all players
//        IFDEBUGP(ARGUMENT,DEST_PLAYER) = IFDEBUGF(A,DEST_PLAYER) // with condition to one player
//        IFDEBUGP(ARGUMENT,RET,DEST_PLAYER) = IFDEBUGF(A,RET,DEST_PLAYER) // with condition and return to one players
//    }
    
}