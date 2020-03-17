library createunittime initializer onInit uses cmind

private CreepCreationQueueStruct array cfta
private integer nextcft=0

struct CreepCreationQueueStruct
    integer i
    player p
    integer id
    real x
    real y
    CreepSpawnPack pack;

    static nothing onRest(){
            integer i=0
            loop
                exitwhen i==nextcft
                cfta[i].destroy()
                i++
            endloop
            nextcft=0
        }

    endstruct

    private function ord_next_creep takes unit u returns nothing
        if u==null {print("null creep bug")}
        call UnitDataStruct.add(u,pCREEP)
        call GroupAddUnit(creepsgro,u)
        set creepsnum=creepsnum+1
        call RemoveGuardPosition(u)
        call SetUnitPathing(u,true)
        call SetUnitColor (u,ConvertPlayerColor(13))
        cmindtarget(u)
    endfunction

    nothing CreateUnitTime(player p,integer id,real x,real y){
        CreepCreationQueueStruct c=CreepCreationQueueStruct.create()
        c.p=p
        c.id=id
        c.x=x
        c.y=y
        cfta[nextcft]=c
        c.i=nextcft
        nextcft++
    }
    
    nothing CreateUnitTimeV2(player p,integer id,real x,real y, CreepSpawnPack pack){
        CreepCreationQueueStruct c=CreepCreationQueueStruct.create()
        c.p=p
        c.id=id
        c.x=x
        c.y=y
        c.pack=pack
        cfta[nextcft]=c
        c.i=nextcft
        nextcft++
    }

    private nothing go(){
        int i=GetRandomInt(0,nextcft-1);
        if (nextcft!=0 and creepsnum<creepsmaxnum+10) {
            nextcft--
            CreepCreationQueueStruct queueItem = cfta[i]; 
            unit u=CreateUnit(queueItem.p, queueItem.id, queueItem.x, queueItem.y,0);
            if (queueItem.pack.hp != 0) {
                setmaxhp(u, queueItem.pack.hp);
            }
            if (queueItem.pack.scale != 0) {
                SetUnitScale(u, queueItem.pack.scale, queueItem.pack.scale, queueItem.pack.scale);
            }
            if (queueItem.pack.color != 0) {
                trace("color_____");
                SetUnitVertexColorBJ( u, queueItem.pack.color.x, queueItem.pack.color.y, queueItem.pack.color.z, 0 );
            }
            
            ord_next_creep(u);        
            queueItem.destroy();
            cfta[i]=cfta[nextcft]
            if (nextcft> GameConfig.current.spawnSubwavesTimeSec / 0.25) {
                go();                
            } 
        }
    }

    private nothing onInit(){
        timer t=CreateTimer()
        TimerStart(t,.25,true,function go)
    }

endlibrary