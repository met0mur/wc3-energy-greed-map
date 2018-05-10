library indicator initializer init uses unittimerremove
    boolean selection=false
    boolean array onselect
    private player pl

    private nothing enumsel() {
        unit u=GetTriggerUnit()
        if RadiusStruct.find(u)==false and GetLocalPlayer()==GetTriggerPlayer() and RadiusStruct.getr(u)!=0
            RadiusStruct.initialize(u,RadiusStruct.getr(u))
        endif
    u=null
    }

    boolean esc=false

    private boolean enumesc() {
    unit u=GetFilterUnit()
    if pl==GetLocalPlayer()
        if esc==false
            if RadiusStruct.find(u)==false and RadiusStruct.getr(u)!=0.
                RadiusStruct.initialize(u,RadiusStruct.getr(u))
                //print("werwefwef")
            endif

        else
            RadiusStruct.Kill(u)
        endif
    endif
    u=null
    return false
    }

    private nothing act() {

        pl=GetTriggerPlayer()
        group g = CreateGroup()
        
        GroupEnumUnitsInRange(g,GetCameraTargetPositionX(),GetCameraTargetPositionY(),800,Filter(function enumesc))
        esc=not(esc)

        DestroyGroup(g)
        g=null
    }

    private nothing init() {
        trigger t=CreateTrigger()
        integer i=0
        loop
            exitwhen i==slots
            TriggerRegisterPlayerEvent(t, Player(i), EVENT_PLAYER_END_CINEMATIC)
            i++
            //onselect[i]=true
        endloop
        TriggerAddAction( t, function act )
        t=CreateTrigger()
        TriggerRegisterAnyUnitEventBJ( t, EVENT_PLAYER_UNIT_CONSTRUCT_START )
        TriggerAddAction( t, function enumsel )
    }

endlibrary
