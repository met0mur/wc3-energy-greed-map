library towadd initializer init

private nothing addtow(){
    unit u=GetTriggerUnit()
    integer id=GetUnitTypeId(u)
    if id=='wall'
        wall.ADD(u)
    endif
    u=null
}

private nothing init(){
    trigger t=CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    TriggerAddAction(t,function addtow)
}

endlibrary