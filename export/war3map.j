globals
//globals from cjLib75hJKJ374s4e597nba9o7w45gf:
constant boolean LIBRARY_cjLib75hJKJ374s4e597nba9o7w45gf=true
group cj_tmpgr_copy_nw509ert7
//endglobals from cjLib75hJKJ374s4e597nba9o7w45gf
//globals from cjLibw560nbs9b8nse46703948:
constant boolean LIBRARY_cjLibw560nbs9b8nse46703948=true
boolexpr cj_true_bool_4896bnao87
//endglobals from cjLibw560nbs9b8nse46703948
//globals from Effect:
constant boolean LIBRARY_Effect=true
integer array Effect___EFF
integer Effect___NEXT=0
real Effect___QANT=0.05
//endglobals from Effect
//globals from aurabuff:
constant boolean LIBRARY_aurabuff=true
integer array aurabuff___AURA
integer aurabuff___NEXT=0
real aurabuff___QANT=0.04
//endglobals from aurabuff
//globals from general:
constant boolean LIBRARY_general=true
location general___l=Location(0.,0.)
integer veccount=0
//endglobals from general
//globals from rock:
constant boolean LIBRARY_rock=true
integer array dsa
integer nextdsa=0
//endglobals from rock
//globals from towadd:
constant boolean LIBRARY_towadd=true
//endglobals from towadd
//globals from towers:
constant boolean LIBRARY_towers=true
integer array attacktowers
integer nextat=0
integer towers___INSTANT=1
integer towers___POINT=2
integer towers___TARGET=3
integer towers___JASSTARGET=3
integer array tta
integer nexttt=0
//endglobals from towers
//globals from unittimerremove:
constant boolean LIBRARY_unittimerremove=true
unit array unittimerremove___ua
real array unittimerremove___ta
integer unittimerremove___ne=0
//endglobals from unittimerremove
//globals from Lightning:
constant boolean LIBRARY_Lightning=true
integer array Lightning___LIG
integer Lightning___NEXT=0
integer Lightning___f
integer Lightning___t
integer Lightning___a
integer Lightning___c
integer Lightning___p
integer Lightning___pp
integer array Lightning___sla
integer Lightning___nextsl=0
real lspeed=26
//endglobals from Lightning
//globals from asciiTable:
constant boolean LIBRARY_asciiTable=true
//endglobals from asciiTable
//globals from cmind:
constant boolean LIBRARY_cmind=true
boolexpr cmind___crit_num_bexpr
group cmind___g
integer cmind___cnum=0
integer cmind___PL_TG=0
unit cmind___TARG
timer cmind___OMTI
trigger cmind___OMTR
destructable cmind___de
real cmind___dist
unit cmind___ud
real cmind___Wx=500
real cmind___Wy=500
constant integer cmind___Width=25
integer array cmind___stands
//endglobals from cmind
//globals from energywall:
constant boolean LIBRARY_energywall=true
integer array energywall___WALL
integer energywall___NEXTW=0
real energywall___Zcord=37.5
integer array energywall___SECT
integer energywall___NEXTS=0
//endglobals from energywall
//globals from epicentr:
constant boolean LIBRARY_epicentr=true
//endglobals from epicentr
//globals from gamma:
constant boolean LIBRARY_gamma=true
integer array gamma___ga
integer gamma___next=0
constant real gamma___Dmg=10
constant real gamma___Dmgadd=10
constant real gamma___Dis100Add=150
constant real gamma___Maxang=90
constant real gamma___Angadd=22
constant real gamma___Maxdis=600
constant real gamma___Disadd=25
//endglobals from gamma
//globals from indicator:
constant boolean LIBRARY_indicator=true
boolean selection=false
boolean array onselect
player indicator___pl
boolean esc=false
//endglobals from indicator
//globals from manatower:
constant boolean LIBRARY_manatower=true
constant string manatower___STRORD_MANASEND="polymorph"
constant real sendtime=0.1
constant real manatower___ltheight=30.
constant real manatower___gval=20*0.1
integer engsum
group manatower___groupUnitSearching
unit manatower___selectedUnit=null
real manatower___selectedUnitDistance=0
integer manatower___ppp
integer manatower___pp1
boolexpr manatower___nearestUnitEnumerator
//endglobals from manatower
//globals from missile:
constant boolean LIBRARY_missile=true
integer array missile___MISS
integer missile___NEXT=0
integer missile___temp
//endglobals from missile
//globals from partsStruct:
constant boolean LIBRARY_partsStruct=true
integer array partsStruct___list
integer partsStruct___pointer=0
//endglobals from partsStruct
//globals from prima:
constant boolean LIBRARY_prima=true
integer array Prima
integer nextPrima=0
integer array prima___primaall
integer prima___nextprimaall=0
//endglobals from prima
//globals from radiusIndicator:
constant boolean LIBRARY_radiusIndicator=true
integer radiusIndicator___pp
integer radiusIndicator___p1
integer radiusIndicator___p2
integer array radiusIndicator___lca
integer radiusIndicator___next=0
integer array radiusIndicator___lcae
integer radiusIndicator___nexte=0
//endglobals from radiusIndicator
//globals from svod:
constant boolean LIBRARY_svod=true
destructable array svod___forRes
integer svod___nextfr=0
integer array svod___Svod
integer svod___next=0
//endglobals from svod
//globals from createunittime:
constant boolean LIBRARY_createunittime=true
integer array createunittime___cfta
integer createunittime___nextcft=0
//endglobals from createunittime
//globals from cristals:
constant boolean LIBRARY_cristals=true
constant integer cristals___mincrist=90000
constant integer cristals___maxcrist=100000
constant real cristals___rad=1.5
constant real cristals___maxrad=60
constant real cristals___radius=300
constant integer cristals___cris_id=0x6E303034
integer array cristals___crar
integer cristals___nextcr=0
integer array cristals___csa
integer cristals___nextcs=0
//endglobals from cristals
//globals from partsConfig:
constant boolean LIBRARY_partsConfig=true
//endglobals from partsConfig
//globals from passport:
constant boolean LIBRARY_passport=true
integer pUNKNOW=0
integer pCREEP=1
integer pHERO=2
integer pTRANS=3
integer pTOWER=4
integer pAFTERDESTROY=5
//endglobals from passport
//globals from towerBaseConfig:
constant boolean LIBRARY_towerBaseConfig=true
//endglobals from towerBaseConfig
//globals from upgradeProgress:
constant boolean LIBRARY_upgradeProgress=true
real upgradeProgress___UPDATE_INTERVAL_SECONDS=0.1
real engmult=10
//endglobals from upgradeProgress
//globals from creeps:
constant boolean LIBRARY_creeps=true
leaderboard l
integer falseStartCountDownInitialSec=10
integer falseStartCountDown
timer spawner
integer lvlnum=1
integer spawnnum=0
boolean pause=false
integer creepsnum=0
group creepsgro
integer spawnnummax=8
integer spawnperiod=10
player creepsplayer=Player(10)
group creeps___scangroup
integer nexttarg=0
integer array targarray
integer nextresp=0
integer array resparray
constant integer creeps___PT_RESPAWN=1
constant integer creeps___ALL=0
constant integer creeps___BASE=1
constant integer creeps___SUBSID=2
constant integer creeps___PT_TARGET=2
integer CREEP_TARGET=0x74617267
integer CREEP_RESP=0x72657370
integer array creeps___allc
integer array creeps___basec
integer array creeps___subc
integer array MAXLVL
boolean array WAVE_END
integer array WAVE_SUBNUM
//endglobals from creeps
//globals from game:
constant boolean LIBRARY_game=true
boolean NoGem=true
integer Diff=0
integer lvlplus=0
integer LOC=0
boolean restarting=false
string dispOnRes=""
integer but0=0
integer but1=0
integer but2=0
boolean go=true
integer vote
button b0
button b1
button b2
//endglobals from game
//globals from gameplayer:
constant boolean LIBRARY_gameplayer=true
trigger herodie
integer activeplayer=0
integer array actgpa
integer slots=6
integer array gpa
integer playerpoint
//endglobals from gameplayer
rect udg_rect=null
integer udg_fgh=0
dialog udg_lj=null
real udg_dsfg=0
rect gg_rct_qqqqqqqqq=null
rect gg_rct_p1=null
rect gg_rct_p2=null
rect gg_rct_p3=null
rect gg_rct_p4=null
rect gg_rct_base=null
trigger gg_trg_towadd=null
trigger gg_trg_towers=null
trigger gg_trg_unittimeremove=null
trigger gg_trg_destruct=null
trigger gg_trg_indicator_____________________u=null
trigger gg_trg_Slow=null
trigger gg_trg_Effect=null
trigger gg_trg_missile=null
trigger gg_trg_Svod=null
trigger gg_trg_prima=null
trigger gg_trg_gamma=null
trigger gg_trg_epicentr=null
trigger gg_trg_lowcpu=null
trigger gg_trg_restart=null
trigger gg_trg_restart_____________________u=null
trigger gg_trg_spawnnummax=null
trigger gg_trg_spawnperiod=null
trigger gg_trg_SkeepLVL_____________________u=null
trigger gg_trg_lms=null
trigger gg_trg_wear=null
trigger gg_trg_initQWERTY=null
trigger gg_trg_MOOVE=null
trigger gg_trg_moxer=null
trigger gg_trg_charges=null
trigger gg_trg_autorem=null
trigger gg_trg_peredat=null
trigger gg_trg_selfkill=null
string MAP_NAME
constant integer baseL1=0x62617330
constant integer chestL1=0x6E303033
constant integer chestL2=0x6E303036
constant integer chestL3=0x626F6C33
constant integer chargerL1=0x6E616130
constant integer chargerL2=0x6E616131
constant integer chargerL3=0x6E616132
constant integer epicL1=0x6E303035
constant integer epicL2=0x65706932
constant integer epicL3=0x65706932
constant integer pulseL1=0x6E303032
constant integer pulseL2=0x6E303039
constant integer pulseL3=0x696D7033
constant integer fireL1=0x6E303031
constant integer fireL2=0x6E303041
constant integer fireL3=0x67656633
constant integer healL1=0x6E303037
constant integer healL2=0x6E303038
constant integer sendL1=0x746F7765
constant integer sendL2=0x746F7732
constant integer sendL3=0x746F7733
constant integer sendL41=0x746F7734
constant integer sendL42=0x746F7735
constant integer accL1=0x61636331
constant integer accL2=0x61636332
constant integer accL3=0x61636333
constant integer burL1=0x62757231
constant integer dioptaz=0x49303033
constant integer obsidian=0x49303030
constant integer opal=0x49303034
constant integer pirrotin=0x49303031
constant integer kvartz=0x49303032
constant integer ruby=0x49303035
constant integer izu=0x49303036
constant integer top=0x49303041
constant integer met=0x49303042
boolean array lcpu
boolean cj_v666_boolean

trigger l__library_init

//JASSHelper struct globals:
constant integer si__Effect=1
integer si__Effect_F=0 //MOOOO
integer si__Effect_I=0
integer array si__Effect_V
integer array s__Effect_i
unit array s__Effect_u
real array s__Effect_time
real array s__Effect_offset
constant integer si__aurabuff=2
integer si__aurabuff_F=0 //MOOOO
integer si__aurabuff_I=0
integer array si__aurabuff_V
integer array s__aurabuff_i
unit array s__aurabuff_u
unit array s__aurabuff_b
real array s__aurabuff_time
real array s__aurabuff_offset
constant integer si__vec=3
integer si__vec_F=0 //MOOOO
integer si__vec_I=0
integer array si__vec_V
real array s__vec_x
real array s__vec_y
real array s__vec_z
constant integer si__pair=4
integer si__pair_F=0 //MOOOO
integer si__pair_I=0
integer array si__pair_V
real array s__pair_x
real array s__pair_y
real array s__pair_z
constant integer si__destsave=5
integer si__destsave_F=0 //MOOOO
integer si__destsave_I=0
integer array si__destsave_V
destructable array s__destsave_d
real array s__destsave_x
real array s__destsave_y
integer array s__destsave_id
trigger array s__destsave_t
constant integer si__rock=6
integer si__rock_F=0 //MOOOO
integer si__rock_I=0
integer array si__rock_V
destructable array s__rock_d
trigger array s__rock_t
constant integer si__towertype=7
integer si__towertype_F=0 //MOOOO
integer si__towertype_I=0
integer array si__towertype_V
integer array s___towertype_idL
constant integer s___towertype_idL_size=6
integer array s__towertype_idL
integer array s__towertype_abil
string array s__towertype_order
integer array s__towertype_ordertype
constant integer si__lig=9
integer si__lig_F=0 //MOOOO
integer si__lig_I=0
integer array si__lig_V
integer array s__lig_i
integer array s__lig_sl
unit array s__lig_from
unit array s__lig_to
boolean array s__lig_sendb
integer array s__lig_ty
integer array s__lig_cicles
constant integer si__sendlig=10
integer si__sendlig_F=0 //MOOOO
integer si__sendlig_I=0
integer array si__sendlig_V
integer array s__sendlig_i
lightning array s__sendlig_l
boolean array s__sendlig_b
boolean array s__sendlig_move
unit array s__sendlig_from
unit array s__sendlig_to
integer array s__sendlig_pfrom
integer array s__sendlig_pto
real array s__sendlig_d1
real array s__sendlig_d2
integer array s__sendlig_start
integer array s__sendlig_pos1
integer array s__sendlig_pos2
integer array s__sendlig_vel
real array s__sendlig_dist
real array s__sendlig_speed
constant integer si__ascii=11
integer si__ascii_F=0 //MOOOO
integer si__ascii_I=0
integer array si__ascii_V
integer array s__ascii_numb
string array s__ascii_char
integer array s__ascii_values
integer s__ascii_pointer=0
constant integer si__wall=12
integer si__wall_F=0 //MOOOO
integer si__wall_I=0
integer array si__wall_V
integer array s__wall_i
unit array s__wall_base
integer array s___wall_section
constant integer s___wall_section_size=11
integer array s__wall_section
integer array s__wall_nextS
real array s__wall_MP
real array s__wall_DMG
constant integer si__section=14
integer si__section_F=0 //MOOOO
integer si__section_I=0
integer array si__section_V
integer array s__section_i
integer array s__section_iw
integer array s__section_wall
unit array s__section_pole
lightning array s___section_l
constant integer s___section_l_size=4
integer array s__section_l
integer array s__section_last
integer array s__section_next
trigger array s__section_t
group array s__section_g
constant integer si__epic=16
integer si__epic_F=0 //MOOOO
integer si__epic_I=0
integer array si__epic_V
unit array s__epic_caster
lightning array s___epic_l
constant integer s___epic_l_size=50
integer array s__epic_l
integer array s__epic_num
integer array s__epic_time
constant integer si__gamma=18
integer si__gamma_F=0 //MOOOO
integer si__gamma_I=0
integer array si__gamma_V
unit array s__gamma_caster
lightning array s___gamma_l
constant integer s___gamma_l_size=50
integer array s__gamma_l
integer array s__gamma_num
integer array s__gamma_time
constant integer si__ManaLinkStruct=20
integer si__ManaLinkStruct_F=0 //MOOOO
integer si__ManaLinkStruct_I=0
integer array si__ManaLinkStruct_V
integer array s__ManaLinkStruct_list
integer s__ManaLinkStruct_pointer=0
integer array s__ManaLinkStruct_deleteQueue
integer s__ManaLinkStruct_pointer_deleteQueue=0
integer array s__ManaLinkStruct_longdist
integer s__ManaLinkStruct_nextld=0
integer array s__ManaLinkStruct_struct_index
real array s__ManaLinkStruct_send
lightning array s__ManaLinkStruct_lt
boolean array s__ManaLinkStruct_act
unit array s__ManaLinkStruct_from
unit array s__ManaLinkStruct_to
integer array s__ManaLinkStruct_l
constant integer si__Miss=21
integer si__Miss_F=0 //MOOOO
integer si__Miss_I=0
integer array si__Miss_V
integer array s__Miss_i
unit array s__Miss_from
unit array s__Miss_m
integer array s__Miss_vel
integer array s__Miss_vm
integer array s__Miss_vtar
real array s__Miss_speed
unit array s__Miss_utar
real array s__Miss_dist
boolean array s__Miss_auto
boolean array s__Miss_bdmg
real array s__Miss_dmg
attacktype array s__Miss_at
boolean array s__Miss_splash
real array s__Miss_srad
boolean array s__Miss_eff
string array s__Miss_effdir
boolean array s__Miss_buf
integer array s__Miss_bufftype
real array s__Miss_bufftime
integer array s__Miss_Steps
constant integer si__PartSetConfigStruct=22
integer si__PartSetConfigStruct_F=0 //MOOOO
integer si__PartSetConfigStruct_I=0
integer array si__PartSetConfigStruct_V
integer array s___PartSetConfigStruct_towerIDS
constant integer s___PartSetConfigStruct_towerIDS_size=15
integer array s__PartSetConfigStruct_towerIDS
integer array s__PartSetConfigStruct_tower_pointer
integer array s___PartSetConfigStruct_parts
constant integer s___PartSetConfigStruct_parts_size=25
integer array s__PartSetConfigStruct_parts
integer array s__PartSetConfigStruct_parts_pointer
constant integer si__partsStruct___PartConfigStruct=25
integer si__partsStruct___PartConfigStruct_F=0 //MOOOO
integer si__partsStruct___PartConfigStruct_I=0
integer array si__partsStruct___PartConfigStruct_V
integer array s__partsStruct___PartConfigStruct_partId
integer array s__partsStruct___PartConfigStruct_minLevel
integer array s__partsStruct___PartConfigStruct_maxLevel
real array s__partsStruct___PartConfigStruct_x
real array s__partsStruct___PartConfigStruct_y
real array s__partsStruct___PartConfigStruct_r
constant integer si__partsStruct_TowerSetStruct=26
integer si__partsStruct_TowerSetStruct_F=0 //MOOOO
integer si__partsStruct_TowerSetStruct_I=0
integer array si__partsStruct_TowerSetStruct_V
unit array s__partsStruct_TowerSetStruct_owner
integer array s___partsStruct_TowerSetStruct_parts
constant integer s___partsStruct_TowerSetStruct_parts_size=20
integer array s__partsStruct_TowerSetStruct_parts
integer array s__partsStruct_TowerSetStruct_parts_pointer
constant integer si__partsStruct___TowerPartStruct=28
integer si__partsStruct___TowerPartStruct_F=0 //MOOOO
integer si__partsStruct___TowerPartStruct_I=0
integer array si__partsStruct___TowerPartStruct_V
unit array s__partsStruct___TowerPartStruct_target
unit array s__partsStruct___TowerPartStruct_part
integer array s__partsStruct___TowerPartStruct_config
constant integer si__prima=29
integer si__prima_F=0 //MOOOO
integer si__prima_I=0
integer array si__prima_V
integer array s__prima_i
integer array s__prima_i1
unit array s__prima_u
integer array s__prima_kill
texttag array s__prima_text
trigger array s__prima_t
boolean array s__prima_bonoff
group array s__prima_gu
constant integer si__RadiusStruct=30
integer si__RadiusStruct_F=0 //MOOOO
integer si__RadiusStruct_I=0
integer array si__RadiusStruct_V
lightning array s___RadiusStruct_l
constant integer s___RadiusStruct_l_size=24
integer array s__RadiusStruct_l
boolean array s__RadiusStruct_pauseFade
boolean array s__RadiusStruct_kill
boolean array s__RadiusStruct_permanent
unit array s__RadiusStruct_u
real array s__RadiusStruct_a
constant integer si__svod=32
integer si__svod_F=0 //MOOOO
integer si__svod_I=0
integer array si__svod_V
integer array s__svod_index
lightning array s__svod_l
real array s__svod_x
real array s__svod_y
unit array s__svod_u
unit array s__svod_r
real array s__svod_h
integer array s__svod_t
constant integer si__cftstruct=33
integer si__cftstruct_F=0 //MOOOO
integer si__cftstruct_I=0
integer array si__cftstruct_V
integer array s__cftstruct_i
player array s__cftstruct_p
integer array s__cftstruct_id
real array s__cftstruct_x
real array s__cftstruct_y
constant integer si__cristsender=34
integer si__cristsender_F=0 //MOOOO
integer si__cristsender_I=0
integer array si__cristsender_V
integer array s__cristsender_i
unit array s__cristsender_from
unit array s__cristsender_to
integer array s__cristsender_l
constant integer si__crist=35
integer si__crist_F=0 //MOOOO
integer si__crist_I=0
integer array si__crist_V
integer array s__crist_i
real array s__crist_nrg
unit array s__crist_u
group array s__crist_g
constant integer si__UnitDataStruct=36
integer si__UnitDataStruct_F=0 //MOOOO
integer si__UnitDataStruct_I=0
integer array si__UnitDataStruct_V
unit array s__UnitDataStruct_u
unit array s__UnitDataStruct_wisp
unit array s__UnitDataStruct_from
integer array s__UnitDataStruct_ptype
integer array s__UnitDataStruct_Sender
group array s__UnitDataStruct_froms
group array s__UnitDataStruct_s
boolean array s__UnitDataStruct_b0
boolean array s__UnitDataStruct_b1
integer array s__UnitDataStruct_recivers
integer array s__UnitDataStruct_resful
real array s__UnitDataStruct_val
real array s__UnitDataStruct_freeval
real array s__UnitDataStruct_forsend
boolean array s__UnitDataStruct_select
real array s__UnitDataStruct_x
real array s__UnitDataStruct_y
integer array s__UnitDataStruct_times
trigger array s__UnitDataStruct_ondest
boolean array s__UnitDataStruct_prima
integer array s__UnitDataStruct_intprima
integer array s__UnitDataStruct_towerSet
integer array s__UnitDataStruct_towerConfig
constant integer si__TowerBaseConfig=37
integer si__TowerBaseConfig_F=0 //MOOOO
integer si__TowerBaseConfig_I=0
integer array si__TowerBaseConfig_V
string array s__TowerBaseConfig_ident
integer array s__TowerBaseConfig_level
integer array s__TowerBaseConfig_distance
integer array s__TowerBaseConfig_capacity
integer array s__TowerBaseConfig_hp
integer array s__TowerBaseConfig_buildCost
integer array s__TowerBaseConfig_damage
integer array s__TowerBaseConfig_attackCost
integer array s__TowerBaseConfig_cooldown
integer array s__TowerBaseConfig_dpscc
integer array s__TowerBaseConfig_mpscc
integer array s__TowerBaseConfig_dpsmps
integer array s__TowerBaseConfig_bcdmg
integer array s__TowerBaseConfig_dpm
integer array s__TowerBaseConfig_bcdps
string array s__TowerBaseConfig_abilid
integer array s__TowerBaseConfig_abilid_int
string array s__TowerBaseConfig_unitid
integer array s__TowerBaseConfig_unitid_int
integer array s__TowerBaseConfig_dmult
integer array s__TowerBaseConfig_dpsmul
integer array s__TowerBaseConfig_atcmul
string array s__TowerBaseConfig_unam
string array s__TowerBaseConfig_utup
string array s__TowerBaseConfig_uhot
string array s__TowerBaseConfig_anam
string array s__TowerBaseConfig_ahky
string array s__TowerBaseConfig_abdmg
string array s__TowerBaseConfig_abprop1
integer array s__TowerBaseConfig_abval1
string array s__TowerBaseConfig_abline1
integer s__TowerBaseConfig_pointer=1
integer array s__TowerBaseConfig_values
constant integer si__UpgradeProgressStruct=38
integer si__UpgradeProgressStruct_F=0 //MOOOO
integer si__UpgradeProgressStruct_I=0
integer array si__UpgradeProgressStruct_V
integer s__UpgradeProgressStruct_pointer=0
integer array s__UpgradeProgressStruct_list
integer array s__UpgradeProgressStruct_struct_index
unit array s__UpgradeProgressStruct_target
real array s__UpgradeProgressStruct_maxmana
real array s__UpgradeProgressStruct_lastMana
real array s__UpgradeProgressStruct_time
constant integer si__point=39
integer si__point_F=0 //MOOOO
integer si__point_I=0
integer array si__point_V
integer array s__point_p
integer array s__point_Type
integer array s__point_subType
integer array s__point_loc
constant integer si__creepinfo=40
integer si__creepinfo_F=0 //MOOOO
integer si__creepinfo_I=0
integer array si__creepinfo_V
integer array s__creepinfo_id
integer array s__creepinfo_lvl
integer array s__creepinfo_Type
integer array s__creepinfo_num
constant integer si__gamepr=41
integer si__gamepr_F=0 //MOOOO
integer si__gamepr_I=0
integer array si__gamepr_V
player array s__gamepr_p
group array s__gamepr_units
integer array s__gamepr_act
unit array s__gamepr_u
unit array s__gamepr_krest
effect array s__gamepr_but
boolean array s__gamepr_krestis
boolean array s__gamepr_educ
trigger st__vec_onDestroy
trigger st__rock_onDeath
trigger st__sendlig_add
trigger st__sendlig_rem
trigger st__wall_Findw
trigger st__wall_ADD
trigger st__section_REM
trigger st__section_ADD
trigger st__section_INIT
trigger st__Miss_Create
trigger st__Miss_ModBuff
trigger st__Miss_ModDmg
trigger st__PartSetConfigStruct_getTargetLevel
trigger st__partsStruct___PartConfigStruct_setData
trigger st__partsStruct_TowerSetStruct_addPart
trigger st__partsStruct_TowerSetStruct_onDestroy
trigger st__partsStruct___TowerPartStruct_init
trigger st__partsStruct___TowerPartStruct_applyOffset
trigger st__partsStruct___TowerPartStruct_onDestroy
trigger st__partsStruct___TowerPartStruct_destroy
trigger st__RadiusStruct_getr
trigger st__RadiusStruct_initialize
trigger st__RadiusStruct_Kill
trigger st__RadiusStruct_find
trigger st__crist_find
trigger st__UnitDataStruct_get
trigger st__UnitDataStruct_settrans
trigger st__UnitDataStruct_setval
trigger st__UnitDataStruct_gettrans
trigger st__UnitDataStruct_findCreepFromT
trigger st__UnitDataStruct_add
trigger st__TowerBaseConfig_getByObjectId
trigger st__gamepr_compareLost
trigger st__gamepr_gameStart
unit f__arg_unit1
unit f__arg_unit2
integer f__arg_integer1
integer f__arg_integer2
integer f__arg_integer3
integer f__arg_integer4
real f__arg_real1
real f__arg_real2
attacktype f__arg_attacktype1
boolean f__arg_boolean1
trigger f__arg_trigger1
integer f__arg_this
integer f__result_integer
real f__result_real
boolean f__result_boolean

endglobals


//Generated allocator of Effect
function s__Effect__allocate takes nothing returns integer
 local integer this=si__Effect_F
    if (this!=0) then
        set si__Effect_F=si__Effect_V[this]
    else
        set si__Effect_I=si__Effect_I+1
        set this=si__Effect_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Effect")
        return 0
    endif

   set s__Effect_time[this]=0
    set si__Effect_V[this]=-1
 return this
endfunction

//Generated destructor of Effect
function s__Effect_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Effect")
        return
    elseif (si__Effect_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Effect")
        return
    endif
    set si__Effect_V[this]=si__Effect_F
    set si__Effect_F=this
endfunction

//Generated method caller for gamepr.compareLost
function sc__gamepr_compareLost takes nothing returns nothing
    call TriggerEvaluate(st__gamepr_compareLost)
endfunction

//Generated method caller for gamepr.gameStart
function sc__gamepr_gameStart takes nothing returns nothing
    call TriggerEvaluate(st__gamepr_gameStart)
endfunction

//Generated allocator of gamepr
function s__gamepr__allocate takes nothing returns integer
 local integer this=si__gamepr_F
    if (this!=0) then
        set si__gamepr_F=si__gamepr_V[this]
    else
        set si__gamepr_I=si__gamepr_I+1
        set this=si__gamepr_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: gamepr")
        return 0
    endif

   set s__gamepr_krestis[this]=false
   set s__gamepr_educ[this]=false
    set si__gamepr_V[this]=-1
 return this
endfunction

//Generated destructor of gamepr
function s__gamepr_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: gamepr")
        return
    elseif (si__gamepr_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: gamepr")
        return
    endif
    set si__gamepr_V[this]=si__gamepr_F
    set si__gamepr_F=this
endfunction

//Generated allocator of creepinfo
function s__creepinfo__allocate takes nothing returns integer
 local integer this=si__creepinfo_F
    if (this!=0) then
        set si__creepinfo_F=si__creepinfo_V[this]
    else
        set si__creepinfo_I=si__creepinfo_I+1
        set this=si__creepinfo_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: creepinfo")
        return 0
    endif

    set si__creepinfo_V[this]=-1
 return this
endfunction

//Generated destructor of creepinfo
function s__creepinfo_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: creepinfo")
        return
    elseif (si__creepinfo_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: creepinfo")
        return
    endif
    set si__creepinfo_V[this]=si__creepinfo_F
    set si__creepinfo_F=this
endfunction

//Generated allocator of point
function s__point__allocate takes nothing returns integer
 local integer this=si__point_F
    if (this!=0) then
        set si__point_F=si__point_V[this]
    else
        set si__point_I=si__point_I+1
        set this=si__point_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: point")
        return 0
    endif

    set si__point_V[this]=-1
 return this
endfunction

//Generated destructor of point
function s__point_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: point")
        return
    elseif (si__point_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: point")
        return
    endif
    set si__point_V[this]=si__point_F
    set si__point_F=this
endfunction

//Generated allocator of UpgradeProgressStruct
function s__UpgradeProgressStruct__allocate takes nothing returns integer
 local integer this=si__UpgradeProgressStruct_F
    if (this!=0) then
        set si__UpgradeProgressStruct_F=si__UpgradeProgressStruct_V[this]
    else
        set si__UpgradeProgressStruct_I=si__UpgradeProgressStruct_I+1
        set this=si__UpgradeProgressStruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: UpgradeProgressStruct")
        return 0
    endif

   set s__UpgradeProgressStruct_lastMana[this]=0
   set s__UpgradeProgressStruct_time[this]=0
    set si__UpgradeProgressStruct_V[this]=-1
 return this
endfunction

//Generated destructor of UpgradeProgressStruct
function s__UpgradeProgressStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: UpgradeProgressStruct")
        return
    elseif (si__UpgradeProgressStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: UpgradeProgressStruct")
        return
    endif
    set si__UpgradeProgressStruct_V[this]=si__UpgradeProgressStruct_F
    set si__UpgradeProgressStruct_F=this
endfunction

//Generated method caller for TowerBaseConfig.getByObjectId
function sc__TowerBaseConfig_getByObjectId takes integer id returns integer
    set f__arg_integer1=id
    call TriggerEvaluate(st__TowerBaseConfig_getByObjectId)
 return f__result_integer
endfunction

//Generated allocator of TowerBaseConfig
function s__TowerBaseConfig__allocate takes nothing returns integer
 local integer this=si__TowerBaseConfig_F
    if (this!=0) then
        set si__TowerBaseConfig_F=si__TowerBaseConfig_V[this]
    else
        set si__TowerBaseConfig_I=si__TowerBaseConfig_I+1
        set this=si__TowerBaseConfig_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: TowerBaseConfig")
        return 0
    endif

   set s__TowerBaseConfig_abilid_int[this]=0
   set s__TowerBaseConfig_unitid_int[this]=0
    set si__TowerBaseConfig_V[this]=-1
 return this
endfunction

//Generated destructor of TowerBaseConfig
function s__TowerBaseConfig_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: TowerBaseConfig")
        return
    elseif (si__TowerBaseConfig_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: TowerBaseConfig")
        return
    endif
    set si__TowerBaseConfig_V[this]=si__TowerBaseConfig_F
    set si__TowerBaseConfig_F=this
endfunction

//Generated method caller for UnitDataStruct.get
function sc__UnitDataStruct_get takes unit u returns integer
local integer id=GetUnitTypeId(u)
local integer t=0
if id == 0x746F7765 or id == 0x746F7731 or id == 0x77697370 then
set t=pTRANS
endif
return t
endfunction

//Generated method caller for UnitDataStruct.settrans
function sc__UnitDataStruct_settrans takes unit u,boolean b returns nothing
local integer p=GetUnitUserData(u)
set s__UnitDataStruct_b0[p]=b
endfunction

//Generated method caller for UnitDataStruct.setval
function sc__UnitDataStruct_setval takes unit u,real v returns nothing
local integer p=GetUnitUserData(u)
set s__UnitDataStruct_val[p]=v
endfunction

//Generated method caller for UnitDataStruct.gettrans
function sc__UnitDataStruct_gettrans takes unit u returns boolean
local integer p=GetUnitUserData(u)
return s__UnitDataStruct_b0[p]
endfunction

//Generated method caller for UnitDataStruct.findCreepFromT
function sc__UnitDataStruct_findCreepFromT takes trigger t returns integer
local integer i=0
local integer p
loop
exitwhen i > 1000
set p=i
if s__UnitDataStruct_ondest[p] == t then
return p
endif
endloop
return 0
endfunction

//Generated method caller for UnitDataStruct.add
function sc__UnitDataStruct_add takes unit u,integer t returns integer
    set f__arg_unit1=u
    set f__arg_integer1=t
    call TriggerEvaluate(st__UnitDataStruct_add)
 return f__result_integer
endfunction

//Generated allocator of UnitDataStruct
function s__UnitDataStruct__allocate takes nothing returns integer
 local integer this=si__UnitDataStruct_F
    if (this!=0) then
        set si__UnitDataStruct_F=si__UnitDataStruct_V[this]
    else
        set si__UnitDataStruct_I=si__UnitDataStruct_I+1
        set this=si__UnitDataStruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: UnitDataStruct")
        return 0
    endif

   set s__UnitDataStruct_b0[this]=false
   set s__UnitDataStruct_recivers[this]=0
   set s__UnitDataStruct_resful[this]=0
   set s__UnitDataStruct_val[this]=0
   set s__UnitDataStruct_freeval[this]=0
   set s__UnitDataStruct_forsend[this]=0
   set s__UnitDataStruct_select[this]=true
   set s__UnitDataStruct_x[this]=0
   set s__UnitDataStruct_y[this]=0
   set s__UnitDataStruct_times[this]=0
   set s__UnitDataStruct_prima[this]=false
   set s__UnitDataStruct_intprima[this]=0
    set si__UnitDataStruct_V[this]=-1
 return this
endfunction

//Generated destructor of UnitDataStruct
function s__UnitDataStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: UnitDataStruct")
        return
    elseif (si__UnitDataStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: UnitDataStruct")
        return
    endif
    set si__UnitDataStruct_V[this]=si__UnitDataStruct_F
    set si__UnitDataStruct_F=this
endfunction

//Generated method caller for crist.find
function sc__crist_find takes unit u returns integer
local integer i=cristals___nextcr
loop
set i=i - 1
if s__crist_u[cristals___crar[i]] == u then
return cristals___crar[i]
endif
exitwhen i == 0
endloop
return 0
endfunction

//Generated allocator of crist
function s__crist__allocate takes nothing returns integer
 local integer this=si__crist_F
    if (this!=0) then
        set si__crist_F=si__crist_V[this]
    else
        set si__crist_I=si__crist_I+1
        set this=si__crist_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: crist")
        return 0
    endif

    set si__crist_V[this]=-1
 return this
endfunction

//Generated destructor of crist
function s__crist_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: crist")
        return
    elseif (si__crist_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: crist")
        return
    endif
    set si__crist_V[this]=si__crist_F
    set si__crist_F=this
endfunction

//Generated allocator of cristsender
function s__cristsender__allocate takes nothing returns integer
 local integer this=si__cristsender_F
    if (this!=0) then
        set si__cristsender_F=si__cristsender_V[this]
    else
        set si__cristsender_I=si__cristsender_I+1
        set this=si__cristsender_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: cristsender")
        return 0
    endif

    set si__cristsender_V[this]=-1
 return this
endfunction

//Generated destructor of cristsender
function s__cristsender_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: cristsender")
        return
    elseif (si__cristsender_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: cristsender")
        return
    endif
    set si__cristsender_V[this]=si__cristsender_F
    set si__cristsender_F=this
endfunction

//Generated allocator of cftstruct
function s__cftstruct__allocate takes nothing returns integer
 local integer this=si__cftstruct_F
    if (this!=0) then
        set si__cftstruct_F=si__cftstruct_V[this]
    else
        set si__cftstruct_I=si__cftstruct_I+1
        set this=si__cftstruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: cftstruct")
        return 0
    endif

    set si__cftstruct_V[this]=-1
 return this
endfunction

//Generated destructor of cftstruct
function s__cftstruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: cftstruct")
        return
    elseif (si__cftstruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: cftstruct")
        return
    endif
    set si__cftstruct_V[this]=si__cftstruct_F
    set si__cftstruct_F=this
endfunction

//Generated allocator of svod
function s__svod__allocate takes nothing returns integer
 local integer this=si__svod_F
    if (this!=0) then
        set si__svod_F=si__svod_V[this]
    else
        set si__svod_I=si__svod_I+1
        set this=si__svod_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: svod")
        return 0
    endif

   set s__svod_h[this]=1000
   set s__svod_t[this]=100
    set si__svod_V[this]=-1
 return this
endfunction

//Generated destructor of svod
function s__svod_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: svod")
        return
    elseif (si__svod_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: svod")
        return
    endif
    set si__svod_V[this]=si__svod_F
    set si__svod_F=this
endfunction

//Generated method caller for RadiusStruct.getr
function sc__RadiusStruct_getr takes unit u returns real
if GetUnitTypeId(u) == 0x746F7765 or GetUnitTypeId(u) == 0x746F7732 or GetUnitTypeId(u) == 0x746F7733 or GetUnitTypeId(u) == 0x77697370 or GetUnitTypeId(u) == 0x746F7735 then
return 550.
elseif GetUnitTypeId(u) == 0x746F7734 then
return 1200.
elseif GetUnitTypeId(u) == 0x6E303034 then
return 300.
endif
return .0
endfunction

//Generated method caller for RadiusStruct.initialize
function sc__RadiusStruct_initialize takes unit u,real r returns integer
    set f__arg_unit1=u
    set f__arg_real1=r
    call TriggerEvaluate(st__RadiusStruct_initialize)
 return f__result_integer
endfunction

//Generated method caller for RadiusStruct.Kill
function sc__RadiusStruct_Kill takes unit u returns nothing
local integer i=0
loop
exitwhen i == radiusIndicator___next
if s__RadiusStruct_u[radiusIndicator___lca[i]] == u then
set s__RadiusStruct_kill[radiusIndicator___lca[i]]=true
return
endif
set i=i + 1
endloop
endfunction

//Generated method caller for RadiusStruct.find
function sc__RadiusStruct_find takes unit u returns boolean
local integer i=0
loop
exitwhen i == radiusIndicator___next
if s__RadiusStruct_u[radiusIndicator___lca[i]] == u then
return true
endif
set i=i + 1
endloop
return false
endfunction

//Generated allocator of RadiusStruct
function s__RadiusStruct__allocate takes nothing returns integer
 local integer this=si__RadiusStruct_F
    if (this!=0) then
        set si__RadiusStruct_F=si__RadiusStruct_V[this]
    else
        set si__RadiusStruct_I=si__RadiusStruct_I+1
        set this=si__RadiusStruct_I
    endif
    if (this>340) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: RadiusStruct")
        return 0
    endif
    set s__RadiusStruct_l[this]=(this-1)*24
   set s__RadiusStruct_pauseFade[this]=false
   set s__RadiusStruct_kill[this]=false
   set s__RadiusStruct_permanent[this]=false
   set s__RadiusStruct_a[this]=0.6
    set si__RadiusStruct_V[this]=-1
 return this
endfunction

//Generated destructor of RadiusStruct
function s__RadiusStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: RadiusStruct")
        return
    elseif (si__RadiusStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: RadiusStruct")
        return
    endif
    set si__RadiusStruct_V[this]=si__RadiusStruct_F
    set si__RadiusStruct_F=this
endfunction

//Generated allocator of prima
function s__prima__allocate takes nothing returns integer
 local integer this=si__prima_F
    if (this!=0) then
        set si__prima_F=si__prima_V[this]
    else
        set si__prima_I=si__prima_I+1
        set this=si__prima_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: prima")
        return 0
    endif

   set s__prima_bonoff[this]=false
    set si__prima_V[this]=-1
 return this
endfunction

//Generated destructor of prima
function s__prima_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: prima")
        return
    elseif (si__prima_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: prima")
        return
    endif
    set si__prima_V[this]=si__prima_F
    set si__prima_F=this
endfunction

//Generated method caller for partsStruct___TowerPartStruct.init
function sc__partsStruct___TowerPartStruct_init takes integer this,unit target,integer conf returns nothing
    set f__arg_this=this
    set f__arg_unit1=target
    set f__arg_integer1=conf
    call TriggerEvaluate(st__partsStruct___TowerPartStruct_init)
endfunction

//Generated method caller for partsStruct___TowerPartStruct.applyOffset
function sc__partsStruct___TowerPartStruct_applyOffset takes integer this returns nothing
call SetUnitX(s__partsStruct___TowerPartStruct_part[this], GetUnitX(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_x[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitY(s__partsStruct___TowerPartStruct_part[this], GetUnitY(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_y[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitFacing(s__partsStruct___TowerPartStruct_part[this], s__partsStruct___PartConfigStruct_r[s__partsStruct___TowerPartStruct_config[this]])
endfunction

//Generated method caller for partsStruct___TowerPartStruct.onDestroy
function sc__partsStruct___TowerPartStruct_onDestroy takes integer this returns nothing
call RemoveUnit(s__partsStruct___TowerPartStruct_part[this])
endfunction

//Generated allocator of partsStruct___TowerPartStruct
function s__partsStruct___TowerPartStruct__allocate takes nothing returns integer
 local integer this=si__partsStruct___TowerPartStruct_F
    if (this!=0) then
        set si__partsStruct___TowerPartStruct_F=si__partsStruct___TowerPartStruct_V[this]
    else
        set si__partsStruct___TowerPartStruct_I=si__partsStruct___TowerPartStruct_I+1
        set this=si__partsStruct___TowerPartStruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: partsStruct___TowerPartStruct")
        return 0
    endif

    set si__partsStruct___TowerPartStruct_V[this]=-1
 return this
endfunction

//Generated destructor of partsStruct___TowerPartStruct
function sc__partsStruct___TowerPartStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: partsStruct___TowerPartStruct")
        return
    elseif (si__partsStruct___TowerPartStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: partsStruct___TowerPartStruct")
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__partsStruct___TowerPartStruct_onDestroy)
    set si__partsStruct___TowerPartStruct_V[this]=si__partsStruct___TowerPartStruct_F
    set si__partsStruct___TowerPartStruct_F=this
endfunction

//Generated method caller for partsStruct_TowerSetStruct.addPart
function sc__partsStruct_TowerSetStruct_addPart takes integer this,integer part returns nothing
set s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+s__partsStruct_TowerSetStruct_parts_pointer[this]]=part
set s__partsStruct_TowerSetStruct_parts_pointer[this]=s__partsStruct_TowerSetStruct_parts_pointer[this] + 1
endfunction

//Generated method caller for partsStruct_TowerSetStruct.onDestroy
function sc__partsStruct_TowerSetStruct_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__partsStruct_TowerSetStruct_onDestroy)
endfunction

//Generated allocator of partsStruct_TowerSetStruct
function s__partsStruct_TowerSetStruct__allocate takes nothing returns integer
 local integer this=si__partsStruct_TowerSetStruct_F
    if (this!=0) then
        set si__partsStruct_TowerSetStruct_F=si__partsStruct_TowerSetStruct_V[this]
    else
        set si__partsStruct_TowerSetStruct_I=si__partsStruct_TowerSetStruct_I+1
        set this=si__partsStruct_TowerSetStruct_I
    endif
    if (this>408) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: partsStruct_TowerSetStruct")
        return 0
    endif
    set s__partsStruct_TowerSetStruct_parts[this]=(this-1)*20
   set s__partsStruct_TowerSetStruct_parts_pointer[this]=0
    set si__partsStruct_TowerSetStruct_V[this]=-1
 return this
endfunction

//Generated destructor of partsStruct_TowerSetStruct
function sc__partsStruct_TowerSetStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: partsStruct_TowerSetStruct")
        return
    elseif (si__partsStruct_TowerSetStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: partsStruct_TowerSetStruct")
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__partsStruct_TowerSetStruct_onDestroy)
    set si__partsStruct_TowerSetStruct_V[this]=si__partsStruct_TowerSetStruct_F
    set si__partsStruct_TowerSetStruct_F=this
endfunction

//Generated method caller for partsStruct___PartConfigStruct.setData
function sc__partsStruct___PartConfigStruct_setData takes integer this,integer partId,integer minLevel,integer maxLevel returns nothing
set s__partsStruct___PartConfigStruct_partId[this]=partId
set s__partsStruct___PartConfigStruct_minLevel[this]=minLevel
set s__partsStruct___PartConfigStruct_maxLevel[this]=maxLevel
endfunction

//Generated allocator of partsStruct___PartConfigStruct
function s__partsStruct___PartConfigStruct__allocate takes nothing returns integer
 local integer this=si__partsStruct___PartConfigStruct_F
    if (this!=0) then
        set si__partsStruct___PartConfigStruct_F=si__partsStruct___PartConfigStruct_V[this]
    else
        set si__partsStruct___PartConfigStruct_I=si__partsStruct___PartConfigStruct_I+1
        set this=si__partsStruct___PartConfigStruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: partsStruct___PartConfigStruct")
        return 0
    endif

   set s__partsStruct___PartConfigStruct_x[this]=0
   set s__partsStruct___PartConfigStruct_y[this]=0
   set s__partsStruct___PartConfigStruct_r[this]=0
    set si__partsStruct___PartConfigStruct_V[this]=-1
 return this
endfunction

//Generated destructor of partsStruct___PartConfigStruct
function s__partsStruct___PartConfigStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: partsStruct___PartConfigStruct")
        return
    elseif (si__partsStruct___PartConfigStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: partsStruct___PartConfigStruct")
        return
    endif
    set si__partsStruct___PartConfigStruct_V[this]=si__partsStruct___PartConfigStruct_F
    set si__partsStruct___PartConfigStruct_F=this
endfunction

//Generated method caller for PartSetConfigStruct.getTargetLevel
function sc__PartSetConfigStruct_getTargetLevel takes integer this,unit target returns integer
    set f__arg_this=this
    set f__arg_unit1=target
    call TriggerEvaluate(st__PartSetConfigStruct_getTargetLevel)
 return f__result_integer
endfunction

//Generated allocator of PartSetConfigStruct
function s__PartSetConfigStruct__allocate takes nothing returns integer
 local integer this=si__PartSetConfigStruct_F
    if (this!=0) then
        set si__PartSetConfigStruct_F=si__PartSetConfigStruct_V[this]
    else
        set si__PartSetConfigStruct_I=si__PartSetConfigStruct_I+1
        set this=si__PartSetConfigStruct_I
    endif
    if (this>326) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: PartSetConfigStruct")
        return 0
    endif
    set s__PartSetConfigStruct_towerIDS[this]=(this-1)*15
    set s__PartSetConfigStruct_parts[this]=(this-1)*25
   set s__PartSetConfigStruct_tower_pointer[this]=0
   set s__PartSetConfigStruct_parts_pointer[this]=0
    set si__PartSetConfigStruct_V[this]=-1
 return this
endfunction

//Generated destructor of PartSetConfigStruct
function s__PartSetConfigStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: PartSetConfigStruct")
        return
    elseif (si__PartSetConfigStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: PartSetConfigStruct")
        return
    endif
    set si__PartSetConfigStruct_V[this]=si__PartSetConfigStruct_F
    set si__PartSetConfigStruct_F=this
endfunction

//Generated method caller for Miss.Create
function sc__Miss_Create takes integer Unitid,unit From,real Speed,unit Target returns integer
    set f__arg_integer1=Unitid
    set f__arg_unit1=From
    set f__arg_real1=Speed
    set f__arg_unit2=Target
    call TriggerEvaluate(st__Miss_Create)
 return f__result_integer
endfunction

//Generated method caller for Miss.ModBuff
function sc__Miss_ModBuff takes integer this,integer tp,real time returns nothing
set s__Miss_buf[this]=true
set s__Miss_bufftype[this]=tp
set s__Miss_bufftime[this]=time
endfunction

//Generated method caller for Miss.ModDmg
function sc__Miss_ModDmg takes integer this,real Dmg,attacktype At,boolean Splash,real SRad returns nothing
set s__Miss_bdmg[this]=true
set s__Miss_dmg[this]=Dmg
set s__Miss_at[this]=At
set s__Miss_splash[this]=Splash
set s__Miss_srad[this]=SRad
endfunction

//Generated allocator of Miss
function s__Miss__allocate takes nothing returns integer
 local integer this=si__Miss_F
    if (this!=0) then
        set si__Miss_F=si__Miss_V[this]
    else
        set si__Miss_I=si__Miss_I+1
        set this=si__Miss_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: Miss")
        return 0
    endif

   set s__Miss_auto[this]=false
   set s__Miss_bdmg[this]=false
   set s__Miss_splash[this]=false
   set s__Miss_eff[this]=false
   set s__Miss_buf[this]=false
    set si__Miss_V[this]=-1
 return this
endfunction

//Generated destructor of Miss
function s__Miss_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: Miss")
        return
    elseif (si__Miss_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: Miss")
        return
    endif
    set si__Miss_V[this]=si__Miss_F
    set si__Miss_F=this
endfunction

//Generated allocator of ManaLinkStruct
function s__ManaLinkStruct__allocate takes nothing returns integer
 local integer this=si__ManaLinkStruct_F
    if (this!=0) then
        set si__ManaLinkStruct_F=si__ManaLinkStruct_V[this]
    else
        set si__ManaLinkStruct_I=si__ManaLinkStruct_I+1
        set this=si__ManaLinkStruct_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ManaLinkStruct")
        return 0
    endif

   set s__ManaLinkStruct_struct_index[this]=0
   set s__ManaLinkStruct_send[this]=0
   set s__ManaLinkStruct_act[this]=false
    set si__ManaLinkStruct_V[this]=-1
 return this
endfunction

//Generated destructor of ManaLinkStruct
function s__ManaLinkStruct_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ManaLinkStruct")
        return
    elseif (si__ManaLinkStruct_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ManaLinkStruct")
        return
    endif
    set si__ManaLinkStruct_V[this]=si__ManaLinkStruct_F
    set si__ManaLinkStruct_F=this
endfunction

//Generated allocator of gamma
function s__gamma__allocate takes nothing returns integer
 local integer this=si__gamma_F
    if (this!=0) then
        set si__gamma_F=si__gamma_V[this]
    else
        set si__gamma_I=si__gamma_I+1
        set this=si__gamma_I
    endif
    if (this>162) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: gamma")
        return 0
    endif
    set s__gamma_l[this]=(this-1)*50
   set s__gamma_time[this]=50
    set si__gamma_V[this]=-1
 return this
endfunction

//Generated destructor of gamma
function s__gamma_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: gamma")
        return
    elseif (si__gamma_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: gamma")
        return
    endif
    set si__gamma_V[this]=si__gamma_F
    set si__gamma_F=this
endfunction

//Generated allocator of epic
function s__epic__allocate takes nothing returns integer
 local integer this=si__epic_F
    if (this!=0) then
        set si__epic_F=si__epic_V[this]
    else
        set si__epic_I=si__epic_I+1
        set this=si__epic_I
    endif
    if (this>162) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: epic")
        return 0
    endif
    set s__epic_l[this]=(this-1)*50
   set s__epic_time[this]=50
    set si__epic_V[this]=-1
 return this
endfunction

//Generated destructor of epic
function s__epic_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: epic")
        return
    elseif (si__epic_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: epic")
        return
    endif
    set si__epic_V[this]=si__epic_F
    set si__epic_F=this
endfunction

//Generated method caller for section.REM
function sc__section_REM takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__section_REM)
endfunction

//Generated method caller for section.ADD
function sc__section_ADD takes integer W,real x,real y,integer last,integer next,integer iw returns integer
    set f__arg_integer1=W
    set f__arg_real1=x
    set f__arg_real2=y
    set f__arg_integer2=last
    set f__arg_integer3=next
    set f__arg_integer4=iw
    call TriggerEvaluate(st__section_ADD)
 return f__result_integer
endfunction

//Generated method caller for section.INIT
function sc__section_INIT takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__section_INIT)
endfunction

//Generated allocator of section
function s__section__allocate takes nothing returns integer
 local integer this=si__section_F
    if (this!=0) then
        set si__section_F=si__section_V[this]
    else
        set si__section_I=si__section_I+1
        set this=si__section_I
    endif
    if (this>2046) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: section")
        return 0
    endif
    set s__section_l[this]=(this-1)*4
    set si__section_V[this]=-1
 return this
endfunction

//Generated destructor of section
function s__section_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: section")
        return
    elseif (si__section_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: section")
        return
    endif
    set si__section_V[this]=si__section_F
    set si__section_F=this
endfunction

//Generated method caller for wall.Findw
function sc__wall_Findw takes unit u returns integer
local integer i=0
loop
exitwhen i == energywall___NEXTW
if s__wall_base[energywall___WALL[i]] == u then
return energywall___WALL[i]
endif
set i=i + 1
endloop
return 0
endfunction

//Generated method caller for wall.ADD
function sc__wall_ADD takes unit u returns nothing
    set f__arg_unit1=u
    call TriggerEvaluate(st__wall_ADD)
endfunction

//Generated allocator of wall
function s__wall__allocate takes nothing returns integer
 local integer this=si__wall_F
    if (this!=0) then
        set si__wall_F=si__wall_V[this]
    else
        set si__wall_I=si__wall_I+1
        set this=si__wall_I
    endif
    if (this>743) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: wall")
        return 0
    endif
    set s__wall_section[this]=(this-1)*11
   set s__wall_nextS[this]=0
   set s__wall_MP[this]=1.5
   set s__wall_DMG[this]=5.8
    set si__wall_V[this]=-1
 return this
endfunction

//Generated destructor of wall
function s__wall_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: wall")
        return
    elseif (si__wall_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: wall")
        return
    endif
    set si__wall_V[this]=si__wall_F
    set si__wall_F=this
endfunction

//Generated allocator of ascii
function s__ascii__allocate takes nothing returns integer
 local integer this=si__ascii_F
    if (this!=0) then
        set si__ascii_F=si__ascii_V[this]
    else
        set si__ascii_I=si__ascii_I+1
        set this=si__ascii_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: ascii")
        return 0
    endif

    set si__ascii_V[this]=-1
 return this
endfunction

//Generated destructor of ascii
function s__ascii_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: ascii")
        return
    elseif (si__ascii_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: ascii")
        return
    endif
    set si__ascii_V[this]=si__ascii_F
    set si__ascii_F=this
endfunction

//Generated method caller for sendlig.add
function sc__sendlig_add takes unit from,unit to,integer ltype returns integer
    set f__arg_unit1=from
    set f__arg_unit2=to
    set f__arg_integer1=ltype
    call TriggerEvaluate(st__sendlig_add)
 return f__result_integer
endfunction

//Generated method caller for sendlig.rem
function sc__sendlig_rem takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__sendlig_rem)
endfunction

//Generated allocator of sendlig
function s__sendlig__allocate takes nothing returns integer
 local integer this=si__sendlig_F
    if (this!=0) then
        set si__sendlig_F=si__sendlig_V[this]
    else
        set si__sendlig_I=si__sendlig_I+1
        set this=si__sendlig_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: sendlig")
        return 0
    endif

   set s__sendlig_b[this]=true
   set s__sendlig_move[this]=false
   set s__sendlig_d1[this]=0
   set s__sendlig_d2[this]=0
   set s__sendlig_dist[this]=0
    set si__sendlig_V[this]=-1
 return this
endfunction

//Generated destructor of sendlig
function s__sendlig_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: sendlig")
        return
    elseif (si__sendlig_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: sendlig")
        return
    endif
    set si__sendlig_V[this]=si__sendlig_F
    set si__sendlig_F=this
endfunction

//Generated allocator of lig
function s__lig__allocate takes nothing returns integer
 local integer this=si__lig_F
    if (this!=0) then
        set si__lig_F=si__lig_V[this]
    else
        set si__lig_I=si__lig_I+1
        set this=si__lig_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: lig")
        return 0
    endif

   set s__lig_sendb[this]=false
   set s__lig_cicles[this]=0
    set si__lig_V[this]=-1
 return this
endfunction

//Generated destructor of lig
function s__lig_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: lig")
        return
    elseif (si__lig_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: lig")
        return
    endif
    set si__lig_V[this]=si__lig_F
    set si__lig_F=this
endfunction

//Generated allocator of towertype
function s__towertype__allocate takes nothing returns integer
 local integer this=si__towertype_F
    if (this!=0) then
        set si__towertype_F=si__towertype_V[this]
    else
        set si__towertype_I=si__towertype_I+1
        set this=si__towertype_I
    endif
    if (this>1364) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: towertype")
        return 0
    endif
    set s__towertype_idL[this]=(this-1)*6
   set s__towertype_abil[this]=0x67346773
   set s__towertype_ordertype[this]=0
    set si__towertype_V[this]=-1
 return this
endfunction

//Generated destructor of towertype
function s__towertype_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: towertype")
        return
    elseif (si__towertype_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: towertype")
        return
    endif
    set si__towertype_V[this]=si__towertype_F
    set si__towertype_F=this
endfunction

//Generated method caller for rock.onDeath
function sc__rock_onDeath takes nothing returns nothing
    call TriggerEvaluate(st__rock_onDeath)
endfunction

//Generated allocator of rock
function s__rock__allocate takes nothing returns integer
 local integer this=si__rock_F
    if (this!=0) then
        set si__rock_F=si__rock_V[this]
    else
        set si__rock_I=si__rock_I+1
        set this=si__rock_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: rock")
        return 0
    endif

    set si__rock_V[this]=-1
 return this
endfunction

//Generated destructor of rock
function s__rock_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: rock")
        return
    elseif (si__rock_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: rock")
        return
    endif
    set si__rock_V[this]=si__rock_F
    set si__rock_F=this
endfunction

//Generated allocator of destsave
function s__destsave__allocate takes nothing returns integer
 local integer this=si__destsave_F
    if (this!=0) then
        set si__destsave_F=si__destsave_V[this]
    else
        set si__destsave_I=si__destsave_I+1
        set this=si__destsave_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: destsave")
        return 0
    endif

    set si__destsave_V[this]=-1
 return this
endfunction

//Generated destructor of destsave
function s__destsave_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: destsave")
        return
    elseif (si__destsave_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: destsave")
        return
    endif
    set si__destsave_V[this]=si__destsave_F
    set si__destsave_F=this
endfunction

//Generated allocator of pair
function s__pair__allocate takes nothing returns integer
 local integer this=si__pair_F
    if (this!=0) then
        set si__pair_F=si__pair_V[this]
    else
        set si__pair_I=si__pair_I+1
        set this=si__pair_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: pair")
        return 0
    endif

   set s__pair_x[this]=0
   set s__pair_y[this]=0
   set s__pair_z[this]=0
    set si__pair_V[this]=-1
 return this
endfunction

//Generated destructor of pair
function s__pair_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: pair")
        return
    elseif (si__pair_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: pair")
        return
    endif
    set si__pair_V[this]=si__pair_F
    set si__pair_F=this
endfunction

//Generated method caller for vec.onDestroy
function sc__vec_onDestroy takes integer this returns nothing
set veccount=veccount - 1
endfunction

//Generated allocator of vec
function s__vec__allocate takes nothing returns integer
 local integer this=si__vec_F
    if (this!=0) then
        set si__vec_F=si__vec_V[this]
    else
        set si__vec_I=si__vec_I+1
        set this=si__vec_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: vec")
        return 0
    endif

    set si__vec_V[this]=-1
 return this
endfunction

//Generated destructor of vec
function sc__vec_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: vec")
        return
    elseif (si__vec_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: vec")
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__vec_onDestroy)
    set si__vec_V[this]=si__vec_F
    set si__vec_F=this
endfunction

//Generated allocator of aurabuff
function s__aurabuff__allocate takes nothing returns integer
 local integer this=si__aurabuff_F
    if (this!=0) then
        set si__aurabuff_F=si__aurabuff_V[this]
    else
        set si__aurabuff_I=si__aurabuff_I+1
        set this=si__aurabuff_I
    endif
    if (this>8190) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Unable to allocate id for an object of type: aurabuff")
        return 0
    endif

   set s__aurabuff_time[this]=0
    set si__aurabuff_V[this]=-1
 return this
endfunction

//Generated destructor of aurabuff
function s__aurabuff_deallocate takes integer this returns nothing
    if this==null then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: aurabuff")
        return
    elseif (si__aurabuff_V[this]!=-1) then
            call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: aurabuff")
        return
    endif
    set si__aurabuff_V[this]=si__aurabuff_F
    set si__aurabuff_F=this
endfunction

//library cjLib75hJKJ374s4e597nba9o7w45gf:
function cj_group_copy_75hJKJ3745gf takes nothing returns nothing
//# optional
call GroupAddUnit(cj_tmpgr_copy_nw509ert7, GetEnumUnit())
endfunction

//library cjLib75hJKJ374s4e597nba9o7w45gf ends
//library cjLibw560nbs9b8nse46703948:
function cj_true_a497bnsor7 takes nothing returns boolean
//# optional
return true
endfunction
function cjLibw560nbs9b8nse46703948___init takes nothing returns nothing
set cj_true_bool_4896bnao87=Condition(function cj_true_a497bnsor7)
endfunction

//library cjLibw560nbs9b8nse46703948 ends
//library Effect:
function s__Effect_REM takes integer this returns nothing
set Effect___NEXT=Effect___NEXT - 1
set s__Effect_i[Effect___EFF[Effect___NEXT]]=s__Effect_i[this]
set Effect___EFF[s__Effect_i[this]]=Effect___EFF[Effect___NEXT]
call s__Effect_deallocate(this)
endfunction
function s__Effect_FIND takes unit u returns boolean
local integer i=0
loop
exitwhen i >= Effect___NEXT
if s__Effect_u[Effect___EFF[i]] == u then
return true
endif
set i=i + 1
endloop
return false
endfunction
function s__Effect_ADD takes unit u,real time,string attach,string dir returns nothing
local integer A
if s__Effect_FIND(u) then
return
endif
set A=s__Effect__allocate()
set s__Effect_u[A]=u
call DestroyEffect(AddSpecialEffectTargetUnitBJ(attach, u, dir))
set s__Effect_offset[A]=time
if lcpu[GetPlayerId(GetLocalPlayer())] then
endif
set s__Effect_i[A]=Effect___NEXT
set Effect___EFF[Effect___NEXT]=A
set Effect___NEXT=Effect___NEXT + 1
endfunction
function s__Effect_ACT takes integer this returns boolean
if s__Effect_time[this] <= s__Effect_offset[this] and IsUnitAliveBJ(s__Effect_u[this]) then
set s__Effect_time[this]=s__Effect_time[this] + Effect___QANT
return true
endif
return false
endfunction
function s__Effect_go takes nothing returns nothing
local integer i=0
loop
exitwhen i >= Effect___NEXT
if s__Effect_ACT(Effect___EFF[i]) then
set i=i + 1
else
call s__Effect_REM(Effect___EFF[i])
endif
endloop
endfunction
function s__Effect_onInit takes nothing returns nothing
call TimerStart(CreateTimer(), Effect___QANT, true, function s__Effect_go)
endfunction

//library Effect ends
//library aurabuff:
function s__aurabuff_REM takes integer this returns nothing
call RemoveUnit(s__aurabuff_b[this])
set aurabuff___NEXT=aurabuff___NEXT - 1
set s__aurabuff_i[aurabuff___AURA[aurabuff___NEXT]]=s__aurabuff_i[this]
set aurabuff___AURA[s__aurabuff_i[this]]=aurabuff___AURA[aurabuff___NEXT]
call s__aurabuff_deallocate(this)
endfunction
function s__aurabuff_FIND takes unit u returns boolean
local integer i=0
loop
exitwhen i >= aurabuff___NEXT
if s__aurabuff_u[aurabuff___AURA[i]] == u then
return true
endif
set i=i + 1
endloop
return false
endfunction
function s__aurabuff_ADD takes unit u,real time,integer i returns nothing
local integer A
if s__aurabuff_FIND(u) then
return
endif
set A=s__aurabuff__allocate()
set s__aurabuff_u[A]=u
set s__aurabuff_b[A]=CreateUnit(GetOwningPlayer(u), 0x64756D31, GetUnitX(u), GetUnitY(u), 0)
call SetUnitAbilityLevel(s__aurabuff_b[A], 0x4130304B, i)
set s__aurabuff_offset[A]=time + 0.4
set s__aurabuff_i[A]=aurabuff___NEXT
set aurabuff___AURA[aurabuff___NEXT]=A
set aurabuff___NEXT=aurabuff___NEXT + 1
endfunction
function s__aurabuff_ACT takes integer this returns boolean
if s__aurabuff_time[this] <= s__aurabuff_offset[this] and IsUnitAliveBJ(s__aurabuff_u[this]) then
set s__aurabuff_time[this]=s__aurabuff_time[this] + aurabuff___QANT
call SetUnitX(s__aurabuff_b[this], GetUnitX(s__aurabuff_u[this]))
call SetUnitY(s__aurabuff_b[this], GetUnitY(s__aurabuff_u[this]))
return true
endif
return false
endfunction
function s__aurabuff_go takes nothing returns nothing
local integer i=0
loop
exitwhen i >= aurabuff___NEXT
if s__aurabuff_ACT(aurabuff___AURA[i]) then
set i=i + 1
else
call s__aurabuff_REM(aurabuff___AURA[i])
endif
endloop
endfunction
function s__aurabuff_onInit takes nothing returns nothing
call TimerStart(CreateTimer(), aurabuff___QANT, true, function s__aurabuff_go)
endfunction

//library aurabuff ends
//library general:
function confirm takes real a,real min,real max returns boolean
if a > min and a < max then
return true
endif
return false
endfunction
function GetPointZ takes real x,real y returns real
call MoveLocation(general___l, x, y)
return GetLocationZ(general___l)
endfunction
function GetUnitZ takes unit u returns real
call MoveLocation(general___l, GetUnitX(u), GetUnitY(u))
return GetUnitFlyHeight(u) + GetLocationZ(general___l)
endfunction
function SetUnitZ takes unit u,real z returns nothing
call MoveLocation(general___l, GetUnitX(u), GetUnitY(u))
call SetUnitFlyHeight(u, z - GetLocationZ(general___l), 0.)
endfunction
function s__vec_create takes real x,real y,real z returns integer
local integer v=s__vec__allocate()
set s__vec_x[v]=x
set s__vec_y[v]=y
set s__vec_z[v]=z
set veccount=veccount + 1
return v
endfunction
function s__vec_onDestroy takes integer this returns nothing
set veccount=veccount - 1
endfunction

//Generated destructor of vec
function s__vec_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: vec")
        return
    elseif (si__vec_V[this]!=-1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: vec")
        return
    endif
    call s__vec_onDestroy(this)
    set si__vec_V[this]=si__vec_F
    set si__vec_F=this
endfunction
function s__vec_past takes integer this,integer v returns nothing
set s__vec_x[this]=s__vec_x[v]
set s__vec_y[this]=s__vec_y[v]
set s__vec_z[this]=s__vec_z[v]
endfunction
function s__vec_u2v takes unit u returns integer
local integer v=s__vec__allocate()
set s__vec_x[v]=GetUnitX(u)
set s__vec_y[v]=GetUnitY(u)
set s__vec_z[v]=GetUnitZ(u)
set veccount=veccount + 1
return v
endfunction
function s__vec_fromunit takes integer this,unit u returns nothing
set s__vec_x[this]=GetUnitX(u)
set s__vec_y[this]=GetUnitY(u)
set s__vec_z[this]=GetUnitZ(u)
endfunction
function s__vec_tounit takes integer this,unit u returns nothing
call SetUnitX(u, s__vec_x[this])
call SetUnitY(u, s__vec_y[this])
call SetUnitZ(u , s__vec_z[this])
endfunction
function s__vec_sum takes integer this,integer v returns nothing
set s__vec_x[this]=s__vec_x[this] + s__vec_x[v]
set s__vec_y[this]=s__vec_y[this] + s__vec_y[v]
set s__vec_z[this]=s__vec_z[this] + s__vec_z[v]
endfunction
function s__vec_setsub takes integer this,integer v1,integer v2 returns nothing
set s__vec_x[this]=s__vec_x[v2] - s__vec_x[v1]
set s__vec_y[this]=s__vec_y[v2] - s__vec_y[v1]
set s__vec_z[this]=s__vec_z[v2] - s__vec_z[v1]
endfunction
function s__vec_mul takes integer this,real r returns nothing
set s__vec_x[this]=r * s__vec_x[this]
set s__vec_y[this]=r * s__vec_y[this]
set s__vec_z[this]=r * s__vec_z[this]
endfunction
function s__vec_getl takes integer this returns real
return SquareRoot(s__vec_x[this] * s__vec_x[this] + s__vec_y[this] * s__vec_y[this] + s__vec_z[this] * s__vec_z[this])
endfunction
function s__vec_setl takes integer this,real r returns nothing
local real l__general___l=s__vec_getl(this)
if l__general___l > 0 then
call s__vec_mul(this,r / l__general___l)
endif
endfunction
function s__vec_normalize takes integer this returns nothing
local real l__general___l=s__vec_getl(this)
if l__general___l > 0 then
call s__vec_mul(this,1 / l__general___l)
endif
endfunction
function s__pair_fromunit takes integer this,unit u returns nothing
set s__pair_x[this]=GetUnitX(u)
set s__pair_y[this]=GetUnitY(u)
endfunction
function s__pair_past takes integer this,integer p returns nothing
set s__pair_x[this]=s__pair_x[p]
set s__pair_y[this]=s__pair_y[p]
set s__pair_z[this]=s__pair_z[p]
endfunction
function s__pair_tounit takes integer this,unit u returns nothing
call SetUnitX(u, s__pair_x[this])
call SetUnitY(u, s__pair_y[this])
endfunction
function s__pair_u2p takes unit u returns integer
local integer p=s__pair__allocate()
set s__pair_x[p]=GetUnitX(u)
set s__pair_y[p]=GetUnitY(u)
set s__pair_z[p]=GetUnitZ(u)
return p
endfunction
function s__pair_u2b takes integer this,unit u returns boolean
if GetUnitX(u) == s__pair_x[this] and GetUnitY(u) == s__pair_y[this] then
return true
endif
return false
endfunction
function s__pair_polar takes integer this,real dist,real angle returns nothing
set s__pair_x[this]=s__pair_x[this] + dist * Cos(angle * bj_DEGTORAD)
set s__pair_y[this]=s__pair_y[this] + dist * Sin(angle * bj_DEGTORAD)
endfunction
function anglepair takes integer a,integer b returns real
return bj_RADTODEG * Atan2(s__pair_y[b] - s__pair_y[a], s__pair_x[b] - s__pair_x[a])
endfunction
function angleunit takes unit a,unit b returns real
return bj_RADTODEG * Atan2(GetUnitY(b) - GetUnitY(a), GetUnitX(b) - GetUnitX(a))
endfunction
function polarunit takes unit from,unit to,unit wisp,real d returns nothing
local real a=angleunit(from , to)
local real x=GetUnitX(from) + d * Cos(a * bj_DEGTORAD)
local real y=GetUnitY(from) + d * Sin(a * bj_DEGTORAD)
call SetUnitX(wisp, x)
call SetUnitY(wisp, y)
endfunction
function setmana takes unit whichUnit,real newValue returns nothing
call SetUnitState(whichUnit, UNIT_STATE_MANA, newValue)
endfunction
function getmana takes unit whichUnit returns real
return GetUnitState(whichUnit, UNIT_STATE_MANA)
endfunction
function addmana takes unit whichUnit,real newValue returns nothing
call setmana(whichUnit , getmana(whichUnit) + newValue)
endfunction
function submana takes unit whichUnit,real newValue returns nothing
call setmana(whichUnit , getmana(whichUnit) - newValue)
endfunction
function getmax takes unit whichUnit returns real
return GetUnitState(whichUnit, UNIT_STATE_MAX_MANA)
endfunction
function getgold takes player p returns integer
return GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
endfunction
function setgold takes player p,integer i returns nothing
call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, i)
endfunction
function addgold takes player p,integer i returns nothing
call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, getgold(p) + i)
endfunction
function MaxStateModifierID takes unitstate u returns integer
if u == UNIT_STATE_MAX_LIFE then
return 0x41303030
elseif u == UNIT_STATE_MAX_MANA then
return 0x7365746D
endif
return 0
endfunction
function SetUnitMaxState takes unit u,unitstate us,integer val returns nothing
local integer i=MaxStateModifierID(us)
local integer c=val - R2I(GetUnitState(u, us))
if i == 0 then
return
endif
if c > 0 then
loop
exitwhen c == 0
call UnitAddAbility(u, i)
if c >= 100 then
set c=c - 100
call SetUnitAbilityLevel(u, i, 4)
elseif c >= 10 then
set c=c - 10
call SetUnitAbilityLevel(u, i, 3)
else
set c=c - 1
call SetUnitAbilityLevel(u, i, 2)
endif
call UnitRemoveAbility(u, i)
endloop
elseif c < 0 then
set c=- c
loop
exitwhen c == 0
call UnitAddAbility(u, i)
if c >= 100 then
set c=c - 100
call SetUnitAbilityLevel(u, i, 7)
elseif c >= 10 then
set c=c - 10
call SetUnitAbilityLevel(u, i, 6)
else
set c=c - 1
call SetUnitAbilityLevel(u, i, 5)
endif
call UnitRemoveAbility(u, i)
endloop
endif
endfunction
function setmax takes unit whichUnit,real val returns nothing
call SetUnitMaxState(whichUnit , UNIT_STATE_MAX_MANA , R2I(val))
endfunction
function trace takes string s returns nothing
local integer i=0
loop
call DisplayTimedTextToPlayer(Player(i), 0, 0, 10, s)
set i=i + 1
exitwhen i == bj_MAX_PLAYERS
endloop
endfunction
function print takes string s returns nothing
call BJDebugMsg(s)
endfunction
function print1 takes string s returns nothing
local integer i=0
loop
call DisplayTimedTextToPlayer(Player(i), 0, 0, 10, s)
set i=i + 1
exitwhen i == bj_MAX_PLAYERS
endloop
endfunction
function distp takes integer a,integer b returns real
local real dx=s__pair_x[b] - s__pair_x[a]
local real dy=s__pair_y[b] - s__pair_y[a]
return SquareRoot(dx * dx + dy * dy)
endfunction
function distcord takes real Xa,real Ya,real Xb,real Yb returns real
local real dx=Xb - Xa
local real dy=Yb - Ya
return SquareRoot(dx * dx + dy * dy)
endfunction
function DistanceBetweenWidgets takes widget a,widget b returns real
local real dx=GetWidgetX(b) - GetWidgetX(a)
local real dy=GetWidgetY(b) - GetWidgetY(a)
return SquareRoot(dx * dx + dy * dy)
endfunction
function B2S takes boolean b returns string
if b == true then
return "true"
endif
return "false"
endfunction
function GroupAddUnitsInTriangle_AngleCheck takes real angle,real angle1,real angle2,real PI2 returns boolean
local real x
if ( angle1 > angle2 ) then
set x=angle1
set angle1=angle2
set angle2=x
endif
if ( angle2 - angle1 > angle1 - ( angle2 - PI2 ) ) then
set angle2=angle2 - PI2
if ( angle < bj_PI ) then
set angle=angle - PI2
endif
return ( angle >= angle2 ) and ( angle <= angle1 )
endif
return ( angle >= angle1 ) and ( angle <= angle2 )
endfunction
function GetRectThatLimitsTriangle takes real x1,real y1,real x2,real y2,real x3,real y3 returns rect
local real maxx
local real minx
if ( x1 > x2 ) then
if ( x2 > x3 ) then
set maxx=x1
set minx=x3
elseif ( x3 > x1 ) then
set maxx=x3
set minx=x2
else
set maxx=x1
set minx=x2
endif
elseif ( x1 > x3 ) then
set maxx=x2
set minx=x3
elseif ( x3 > x2 ) then
set maxx=x3
set minx=x1
else
set maxx=x2
set minx=x1
endif
if ( y1 > y2 ) then
if ( y2 > y3 ) then
return Rect(minx, y3, maxx, y1)
elseif ( y3 > y1 ) then
return Rect(minx, y2, maxx, y3)
else
return Rect(minx, y2, maxx, y1)
endif
elseif ( y1 > y3 ) then
return Rect(minx, y3, maxx, y2)
elseif ( y3 > y2 ) then
return Rect(minx, y1, maxx, y3)
endif
return Rect(minx, y1, maxx, y2)
endfunction
function GroupAddUnitsInTriangle takes group whichGroup,real x1,real y1,real x2,real y2,real x3,real y3 returns nothing
local rect semi=GetRectThatLimitsTriangle(x1 , y1 , x2 , y2 , x3 , y3)
local group inrect=CreateGroup()
local unit picked
local real x
local real y
local real alpha=Atan2(y2 - y1, x2 - x1)
local real beta=Atan2(y3 - y1, x3 - x1)
local real gama=Atan2(y1 - y2, x1 - x2)
local real delta=Atan2(y3 - y2, x3 - x2)
local real PI2=bj_PI + bj_PI
call GroupEnumUnitsInRect(inrect, semi, null)
loop
set picked=FirstOfGroup(inrect)
exitwhen picked == null
set x=GetUnitX(picked)
set y=GetUnitY(picked)
if IsUnitInGroup(picked, whichGroup) then
elseif ( GroupAddUnitsInTriangle_AngleCheck(Atan2(y - y1, x - x1) , alpha , beta , PI2) and GroupAddUnitsInTriangle_AngleCheck(Atan2(y - y2, x - x2) , gama , delta , PI2) ) then
call GroupAddUnit(whichGroup, picked)
endif
call GroupRemoveUnit(inrect, picked)
endloop
call RemoveRect(semi)
call DestroyGroup(inrect)
set whichGroup=null
set picked=null
set semi=null
set inrect=null
endfunction

//library general ends
//library rock:
function s__destsave_add takes destructable d returns nothing
local integer ds=s__destsave__allocate()
set s__destsave_d[ds]=d
set s__destsave_x[ds]=GetDestructableX(d)
set s__destsave_y[ds]=GetDestructableY(d)
set s__destsave_id[ds]=GetDestructableTypeId(d)
set dsa[nextdsa]=ds
set nextdsa=nextdsa + 1
set s__destsave_t[ds]=CreateTrigger()
call TriggerRegisterDeathEvent(s__destsave_t[ds], d)
call TriggerAddAction(s__destsave_t[ds], function sc__rock_onDeath)
endfunction
function s__destsave_renu takes nothing returns nothing
local integer i=0
local real m
loop
exitwhen i == nextdsa
set m=0.5
if s__destsave_id[dsa[i]] == 0x42303033 then
set m=0.25
elseif s__destsave_id[dsa[i]] == 0x42303034 then
set m=0.7
elseif s__destsave_id[dsa[i]] == 0x47547477 then
set m=GetRandomReal(0.5, 1.2)
endif
if s__destsave_id[dsa[i]] == 0x626C6F63 then
if Diff == 0 and ( IsDestructableDeadBJ(s__destsave_d[dsa[i]]) or s__destsave_d[dsa[i]] == null ) then
call RemoveDestructable(s__destsave_d[dsa[i]])
set s__destsave_d[dsa[i]]=CreateDestructable(s__destsave_id[dsa[i]], s__destsave_x[dsa[i]], s__destsave_y[dsa[i]], GetRandomReal(1, 340), m, GetRandomInt(1, 4))
elseif Diff != 0 then
call RemoveDestructable(s__destsave_d[dsa[i]])
endif
elseif IsDestructableDeadBJ(s__destsave_d[dsa[i]]) then
set s__destsave_d[dsa[i]]=CreateDestructable(s__destsave_id[dsa[i]], s__destsave_x[dsa[i]], s__destsave_y[dsa[i]], GetRandomReal(1, 340), m, GetRandomInt(1, 4))
call TriggerRegisterDeathEvent(s__destsave_t[dsa[i]], s__destsave_d[dsa[i]])
elseif GetDestructableTypeId(s__destsave_d[dsa[i]]) != s__destsave_id[dsa[i]] then
call RemoveDestructable(s__destsave_d[dsa[i]])
set s__destsave_d[dsa[i]]=CreateDestructable(s__destsave_id[dsa[i]], s__destsave_x[dsa[i]], s__destsave_y[dsa[i]], GetRandomReal(1, 340), m, GetRandomInt(1, 2))
call TriggerRegisterDeathEvent(s__destsave_t[dsa[i]], s__destsave_d[dsa[i]])
elseif GetDestructableLife(s__destsave_d[dsa[i]]) != GetDestructableMaxLife(s__destsave_d[dsa[i]]) then
call SetDestructableLife(s__destsave_d[dsa[i]], GetDestructableMaxLife(s__destsave_d[dsa[i]]))
endif
if ModuloInteger(i, 800) == 0 then
call TriggerSleepAction(0.1)
endif
set i=i + 1
endloop
endfunction
function s__rock_getrandomgem takes nothing returns integer
local real r=GetRandomReal(0, 100)
local integer step=6
if r < step then
return obsidian
elseif r < step * 2 then
return opal
elseif r < step * 3 then
return dioptaz
elseif r < step * 4 then
return pirrotin
endif
return 0
endfunction
function s__rock_onDeath takes nothing returns nothing
local item i
local integer cjlocgn_00000000
if NoGem == false then
set cjlocgn_00000000=GetDestructableTypeId(GetTriggerDestructable())
if cjlocgn_00000000 == 0x42303030 then
set i=CreateItem(s__rock_getrandomgem(), GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303032 then
set i=CreateItem(pirrotin, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303033 then
set i=CreateItem(opal, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303034 then
set i=CreateItem(dioptaz, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303035 then
set i=CreateItem(obsidian, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
endif
endif
set i=null
endfunction
function s__rock_onInitEnum takes nothing returns nothing
local integer r=s__rock__allocate()
set s__rock_d[r]=GetEnumDestructable()
call s__destsave_add(s__rock_d[r])
endfunction
function s__rock_onInit takes nothing returns nothing
call EnumDestructablesInRect(bj_mapInitialPlayableArea, null, function s__rock_onInitEnum)
endfunction

//library rock ends
//library towadd:
function towadd___addtow takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer id=GetUnitTypeId(u)
if id == 0x77616C6C then
call sc__wall_ADD(u)
endif
set u=null
endfunction
function towadd___init takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerAddAction(t, function towadd___addtow)
endfunction

//library towadd ends
//library towers:
function s__towertype_add takes integer l1,integer l2,integer l3,integer l4,integer l5,integer abil,string order,integer ot returns nothing
local integer t=s__towertype__allocate()
set s___towertype_idL[s__towertype_idL[t]+1]=l1
set s___towertype_idL[s__towertype_idL[t]+2]=l2
set s___towertype_idL[s__towertype_idL[t]+3]=l3
set s___towertype_idL[s__towertype_idL[t]+4]=l4
set s___towertype_idL[s__towertype_idL[t]+5]=l5
set s__towertype_abil[t]=abil
set s__towertype_order[t]=order
set s__towertype_ordertype[t]=ot
set tta[nexttt]=t
set nexttt=nexttt + 1
endfunction
function s__towertype_onInit takes nothing returns nothing
call s__towertype_add(0x67693031 , 0x67693032 , 0x67693033 , 0x67693034 , 0x67693035 , 0x697A6C75 , "revenge" , towers___TARGET)
call s__towertype_add(0x676D3031 , 0x676D3032 , 0x676D3033 , 0x676D3034 , 0x676D3035 , 0x41303041 , "chainlightning" , towers___TARGET)
call s__towertype_add(0x67703031 , 0x67703032 , 0x67703033 , 0x67703034 , 0x67703035 , 0x41303037 , "thunderbolt" , towers___TARGET)
call s__towertype_add(chestL1 , chestL2 , chestL3 , 0x6E756C6C , 0x6E756C6C , 0x41303033 , "carrionswarm" , towers___POINT)
call s__towertype_add(epicL1 , epicL2 , epicL3 , 0x6E756C6C , 0x6E756C6C , 0x65706943 , "volcano" , towers___INSTANT)
call s__towertype_add(fireL1 , fireL2 , fireL3 , 0x6E756C6C , 0x6E756C6C , 0x41303047 , "thunderbolt" , towers___TARGET)
call s__towertype_add(healL1 , healL2 , 0x6E756C6C , 0x6E756C6C , 0x6E756C6C , 0x41303038 , " " , 0)
call s__towertype_add(sendL1 , sendL2 , sendL3 , sendL41 , sendL42 , 0x73656E64 , " " , 0)
endfunction
function s__towertype_inthis takes integer this,integer id returns integer
local integer i=1
loop
exitwhen i == 6
if s___towertype_idL[s__towertype_idL[this]+i] == id then
return i
endif
set i=i + 1
endloop
return 0
endfunction
function towers___actatt takes nothing returns nothing
local unit from=GetAttacker()
local unit to=GetTriggerUnit()
local integer id=GetUnitTypeId(from)
local integer i=0
loop
exitwhen i == nexttt
if s__towertype_inthis(tta[i],id) != 0 then
if s__towertype_ordertype[tta[i]] == towers___POINT then
call IssuePointOrder(from, s__towertype_order[tta[i]], GetUnitX(to), GetUnitY(to))
exitwhen true
elseif s__towertype_ordertype[tta[i]] == towers___INSTANT then
call IssueImmediateOrder(from, s__towertype_order[tta[i]])
exitwhen true
elseif s__towertype_ordertype[tta[i]] == towers___TARGET then
call IssueTargetOrder(from, s__towertype_order[tta[i]], to)
exitwhen true
endif
endif
set i=i + 1
endloop
set from=null
set to=null
endfunction
function towers___actupg takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer id=GetUnitTypeId(u)
local integer i=0
loop
exitwhen i == nexttt
if s__towertype_inthis(tta[i],id) != 0 then
call SetUnitAbilityLevel(u, s__towertype_abil[tta[i]], s__towertype_inthis(tta[i],id))
call UnitAddAbility(u, 0x74656C65)
endif
set i=i + 1
endloop
set u=null
endfunction
function towers___init takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddAction(t, function towers___actatt)
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_UPGRADE_FINISH)
call TriggerAddAction(t, function towers___actupg)
endfunction

//library towers ends
//library unittimerremove:
function unittimerremove___GO takes nothing returns nothing
local integer i=0
loop
exitwhen i == unittimerremove___ne
if unittimerremove___ta[i] <= 0 then
call RemoveUnit(unittimerremove___ua[i])
set unittimerremove___ua[i]=unittimerremove___ua[unittimerremove___ne - 1]
set unittimerremove___ta[i]=unittimerremove___ta[unittimerremove___ne - 1]
set unittimerremove___ne=unittimerremove___ne - 1
else
set unittimerremove___ta[i]=unittimerremove___ta[i] - .25
set i=i + 1
endif
endloop
endfunction
function removeunit takes unit u,real t returns nothing
set unittimerremove___ua[unittimerremove___ne]=u
set unittimerremove___ta[unittimerremove___ne]=t
set unittimerremove___ne=unittimerremove___ne + 1
endfunction
function unittimerremove___init takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t, 0.25, true, function unittimerremove___GO)
endfunction

//library unittimerremove ends
//library Lightning:
function movel takes lightning l__l,integer a,integer b returns nothing
if l__l != null then
call MoveLightningEx(l__l, false, s__vec_x[a], s__vec_y[a], s__vec_z[a], s__vec_x[b], s__vec_y[b], s__vec_z[b])
endif
endfunction
function ifcam takes unit f,unit t returns boolean
local real Camdist=1300
local real dx
local real dy
local real fr
local real tr
if lcpu[GetPlayerId(GetLocalPlayer())] then
set Camdist=600
endif
set dx=GetWidgetX(f) - GetCameraTargetPositionX()
set dy=GetWidgetY(f) - GetCameraTargetPositionY()
set fr=SquareRoot(dx * dx + dy * dy)
set dx=GetWidgetX(t) - GetCameraTargetPositionX()
set dy=GetWidgetY(t) - GetCameraTargetPositionY()
set tr=SquareRoot(dx * dx + dy * dy)
if fr > Camdist and tr > Camdist then
return false
endif
return true
endfunction
function s__lig_send takes integer this,boolean b,integer ty returns nothing
if s__lig_cicles[this] >= 3 or ( lcpu[GetPlayerId(GetLocalPlayer())] == false and s__lig_cicles[this] >= 1 ) then
if ifcam(s__lig_from[this] , s__lig_to[this]) then
if b == true then
if s__lig_sendb[this] == false then
set s__lig_sendb[this]=true
set s__sendlig_b[s__lig_sl[this]]=false
set s__lig_sl[this]=sc__sendlig_add(s__lig_from[this] , s__lig_to[this] , ty)
set s__lig_ty[this]=ty
else
if s__lig_ty[this] != ty then
set s__sendlig_b[s__lig_sl[this]]=false
set s__lig_sl[this]=sc__sendlig_add(s__lig_from[this] , s__lig_to[this] , ty)
set s__lig_ty[this]=ty
endif
endif
else
if s__lig_sendb[this] == true then
set s__lig_sendb[this]=false
set s__sendlig_b[s__lig_sl[this]]=false
set s__lig_sl[this]=sc__sendlig_add(s__lig_from[this] , s__lig_to[this] , ty)
set s__lig_ty[this]=ty
else
if s__lig_ty[this] != ty then
set s__sendlig_b[s__lig_sl[this]]=false
set s__lig_sl[this]=sc__sendlig_add(s__lig_from[this] , s__lig_to[this] , ty)
set s__lig_ty[this]=ty
endif
endif
endif
endif
set s__lig_cicles[this]=0
else
set s__lig_cicles[this]=s__lig_cicles[this] + 1
endif
endfunction
function s__lig_add takes unit from,unit to returns integer
local integer l__l=s__lig__allocate()
set s__lig_from[l__l]=from
set s__lig_to[l__l]=to
set s__lig_i[l__l]=Lightning___NEXT
set Lightning___LIG[Lightning___NEXT]=l__l
set Lightning___NEXT=Lightning___NEXT + 1
return l__l
endfunction
function s__lig_renu takes unit u returns nothing
local integer i=0
loop
exitwhen i == Lightning___NEXT
if s__lig_from[Lightning___LIG[i]] == u or s__lig_to[Lightning___LIG[i]] == u then
call s__lig_send(Lightning___LIG[i],not ( s__lig_sendb[Lightning___LIG[i]] ) , s__lig_ty[Lightning___LIG[i]])
endif
set i=i + 1
endloop
endfunction
function s__lig_del takes integer this returns nothing
set Lightning___NEXT=Lightning___NEXT - 1
set s__lig_i[Lightning___LIG[Lightning___NEXT]]=s__lig_i[this]
set Lightning___LIG[s__lig_i[this]]=Lightning___LIG[Lightning___NEXT]
set s__sendlig_b[s__lig_sl[this]]=false
call s__lig_deallocate(this)
endfunction
function s__sendlig_add takes unit from,unit to,integer ltype returns integer
local integer sl=s__sendlig__allocate()
set s__sendlig_speed[sl]=lspeed
set s__sendlig_from[sl]=from
set s__sendlig_to[sl]=to
set s__sendlig_pos1[sl]=s__vec_u2v(from)
set s__sendlig_pos2[sl]=s__vec_u2v(from)
set s__sendlig_start[sl]=s__vec_u2v(from)
call s__vec_fromunit(Lightning___f,from)
call s__vec_fromunit(Lightning___t,to)
set s__sendlig_vel[sl]=s__vec_create(0 , 0 , 0)
call s__vec_setsub(s__sendlig_vel[sl],Lightning___f , Lightning___t)
set s__sendlig_dist[sl]=s__vec_getl(s__sendlig_vel[sl])
call s__vec_normalize(s__sendlig_vel[sl])
call s__vec_mul(s__sendlig_vel[sl],lspeed)
if ltype == 0 then
set s__sendlig_l[sl]=AddLightningEx("SEND", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 4 then
set s__sendlig_l[sl]=AddLightningEx("FULL", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 6 then
set s__sendlig_l[sl]=AddLightningEx("DRAM", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 5 then
set s__sendlig_l[sl]=AddLightningEx("NONE", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 1 then
set s__sendlig_l[sl]=AddLightningEx("SEN1", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 2 then
set s__sendlig_l[sl]=AddLightningEx("SEN2", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
elseif ltype == 3 then
set s__sendlig_l[sl]=AddLightningEx("SEN3", true, GetUnitX(from), GetUnitY(from), 0, GetUnitX(from), GetUnitY(from), 0)
endif
if GetUnitDefaultMoveSpeed(from) > 0 or GetUnitDefaultMoveSpeed(to) > 0 then
set s__sendlig_move[sl]=true
else
set s__sendlig_move[sl]=false
endif
set Lightning___sla[Lightning___nextsl]=sl
set s__sendlig_i[sl]=Lightning___nextsl
set Lightning___nextsl=Lightning___nextsl + 1
return sl
endfunction
function s__sendlig_hardrem takes nothing returns nothing
local integer i=Lightning___nextsl
set Lightning___nextsl=0
loop
exitwhen i == 0
call sc__sendlig_rem(Lightning___sla[i])
set i=i - 1
endloop
endfunction
function s__sendlig_rem takes integer this returns nothing
call s__vec_deallocate(s__sendlig_pos1[this])
call s__vec_deallocate(s__sendlig_pos2[this])
call s__vec_deallocate(s__sendlig_vel[this])
call s__vec_deallocate(s__sendlig_start[this])
set Lightning___nextsl=Lightning___nextsl - 1
set s__sendlig_i[Lightning___sla[Lightning___nextsl]]=s__sendlig_i[this]
set Lightning___sla[s__sendlig_i[this]]=Lightning___sla[Lightning___nextsl]
call DestroyLightning(s__sendlig_l[this])
call s__sendlig_deallocate(this)
endfunction
function s__sendlig_act takes integer this returns boolean
call s__vec_setsub(Lightning___a,s__sendlig_start[this] , s__sendlig_pos1[this])
call s__vec_setsub(Lightning___c,s__sendlig_start[this] , s__sendlig_pos2[this])
if s__sendlig_move[this] then
set s__sendlig_dist[this]=DistanceBetweenWidgets(s__sendlig_from[this] , s__sendlig_to[this])
if s__sendlig_b[this] == true and s__vec_getl(Lightning___c) + s__sendlig_speed[this] < s__sendlig_dist[this] then
set s__sendlig_d2[this]=s__sendlig_d2[this] + s__sendlig_speed[this]
elseif s__sendlig_b[this] == false and s__vec_getl(Lightning___a) + s__sendlig_speed[this] < s__sendlig_dist[this] then
set s__sendlig_d1[this]=s__sendlig_d1[this] + s__sendlig_speed[this]
if s__vec_getl(Lightning___c) + s__sendlig_speed[this] < s__sendlig_dist[this] then
set s__sendlig_d2[this]=s__sendlig_d2[this] + s__sendlig_speed[this]
endif
endif
if s__sendlig_b[this] == true and s__sendlig_d2[this] > s__sendlig_dist[this] then
set s__sendlig_d2[this]=s__sendlig_dist[this] + 1
endif
call s__vec_fromunit(s__sendlig_pos1[this],s__sendlig_from[this])
call s__vec_fromunit(s__sendlig_pos2[this],s__sendlig_from[this])
call s__vec_fromunit(Lightning___f,s__sendlig_from[this])
call s__vec_fromunit(Lightning___t,s__sendlig_to[this])
call s__vec_setsub(s__sendlig_vel[this],Lightning___f , Lightning___t)
call s__vec_normalize(s__sendlig_vel[this])
call s__vec_past(Lightning___f,s__sendlig_vel[this])
call s__vec_past(Lightning___t,s__sendlig_vel[this])
call s__vec_mul(Lightning___f,s__sendlig_d1[this])
call s__vec_sum(s__sendlig_pos1[this],Lightning___f)
call s__vec_mul(Lightning___t,s__sendlig_d2[this])
call s__vec_sum(s__sendlig_pos2[this],Lightning___t)
call movel(s__sendlig_l[this] , s__sendlig_pos1[this] , s__sendlig_pos2[this])
else
if s__sendlig_b[this] == true and s__vec_getl(Lightning___c) + s__sendlig_speed[this] < s__sendlig_dist[this] then
call s__vec_sum(s__sendlig_pos2[this],s__sendlig_vel[this])
call movel(s__sendlig_l[this] , s__sendlig_pos1[this] , s__sendlig_pos2[this])
elseif s__sendlig_b[this] == false and s__vec_getl(Lightning___a) + s__sendlig_speed[this] < s__sendlig_dist[this] then
call s__vec_sum(s__sendlig_pos1[this],s__sendlig_vel[this])
if s__vec_getl(Lightning___c) + s__sendlig_speed[this] < s__sendlig_dist[this] then
call s__vec_sum(s__sendlig_pos2[this],s__sendlig_vel[this])
endif
call movel(s__sendlig_l[this] , s__sendlig_pos1[this] , s__sendlig_pos2[this])
endif
endif
if s__vec_getl(Lightning___a) + s__sendlig_speed[this] > s__sendlig_dist[this] or s__sendlig_d1[this] + s__sendlig_speed[this] > s__sendlig_dist[this] then
return false
endif
return true
endfunction
function s__sendlig_go takes nothing returns nothing
local integer i=0
local integer s
loop
exitwhen i == Lightning___nextsl
set s=Lightning___sla[i]
if s__sendlig_act(s) == false then
call s__sendlig_rem(s)
set i=i - 1
endif
set i=i + 1
endloop
endfunction
function s__sendlig_onInit takes nothing returns nothing
local timer ti=CreateTimer()
call TimerStart(ti, .025, true, function s__sendlig_go)
set Lightning___f=s__vec_create(0 , 0 , 0)
set Lightning___t=s__vec_create(0 , 0 , 0)
set Lightning___a=s__vec_create(0 , 0 , 0)
set Lightning___c=s__vec_create(0 , 0 , 0)
endfunction

//library Lightning ends
//library asciiTable:
function s__ascii_getFromKey takes integer i returns integer
set s__ascii_values[i]=s__ascii__allocate()
return s__ascii_values[i]
endfunction
function s__ascii_getByChar takes string char returns integer
local integer i=70
local integer cjlocgn_00000000
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
set cjlocgn_00000000=s__ascii_values[i]
if ( cjlocgn_00000000 != 0 and s__ascii_char[cjlocgn_00000000] == char ) then
return s__ascii_numb[cjlocgn_00000000]
endif
endloop
return 0
endfunction
function s__ascii_string2int takes string id returns integer
local integer result=0
local integer factor=1
local integer i=4
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
set result=result + ( factor * s__ascii_getByChar(SubString(id, i, i + 1)) )
set factor=factor * ( 256 )
endloop
return result
endfunction
function asciiTable___init takes nothing returns nothing
local integer s
set s=s__ascii_getFromKey(1)
set s__ascii_numb[s]=48
set s__ascii_char[s]="0"
set s=s__ascii_getFromKey(2)
set s__ascii_numb[s]=49
set s__ascii_char[s]="1"
set s=s__ascii_getFromKey(3)
set s__ascii_numb[s]=50
set s__ascii_char[s]="2"
set s=s__ascii_getFromKey(4)
set s__ascii_numb[s]=51
set s__ascii_char[s]="3"
set s=s__ascii_getFromKey(5)
set s__ascii_numb[s]=52
set s__ascii_char[s]="4"
set s=s__ascii_getFromKey(6)
set s__ascii_numb[s]=53
set s__ascii_char[s]="5"
set s=s__ascii_getFromKey(7)
set s__ascii_numb[s]=54
set s__ascii_char[s]="6"
set s=s__ascii_getFromKey(8)
set s__ascii_numb[s]=55
set s__ascii_char[s]="7"
set s=s__ascii_getFromKey(9)
set s__ascii_numb[s]=56
set s__ascii_char[s]="8"
set s=s__ascii_getFromKey(10)
set s__ascii_numb[s]=57
set s__ascii_char[s]="9"
set s=s__ascii_getFromKey(11)
set s__ascii_numb[s]=65
set s__ascii_char[s]="A"
set s=s__ascii_getFromKey(12)
set s__ascii_numb[s]=66
set s__ascii_char[s]="B"
set s=s__ascii_getFromKey(13)
set s__ascii_numb[s]=67
set s__ascii_char[s]="C"
set s=s__ascii_getFromKey(14)
set s__ascii_numb[s]=68
set s__ascii_char[s]="D"
set s=s__ascii_getFromKey(15)
set s__ascii_numb[s]=69
set s__ascii_char[s]="E"
set s=s__ascii_getFromKey(16)
set s__ascii_numb[s]=70
set s__ascii_char[s]="F"
set s=s__ascii_getFromKey(17)
set s__ascii_numb[s]=71
set s__ascii_char[s]="G"
set s=s__ascii_getFromKey(18)
set s__ascii_numb[s]=72
set s__ascii_char[s]="H"
set s=s__ascii_getFromKey(19)
set s__ascii_numb[s]=73
set s__ascii_char[s]="I"
set s=s__ascii_getFromKey(20)
set s__ascii_numb[s]=74
set s__ascii_char[s]="J"
set s=s__ascii_getFromKey(21)
set s__ascii_numb[s]=75
set s__ascii_char[s]="K"
set s=s__ascii_getFromKey(22)
set s__ascii_numb[s]=76
set s__ascii_char[s]="L"
set s=s__ascii_getFromKey(23)
set s__ascii_numb[s]=77
set s__ascii_char[s]="M"
set s=s__ascii_getFromKey(24)
set s__ascii_numb[s]=78
set s__ascii_char[s]="N"
set s=s__ascii_getFromKey(25)
set s__ascii_numb[s]=79
set s__ascii_char[s]="O"
set s=s__ascii_getFromKey(26)
set s__ascii_numb[s]=80
set s__ascii_char[s]="P"
set s=s__ascii_getFromKey(27)
set s__ascii_numb[s]=81
set s__ascii_char[s]="Q"
set s=s__ascii_getFromKey(28)
set s__ascii_numb[s]=82
set s__ascii_char[s]="R"
set s=s__ascii_getFromKey(29)
set s__ascii_numb[s]=83
set s__ascii_char[s]="S"
set s=s__ascii_getFromKey(30)
set s__ascii_numb[s]=84
set s__ascii_char[s]="T"
set s=s__ascii_getFromKey(31)
set s__ascii_numb[s]=85
set s__ascii_char[s]="U"
set s=s__ascii_getFromKey(32)
set s__ascii_numb[s]=86
set s__ascii_char[s]="V"
set s=s__ascii_getFromKey(33)
set s__ascii_numb[s]=87
set s__ascii_char[s]="W"
set s=s__ascii_getFromKey(34)
set s__ascii_numb[s]=88
set s__ascii_char[s]="X"
set s=s__ascii_getFromKey(35)
set s__ascii_numb[s]=89
set s__ascii_char[s]="Y"
set s=s__ascii_getFromKey(36)
set s__ascii_numb[s]=90
set s__ascii_char[s]="Z"
set s=s__ascii_getFromKey(37)
set s__ascii_numb[s]=97
set s__ascii_char[s]="a"
set s=s__ascii_getFromKey(38)
set s__ascii_numb[s]=98
set s__ascii_char[s]="b"
set s=s__ascii_getFromKey(39)
set s__ascii_numb[s]=99
set s__ascii_char[s]="c"
set s=s__ascii_getFromKey(40)
set s__ascii_numb[s]=100
set s__ascii_char[s]="d"
set s=s__ascii_getFromKey(41)
set s__ascii_numb[s]=101
set s__ascii_char[s]="e"
set s=s__ascii_getFromKey(42)
set s__ascii_numb[s]=102
set s__ascii_char[s]="f"
set s=s__ascii_getFromKey(43)
set s__ascii_numb[s]=103
set s__ascii_char[s]="g"
set s=s__ascii_getFromKey(44)
set s__ascii_numb[s]=104
set s__ascii_char[s]="h"
set s=s__ascii_getFromKey(45)
set s__ascii_numb[s]=105
set s__ascii_char[s]="i"
set s=s__ascii_getFromKey(46)
set s__ascii_numb[s]=106
set s__ascii_char[s]="j"
set s=s__ascii_getFromKey(47)
set s__ascii_numb[s]=107
set s__ascii_char[s]="k"
set s=s__ascii_getFromKey(48)
set s__ascii_numb[s]=108
set s__ascii_char[s]="l"
set s=s__ascii_getFromKey(49)
set s__ascii_numb[s]=109
set s__ascii_char[s]="m"
set s=s__ascii_getFromKey(50)
set s__ascii_numb[s]=110
set s__ascii_char[s]="n"
set s=s__ascii_getFromKey(51)
set s__ascii_numb[s]=111
set s__ascii_char[s]="o"
set s=s__ascii_getFromKey(52)
set s__ascii_numb[s]=112
set s__ascii_char[s]="p"
set s=s__ascii_getFromKey(53)
set s__ascii_numb[s]=113
set s__ascii_char[s]="q"
set s=s__ascii_getFromKey(54)
set s__ascii_numb[s]=114
set s__ascii_char[s]="r"
set s=s__ascii_getFromKey(55)
set s__ascii_numb[s]=115
set s__ascii_char[s]="s"
set s=s__ascii_getFromKey(56)
set s__ascii_numb[s]=116
set s__ascii_char[s]="t"
set s=s__ascii_getFromKey(57)
set s__ascii_numb[s]=117
set s__ascii_char[s]="u"
set s=s__ascii_getFromKey(58)
set s__ascii_numb[s]=118
set s__ascii_char[s]="v"
set s=s__ascii_getFromKey(59)
set s__ascii_numb[s]=119
set s__ascii_char[s]="w"
set s=s__ascii_getFromKey(60)
set s__ascii_numb[s]=120
set s__ascii_char[s]="x"
set s=s__ascii_getFromKey(61)
set s__ascii_numb[s]=121
set s__ascii_char[s]="y"
set s=s__ascii_getFromKey(62)
set s__ascii_numb[s]=122
set s__ascii_char[s]="z"
endfunction

//library asciiTable ends
//library cmind:
function overmind takes nothing returns nothing
set cmind___PL_TG=GetRandomInt(0, activeplayer - 1)
set cmind___TARG=GroupPickRandomUnit(s__gamepr_units[actgpa[cmind___PL_TG]])
if cmind___TARG == null then
set cmind___TARG=s__gamepr_u[actgpa[cmind___PL_TG]]
endif
call TimerStart(cmind___OMTI, GetRandomReal(15, 30), false, function overmind)
endfunction
function cmindtarget takes unit u returns nothing
local integer i
local integer p=GetUnitUserData(u)
if ( nextPrima > 0 or s__UnitDataStruct_prima[p] == true ) then
if s__UnitDataStruct_prima[p] == true then
set i=s__UnitDataStruct_intprima[p]
else
set i=GetRandomInt(0, nextPrima - 1)
endif
call IssuePointOrder(u, "move", GetUnitX(s__prima_u[Prima[i]]), GetUnitY(s__prima_u[Prima[i]]))
set s__UnitDataStruct_prima[p]=true
return
endif
set i=cmind___PL_TG
if s__gamepr_krestis[actgpa[i]] == false and GroupPickRandomUnit(s__gamepr_units[actgpa[i]]) == null then
call overmind()
endif
if IsUnitDeadBJ(cmind___TARG) then
call overmind()
endif
set i=cmind___PL_TG
if s__gamepr_krestis[actgpa[i]] == false and GetRandomInt(0, 2) >= 1 then
call IssuePointOrder(u, "attack", GetUnitX(s__gamepr_u[actgpa[i]]), GetUnitY(s__gamepr_u[actgpa[i]]))
else
if cmind___TARG == null then
set cmind___TARG=GroupPickRandomUnit(creepsgro)
endif
call IssuePointOrder(u, "attack", GetUnitX(cmind___TARG), GetUnitY(cmind___TARG))
endif
endfunction
function targroup takes group l__cmind___g returns nothing
local group gg=CreateGroup()
local unit u
call GroupAddGroup(l__cmind___g, gg)
loop
set u=FirstOfGroup(gg)
exitwhen u == null
if IsUnitAliveBJ(u) then
call cmindtarget(u)
endif
call GroupRemoveUnit(gg, u)
endloop
call DestroyGroup(gg)
set gg=null
set u=null
endfunction
function cmind___crit_num takes nothing returns boolean
if GetOwningPlayer(GetFilterUnit()) == creepsplayer then
set cmind___cnum=cmind___cnum + 1
endif
return false
endfunction
function critical_num_of_creeps_in_area takes unit u returns boolean
set cmind___cnum=0
call GroupEnumUnitsInRange(cmind___g, GetUnitX(u), GetUnitY(u), 190, cmind___crit_num_bexpr)
if cmind___cnum >= 8 then
return true
endif
return false
endfunction
function destr takes nothing returns nothing
local destructable ede=GetEnumDestructable()
local real edist=DistanceBetweenWidgets(ede , cmind___ud)
if cmind___de == null then
set cmind___de=ede
set cmind___dist=edist
else
if cmind___dist > edist then
set cmind___de=ede
set cmind___dist=edist
endif
endif
set ede=null
endfunction
function ondest takes nothing returns nothing
local integer p=sc__UnitDataStruct_findCreepFromT(GetTriggeringTrigger())
call cmindtarget(s__UnitDataStruct_u[p])
endfunction
function destroyDestructable takes unit u returns nothing
local real r=350
local integer p
set cmind___ud=u
set cmind___de=null
set cmind___dist=0
call EnumDestructablesInRect(Rect(GetUnitX(u) - r, GetUnitY(u) - r, GetUnitX(u) + r, GetUnitY(u) + r), null, function destr)
if cmind___de != null then
set p=GetUnitUserData(u)
call IssueTargetOrder(u, "attack", cmind___de)
endif
endfunction
function getstands takes integer index1,integer index2 returns integer
return cmind___stands[index1 * cmind___Width + index2]
endfunction
function setstands takes integer index1,integer index2,integer i returns nothing
set cmind___stands[index1 * cmind___Width + index2]=i
endfunction
function enumerateDestructableAndDestroy takes nothing returns nothing
local destructable ede=GetEnumDestructable()
if GetRandomInt(0, 1) == 0 then
call DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", GetDestructableX(ede), GetDestructableY(ede)))
endif
call KillDestructable(ede)
set ede=null
endfunction
function destroyALL takes unit u returns nothing
local real r=180
call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", u, "Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl"))
call EnumDestructablesInRect(Rect(GetUnitX(u) - r, GetUnitY(u) - r, GetUnitX(u) + r, GetUnitY(u) + r), null, function enumerateDestructableAndDestroy)
endfunction
function updstands takes unit u returns nothing
local real x=GetUnitX(u)
local real y=GetUnitX(u)
local real minx=GetRectMinX(GetPlayableMapRect())
local real miny=GetRectMinY(GetPlayableMapRect())
local real xx=x + ( - minx )
local real yy=y + ( - miny )
local real dex=xx / cmind___Wx
local real dey=yy / cmind___Wy
local integer d1=R2I(dex)
local integer d2=R2I(dey)
call setstands(d1 , d2 , getstands(d1 , d2) + 1)
if getstands(d1 , d2) > 12 then
call DestroyEffect(AddSpecialEffectTargetUnitBJ("origin", u, "Abilities\\Spells\\Human\\Brilliance\\Brilliance.mdl"))
endif
if getstands(d1 , d2) > 24 then
call destroyALL(u)
call setstands(d1 , d2 , 0)
endif
endfunction
function compareXY takes unit u returns nothing
local real r=50
local integer p=GetUnitUserData(u)
if s__UnitDataStruct_x[p] == 0 and s__UnitDataStruct_y[p] == 0 then
set s__UnitDataStruct_x[p]=GetUnitX(u)
set s__UnitDataStruct_y[p]=GetUnitY(u)
return
endif
if ( GetUnitX(u) < s__UnitDataStruct_x[p] + r and GetUnitX(u) > s__UnitDataStruct_x[p] - r ) and ( GetUnitY(u) < s__UnitDataStruct_y[p] + r and GetUnitY(u) > s__UnitDataStruct_y[p] - r ) then
set s__UnitDataStruct_times[p]=s__UnitDataStruct_times[p] + 1
else
set s__UnitDataStruct_times[p]=0
set s__UnitDataStruct_x[p]=GetUnitX(u)
set s__UnitDataStruct_y[p]=GetUnitY(u)
endif
if s__UnitDataStruct_times[p] > 10 then
set s__UnitDataStruct_times[p]=0
set s__UnitDataStruct_x[p]=GetUnitX(u)
set s__UnitDataStruct_y[p]=GetUnitY(u)
call PingMinimapForPlayer(Player(0), GetUnitX(u), GetUnitY(u), 1)
call updstands(u)
if GetRandomInt(0, 3) == 0 then
call IssuePointOrder(s__UnitDataStruct_u[p], "move", GetUnitX(s__gamepr_u[actgpa[GetRandomInt(0, activeplayer - 1)]]), GetUnitY(s__gamepr_u[actgpa[GetRandomInt(0, activeplayer - 1)]]))
else
call destroyDestructable(u)
endif
endif
endfunction
function cmind___minus takes nothing returns nothing
local integer i=0
loop
exitwhen i == cmind___Width * cmind___Width
if cmind___stands[i] > 0 then
set cmind___stands[i]=cmind___stands[i] - 1
endif
set i=i + 1
endloop
endfunction
function cmind___init takes nothing returns nothing
local real minx
local real miny
local real mapx
local real mapy
set cmind___g=CreateGroup()
set cmind___crit_num_bexpr=Filter(function cmind___crit_num)
set minx=GetRectMinX(GetPlayableMapRect())
set miny=GetRectMinY(GetPlayableMapRect())
set mapx=- minx * 2
set mapy=- miny * 2
set cmind___Wx=mapx / cmind___Width
set cmind___Wy=mapy / cmind___Width
set cmind___OMTI=CreateTimer()
call TimerStart(cmind___OMTI, 10, false, function overmind)
call TimerStart(CreateTimer(), 5, true, function cmind___minus)
endfunction

//library cmind ends
//library energywall:
function s__wall_REM takes integer this returns nothing
local integer j=0
set energywall___NEXTW=energywall___NEXTW - 1
set s__wall_i[energywall___WALL[energywall___NEXTW]]=s__wall_i[this]
set energywall___WALL[s__wall_i[this]]=energywall___WALL[energywall___NEXTW]
loop
exitwhen j == s__wall_nextS[this]
call sc__section_REM(s___wall_section[s__wall_section[this]+j])
set j=j + 1
endloop
endfunction
function s__wall_UP takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer W=sc__wall_Findw(u)
if W != 0 then
if GetUnitTypeId(u) == 0x77616C31 then
set s__wall_MP[W]=2
set s__wall_DMG[W]=7.6
elseif GetUnitTypeId(u) == 0x77616C32 then
set s__wall_MP[W]=2.5
set s__wall_DMG[W]=10
endif
endif
set u=null
endfunction
function s__wall_Findw takes unit u returns integer
local integer i=0
loop
exitwhen i == energywall___NEXTW
if s__wall_base[energywall___WALL[i]] == u then
return energywall___WALL[i]
endif
set i=i + 1
endloop
return 0
endfunction
function s__wall_Findu takes unit u returns boolean
local integer i=0
loop
exitwhen i == energywall___NEXTW
if s__wall_base[energywall___WALL[i]] == u then
return true
endif
set i=i + 1
endloop
return false
endfunction
function s__wall_ADD takes unit u returns nothing
local integer W
local integer p
local integer i=0
local integer last=0
local integer new=0
if s__wall_Findu(u) then
return
endif
set W=s__wall__allocate()
set s__wall_base[W]=u
set p=s__pair_u2p(u)
loop
exitwhen i == 5
call s__pair_fromunit(p,u)
call s__pair_polar(p,350 , ( 360 / 5 ) * i)
set new=sc__section_ADD(W , s__pair_x[p] , s__pair_y[p] , last , 0 , s__wall_nextS[W])
set s__section_next[last]=new
set last=new
set s___wall_section[s__wall_section[W]+s__wall_nextS[W]]=new
set s__wall_nextS[W]=s__wall_nextS[W] + 1
set i=i + 1
endloop
set s__section_next[last]=s___wall_section[s__wall_section[W]]
set s__section_last[s___wall_section[s__wall_section[W]]]=last
set i=0
loop
exitwhen i == s__wall_nextS[W]
call sc__section_INIT(s___wall_section[s__wall_section[W]+i])
set i=i + 1
endloop
set s__wall_i[W]=energywall___NEXTW
set energywall___WALL[energywall___NEXTW]=W
set energywall___NEXTW=energywall___NEXTW + 1
call s__pair_deallocate(p)
endfunction
function s__wall_refresh takes nothing returns nothing
local integer i=0
local integer j=0
local integer p=s__pair__allocate()
local real d
local integer S
loop
exitwhen i == energywall___NEXTW
if IsUnitAliveBJ(s__wall_base[energywall___WALL[i]]) then
set j=0
loop
exitwhen j >= s__wall_nextS[energywall___WALL[i]]
set d=DistanceBetweenWidgets(s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]] , s__section_pole[s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]])
if d > 500 and s__wall_nextS[energywall___WALL[i]] < 11 - 1 then
call s__pair_fromunit(p,s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]])
call s__pair_polar(p,d / 2 , angleunit(s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]] , s__section_pole[s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]]))
set s___wall_section[s__wall_section[energywall___WALL[i]]+s__wall_nextS[energywall___WALL[i]]]=sc__section_ADD(energywall___WALL[i] , s__pair_x[p] , s__pair_y[p] , s___wall_section[s__wall_section[energywall___WALL[i]]+j] , s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]] , s__wall_nextS[energywall___WALL[i]])
call sc__section_INIT(s___wall_section[s__wall_section[energywall___WALL[i]]+s__wall_nextS[energywall___WALL[i]]])
set s__section_last[s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]]=s___wall_section[s__wall_section[energywall___WALL[i]]+s__wall_nextS[energywall___WALL[i]]]
set s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]=s___wall_section[s__wall_section[energywall___WALL[i]]+s__wall_nextS[energywall___WALL[i]]]
set s__wall_nextS[energywall___WALL[i]]=s__wall_nextS[energywall___WALL[i]] + 1
set j=j + 1
elseif d < 100 and s__wall_nextS[energywall___WALL[i]] > 3 and DistanceBetweenWidgets(s__section_pole[s__section_last[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]] , s__section_pole[s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]]) < 500 - 100 then
set s__section_last[s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]]=s__section_last[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]
set s__section_next[s__section_last[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]]=s__section_next[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]
set S=s___wall_section[s__wall_section[energywall___WALL[i]]+j]
set s__wall_nextS[energywall___WALL[i]]=s__wall_nextS[energywall___WALL[i]] - 1
set s___wall_section[s__wall_section[energywall___WALL[i]]+j]=s___wall_section[s__wall_section[energywall___WALL[i]]+s__wall_nextS[energywall___WALL[i]]]
call sc__section_REM(S)
elseif DistanceBetweenWidgets(s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]] , s__wall_base[energywall___WALL[i]]) > 600 then
call s__pair_fromunit(p,s__wall_base[energywall___WALL[i]])
call s__pair_polar(p,DistanceBetweenWidgets(s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]] , s__wall_base[energywall___WALL[i]]) * 0.995 , angleunit(s__wall_base[energywall___WALL[i]] , s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]]))
call s__pair_tounit(p,s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]])
call IssueImmediateOrder(s__section_pole[s___wall_section[s__wall_section[energywall___WALL[i]]+j]], "stop")
set j=j + 1
else
set j=j + 1
endif
endloop
set i=i + 1
else
call s__wall_REM(energywall___WALL[i])
endif
endloop
call s__pair_deallocate(p)
endfunction
function s__wall_onInit takes nothing returns nothing
local trigger t
call TimerStart(CreateTimer(), .2, true, function s__wall_refresh)
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_UPGRADE_FINISH)
call TriggerAddAction(t, function s__wall_UP)
endfunction
function s__section_REM takes integer this returns nothing
local integer j=0
loop
exitwhen j == 4
call DestroyLightning(s___section_l[s__section_l[this]+j])
set s___section_l[s__section_l[this]+j]=null
set j=j + 1
endloop
call RemoveUnit(s__section_pole[this])
set energywall___NEXTS=energywall___NEXTS - 1
set s__section_i[energywall___SECT[energywall___NEXTS]]=s__section_i[this]
set energywall___SECT[s__section_i[this]]=energywall___SECT[energywall___NEXTS]
call s__section_deallocate(this)
endfunction
function s__section_FINDt takes trigger t returns integer
local integer i=0
loop
exitwhen i == energywall___NEXTS
if s__section_t[energywall___SECT[i]] == t then
return energywall___SECT[i]
endif
set i=i + 1
endloop
return 0
endfunction
function s__section_TRIG takes nothing returns nothing
local trigger t=GetTriggeringTrigger()
local unit u=GetTriggerUnit()
local integer S=s__section_FINDt(t)
if GetUnitTypeId(u) != 0x64756D31 and GetUnitTypeId(u) != 0x7072696D and GetUnitTypeId(u) != 0x77697370 and IsUnitEnemy(u, GetOwningPlayer(s__wall_base[s__section_wall[S]])) and IsUnitAliveBJ(u) then
call GroupAddUnit(s__section_g[S], u)
endif
set u=null
set t=null
endfunction
function s__section_ADD takes integer W,real x,real y,integer last,integer next,integer iw returns integer
local integer S=s__section__allocate()
set s__section_wall[S]=W
set s__section_last[S]=last
set s__section_next[S]=next
set s__section_pole[S]=CreateUnit(GetOwningPlayer(s__wall_base[W]), 0x706F6C65, x, y, 0)
call SetUnitPathing(s__section_pole[S], false)
set s__section_iw[S]=iw
set s__section_i[S]=energywall___NEXTS
set s__section_t[S]=CreateTrigger()
call TriggerRegisterUnitInRangeSimple(s__section_t[S], 500, s__section_pole[S])
call TriggerAddAction(s__section_t[S], function s__section_TRIG)
set s__section_g[S]=CreateGroup()
set energywall___SECT[energywall___NEXTS]=S
set energywall___NEXTS=energywall___NEXTS + 1
return S
endfunction
function s__section_INIT takes integer this returns nothing
local integer i=0
loop
exitwhen i == 4
set s___section_l[s__section_l[this]+i]=AddLightningEx("WALL", true, GetUnitX(s__section_pole[this]), GetUnitY(s__section_pole[this]), GetUnitZ(s__section_pole[this]) + energywall___Zcord * i, GetUnitX(s__section_pole[s__section_next[this]]), GetUnitY(s__section_pole[s__section_next[this]]), GetUnitZ(s__section_pole[s__section_next[this]]) + energywall___Zcord * i)
set i=i + 1
endloop
endfunction
function s__section_REFRESH takes integer this returns nothing
local integer i=0
loop
exitwhen i == 4
if s___section_l[s__section_l[this]+i] != null then
call MoveLightningEx(s___section_l[s__section_l[this]+i], true, GetUnitX(s__section_pole[this]), GetUnitY(s__section_pole[this]), GetUnitZ(s__section_pole[this]) + energywall___Zcord * i, GetUnitX(s__section_pole[s__section_next[this]]), GetUnitY(s__section_pole[s__section_next[this]]), GetUnitZ(s__section_pole[s__section_next[this]]) + energywall___Zcord * i)
endif
set i=i + 1
endloop
endfunction
function s__section_GO takes nothing returns nothing
local integer i=0
loop
exitwhen i == energywall___NEXTS
call s__section_REFRESH(energywall___SECT[i])
set i=i + 1
endloop
endfunction
function s__section_perpendicular takes unit a,unit b,unit c returns boolean
local real width=55
local real Xa=GetUnitX(a)
local real Ya=GetUnitY(a)
local real Xb=GetUnitX(b)
local real Yb=GetUnitY(b)
local real Xc=GetUnitX(c)
local real Yc=GetUnitY(c)
local real alpha=Atan2(Yc - Ya, Xc - Xa) - Atan2(Yb - Ya, Xb - Xa)
local real ac=distcord(Xa , Ya , Xc , Yc)
local real co=ac * Sin(alpha)
local real beta=1.5708 - alpha
local real gama=Atan2(Ya - Yc, Xa - Xc) + beta
local real Xo=Xc + co * Cos(gama)
local real Yo=Yc + co * Sin(gama)
if co < width and co > - width and distcord(Xa , Ya , Xo , Yo) < distcord(Xa , Ya , Xb , Yb) and distcord(Xb , Yb , Xo , Yo) < distcord(Xa , Ya , Xb , Yb) then
return true
endif
return false
endfunction
function s__section_ACT takes integer this returns nothing
local integer i=0
local integer j=0
local real r
local group G=CreateGroup()
local unit u
local boolean bo
local real m=4
call GroupAddGroup(s__section_g[this], G)
set u=FirstOfGroup(G)
loop
exitwhen u == null
if IsUnitDeadBJ(u) then
call GroupRemoveUnit(s__section_g[this], u)
endif
call GroupRemoveUnit(G, u)
set u=FirstOfGroup(G)
endloop
call GroupAddGroup(s__section_g[this], G)
set u=FirstOfGroup(G)
loop
exitwhen u == null
set bo=s__section_perpendicular(s__section_pole[this] , s__section_pole[s__section_next[this]] , u) and IsUnitInGroup(u, s__section_g[s__section_next[this]])
set m=s__wall_MP[s__section_wall[this]]
if bo and getmana(s__wall_base[s__section_wall[this]]) >= m then
call setmana(s__wall_base[s__section_wall[this]] , getmana(s__wall_base[s__section_wall[this]]) - m)
call UnitDamageTarget(s__wall_base[s__section_wall[this]], u, s__wall_DMG[s__section_wall[this]], true, true, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
call s__aurabuff_ADD(u , 1.3 , 1)
call s__Effect_ADD(u , 0.7 , "origin" , "Abilities\\Weapons\\Bolt\\BoltImpact.mdl")
set j=0
loop
exitwhen j == s__wall_nextS[s__section_wall[this]]
set i=0
loop
exitwhen i == 4
call SetLightningColor(s___section_l[s__section_l[s___wall_section[s__wall_section[s__section_wall[this]]+j]]+i], 1, 1, 1, 0.5)
set i=i + 1
endloop
set j=j + 1
endloop
elseif bo and getmana(s__wall_base[s__section_wall[this]]) < 5 then
set j=0
loop
exitwhen j == s__wall_nextS[s__section_wall[this]]
set i=0
loop
exitwhen i == 4
call SetLightningColor(s___section_l[s__section_l[s___wall_section[s__wall_section[s__section_wall[this]]+j]]+i], 1, 0.7, 0, 0.5)
set i=i + 1
endloop
set j=j + 1
endloop
endif
call GroupRemoveUnit(G, u)
set u=FirstOfGroup(G)
endloop
call DestroyGroup(G)
set G=null
set u=null
endfunction
function s__section_GO1 takes nothing returns nothing
local integer i=0
loop
exitwhen i == energywall___NEXTS
call s__section_ACT(energywall___SECT[i])
set i=i + 1
endloop
endfunction
function s__section_onInit takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t, .06, true, function s__section_GO)
set t=CreateTimer()
call TimerStart(t, .1, true, function s__section_GO1)
endfunction

//library energywall ends
//library epicentr:
function s__epic_cast takes nothing returns nothing
local unit cjlocgn_00000000
local group cjlocgn_00000001
local unit cjlocgn_00000002
local real cjlocgn_00000003
local integer cjlocgn_00000004
if GetSpellAbilityId() == 0x65706943 then
set cjlocgn_00000000=GetTriggerUnit()
set cjlocgn_00000001=CreateGroup()
call GroupEnumUnitsInRange(cjlocgn_00000001, GetUnitX(cjlocgn_00000000), GetUnitY(cjlocgn_00000000), 320, null)
set cjlocgn_00000002=FirstOfGroup(cjlocgn_00000001)
set cjlocgn_00000003=20 * GetUnitAbilityLevel(cjlocgn_00000000, 0x65706943)
loop
exitwhen cjlocgn_00000002 == null
if IsUnitEnemy(cjlocgn_00000002, GetOwningPlayer(cjlocgn_00000000)) and IsUnitAliveBJ(cjlocgn_00000002) then
set cjlocgn_00000004=sc__Miss_Create(0x726F6332 , cjlocgn_00000000 , 30 , cjlocgn_00000002)
call sc__Miss_ModDmg(cjlocgn_00000004,cjlocgn_00000003 , ATTACK_TYPE_NORMAL , false , 0)
call sc__Miss_ModBuff(cjlocgn_00000004,2 , 0.8)
endif
call GroupRemoveUnit(cjlocgn_00000001, cjlocgn_00000002)
set cjlocgn_00000002=FirstOfGroup(cjlocgn_00000001)
endloop
set cjlocgn_00000000=null
set cjlocgn_00000002=null
set cjlocgn_00000001=null
endif
endfunction
function s__epic_go takes nothing returns nothing
local integer i=0
local integer j=0
endfunction
function s__epic_onInit takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t, function s__epic_cast)
endfunction

//library epicentr ends
//library gamma:
function s__gamma_cast takes nothing returns nothing
local unit cjlocgn_00000000
local integer cjlocgn_00000001
local integer cjlocgn_00000002
local string cjlocgn_00000003
local real cjlocgn_00000004
local real cjlocgn_00000005
local real cjlocgn_00000006
local integer cjlocgn_00000007
local unit cjlocgn_00000008
local integer cjlocgn_00000009
local integer cjlocgn_0000000a
local integer cjlocgn_0000000b
local integer cjlocgn_0000000c
local integer cjlocgn_0000000d
local real cjlocgn_0000000e
local real cjlocgn_0000000f
local real cjlocgn_00000010
local group cjlocgn_00000011
local unit cjlocgn_00000012
if GetSpellAbilityId() == 0x697A6C75 then
set cjlocgn_00000000=GetTriggerUnit()
set cjlocgn_00000001=GetUnitUserData(cjlocgn_00000000)
set cjlocgn_00000002=GetUnitAbilityLevel(cjlocgn_00000000, 0x697A6C75)
set cjlocgn_00000003="RAY1"
set cjlocgn_00000004=gamma___Maxdis
set cjlocgn_00000005=gamma___Maxang
set cjlocgn_00000006=s__TowerBaseConfig_damage[s__UnitDataStruct_towerConfig[cjlocgn_00000001]]
set cjlocgn_00000007=0
if cjlocgn_00000002 > 1 then
set cjlocgn_00000004=gamma___Maxdis + gamma___Disadd * cjlocgn_00000002
set cjlocgn_00000005=gamma___Maxang + gamma___Angadd * cjlocgn_00000002
set cjlocgn_00000007=2 * cjlocgn_00000002
if cjlocgn_00000002 == 3 or cjlocgn_00000002 == 4 then
set cjlocgn_00000003="RAY2"
endif
if cjlocgn_00000002 == 5 then
set cjlocgn_00000003="RAYS"
endif
endif
if ( GetOwningPlayer(cjlocgn_00000000) == GetLocalPlayer() ) then
call BJDebugMsg(R2S(cjlocgn_00000006) + "tc" + I2S(s__UnitDataStruct_towerConfig[cjlocgn_00000001]))
endif
set cjlocgn_00000008=GetSpellTargetUnit()
set cjlocgn_00000009=s__gamma__allocate()
set s__gamma_caster[cjlocgn_00000009]=cjlocgn_00000000
set cjlocgn_0000000a=0
set cjlocgn_0000000b=s__pair_u2p(cjlocgn_00000000)
set cjlocgn_0000000c=s__pair_u2p(cjlocgn_00000008)
set cjlocgn_0000000d=s__pair__allocate()
set cjlocgn_0000000e=anglepair(cjlocgn_0000000b , cjlocgn_0000000c)
call s__pair_deallocate(cjlocgn_0000000c)
set cjlocgn_0000000f=distp(cjlocgn_0000000b , cjlocgn_0000000c)
if lcpu[GetPlayerId(GetLocalPlayer())] then
endif
if cjlocgn_0000000f >= cjlocgn_00000004 then
set cjlocgn_0000000f=cjlocgn_00000004
endif
set cjlocgn_00000010=cjlocgn_00000005 * RAbsBJ(( cjlocgn_0000000f / cjlocgn_00000004 ) - 1)
set cjlocgn_00000007=cjlocgn_00000007 + R2I(20 * RAbsBJ(( cjlocgn_0000000f / cjlocgn_00000004 ) - 1)) + 1
set s__gamma_num[cjlocgn_00000009]=cjlocgn_00000007
loop
exitwhen cjlocgn_0000000a == cjlocgn_00000007
call s__pair_past(cjlocgn_0000000d,cjlocgn_0000000b)
call s__pair_polar(cjlocgn_0000000d,cjlocgn_0000000f + gamma___Dis100Add , cjlocgn_0000000e + ( ( cjlocgn_00000010 / cjlocgn_00000007 ) * cjlocgn_0000000a ) - ( cjlocgn_00000010 / 2 ))
set s___gamma_l[s__gamma_l[cjlocgn_00000009]+cjlocgn_0000000a]=AddLightningEx(cjlocgn_00000003, true, s__pair_x[cjlocgn_0000000b], s__pair_y[cjlocgn_0000000b], 60, s__pair_x[cjlocgn_0000000d], s__pair_y[cjlocgn_0000000d], 0)
if GetRandomInt(0, 2) == 2 then
call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Incinerate\\IncinerateBuff.mdl", s__pair_x[cjlocgn_0000000d], s__pair_y[cjlocgn_0000000d]))
endif
set cjlocgn_0000000a=cjlocgn_0000000a + 1
endloop
call DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", cjlocgn_00000000, "Abilities\\Spells\\Other\\Incinerate\\IncinerateBuff.mdl"))
set cjlocgn_00000011=CreateGroup()
call GroupEnumUnitsInRange(cjlocgn_00000011, s__pair_x[cjlocgn_0000000b], s__pair_y[cjlocgn_0000000b], cjlocgn_0000000f + gamma___Dis100Add, null)
set cjlocgn_00000012=FirstOfGroup(cjlocgn_00000011)
loop
exitwhen cjlocgn_00000012 == null
call s__pair_fromunit(cjlocgn_0000000c,cjlocgn_00000012)
if IsUnitEnemy(cjlocgn_00000012, GetOwningPlayer(cjlocgn_00000000)) and IsUnitAliveBJ(cjlocgn_00000012) and confirm(anglepair(cjlocgn_0000000b , cjlocgn_0000000c) , cjlocgn_0000000e - ( cjlocgn_00000010 / 2 ) , cjlocgn_0000000e + ( cjlocgn_00000010 / 2 )) then
call UnitDamageTarget(cjlocgn_00000000, cjlocgn_00000012, cjlocgn_00000006, true, true, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_UNKNOWN, WEAPON_TYPE_WHOKNOWS)
endif
call GroupRemoveUnit(cjlocgn_00000011, cjlocgn_00000012)
set cjlocgn_00000012=FirstOfGroup(cjlocgn_00000011)
endloop
set gamma___ga[gamma___next]=cjlocgn_00000009
set gamma___next=gamma___next + 1
call DestroyGroup(cjlocgn_00000011)
call s__pair_deallocate(cjlocgn_0000000b)
call s__pair_deallocate(cjlocgn_0000000d)
set cjlocgn_00000000=null
set cjlocgn_00000008=null
set cjlocgn_00000012=null
set cjlocgn_00000011=null
endif
endfunction
function s__gamma_go takes nothing returns nothing
local integer i=0
local integer j=0
loop
exitwhen i == gamma___next
set s__gamma_time[gamma___ga[i]]=s__gamma_time[gamma___ga[i]] - 1
if s__gamma_time[gamma___ga[i]] <= 0 then
set j=0
loop
exitwhen j == s__gamma_num[gamma___ga[i]]
call DestroyLightning(s___gamma_l[s__gamma_l[gamma___ga[i]]+j])
set j=j + 1
endloop
call s__gamma_deallocate(gamma___ga[i])
set gamma___next=gamma___next - 1
set gamma___ga[i]=gamma___ga[gamma___next]
else
set i=i + 1
endif
endloop
endfunction
function s__gamma_onInit takes nothing returns nothing
local timer ti=CreateTimer()
local trigger t
call TimerStart(ti, .01, true, function s__gamma_go)
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddAction(t, function s__gamma_cast)
endfunction

//library gamma ends
//library indicator:
function indicator___enumsel takes nothing returns nothing
local unit u=GetTriggerUnit()
if sc__RadiusStruct_find(u) == false and GetLocalPlayer() == GetTriggerPlayer() and sc__RadiusStruct_getr(u) != 0 then
call sc__RadiusStruct_initialize(u , sc__RadiusStruct_getr(u))
endif
set u=null
endfunction
function indicator___enumesc takes nothing returns boolean
local unit u=GetFilterUnit()
if indicator___pl == GetLocalPlayer() then
if esc == false then
if sc__RadiusStruct_find(u) == false and sc__RadiusStruct_getr(u) != 0. then
call sc__RadiusStruct_initialize(u , sc__RadiusStruct_getr(u))
endif
else
call sc__RadiusStruct_Kill(u)
endif
endif
set u=null
return false
endfunction
function indicator___act takes nothing returns nothing
local group g
set indicator___pl=GetTriggerPlayer()
set g=CreateGroup()
call GroupEnumUnitsInRange(g, GetCameraTargetPositionX(), GetCameraTargetPositionY(), 800, Filter(function indicator___enumesc))
set esc=not ( esc )
call DestroyGroup(g)
set g=null
endfunction
function indicator___init takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
loop
exitwhen i == slots
call TriggerRegisterPlayerEvent(t, Player(i), EVENT_PLAYER_END_CINEMATIC)
set i=i + 1
endloop
call TriggerAddAction(t, function indicator___act)
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START)
call TriggerAddAction(t, function indicator___enumsel)
endfunction

//library indicator ends
//library manatower:
function fromlvl takes unit u returns real
local integer id=GetUnitTypeId(u)
local integer p
if id == 0x746F7765 then
return manatower___gval * 0.5
elseif id == 0x746F7732 or id == 0x61636332 then
return manatower___gval * 2
elseif id == 0x746F7733 or id == 0x61636333 or id == 0x746F7734 then
return manatower___gval * 8
elseif id == 0x746F7735 then
return manatower___gval * 32
elseif id == 0x77697370 then
set p=GetUnitUserData(u)
return s__UnitDataStruct_val[p]
endif
return manatower___gval
endfunction
function KillGroupCallback takes nothing returns nothing
local unit u=GetEnumUnit()
set engsum=engsum + ( R2I(getmana(u)) )
endfunction
function s__ManaLinkStruct_initialize takes integer this,unit from,unit to returns nothing
local integer toUserData
local integer fromUserData
set s__ManaLinkStruct_from[this]=from
set s__ManaLinkStruct_to[this]=to
set s__ManaLinkStruct_l[this]=s__lig_add(from , to)
call s__lig_send(s__ManaLinkStruct_l[this],true , 4)
set s__ManaLinkStruct_list[s__ManaLinkStruct_pointer]=this
set s__ManaLinkStruct_struct_index[this]=s__ManaLinkStruct_pointer
set s__ManaLinkStruct_pointer=s__ManaLinkStruct_pointer + 1
set toUserData=GetUnitUserData(to)
set fromUserData=GetUnitUserData(from)
if ( GetUnitTypeId(from) == 0x77697370 ) then
if ( s__UnitDataStruct_from[fromUserData] == null ) then
set s__UnitDataStruct_from[toUserData]=from
else
set s__UnitDataStruct_from[toUserData]=s__UnitDataStruct_from[fromUserData]
endif
else
set s__UnitDataStruct_from[toUserData]=from
endif
if ( sc__UnitDataStruct_get(to) == pTRANS and GetOwningPlayer(from) == GetOwningPlayer(to) and s__UnitDataStruct_select[toUserData] ) then
call SelectUnitForPlayerSingle(to, GetOwningPlayer(from))
endif
endfunction
function s__ManaLinkStruct_enqueueForRemove takes integer this returns boolean
local boolean b=true
local integer i=0
local integer p
loop
exitwhen i == s__ManaLinkStruct_pointer_deleteQueue
if ( s__ManaLinkStruct_deleteQueue[i] == this ) then
return false
endif
set i=i + 1
endloop
set p=GetUnitUserData(s__ManaLinkStruct_from[this])
if ( s__UnitDataStruct_ptype[p] == pAFTERDESTROY and getmana(s__ManaLinkStruct_from[this]) == 0 ) then
call KillUnit(s__ManaLinkStruct_from[this])
set s__ManaLinkStruct_deleteQueue[s__ManaLinkStruct_pointer_deleteQueue]=this
set s__ManaLinkStruct_pointer_deleteQueue=s__ManaLinkStruct_pointer_deleteQueue + 1
return false
endif
if ( s__ManaLinkStruct_from[this] == null or s__ManaLinkStruct_to[this] == null or IsUnitDeadBJ(s__ManaLinkStruct_from[this]) or IsUnitDeadBJ(s__ManaLinkStruct_to[this]) or GetUnitTypeId(s__ManaLinkStruct_from[this]) == 0x6E303030 ) then
set s__ManaLinkStruct_deleteQueue[s__ManaLinkStruct_pointer_deleteQueue]=this
set s__ManaLinkStruct_pointer_deleteQueue=s__ManaLinkStruct_pointer_deleteQueue + 1
return false
endif
return true
endfunction
function s__ManaLinkStruct_clear takes integer this returns nothing
call s__lig_del(s__ManaLinkStruct_l[this])
set s__ManaLinkStruct_from[this]=null
set s__ManaLinkStruct_to[this]=null
set s__ManaLinkStruct_lt[this]=null
set s__ManaLinkStruct_pointer=s__ManaLinkStruct_pointer - 1
set s__ManaLinkStruct_struct_index[s__ManaLinkStruct_list[s__ManaLinkStruct_pointer]]=s__ManaLinkStruct_struct_index[this]
set s__ManaLinkStruct_list[s__ManaLinkStruct_struct_index[this]]=s__ManaLinkStruct_list[s__ManaLinkStruct_pointer]
call s__ManaLinkStruct_deallocate(this)
endfunction
function s__ManaLinkStruct_ismin takes integer this returns boolean
local integer j=0
local integer cjlocgn_00000000
loop
exitwhen j == s__ManaLinkStruct_pointer
set cjlocgn_00000000=s__ManaLinkStruct_list[j]
if ( s__ManaLinkStruct_from[cjlocgn_00000000] == s__ManaLinkStruct_from[this] and s__ManaLinkStruct_to[cjlocgn_00000000] != s__ManaLinkStruct_to[this] and getmana(s__ManaLinkStruct_to[cjlocgn_00000000]) < getmana(s__ManaLinkStruct_to[this]) and getmana(s__ManaLinkStruct_to[cjlocgn_00000000]) != getmax(s__ManaLinkStruct_to[cjlocgn_00000000]) ) then
return false
endif
set j=j + 1
endloop
return true
endfunction
function s__ManaLinkStruct_addlink takes unit from,unit to returns nothing
local integer i=0
local integer m
local integer p=GetUnitUserData(to)
if getmax(to) != 0 and from != to and s__UnitDataStruct_ptype[p] != pAFTERDESTROY then
loop
exitwhen i == s__ManaLinkStruct_pointer
set m=s__ManaLinkStruct_list[i]
if ( ( s__ManaLinkStruct_from[m] == from and s__ManaLinkStruct_to[m] == to ) or ( s__ManaLinkStruct_from[m] == to and s__ManaLinkStruct_to[m] == from ) and getmax(to) > 0 ) then
if GetUnitTypeId(s__ManaLinkStruct_to[m]) == 0x77697370 then
call KillUnit(s__ManaLinkStruct_to[m])
endif
call s__ManaLinkStruct_clear(m)
return
endif
set i=i + 1
endloop
if GetUnitTypeId(from) == 0x77697370 then
call UnitRemoveAbility(from, 0x73656E64)
endif
set m=s__ManaLinkStruct__allocate()
call s__ManaLinkStruct_initialize(m,from , to)
endif
endfunction
function s__ManaLinkStruct_sender takes nothing returns nothing
local integer i=0
local integer j=0
local unit from
local unit to
local real val
local integer ml
local integer p
local unit wisp
local boolean cjlocgn_00000000
loop
exitwhen j == s__ManaLinkStruct_pointer
set p=GetUnitUserData(s__ManaLinkStruct_from[s__ManaLinkStruct_list[j]])
set s__UnitDataStruct_b0[p]=false
set s__UnitDataStruct_val[p]=getmana(s__ManaLinkStruct_from[s__ManaLinkStruct_list[j]])
set s__UnitDataStruct_recivers[p]=0
set s__UnitDataStruct_resful[p]=0
set j=j + 1
endloop
set j=0
loop
exitwhen j == s__ManaLinkStruct_pointer_deleteQueue
set p=GetUnitUserData(s__ManaLinkStruct_from[s__ManaLinkStruct_deleteQueue[j]])
if GetUnitTypeId(s__ManaLinkStruct_from[s__ManaLinkStruct_deleteQueue[j]]) == 0x77697370 then
call KillUnit(s__ManaLinkStruct_from[s__ManaLinkStruct_deleteQueue[j]])
endif
if GetUnitTypeId(s__ManaLinkStruct_to[s__ManaLinkStruct_deleteQueue[j]]) == 0x77697370 and s__UnitDataStruct_ptype[p] != pAFTERDESTROY then
call KillUnit(s__ManaLinkStruct_to[s__ManaLinkStruct_deleteQueue[j]])
endif
call s__ManaLinkStruct_clear(s__ManaLinkStruct_deleteQueue[j])
set j=j + 1
endloop
set j=0
set s__ManaLinkStruct_pointer_deleteQueue=0
loop
exitwhen j == s__ManaLinkStruct_nextld
set ml=s__ManaLinkStruct_longdist[j]
set wisp=CreateUnit(GetOwningPlayer(s__ManaLinkStruct_from[ml]), 0x77697370, 0, 0, 0)
set p=sc__UnitDataStruct_add(wisp , 3)
set s__UnitDataStruct_val[p]=fromlvl(s__ManaLinkStruct_from[ml])
set s__UnitDataStruct_select[p]=false
call sc__UnitDataStruct_setval(wisp , fromlvl(s__ManaLinkStruct_from[ml]))
call polarunit(s__ManaLinkStruct_from[ml] , s__ManaLinkStruct_to[ml] , wisp , 450)
call UnitApplyTimedLifeBJ(120, 0x42544C46, wisp)
call SetUnitAbilityLevel(wisp, 0x73656E64, GetUnitAbilityLevel(s__ManaLinkStruct_from[ml], 0x73656E64))
call s__ManaLinkStruct_addlink(s__ManaLinkStruct_from[ml] , wisp)
call s__ManaLinkStruct_addlink(wisp , s__ManaLinkStruct_to[ml])
call s__ManaLinkStruct_clear(ml)
set j=j + 1
endloop
set wisp=null
set j=0
set s__ManaLinkStruct_nextld=0
loop
exitwhen i == s__ManaLinkStruct_pointer
set ml=s__ManaLinkStruct_list[i]
set cjlocgn_00000000=s__ManaLinkStruct_enqueueForRemove(ml)
set from=s__ManaLinkStruct_from[ml]
set to=s__ManaLinkStruct_to[ml]
if cjlocgn_00000000 then
if DistanceBetweenWidgets(from , to) > 650 and GetUnitTypeId(from) != sendL41 then
set s__ManaLinkStruct_longdist[s__ManaLinkStruct_nextld]=ml
set s__ManaLinkStruct_nextld=s__ManaLinkStruct_nextld + 1
endif
set val=fromlvl(from)
if getmana(from) < val then
set val=getmana(from)
endif
if getmax(to) - getmana(to) < val then
set val=getmax(to) - getmana(to)
endif
endif
set p=GetUnitUserData(s__ManaLinkStruct_from[s__ManaLinkStruct_list[j]])
if cjlocgn_00000000 and val > 0 and getmana(to) < getmax(to) and s__ManaLinkStruct_ismin(ml) then
call setmana(from , getmana(from) - val)
call setmana(to , getmana(to) + val)
if val / fromlvl(from) < 0.4 and not ( lcpu[GetPlayerId(GetTriggerPlayer())] ) then
call s__lig_send(s__ManaLinkStruct_l[ml],true , 0)
elseif val / fromlvl(from) < 0.7 and not ( lcpu[GetPlayerId(GetTriggerPlayer())] ) then
call s__lig_send(s__ManaLinkStruct_l[ml],true , 1)
else
call s__lig_send(s__ManaLinkStruct_l[ml],true , 2)
endif
call sc__UnitDataStruct_settrans(from , true)
call SetUnitAnimation(from, "stand alternate")
elseif cjlocgn_00000000 and ( getmana(to) == getmax(to) or ( getmana(from) == 0 and getmana(to) == 0 ) or sc__UnitDataStruct_gettrans(from) == true ) then
call s__lig_send(s__ManaLinkStruct_l[ml],false , 4)
call SetUnitAnimation(from, "stand")
elseif cjlocgn_00000000 then
call s__lig_send(s__ManaLinkStruct_l[ml],false , 5)
call SetUnitAnimation(from, "stand")
endif
set i=i + 1
endloop
set from=null
set to=null
set j=activeplayer
loop
set cj_v666_boolean=( j == 0 )
set j=j - 1
exitwhen cj_v666_boolean
set engsum=0
call ForGroup(s__gamepr_units[actgpa[j]], function KillGroupCallback)
call SetPlayerState(s__gamepr_p[actgpa[j]], PLAYER_STATE_RESOURCE_GOLD, engsum)
endloop
endfunction
function s__ManaLinkStruct_bug takes unit to returns nothing
local integer i=0
return
loop
exitwhen i == s__ManaLinkStruct_pointer
if s__ManaLinkStruct_to[s__ManaLinkStruct_list[i]] == to then
call s__ManaLinkStruct_clear(s__ManaLinkStruct_list[i])
endif
set i=i + 1
endloop
endfunction
function Trig_send_Actions takes nothing returns nothing
if GetIssuedOrderIdBJ() == String2OrderIdBJ(manatower___STRORD_MANASEND) then
call s__ManaLinkStruct_addlink(GetTriggerUnit() , GetOrderTargetUnit())
endif
endfunction
function manatower___nearestUnitSearching takes nothing returns boolean
call s__pair_fromunit(manatower___pp1,GetFilterUnit())
if manatower___selectedUnit == null then
set manatower___selectedUnit=GetFilterUnit()
set manatower___selectedUnitDistance=distp(manatower___ppp , manatower___pp1)
elseif distp(manatower___ppp , manatower___pp1) < manatower___selectedUnitDistance then
set manatower___selectedUnit=GetFilterUnit()
set manatower___selectedUnitDistance=distp(manatower___ppp , manatower___pp1)
endif
return false
endfunction
function handler_createLinkAction takes nothing returns nothing
local unit cjlocgn_00000000
local unit cjlocgn_00000001
if ( GetIssuedOrderId() == String2OrderIdBJ(manatower___STRORD_MANASEND) ) then
set cjlocgn_00000000=GetTriggerUnit()
set s__pair_x[manatower___ppp]=GetOrderPointX()
set s__pair_y[manatower___ppp]=GetOrderPointY()
call s__pair_fromunit(manatower___pp1,cjlocgn_00000000)
call GroupEnumUnitsInRange(manatower___groupUnitSearching, GetOrderPointX(), GetOrderPointY(), 110, manatower___nearestUnitEnumerator)
if ( ( manatower___selectedUnit == null or GetUnitTypeId(manatower___selectedUnit) == 0x77697370 ) and GetUnitTypeId(cjlocgn_00000000) != sendL41 and distp(manatower___ppp , manatower___pp1) < 550 ) then
set cjlocgn_00000001=CreateUnit(GetOwningPlayer(cjlocgn_00000000), 0x77697370, GetOrderPointX(), GetOrderPointY(), 0)
call SetUnitPathing(cjlocgn_00000001, false)
call sc__UnitDataStruct_add(cjlocgn_00000001 , 3)
call sc__UnitDataStruct_setval(cjlocgn_00000001 , fromlvl(cjlocgn_00000000))
call UnitApplyTimedLifeBJ(80, 0x42544C46, cjlocgn_00000001)
call SetUnitAbilityLevel(cjlocgn_00000001, 0x73656E64, GetUnitAbilityLevel(cjlocgn_00000000, 0x73656E64))
call s__ManaLinkStruct_addlink(cjlocgn_00000000 , cjlocgn_00000001)
if ( GetUnitTypeId(GetTriggerUnit()) == 0x77697370 ) then
call UnitRemoveAbility(GetTriggerUnit(), 0x73656E64)
endif
set cjlocgn_00000001=null
else
call s__ManaLinkStruct_addlink(GetTriggerUnit() , manatower___selectedUnit)
endif
set cjlocgn_00000000=null
endif
set manatower___selectedUnit=null
endfunction
function manatower___init takes nothing returns nothing
local trigger t
set manatower___nearestUnitEnumerator=Filter(function manatower___nearestUnitSearching)
set manatower___groupUnitSearching=CreateGroup()
set manatower___ppp=s__pair__allocate()
set manatower___pp1=s__pair__allocate()
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
call TriggerAddAction(t, function Trig_send_Actions)
call TimerStart(CreateTimer(), sendtime, true, function s__ManaLinkStruct_sender)
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
call TriggerAddAction(t, function handler_createLinkAction)
endfunction

//library manatower ends
//library missile:
function s__Miss_Create takes integer Unitid,unit From,real Speed,unit Target returns integer
local integer M=s__Miss__allocate()
set s__Miss_m[M]=CreateUnit(Player(13), Unitid, GetUnitX(From), GetUnitY(From), 0)
call UnitAddAbility(s__Miss_m[M], 0x416D7266)
call UnitRemoveAbility(s__Miss_m[M], 0x416D7266)
set s__Miss_from[M]=From
set s__Miss_utar[M]=Target
set s__Miss_speed[M]=Speed
set s__Miss_vel[M]=s__vec_create(0 , 0 , 0)
call s__vec_fromunit(missile___temp,From)
set s__Miss_vm[M]=s__vec_u2v(From)
set s__Miss_vtar[M]=s__vec_u2v(Target)
call s__vec_setsub(s__Miss_vel[M],missile___temp , s__Miss_vtar[M])
set s__Miss_dist[M]=s__vec_getl(s__Miss_vel[M])
call s__vec_normalize(s__Miss_vel[M])
call s__vec_mul(s__Miss_vel[M],Speed)
set s__Miss_Steps[M]=R2I(s__Miss_dist[M] / Speed)
set missile___MISS[missile___NEXT]=M
set s__Miss_i[M]=missile___NEXT
set missile___NEXT=missile___NEXT + 1
return M
endfunction
function s__Miss_ModAuto takes integer this returns nothing
endfunction
function s__Miss_ModBuff takes integer this,integer tp,real time returns nothing
set s__Miss_buf[this]=true
set s__Miss_bufftype[this]=tp
set s__Miss_bufftime[this]=time
endfunction
function s__Miss_ModDmg takes integer this,real Dmg,attacktype At,boolean Splash,real SRad returns nothing
set s__Miss_bdmg[this]=true
set s__Miss_dmg[this]=Dmg
set s__Miss_at[this]=At
set s__Miss_splash[this]=Splash
set s__Miss_srad[this]=SRad
endfunction
function s__Miss_ModEff takes integer this,string dir returns nothing
endfunction
function s__Miss_REM takes integer this returns nothing
call KillUnit(s__Miss_m[this])
call removeunit(s__Miss_m[this] , 4)
set missile___NEXT=missile___NEXT - 1
set s__Miss_i[missile___MISS[missile___NEXT]]=s__Miss_i[this]
set missile___MISS[s__Miss_i[this]]=missile___MISS[missile___NEXT]
endfunction
function s__Miss_ACT takes integer this returns boolean
if s__Miss_Steps[this] > 0 then
call s__vec_sum(s__Miss_vm[this],s__Miss_vel[this])
call s__vec_tounit(s__Miss_vm[this],s__Miss_m[this])
set s__Miss_Steps[this]=s__Miss_Steps[this] - 1
else
if s__Miss_bdmg[this] == true then
call UnitDamageTarget(s__Miss_from[this], s__Miss_utar[this], s__Miss_dmg[this], true, true, s__Miss_at[this], DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
endif
if s__Miss_buf[this] == true then
call s__aurabuff_ADD(s__Miss_utar[this] , s__Miss_bufftime[this] , s__Miss_bufftype[this])
endif
call s__Miss_REM(this)
return false
endif
return true
endfunction
function s__Miss_go takes nothing returns nothing
local integer i=0
loop
exitwhen i >= missile___NEXT
if s__Miss_ACT(missile___MISS[i]) then
set i=i + 1
endif
endloop
endfunction
function s__Miss_onInit takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t, .025, true, function s__Miss_go)
set missile___temp=s__vec_create(0 , 0 , 0)
endfunction

//library missile ends
//library partsStruct:
function s__PartSetConfigStruct_addTower takes integer this,integer towerId returns nothing
set s___PartSetConfigStruct_towerIDS[s__PartSetConfigStruct_towerIDS[this]+s__PartSetConfigStruct_tower_pointer[this]]=towerId
set s__PartSetConfigStruct_tower_pointer[this]=s__PartSetConfigStruct_tower_pointer[this] + 1
endfunction
function s__PartSetConfigStruct_addPart takes integer this,integer partId,integer minLevel,integer maxLevel returns nothing
local integer part=s__partsStruct___PartConfigStruct__allocate()
call sc__partsStruct___PartConfigStruct_setData(part,partId , minLevel , maxLevel)
set s___PartSetConfigStruct_parts[s__PartSetConfigStruct_parts[this]+s__PartSetConfigStruct_parts_pointer[this]]=part
set s__PartSetConfigStruct_parts_pointer[this]=s__PartSetConfigStruct_parts_pointer[this] + 1
endfunction
function s__PartSetConfigStruct_lastPartOffset takes integer this,real x,real y,real r returns nothing
local integer part=s___PartSetConfigStruct_parts[s__PartSetConfigStruct_parts[this]+s__PartSetConfigStruct_parts_pointer[this] - 1]
set s__partsStruct___PartConfigStruct_x[part]=x
set s__partsStruct___PartConfigStruct_y[part]=y
set s__partsStruct___PartConfigStruct_r[part]=r
endfunction
function s__PartSetConfigStruct_isValidTarget takes integer this,unit target returns boolean
return sc__PartSetConfigStruct_getTargetLevel(this,target) > 0
endfunction
function s__PartSetConfigStruct_createTowerSetStruct takes integer this,unit target returns integer
local integer level=sc__PartSetConfigStruct_getTargetLevel(this,target)
local integer towerSet
local integer i
local integer cjlocgn_00000000
local integer cjlocgn_00000001
if ( level == 0 ) then
return 0
endif
set towerSet=s__partsStruct_TowerSetStruct__allocate()
set i=s__PartSetConfigStruct_parts_pointer[this]
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
set cjlocgn_00000000=s___PartSetConfigStruct_parts[s__PartSetConfigStruct_parts[this]+i]
if ( level >= s__partsStruct___PartConfigStruct_minLevel[cjlocgn_00000000] and level <= s__partsStruct___PartConfigStruct_maxLevel[cjlocgn_00000000] ) then
set cjlocgn_00000001=s__partsStruct___TowerPartStruct__allocate()
call sc__partsStruct___TowerPartStruct_init(cjlocgn_00000001,target , cjlocgn_00000000)
call sc__partsStruct_TowerSetStruct_addPart(towerSet,cjlocgn_00000001)
endif
endloop
return towerSet
endfunction
function s__PartSetConfigStruct_getTargetLevel takes integer this,unit target returns integer
local integer unitType=GetUnitTypeId(target)
local integer i=s__PartSetConfigStruct_tower_pointer[this]
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
if ( s___PartSetConfigStruct_towerIDS[s__PartSetConfigStruct_towerIDS[this]+i] == unitType ) then
return i + 1
endif
endloop
return 0
endfunction
function s__partsStruct___PartConfigStruct_setData takes integer this,integer partId,integer minLevel,integer maxLevel returns nothing
set s__partsStruct___PartConfigStruct_partId[this]=partId
set s__partsStruct___PartConfigStruct_minLevel[this]=minLevel
set s__partsStruct___PartConfigStruct_maxLevel[this]=maxLevel
endfunction
function s__partsStruct_TowerSetStruct_addPart takes integer this,integer part returns nothing
set s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+s__partsStruct_TowerSetStruct_parts_pointer[this]]=part
set s__partsStruct_TowerSetStruct_parts_pointer[this]=s__partsStruct_TowerSetStruct_parts_pointer[this] + 1
endfunction
function s__partsStruct_TowerSetStruct_applyOffset takes integer this returns nothing
local integer i=s__partsStruct_TowerSetStruct_parts_pointer[this]
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
call sc__partsStruct___TowerPartStruct_applyOffset(s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+i])
endloop
endfunction
function s__partsStruct_TowerSetStruct_onDestroy takes integer this returns nothing
local integer i=s__partsStruct_TowerSetStruct_parts_pointer[this]
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
call sc__partsStruct___TowerPartStruct_deallocate(s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+i])
endloop
set s__partsStruct_TowerSetStruct_parts_pointer[this]=0
endfunction

//Generated destructor of partsStruct_TowerSetStruct
function s__partsStruct_TowerSetStruct_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: partsStruct_TowerSetStruct")
        return
    elseif (si__partsStruct_TowerSetStruct_V[this]!=-1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: partsStruct_TowerSetStruct")
        return
    endif
    call s__partsStruct_TowerSetStruct_onDestroy(this)
    set si__partsStruct_TowerSetStruct_V[this]=si__partsStruct_TowerSetStruct_F
    set si__partsStruct_TowerSetStruct_F=this
endfunction
function s__partsStruct___TowerPartStruct_init takes integer this,unit target,integer conf returns nothing
set s__partsStruct___TowerPartStruct_config[this]=conf
set s__partsStruct___TowerPartStruct_target[this]=target
set s__partsStruct___TowerPartStruct_part[this]=CreateUnit(GetOwningPlayer(target), s__partsStruct___PartConfigStruct_partId[conf], s__partsStruct___PartConfigStruct_x[conf], s__partsStruct___PartConfigStruct_y[conf], s__partsStruct___PartConfigStruct_r[conf])
call sc__partsStruct___TowerPartStruct_applyOffset(this)
endfunction
function s__partsStruct___TowerPartStruct_applyOffset takes integer this returns nothing
call SetUnitX(s__partsStruct___TowerPartStruct_part[this], GetUnitX(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_x[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitY(s__partsStruct___TowerPartStruct_part[this], GetUnitY(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_y[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitFacing(s__partsStruct___TowerPartStruct_part[this], s__partsStruct___PartConfigStruct_r[s__partsStruct___TowerPartStruct_config[this]])
endfunction
function s__partsStruct___TowerPartStruct_onDestroy takes integer this returns nothing
call RemoveUnit(s__partsStruct___TowerPartStruct_part[this])
endfunction

//Generated destructor of partsStruct___TowerPartStruct
function s__partsStruct___TowerPartStruct_deallocate takes integer this returns nothing
    if this==null then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Attempt to destroy a null struct of type: partsStruct___TowerPartStruct")
        return
    elseif (si__partsStruct___TowerPartStruct_V[this]!=-1) then
        call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,1000.,"Double free of type: partsStruct___TowerPartStruct")
        return
    endif
    call s__partsStruct___TowerPartStruct_onDestroy(this)
    set si__partsStruct___TowerPartStruct_V[this]=si__partsStruct___TowerPartStruct_F
    set si__partsStruct___TowerPartStruct_F=this
endfunction
function partsStruct_writeNewPartSetConfig takes nothing returns integer
local integer conf=s__PartSetConfigStruct__allocate()
set partsStruct___list[partsStruct___pointer]=conf
set partsStruct___pointer=partsStruct___pointer + 1
return conf
endfunction
function partsStruct_checkAndCreate takes unit target returns integer
local integer i=partsStruct___pointer
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
if ( s__PartSetConfigStruct_isValidTarget(partsStruct___list[i],target) ) then
return s__PartSetConfigStruct_createTowerSetStruct(partsStruct___list[i],target)
endif
endloop
return 0
endfunction

//library partsStruct ends
//library prima:
function s__prima_findt takes trigger t returns integer
local integer p=0
local integer i=0
loop
exitwhen i == prima___nextprimaall
if s__prima_t[prima___primaall[i]] == t then
return prima___primaall[i]
endif
set i=i + 1
endloop
return p
endfunction
function s__prima_findu takes unit u returns integer
local integer p=0
local integer i=0
loop
exitwhen i >= prima___nextprimaall
if s__prima_u[prima___primaall[i]] == u then
return prima___primaall[i]
endif
set i=i + 1
endloop
return p
endfunction
function s__prima_rem takes integer this returns nothing
call ShowTextTagForceBJ(false, s__prima_text[this], GetPlayersAll())
call DestroyTextTag(s__prima_text[this])
call KillUnit(s__prima_u[this])
call DestroyTrigger(s__prima_t[this])
call DestroyGroup(s__prima_gu[this])
set prima___nextprimaall=prima___nextprimaall - 1
set s__prima_i[prima___primaall[prima___nextprimaall]]=s__prima_i[this]
set prima___primaall[s__prima_i[this]]=prima___primaall[prima___nextprimaall]
if s__prima_bonoff[this] == true then
set nextPrima=nextPrima - 1
set s__prima_i1[Prima[nextPrima]]=s__prima_i1[this]
set Prima[s__prima_i1[this]]=Prima[nextPrima]
endif
call s__prima_deallocate(this)
endfunction
function s__prima_hardrem takes nothing returns nothing
loop
exitwhen prima___nextprimaall == 0
call s__prima_rem(prima___primaall[0])
endloop
endfunction
function s__prima_killDat takes nothing returns nothing
local integer p=s__prima_findt(GetTriggeringTrigger())
local unit u=GetTriggerUnit()
if s__prima_kill[p] > 0 then
if IsUnitEnemy(u, GetOwningPlayer(s__prima_u[p])) and s__prima_bonoff[p] == true then
call KillUnit(u)
set s__prima_kill[p]=s__prima_kill[p] - 1
call SetTextTagTextBJ(s__prima_text[p], I2S(s__prima_kill[p]), 10)
call DestroyEffect(AddSpecialEffectTargetUnitBJ("overhead", u, "Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl"))
endif
else
call KillUnit(s__prima_u[p])
endif
set u=null
endfunction
function s__prima_Add takes unit u,integer kill returns nothing
local integer p
if s__prima_findu(u) != 0 then
return
endif
set p=s__prima__allocate()
set s__prima_u[p]=u
set s__prima_kill[p]=kill
set s__prima_t[p]=CreateTrigger()
call TriggerRegisterUnitInRangeSimple(s__prima_t[p], 200, u)
call TriggerAddAction(s__prima_t[p], function s__prima_killDat)
set prima___primaall[prima___nextprimaall]=p
set s__prima_i[p]=prima___nextprimaall
set prima___nextprimaall=prima___nextprimaall + 1
set s__prima_gu[p]=CreateGroup()
set s__prima_text[p]=CreateTextTagUnitBJ(I2S(s__prima_kill[p]), u, 100, 10, 30, 100, 30, 0)
endfunction
function s__prima_onUP takes nothing returns nothing
local unit u=GetTriggerUnit()
if GetUnitTypeId(u) == 0x70723031 then
call s__prima_Add(u , 10)
endif
set u=null
endfunction
function s__prima_onoff takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer p=s__prima_findu(u)
if GetIssuedOrderIdBJ() == String2OrderIdBJ("webon") then
call UnitRemoveAbility(u, 0x70726F6E)
call UnitAddAbility(u, 0x70726F66)
set s__prima_bonoff[p]=true
set s__prima_i1[p]=nextPrima
set Prima[nextPrima]=p
set nextPrima=nextPrima + 1
endif
if GetIssuedOrderIdBJ() == String2OrderIdBJ("voodoo") then
call UnitRemoveAbility(u, 0x70726F66)
call UnitAddAbility(u, 0x70726F6E)
set s__prima_bonoff[p]=false
set nextPrima=nextPrima - 1
set s__prima_i1[Prima[nextPrima]]=s__prima_i1[p]
set Prima[s__prima_i1[p]]=Prima[nextPrima]
call GroupClear(s__prima_gu[p])
endif
set u=null
endfunction
function s__prima_onDie takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer p=s__prima_findu(u)
if p != 0 then
call s__prima_rem(p)
endif
set u=null
endfunction
function s__prima_onInit takes nothing returns nothing
local trigger tr=CreateTrigger()
local integer i=0
call TriggerRegisterAnyUnitEventBJ(tr, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerAddAction(tr, function s__prima_onUP)
set tr=CreateTrigger()
loop
exitwhen i == slots
call TriggerRegisterPlayerUnitEventSimple(tr, Player(i), EVENT_PLAYER_UNIT_ISSUED_ORDER)
set i=i + 1
endloop
call TriggerRegisterPlayerUnitEventSimple(tr, Player(11), EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddAction(tr, function s__prima_onoff)
set tr=CreateTrigger()
set i=0
loop
exitwhen i == slots
call TriggerRegisterPlayerUnitEventSimple(tr, Player(i), EVENT_PLAYER_UNIT_DEATH)
set i=i + 1
endloop
call TriggerRegisterPlayerUnitEventSimple(tr, Player(11), EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(tr, function s__prima_onDie)
endfunction

//library prima ends
//library radiusIndicator:
function s__RadiusStruct_getr takes unit u returns real
if GetUnitTypeId(u) == 0x746F7765 or GetUnitTypeId(u) == 0x746F7732 or GetUnitTypeId(u) == 0x746F7733 or GetUnitTypeId(u) == 0x77697370 or GetUnitTypeId(u) == 0x746F7735 then
return 550.
elseif GetUnitTypeId(u) == 0x746F7734 then
return 1200.
elseif GetUnitTypeId(u) == 0x6E303034 then
return 300.
endif
return .0
endfunction
function s__RadiusStruct_initialize takes unit u,real r returns integer
local integer lc
local integer j=24
local integer i=0
if ( sc__RadiusStruct_find(u) ) then
return 0
endif
set lc=s__RadiusStruct__allocate()
set s__RadiusStruct_u[lc]=u
call s__pair_fromunit(radiusIndicator___pp,u)
call s__pair_past(radiusIndicator___p1,radiusIndicator___pp)
call s__pair_polar(radiusIndicator___p1,r , 0)
if lcpu[GetPlayerId(GetTriggerPlayer())] then
set j=j - 7
endif
loop
exitwhen i == j
call s__pair_past(radiusIndicator___p2,radiusIndicator___pp)
call s__pair_polar(radiusIndicator___p2,r , ( 360 / j ) * ( i + 1 ))
set s___RadiusStruct_l[s__RadiusStruct_l[lc]+i]=AddLightningEx("CICL", true, s__pair_x[radiusIndicator___p1], s__pair_y[radiusIndicator___p1], s__pair_z[radiusIndicator___p1], s__pair_x[radiusIndicator___p2], s__pair_y[radiusIndicator___p2], s__pair_z[radiusIndicator___p2])
call SetLightningColor(s___RadiusStruct_l[s__RadiusStruct_l[lc]+i], 0, 0.8, 0.2, s__RadiusStruct_a[lc])
call s__pair_past(radiusIndicator___p1,radiusIndicator___p2)
set i=i + 1
endloop
set radiusIndicator___lca[radiusIndicator___next]=lc
set radiusIndicator___next=radiusIndicator___next + 1
return lc
endfunction
function s__RadiusStruct_Off takes unit u returns nothing
local integer i=0
loop
exitwhen i == radiusIndicator___next
if s__RadiusStruct_u[radiusIndicator___lca[i]] == u then
set s__RadiusStruct_pauseFade[radiusIndicator___lca[i]]=false
return
endif
set i=i + 1
endloop
endfunction
function s__RadiusStruct_Kill takes unit u returns nothing
local integer i=0
loop
exitwhen i == radiusIndicator___next
if s__RadiusStruct_u[radiusIndicator___lca[i]] == u then
set s__RadiusStruct_kill[radiusIndicator___lca[i]]=true
return
endif
set i=i + 1
endloop
endfunction
function s__RadiusStruct_find takes unit u returns boolean
local integer i=0
loop
exitwhen i == radiusIndicator___next
if s__RadiusStruct_u[radiusIndicator___lca[i]] == u then
return true
endif
set i=i + 1
endloop
return false
endfunction
function s__RadiusStruct_go takes nothing returns nothing
local integer i=0
local integer n=0
loop
exitwhen i >= radiusIndicator___next
if ( s__RadiusStruct_pauseFade[radiusIndicator___lca[i]] == false and s__RadiusStruct_permanent[radiusIndicator___lca[i]] == false ) then
if s__RadiusStruct_a[radiusIndicator___lca[i]] > 0.03 and s__RadiusStruct_kill[radiusIndicator___lca[i]] != true then
set s__RadiusStruct_a[radiusIndicator___lca[i]]=s__RadiusStruct_a[radiusIndicator___lca[i]] - 0.01
loop
exitwhen n >= 24 or s___RadiusStruct_l[s__RadiusStruct_l[radiusIndicator___lca[i]]+n] == null
call SetLightningColor(s___RadiusStruct_l[s__RadiusStruct_l[radiusIndicator___lca[i]]+n], 0, 0.8, 0.2, s__RadiusStruct_a[radiusIndicator___lca[i]])
set n=n + 1
endloop
set n=0
set i=i + 1
else
loop
exitwhen n >= 24 or s___RadiusStruct_l[s__RadiusStruct_l[radiusIndicator___lca[i]]+n] == null
call DestroyLightning(s___RadiusStruct_l[s__RadiusStruct_l[radiusIndicator___lca[i]]+n])
set s___RadiusStruct_l[s__RadiusStruct_l[radiusIndicator___lca[i]]+n]=null
set n=n + 1
endloop
set n=0
call s__RadiusStruct_deallocate(radiusIndicator___lca[i])
set radiusIndicator___next=radiusIndicator___next - 1
set radiusIndicator___lca[i]=radiusIndicator___lca[radiusIndicator___next]
endif
endif
set i=i + 1
endloop
endfunction
function s__RadiusStruct_onInit takes nothing returns nothing
local timer ti
set radiusIndicator___pp=s__pair__allocate()
set radiusIndicator___p1=s__pair__allocate()
set radiusIndicator___p2=s__pair__allocate()
set ti=CreateTimer()
call TimerStart(ti, 0.5, true, function s__RadiusStruct_go)
endfunction

//library radiusIndicator ends
//library svod:
function s__svod_go takes nothing returns nothing
local integer i=0
local integer s
loop
exitwhen i == svod___next
set s=svod___Svod[i]
if s__svod_h[s] > GetPointZ(s__svod_x[s] , s__svod_y[s]) then
if s__svod_t[s] < 95 and s__svod_l[s] != null then
call DestroyLightning(s__svod_l[s])
set s__svod_l[s]=null
endif
set s__svod_h[s]=s__svod_h[s] - 30
call SetUnitZ(s__svod_r[s] , s__svod_h[s])
set s__svod_t[s]=s__svod_t[s] - 1
set i=i + 1
else
set svod___forRes[svod___nextfr]=CreateDestructable(0x42303030, s__svod_x[s], s__svod_y[s], GetRandomDirectionDeg(), 0.50, 0)
set svod___nextfr=svod___nextfr + 1
call UnitDamagePoint(s__svod_u[s], 0, 100, s__svod_x[s], s__svod_y[s], 20, false, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
call KillUnit(s__svod_r[s])
call s__svod_deallocate(s)
set svod___next=svod___next - 1
set s__svod_index[svod___Svod[svod___next]]=i
set svod___Svod[i]=svod___Svod[svod___next]
endif
endloop
endfunction
function s__svod_clear takes nothing returns nothing
local integer i=svod___nextfr
loop
set i=i - 1
if svod___forRes[i] != null then
call KillDestructable(svod___forRes[i])
endif
exitwhen i <= 0
endloop
set svod___nextfr=0
endfunction
function s__svod_onInit takes nothing returns nothing
local timer ti=CreateTimer()
call TimerStart(ti, .025, true, function s__svod_go)
endfunction
function svod___comp takes nothing returns nothing
local integer cjlocgn_00000000
if GetSpellAbilityId() == 0x53564F44 then
set cjlocgn_00000000=s__svod__allocate()
set s__svod_u[cjlocgn_00000000]=GetTriggerUnit()
set s__svod_x[cjlocgn_00000000]=GetSpellTargetX()
set s__svod_y[cjlocgn_00000000]=GetSpellTargetY()
set s__svod_l[cjlocgn_00000000]=AddLightningEx("NONE", true, GetUnitX(s__svod_u[cjlocgn_00000000]), GetUnitY(s__svod_u[cjlocgn_00000000]), GetUnitZ(s__svod_u[cjlocgn_00000000]), s__svod_x[cjlocgn_00000000], s__svod_y[cjlocgn_00000000], 1000)
set s__svod_r[cjlocgn_00000000]=CreateUnit(GetOwningPlayer(s__svod_u[cjlocgn_00000000]), 0x726F6331, s__svod_x[cjlocgn_00000000], s__svod_y[cjlocgn_00000000], 0)
call UnitAddAbility(s__svod_r[cjlocgn_00000000], 0x416D7266)
call UnitRemoveAbility(s__svod_r[cjlocgn_00000000], 0x416D7266)
call SetUnitZ(s__svod_r[cjlocgn_00000000] , 1000)
set svod___Svod[svod___next]=cjlocgn_00000000
set s__svod_index[cjlocgn_00000000]=svod___next
set svod___next=svod___next + 1
endif
endfunction
function svod___init takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddAction(t, function svod___comp)
endfunction

//library svod ends
//library createunittime:
function s__cftstruct_onRest takes nothing returns nothing
local integer i=0
loop
exitwhen i == createunittime___nextcft
call s__cftstruct_deallocate(createunittime___cfta[i])
set i=i + 1
endloop
set createunittime___nextcft=0
endfunction
function createunittime___ord takes unit u returns nothing
if u == null then
call print("null creep/bug/save replay pls")
endif
call sc__UnitDataStruct_add(u , pCREEP)
call GroupAddUnit(creepsgro, u)
set creepsnum=creepsnum + 1
call RemoveGuardPosition(u)
call SetUnitPathing(u, true)
call SetUnitColor(u, ConvertPlayerColor(13))
call cmindtarget(u)
endfunction
function CreateUnitTime takes player p,integer id,real x,real y returns nothing
local integer c=s__cftstruct__allocate()
set s__cftstruct_p[c]=p
set s__cftstruct_id[c]=id
set s__cftstruct_x[c]=x
set s__cftstruct_y[c]=y
set createunittime___cfta[createunittime___nextcft]=c
set s__cftstruct_i[c]=createunittime___nextcft
set createunittime___nextcft=createunittime___nextcft + 1
endfunction
function createunittime___go takes nothing returns nothing
local integer i
local unit cjlocgn_00000000
set i=GetRandomInt(0, createunittime___nextcft - 1)
if createunittime___nextcft != 0 and creepsnum < 45 + 10 then
set createunittime___nextcft=createunittime___nextcft - 1
set cjlocgn_00000000=CreateUnit(s__cftstruct_p[createunittime___cfta[i]], s__cftstruct_id[createunittime___cfta[i]], s__cftstruct_x[createunittime___cfta[i]], s__cftstruct_y[createunittime___cfta[i]], 0)
call createunittime___ord(cjlocgn_00000000)
call s__cftstruct_deallocate(createunittime___cfta[i])
set createunittime___cfta[i]=createunittime___cfta[createunittime___nextcft]
if createunittime___nextcft > spawnperiod / 0.25 then
call createunittime___go()
endif
set cjlocgn_00000000=null
endif
endfunction
function createunittime___onInit takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t, .25, true, function createunittime___go)
endfunction

//library createunittime ends
//library cristals:
function s__cristsender_add takes unit from,unit to returns nothing
local integer c=s__cristsender__allocate()
set s__cristsender_from[c]=from
set s__cristsender_to[c]=to
set s__cristsender_l[c]=s__lig_add(from , to)
call s__lig_send(s__cristsender_l[c],true , 4)
set cristals___csa[cristals___nextcs]=c
set cristals___nextcs=cristals___nextcs + 1
endfunction
function s__cristsender_act takes integer this returns boolean
local real r
local integer c=sc__crist_find(s__cristsender_from[this])
if s__crist_nrg[c] > 1 and IsUnitAliveBJ(s__cristsender_to[this]) and DistanceBetweenWidgets(s__cristsender_from[this] , s__cristsender_to[this]) < cristals___radius then
if getmana(s__cristsender_to[this]) < getmax(s__cristsender_to[this]) then
set r=cristals___rad
if getmax(s__cristsender_to[this]) - getmana(s__cristsender_to[this]) < cristals___rad then
set r=getmax(s__cristsender_to[this]) - getmana(s__cristsender_to[this])
endif
call setmana(s__cristsender_to[this] , getmana(s__cristsender_to[this]) + r)
set s__crist_nrg[c]=s__crist_nrg[c] - r
call s__lig_send(s__cristsender_l[this],true , 0)
else
call s__lig_send(s__cristsender_l[this],false , 4)
endif
else
return false
endif
return true
endfunction
function s__cristsender_go takes nothing returns nothing
local integer i=0
local integer c
loop
exitwhen i == cristals___nextcs
if s__cristsender_act(cristals___csa[i]) == false then
set cristals___nextcs=cristals___nextcs - 1
call s__lig_del(s__cristsender_l[cristals___csa[i]])
set cristals___csa[i]=cristals___csa[cristals___nextcs]
else
set i=i + 1
endif
endloop
endfunction
function s__cristsender_onInit takes nothing returns nothing
local timer t=CreateTimer()
call TimerStart(t, sendtime, true, function s__cristsender_go)
set t=null
endfunction
function s__crist_UnitsForCrist takes nothing returns nothing
local unit u
local integer i=0
local group scangroup=CreateGroup()
local real m
local integer c
local integer p
loop
exitwhen i == cristals___nextcr
set c=cristals___crar[i]
call GroupEnumUnitsInRange(scangroup, GetUnitX(s__crist_u[c]), GetUnitY(s__crist_u[c]), cristals___radius, null)
set u=FirstOfGroup(scangroup)
loop
exitwhen u == null
set p=GetUnitUserData(u)
if IsUnitInGroup(u, s__crist_g[c]) == false and s__crist_nrg[c] > 1 and getmax(u) > 0 and GetUnitTypeId(u) != 0x6B726573 and s__UnitDataStruct_ptype[p] != pAFTERDESTROY then
call GroupAddUnit(s__crist_g[c], u)
call s__cristsender_add(s__crist_u[c] , u)
endif
call GroupRemoveUnit(scangroup, u)
set u=FirstOfGroup(scangroup)
endloop
set i=i + 1
endloop
call DestroyGroup(scangroup)
set scangroup=null
set u=null
endfunction
function s__crist_radiate takes nothing returns nothing
local integer i=0
local real m
loop
exitwhen i == cristals___nextcr
set i=i + 1
endloop
endfunction
function s__crist_update_g takes nothing returns nothing
local integer i=0
loop
exitwhen i == cristals___nextcr
call SetResourceAmount(s__crist_u[cristals___crar[i]], R2I(s__crist_nrg[cristals___crar[i]]))
set i=i + 1
endloop
endfunction
function s__crist_add takes unit u returns nothing
local integer c=s__crist__allocate()
call SetResourceAmount(u, GetRandomInt(cristals___mincrist, cristals___maxcrist))
set s__crist_nrg[c]=I2R(GetResourceAmount(u))
set s__crist_i[c]=cristals___nextcr
set s__crist_u[c]=u
set s__crist_g[c]=CreateGroup()
set cristals___crar[cristals___nextcr]=c
set cristals___nextcr=cristals___nextcr + 1
endfunction
function s__crist_find takes unit u returns integer
local integer i=cristals___nextcr
loop
set i=i - 1
if s__crist_u[cristals___crar[i]] == u then
return cristals___crar[i]
endif
exitwhen i == 0
endloop
return 0
endfunction
function s__crist_recirculate takes nothing returns nothing
local integer i=cristals___nextcr
local integer cjlocgn_00000000
loop
set i=i - 1
set s__crist_nrg[cristals___crar[i]]=GetRandomInt(cristals___mincrist, cristals___maxcrist)
set cjlocgn_00000000=s__RadiusStruct_initialize(s__crist_u[cristals___crar[i]] , s__RadiusStruct_getr(s__crist_u[cristals___crar[i]]))
set s__RadiusStruct_permanent[cjlocgn_00000000]=true
exitwhen i == 0
endloop
endfunction
function s__crist_onInit takes nothing returns nothing
local timer t=CreateTimer()
local unit u
local group scangroup=CreateGroup()
call GroupEnumUnitsInRect(scangroup, GetPlayableMapRect(), null)
set u=FirstOfGroup(scangroup)
loop
exitwhen u == null
if GetUnitTypeId(u) == cristals___cris_id or GetUnitTypeId(u) == 0x6E303033 then
call s__crist_add(u)
call AddSpecialEffect("Abilities\\Spells\\Other\\Drain\\ManaDrainCaster.mdl", GetUnitX(u), GetUnitY(u))
call GroupRemoveUnit(scangroup, u)
else
call GroupRemoveUnit(scangroup, u)
endif
set u=FirstOfGroup(scangroup)
endloop
call s__crist_UnitsForCrist()
call TimerStart(t, 0.5, true, function s__crist_update_g)
set t=CreateTimer()
call TimerStart(t, 2, true, function s__crist_UnitsForCrist)
set u=null
set t=null
call DestroyGroup(scangroup)
set scangroup=null
endfunction
function cristals___init takes nothing returns nothing
endfunction

//library cristals ends
//library partsConfig:
function partsConfig_setup takes nothing returns nothing
local integer c=partsStruct_writeNewPartSetConfig()
call s__PartSetConfigStruct_addTower(c,0x676D3031)
call s__PartSetConfigStruct_addTower(c,0x676D3032)
call s__PartSetConfigStruct_addTower(c,0x676D3033)
call s__PartSetConfigStruct_addTower(c,0x676D3034)
call s__PartSetConfigStruct_addTower(c,0x676D3035)
call s__PartSetConfigStruct_addTower(c,0x676D3036)
call s__PartSetConfigStruct_addTower(c,0x676D3037)
call s__PartSetConfigStruct_addTower(c,0x676D3038)
call s__PartSetConfigStruct_addTower(c,0x676D3039)
call s__PartSetConfigStruct_addTower(c,0x676D3130)
call s__PartSetConfigStruct_addPart(c,0x70743537 , 1 , 5)
call s__PartSetConfigStruct_addPart(c,0x70743038 , 2 , 4)
call s__PartSetConfigStruct_lastPartOffset(c,15 , 0 , 10)
call s__PartSetConfigStruct_addPart(c,0x70743030 , 3 , 9)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 70)
call s__PartSetConfigStruct_addPart(c,0x70743435 , 4 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743435 , 4 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743435 , 4 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743435 , 4 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743434 , 5 , 7)
call s__PartSetConfigStruct_addPart(c,0x70743132 , 6 , 8)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743438 , 8 , 10)
call s__PartSetConfigStruct_addPart(c,0x70743438 , 8 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 270)
call s__PartSetConfigStruct_addPart(c,0x70743439 , 8 , 9)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 9 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 0 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 9 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 9 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 0 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743437 , 9 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,0 , - 50 , 0)
set c=partsStruct_writeNewPartSetConfig()
call s__PartSetConfigStruct_addTower(c,0x746F7765)
call s__PartSetConfigStruct_addTower(c,0x746F7732)
call s__PartSetConfigStruct_addTower(c,0x746F7733)
call s__PartSetConfigStruct_addTower(c,0x746F7734)
call s__PartSetConfigStruct_addTower(c,0x746F7735)
call s__PartSetConfigStruct_addTower(c,0x746F7736)
call s__PartSetConfigStruct_addTower(c,0x746F7737)
call s__PartSetConfigStruct_addPart(c,0x73653035 , 1 , 7)
call s__PartSetConfigStruct_addPart(c,0x73653036 , 2 , 3)
call s__PartSetConfigStruct_addPart(c,0x73653033 , 3 , 5)
call s__PartSetConfigStruct_addPart(c,0x73653031 , 4 , 4)
call s__PartSetConfigStruct_addPart(c,0x73653032 , 5 , 5)
call s__PartSetConfigStruct_addPart(c,0x73653034 , 6 , 6)
call s__PartSetConfigStruct_addPart(c,0x73653039 , 6 , 6)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 270)
call s__PartSetConfigStruct_addPart(c,0x73653039 , 6 , 6)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 320)
call s__PartSetConfigStruct_addPart(c,0x73653039 , 6 , 6)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 180)
call s__PartSetConfigStruct_addPart(c,0x73653039 , 6 , 6)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 30)
call s__PartSetConfigStruct_addPart(c,0x73653038 , 7 , 7)
call s__PartSetConfigStruct_addPart(c,0x73653037 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,30 , 30 , 230)
set c=partsStruct_writeNewPartSetConfig()
call s__PartSetConfigStruct_addTower(c,0x67693031)
call s__PartSetConfigStruct_addTower(c,0x67693032)
call s__PartSetConfigStruct_addTower(c,0x67693033)
call s__PartSetConfigStruct_addTower(c,0x67693034)
call s__PartSetConfigStruct_addTower(c,0x67693035)
call s__PartSetConfigStruct_addTower(c,0x67693036)
call s__PartSetConfigStruct_addTower(c,0x67693037)
call s__PartSetConfigStruct_addTower(c,0x67693038)
call s__PartSetConfigStruct_addTower(c,0x67693039)
call s__PartSetConfigStruct_addTower(c,0x67693130)
call s__PartSetConfigStruct_addPart(c,0x70743539 , 1 , 3)
call s__PartSetConfigStruct_addPart(c,0x70743431 , 2 , 10)
call s__PartSetConfigStruct_addPart(c,0x70743430 , 3 , 4)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743430 , 3 , 4)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743430 , 3 , 4)
call s__PartSetConfigStruct_lastPartOffset(c,50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743430 , 3 , 4)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743337 , 5 , 8)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743337 , 5 , 8)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743337 , 5 , 8)
call s__PartSetConfigStruct_lastPartOffset(c,50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743337 , 5 , 8)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743338 , 4 , 5)
call s__PartSetConfigStruct_addPart(c,0x70743035 , 4 , 6)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 310)
call s__PartSetConfigStruct_addPart(c,0x70743338 , 6 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743338 , 6 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743338 , 6 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,50 , 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743338 , 6 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,- 50 , - 50 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743336 , 7 , 8)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 315)
call s__PartSetConfigStruct_addPart(c,0x70743033 , 8 , 9)
call s__PartSetConfigStruct_addPart(c,0x70743337 , 9 , 9)
call s__PartSetConfigStruct_addPart(c,0x70743432 , 9 , 9)
set c=partsStruct_writeNewPartSetConfig()
call s__PartSetConfigStruct_addTower(c,0x67703031)
call s__PartSetConfigStruct_addTower(c,0x67703032)
call s__PartSetConfigStruct_addTower(c,0x67703033)
call s__PartSetConfigStruct_addTower(c,0x67703034)
call s__PartSetConfigStruct_addTower(c,0x67703035)
call s__PartSetConfigStruct_addTower(c,0x67703036)
call s__PartSetConfigStruct_addTower(c,0x67703037)
call s__PartSetConfigStruct_addTower(c,0x67703038)
call s__PartSetConfigStruct_addTower(c,0x67703039)
call s__PartSetConfigStruct_addTower(c,0x67703130)
call s__PartSetConfigStruct_addPart(c,0x70743630 , 1 , 5)
call s__PartSetConfigStruct_addPart(c,0x70743238 , 2 , 2)
call s__PartSetConfigStruct_lastPartOffset(c,40 , 0 , 90)
call s__PartSetConfigStruct_addPart(c,0x70743238 , 2 , 2)
call s__PartSetConfigStruct_lastPartOffset(c,- 40 , 0 , 90)
call s__PartSetConfigStruct_addPart(c,0x70743238 , 2 , 2)
call s__PartSetConfigStruct_lastPartOffset(c,0 , - 40 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743238 , 2 , 2)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 40 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743332 , 3 , 3)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 225)
call s__PartSetConfigStruct_addPart(c,0x70743235 , 4 , 5)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 315)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 5 , 5)
call s__PartSetConfigStruct_lastPartOffset(c,40 , 0 , 270)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 5 , 5)
call s__PartSetConfigStruct_lastPartOffset(c,- 40 , 0 , 270)
call s__PartSetConfigStruct_addPart(c,0x70743234 , 6 , 10)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 0 , 315)
call s__PartSetConfigStruct_addPart(c,0x70743236 , 6 , 7)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,- 40 , 0 , 270)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,40 , 0 , 90)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,0 , - 40 , 0)
call s__PartSetConfigStruct_addPart(c,0x70743237 , 7 , 7)
call s__PartSetConfigStruct_lastPartOffset(c,0 , 40 , 180)
call s__PartSetConfigStruct_addPart(c,0x70743239 , 8 , 9)
call s__PartSetConfigStruct_addPart(c,0x70703237 , 9 , 9)
call s__PartSetConfigStruct_addPart(c,0x70743330 , 10 , 10)
endfunction

//library partsConfig ends
//library passport:
function s__UnitDataStruct_updateTowerConfig takes integer this returns boolean
local integer conf=sc__TowerBaseConfig_getByObjectId(GetUnitTypeId(s__UnitDataStruct_u[this]))
local integer oldConf=s__UnitDataStruct_towerConfig[this]
set s__UnitDataStruct_towerConfig[this]=conf
return oldConf != conf
endfunction
function s__UnitDataStruct_getData takes unit u returns integer
local integer data=GetUnitUserData(u)
return data
endfunction
function s__UnitDataStruct_get takes unit u returns integer
local integer id=GetUnitTypeId(u)
local integer t=0
if id == 0x746F7765 or id == 0x746F7731 or id == 0x77697370 then
set t=pTRANS
endif
return t
endfunction
function s__UnitDataStruct_settrans takes unit u,boolean b returns nothing
local integer p=GetUnitUserData(u)
set s__UnitDataStruct_b0[p]=b
endfunction
function s__UnitDataStruct_setval takes unit u,real v returns nothing
local integer p=GetUnitUserData(u)
set s__UnitDataStruct_val[p]=v
endfunction
function s__UnitDataStruct_getval takes unit u returns real
local integer p=GetUnitUserData(u)
return s__UnitDataStruct_val[p]
endfunction
function s__UnitDataStruct_gettrans takes unit u returns boolean
local integer p=GetUnitUserData(u)
return s__UnitDataStruct_b0[p]
endfunction
function s__UnitDataStruct_isCreep takes unit u returns boolean
local integer p=GetUnitUserData(u)
if s__UnitDataStruct_ptype[p] == pCREEP then
return true
endif
return false
endfunction
function s__UnitDataStruct_findCreepFromT takes trigger t returns integer
local integer i=0
local integer p
loop
exitwhen i > 1000
set p=i
if s__UnitDataStruct_ondest[p] == t then
return p
endif
endloop
return 0
endfunction
function s__UnitDataStruct_add takes unit u,integer t returns integer
local integer p=s__UnitDataStruct__allocate()
if t == 0 then
set s__UnitDataStruct_ptype[p]=s__UnitDataStruct_get(u)
else
set s__UnitDataStruct_ptype[p]=t
endif
set s__UnitDataStruct_u[p]=u
call s__UnitDataStruct_updateTowerConfig(p)
call SetUnitUserData(u, p)
return p
endfunction
function s__UnitDataStruct_rem takes unit u returns nothing
local integer p=GetUnitUserData(u)
call s__UnitDataStruct_deallocate(p)
endfunction
function s__UnitDataStruct_handler_construct takes nothing returns nothing
call s__UnitDataStruct_add(GetConstructingStructure() , pTOWER)
endfunction
function s__UnitDataStruct_onInit takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START)
call TriggerAddAction(t, function s__UnitDataStruct_handler_construct)
endfunction

//library passport ends
//library towerBaseConfig:
function s__TowerBaseConfig_getFromKey takes integer i returns integer
set s__TowerBaseConfig_values[i]=s__TowerBaseConfig__allocate()
set s__TowerBaseConfig_pointer=i + 1
return s__TowerBaseConfig_values[i]
endfunction
function s__TowerBaseConfig_getByObjectId takes integer id returns integer
local integer i=s__TowerBaseConfig_pointer
local integer cjlocgn_00000000
loop
set cj_v666_boolean=( i == 1 )
set i=i - 1
exitwhen cj_v666_boolean
set cjlocgn_00000000=s__TowerBaseConfig_values[i]
if ( cjlocgn_00000000 != 0 ) then
if ( s__TowerBaseConfig_unitid_int[cjlocgn_00000000] == 0 ) then
set s__TowerBaseConfig_unitid_int[cjlocgn_00000000]=s__ascii_string2int(s__TowerBaseConfig_unitid[cjlocgn_00000000])
endif
if ( s__TowerBaseConfig_unitid_int[cjlocgn_00000000] == id ) then
return cjlocgn_00000000
endif
if ( s__TowerBaseConfig_abilid_int[cjlocgn_00000000] == 0 ) then
set s__TowerBaseConfig_abilid_int[cjlocgn_00000000]=s__ascii_string2int(s__TowerBaseConfig_abilid[cjlocgn_00000000])
endif
if ( s__TowerBaseConfig_abilid_int[cjlocgn_00000000] == id ) then
return cjlocgn_00000000
endif
endif
endloop
return 0
endfunction

//library towerBaseConfig ends
//library upgradeProgress:
function s__UpgradeProgressStruct_destroyInstance takes integer this returns nothing
local unit ut=CreateUnit(Player(11), GetUnitTypeId(s__UpgradeProgressStruct_target[this]), 0, 0, 0)
call setmax(s__UpgradeProgressStruct_target[this] , getmax(ut))
call RemoveUnit(ut)
call setmana(s__UpgradeProgressStruct_target[this] , 0)
call UnitAddTypeBJ(UNIT_TYPE_MECHANICAL, s__UpgradeProgressStruct_target[this])
set ut=null
set s__UpgradeProgressStruct_target[this]=null
set s__UpgradeProgressStruct_pointer=s__UpgradeProgressStruct_pointer - 1
set s__UpgradeProgressStruct_struct_index[s__UpgradeProgressStruct_list[s__UpgradeProgressStruct_pointer]]=s__UpgradeProgressStruct_struct_index[this]
set s__UpgradeProgressStruct_list[s__UpgradeProgressStruct_struct_index[this]]=s__UpgradeProgressStruct_list[s__UpgradeProgressStruct_pointer]
call s__UpgradeProgressStruct_deallocate(this)
endfunction
function s__UpgradeProgressStruct_getmult takes unit u returns real
local integer id=GetUnitTypeId(u)
if id == 0x61636331 or id == 0x61636332 or id == 0x61636333 then
return 0.06
endif
return engmult
endfunction
function s__UpgradeProgressStruct_initUpdgradeHandling takes unit u returns nothing
local integer unitData=GetUnitUserData(u)
local integer progress
local real buildCost=0
call SetUnitVertexColorBJ(u, 100, 100, 100, 100)
if ( s__UnitDataStruct_towerSet[unitData] != 0 ) then
call s__partsStruct_TowerSetStruct_deallocate(s__UnitDataStruct_towerSet[unitData])
endif
set s__UnitDataStruct_towerSet[unitData]=partsStruct_checkAndCreate(u)
if ( GetUnitTypeId(u) == 0x746F7765 ) then
return
endif
set progress=s__UpgradeProgressStruct__allocate()
set s__UpgradeProgressStruct_target[progress]=u
set s__UpgradeProgressStruct_maxmana[progress]=getmax(u)
set s__UpgradeProgressStruct_list[s__UpgradeProgressStruct_pointer]=progress
set s__UpgradeProgressStruct_struct_index[progress]=s__UpgradeProgressStruct_pointer
set s__UpgradeProgressStruct_pointer=s__UpgradeProgressStruct_pointer + 1
if ( s__UnitDataStruct_towerConfig[unitData] != 0 ) then
set buildCost=s__TowerBaseConfig_buildCost[s__UnitDataStruct_towerConfig[unitData]]
call trace("buildCost @ towerConfig: " + R2S(buildCost))
else
set buildCost=getmax(u) * s__UpgradeProgressStruct_getmult(u)
call trace("buildCost @ getmult: " + R2S(buildCost))
endif
call setmax(u , buildCost)
call setmana(u , 0)
call UnitRemoveTypeBJ(UNIT_TYPE_MECHANICAL, u)
endfunction
function s__UpgradeProgressStruct_destroyAll takes nothing returns nothing
local integer i=s__UpgradeProgressStruct_pointer
set s__UpgradeProgressStruct_pointer=0
loop
exitwhen i == 0
set i=i - 1
call s__UpgradeProgressStruct_deallocate(s__UpgradeProgressStruct_list[i])
endloop
endfunction
function s__UpgradeProgressStruct_onSelfDestroy takes unit u returns nothing
local unit cjlocgn_00000000
if ( GetUnitTypeId(u) != 0x77697370 and GetUnitTypeId(u) != 0x746F7765 ) then
set cjlocgn_00000000=CreateUnit(GetOwningPlayer(u), 0x77697370, GetUnitX(u), GetUnitY(u), 0)
call SetUnitPathing(cjlocgn_00000000, false)
call setmax(cjlocgn_00000000 , getmax(u) * s__UpgradeProgressStruct_getmult(u) + getmana(u))
call setmana(cjlocgn_00000000 , getmax(cjlocgn_00000000))
call s__UnitDataStruct_add(cjlocgn_00000000 , pAFTERDESTROY)
call s__UnitDataStruct_setval(cjlocgn_00000000 , 1)
set cjlocgn_00000000=null
endif
endfunction
function s__UpgradeProgressStruct_getByUnit takes unit u returns integer
local integer i=0
loop
exitwhen i == s__UpgradeProgressStruct_pointer
if ( s__UpgradeProgressStruct_target[s__UpgradeProgressStruct_list[i]] == u ) then
return s__UpgradeProgressStruct_list[i]
endif
set i=i + 1
endloop
return 0
endfunction
function s__UpgradeProgressStruct_handler_timerUpdate takes nothing returns nothing
local integer i=0
local unit u
local integer p=0
local integer cjlocgn_00000000
local string cjlocgn_00000001
loop
exitwhen i == s__UpgradeProgressStruct_pointer
set cjlocgn_00000000=s__UpgradeProgressStruct_list[i]
set u=s__UpgradeProgressStruct_target[cjlocgn_00000000]
if ( u != null and IsUnitAliveBJ(u) ) then
set p=R2I(( getmana(u) / getmax(u) ) * 100)
call UnitSetUpgradeProgress(u, p)
call UnitSetConstructionProgress(u, p)
if ( s__UpgradeProgressStruct_lastMana[cjlocgn_00000000] == getmana(u) ) then
set s__UpgradeProgressStruct_time[cjlocgn_00000000]=s__UpgradeProgressStruct_time[cjlocgn_00000000] + ( upgradeProgress___UPDATE_INTERVAL_SECONDS )
endif
set s__UpgradeProgressStruct_lastMana[cjlocgn_00000000]=getmana(u)
if ( s__UpgradeProgressStruct_time[cjlocgn_00000000] == 30 or s__UpgradeProgressStruct_time[cjlocgn_00000000] == 60 ) then
if ( s__UpgradeProgressStruct_time[cjlocgn_00000000] == 30 ) then
set cjlocgn_00000001=GetLocalizedString("TRIGSTR_4")
else
set cjlocgn_00000001=GetLocalizedString("TRIGSTR_5")
endif
if ( GetLocalPlayer() == GetOwningPlayer(u) ) then
call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, GetLocalizedString("TRIGSTR_3") + GetUnitName(u) + cjlocgn_00000001)
endif
call s__Effect_ADD(u , 3 , "overhead" , "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl")
set s__UpgradeProgressStruct_time[cjlocgn_00000000]=s__UpgradeProgressStruct_time[cjlocgn_00000000] + ( upgradeProgress___UPDATE_INTERVAL_SECONDS )
endif
if ( s__UpgradeProgressStruct_time[cjlocgn_00000000] >= 90 ) then
call IssueImmediateOrderById(u, 851976)
endif
endif
if ( p >= 99 ) then
call UnitSetUpgradeProgress(u, 100)
call s__UpgradeProgressStruct_destroyInstance(cjlocgn_00000000)
else
set i=i + 1
endif
endloop
set u=null
endfunction
function s__UpgradeProgressStruct_handler_upgradeCancel takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer progress=s__UpgradeProgressStruct_getByUnit(u)
local unit cjlocgn_00000000
local integer cjlocgn_00000001
local integer data
if ( progress == 0 ) then
set u=null
return
endif
if ( getmana(u) > 10 ) then
set cjlocgn_00000000=CreateUnit(GetOwningPlayer(u), 0x77697370, GetUnitX(u), GetUnitY(u), 0)
call SetUnitPathing(cjlocgn_00000000, false)
call s__UnitDataStruct_add(cjlocgn_00000000 , pAFTERDESTROY)
call s__UnitDataStruct_setval(cjlocgn_00000000 , 1)
call setmax(cjlocgn_00000000 , getmana(u))
call setmana(cjlocgn_00000000 , getmax(cjlocgn_00000000))
if ( GetDyingUnit() == null ) then
set cjlocgn_00000001=GetUnitUserData(u)
set s__UnitDataStruct_wisp[cjlocgn_00000001]=cjlocgn_00000000
endif
set cjlocgn_00000000=null
endif
set data=s__UnitDataStruct_getData(u)
call s__UnitDataStruct_updateTowerConfig(data)
call s__UpgradeProgressStruct_destroyInstance(progress)
call s__ManaLinkStruct_bug(u)
set u=null
endfunction
function s__UpgradeProgressStruct_handler_upgradeStart takes nothing returns nothing
local unit u=GetTriggerUnit()
local unit c=GetConstructingStructure()
local integer data
if ( u == null ) then
set u=c
endif
set data=s__UnitDataStruct_getData(u)
call s__UnitDataStruct_updateTowerConfig(data)
call s__UpgradeProgressStruct_initUpdgradeHandling(u)
endfunction
function s__UpgradeProgressStruct_onInit takes nothing returns nothing
local trigger trig=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_UPGRADE_CANCEL)
call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(trig, function s__UpgradeProgressStruct_handler_upgradeCancel)
call TimerStart(CreateTimer(), upgradeProgress___UPDATE_INTERVAL_SECONDS, true, function s__UpgradeProgressStruct_handler_timerUpdate)
set trig=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_UPGRADE_START)
call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_CONSTRUCT_START)
call TriggerAddAction(trig, function s__UpgradeProgressStruct_handler_upgradeStart)
endfunction

//library upgradeProgress ends
//library creeps:
function s__point_make takes unit u returns nothing
local integer pt=s__point__allocate()
set s__point_p[pt]=s__pair_u2p(u)
set s__point_subType[pt]=R2I(getmana(u))
set s__point_loc[pt]=R2I(GetUnitFacing(u))
if GetUnitTypeId(u) == CREEP_TARGET then
set s__point_Type[pt]=creeps___PT_TARGET
set targarray[nexttarg]=pt
set nexttarg=nexttarg + 1
elseif GetUnitTypeId(u) == CREEP_RESP then
set s__point_Type[pt]=creeps___PT_RESPAWN
set resparray[nextresp]=pt
set nextresp=nextresp + 1
endif
endfunction
function s__point_scan takes nothing returns nothing
local unit u
set creeps___scangroup=CreateGroup()
call GroupEnumUnitsInRect(creeps___scangroup, GetPlayableMapRect(), null)
set u=FirstOfGroup(creeps___scangroup)
loop
exitwhen u == null
if GetUnitTypeId(u) != CREEP_RESP and GetUnitTypeId(u) != CREEP_TARGET then
call GroupRemoveUnit(creeps___scangroup, u)
else
call s__point_make(u)
call GroupRemoveUnit(creeps___scangroup, u)
call RemoveUnit(u)
endif
set u=FirstOfGroup(creeps___scangroup)
endloop
set u=null
endfunction
function s__point_ptinit takes nothing returns nothing
call s__point_scan()
endfunction
function s__creepinfo_setin takes integer id,integer lvl,integer Type,integer num returns nothing
local integer c=s__creepinfo__allocate()
set s__creepinfo_id[c]=id
set s__creepinfo_lvl[c]=lvl
set s__creepinfo_Type[c]=Type
set s__creepinfo_num[c]=num
if Type == 0 then
set creeps___allc[lvl]=c
elseif Type == 1 then
set creeps___basec[lvl]=c
elseif Type == 2 then
set creeps___subc[lvl]=c
endif
endfunction
function s__creepinfo_infinit takes nothing returns nothing
local integer lvl=1
local integer n=0
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763131 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763131 , lvl , creeps___SUBSID , 1)
set WAVE_SUBNUM[lvl]=20
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 6)
call s__creepinfo_setin(0x6C763131 , lvl , creeps___BASE , 6)
call s__creepinfo_setin(0x6C763131 , lvl , creeps___SUBSID , 6)
set WAVE_SUBNUM[lvl]=20
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x6C763132 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763133 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x6C763132 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763133 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x6C763134 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763132 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763133 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763134 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x6C763132 , lvl , creeps___SUBSID , 3)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763131 , lvl , creeps___ALL , 5)
call s__creepinfo_setin(0x6C763135 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763134 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763134 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763135 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x6C763134 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763232 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x6C763231 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x6C763232 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763232 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x6C763233 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763231 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763232 , lvl , creeps___ALL , 4)
call s__creepinfo_setin(0x6C763234 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763233 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763231 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x6C763235 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763234 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763233 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763235 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763234 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763235 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763235 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763232 , lvl , creeps___SUBSID , 7)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763331 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x6C763332 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763331 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763331 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x6C763333 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763332 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763332 , lvl , creeps___ALL , 1)
call s__creepinfo_setin(0x6C763334 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763333 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x6C763332 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x6C763334 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x6C763331 , lvl , creeps___SUBSID , 2)
set lvl=lvl + 1
set MAXLVL[0]=lvl
call s__creepinfo_setin(0x314C3132 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x314C3131 , lvl , creeps___BASE , 4)
call s__creepinfo_setin(0x314C3133 , lvl , creeps___SUBSID , 3)
set WAVE_END[lvl]=true
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3132 , lvl , creeps___ALL , 4)
call s__creepinfo_setin(0x314C3131 , lvl , creeps___BASE , 6)
call s__creepinfo_setin(0x314C3133 , lvl , creeps___SUBSID , 2)
set WAVE_END[lvl]=true
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3131 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x314C3133 , lvl , creeps___BASE , 7)
call s__creepinfo_setin(0x314C3134 , lvl , creeps___SUBSID , 3)
set WAVE_END[lvl]=true
set WAVE_SUBNUM[lvl]=3
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3132 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x314C3135 , lvl , creeps___BASE , 1)
call s__creepinfo_setin(0x314C3134 , lvl , creeps___SUBSID , 6)
set WAVE_SUBNUM[lvl]=2
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3134 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x314C3135 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x314C3134 , lvl , creeps___SUBSID , 1)
set WAVE_SUBNUM[lvl]=2
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3134 , lvl , creeps___ALL , 2)
call s__creepinfo_setin(0x314C3135 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x314C3136 , lvl , creeps___SUBSID , 1)
set lvl=lvl + 1
call s__creepinfo_setin(0x314C3131 , lvl , creeps___ALL , 3)
call s__creepinfo_setin(0x314C3137 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x314C3132 , lvl , creeps___SUBSID , 0)
set lvl=lvl + 1
call s__creepinfo_setin(0 , lvl , creeps___ALL , 0)
call s__creepinfo_setin(0x314C3137 , lvl , creeps___BASE , 2)
call s__creepinfo_setin(0x314C3138 , lvl , creeps___SUBSID , 1)
set WAVE_SUBNUM[lvl]=2
set WAVE_END[lvl]=true
set lvl=lvl + 1
set MAXLVL[1]=lvl
loop
exitwhen n > lvl
set WAVE_SUBNUM[lvl]=0
set n=n + 1
endloop
endfunction
function GO takes nothing returns nothing
local integer i=0
local integer n=0
local integer p
local unit u
local integer subwave_sub=0
set falseStartCountDown=falseStartCountDown - 1
if ( falseStartCountDown > 0 ) then
return
endif
if lvlnum >= MAXLVL[LOC] then
set lvlnum=0
set dispOnRes="WIN!"
call ExecuteFunc("restartgame")
call LeaderboardSetLabel(l, "WIN!")
return
endif
if creepsnum > 45 then
set u=null
return
endif
if WAVE_SUBNUM[lvlnum] != 0 then
set subwave_sub=spawnnummax - WAVE_SUBNUM[lvlnum]
endif
if spawnnum == spawnnummax - subwave_sub then
if not ( WAVE_END[lvlnum] ) or ( WAVE_END[lvlnum] and creepsnum == 0 ) then
set lvlnum=lvlnum + 1
set spawnnum=1
else
return
endif
else
set spawnnum=spawnnum + 1
endif
if LOC == 0 then
call LeaderboardSetLabel(l, "Волна " + I2S(lvlnum - lvlplus) + "." + I2S(spawnnum))
else
call LeaderboardSetLabel(l, "Волна: " + I2S(lvlnum - MAXLVL[LOC - 1] + 1) + "/" + I2S(MAXLVL[LOC] - MAXLVL[LOC - 1]) + "\nСпавн: " + I2S(spawnnum) + "/" + I2S(spawnnummax - subwave_sub))
endif
loop
exitwhen pause == true or i == nextresp
set p=resparray[i]
if s__point_loc[p] == LOC then
set n=0
loop
exitwhen n == s__creepinfo_num[creeps___allc[lvlnum]]
call CreateUnitTime(creepsplayer , s__creepinfo_id[creeps___allc[lvlnum]] , s__pair_x[s__point_p[p]] , s__pair_y[s__point_p[p]])
set n=n + 1
endloop
if s__point_subType[p] == creeps___BASE then
set n=0
loop
exitwhen n == s__creepinfo_num[creeps___basec[lvlnum]]
call CreateUnitTime(creepsplayer , s__creepinfo_id[creeps___basec[lvlnum]] , s__pair_x[s__point_p[p]] , s__pair_y[s__point_p[p]])
set n=n + 1
endloop
elseif s__point_subType[p] == creeps___SUBSID then
set n=0
loop
exitwhen n == s__creepinfo_num[creeps___subc[lvlnum]]
call CreateUnitTime(creepsplayer , s__creepinfo_id[creeps___subc[lvlnum]] , s__pair_x[s__point_p[p]] , s__pair_y[s__point_p[p]])
set n=n + 1
endloop
endif
endif
set i=i + 1
endloop
set u=null
endfunction
function creeps___ifdie takes nothing returns nothing
local unit u=GetTriggerUnit()
call s__UnitDataStruct_rem(u)
call GroupRemoveUnit(creepsgro, u)
set creepsnum=creepsnum - 1
call removeunit(u , 4)
set u=null
endfunction
function creeps___forgroonsto takes nothing returns nothing
local unit u=GetEnumUnit()
call compareXY(u)
if GetUnitCurrentOrder(u) == 0 then
call cmindtarget(u)
endif
set u=null
endfunction
function creeps___onStop takes nothing returns nothing
local unit u
local integer i=7
loop
exitwhen i < 1
set u=GroupPickRandomUnit(creepsgro)
if critical_num_of_creeps_in_area(u) then
call destroyDestructable(u)
endif
set i=i - 1
endloop
set u=null
call ForGroup(creepsgro, function creeps___forgroonsto)
endfunction
function creeps___init takes nothing returns nothing
local timer t
local trigger tt
local integer i=0
set spawner=CreateTimer()
set t=CreateTimer()
set tt=CreateTrigger()
call TimerStart(t, 1, true, function creeps___onStop)
set creepsgro=CreateGroup()
call s__creepinfo_infinit()
call s__point_ptinit()
call TriggerRegisterPlayerUnitEventSimple(tt, Player(10), EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(tt, function creeps___ifdie)
call TriggerSleepAction(0.2)
set l=CreateLeaderboard()
call LeaderboardSetLabel(l, GetLocalizedString("TRIGSTR_24"))
loop
call PlayerSetLeaderboard(Player(i), l)
set i=i + 1
exitwhen i == slots
endloop
endfunction

//library creeps ends
//library game:
function initdiff takes nothing returns nothing
set spawnnummax=8 - ( activeplayer / 2 )
set spawnperiod=10 - ( activeplayer / 2 )
set engmult=8 + activeplayer
if Diff == 0 then
set NoGem=true
set lvlplus=0
elseif Diff == 1 then
set NoGem=true
set spawnnummax=spawnnummax + 1
set spawnperiod=spawnperiod + 1
set engmult=engmult - 1
set lvlplus=0
elseif Diff == 2 then
set NoGem=true
set lvlplus=2
endif
if ( LOC == 1 ) then
set spawnperiod=spawnperiod + 2
endif
set lvlnum=1 + lvlplus
set spawnnum=0
if LOC == 1 then
set lvlnum=MAXLVL[0] + lvlplus
endif
endfunction
function Trig_basegem_Actions takes nothing returns nothing
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=20
loop
exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
call CreateItemLoc(s__rock_getrandomgem(), GetRandomLocInRect(gg_rct_base))
set bj_forLoopAIndex=bj_forLoopAIndex + 1
endloop
endfunction
function clearmapitems takes nothing returns nothing
call RemoveItem(GetEnumItem())
endfunction
function clearmap takes nothing returns nothing
local group g=CreateGroup()
local unit u
local integer cjlocgn_00000000
call GroupEnumUnitsInRect(g, GetPlayableMapRect(), null)
set u=FirstOfGroup(g)
loop
exitwhen u == null
call GroupRemoveUnit(g, u)
set cjlocgn_00000000=GetUnitTypeId(u)
if cjlocgn_00000000 != 0x6E303034 and cjlocgn_00000000 != 0x6E303033 then
call RemoveUnit(u)
endif
if GetUnitTypeId(u) == 0x7072696D then
call KillUnit(u)
endif
set u=FirstOfGroup(g)
endloop
call EnumItemsInRect(GetPlayableMapRect(), null, function clearmapitems)
set u=null
call DestroyGroup(g)
set g=null
endfunction
function addlink takes unit a,unit b returns nothing
call s__ManaLinkStruct_addlink(a , b)
endfunction
function initbase takes nothing returns nothing
local player p=Player(11)
local unit a
local unit b
local unit c
local unit d
if NoGem == false then
call Trig_basegem_Actions()
endif
if Diff != 0 then
set a=CreateUnit(p, 0x746F7732, 90., - 2004., 270.)
set b=CreateUnit(p, 0x746F7732, 90., - 1900., 270.)
call addlink(a , b)
set a=CreateUnit(p, 0x746F7732, 90., - 1806., 270.)
call addlink(b , a)
set c=CreateUnit(p, 0x746F7733, 0., - 1366., 270.)
call addlink(a , c)
set a=CreateUnit(p, 0x746F7765, - 90., - 2004., 270.)
set b=CreateUnit(p, 0x746F7732, - 90., - 1900., 270.)
call addlink(a , b)
set a=CreateUnit(p, 0x746F7732, - 90., - 1806., 270.)
call addlink(b , a)
call addlink(a , c)
set b=CreateUnit(p, 0x746F7733, 0., - 936., 270.)
call addlink(c , b)
set a=CreateUnit(p, 0x746F7733, - 100., - 300., 270.)
call UnitAddAbility(a, 0x416E6532)
call addlink(b , a)
set b=CreateUnit(p, 0x746F7733, 255., 0., 270.)
call UnitAddAbility(b, 0x416E6532)
call addlink(a , b)
set c=CreateUnit(p, 0x746F7733, - 255., 0., 270.)
call UnitAddAbility(c, 0x416E6532)
call addlink(a , c)
set a=CreateUnit(p, 0x67693031, - 350., - 350., 270.)
call addlink(c , a)
set a=CreateUnit(p, 0x67693031, 350., - 350., 270.)
call addlink(b , a)
set a=CreateUnit(p, 0x67693031, - 350., 350., 270.)
call addlink(c , a)
set a=CreateUnit(p, 0x67693031, 350., 350., 270.)
call addlink(b , a)
call IssueImmediateOrder(a, "healon")
set a=CreateUnit(p, healL1, - 450., 0., 270.)
call addlink(c , a)
call IssueImmediateOrder(a, "healon")
set a=CreateUnit(p, healL1, 450., 0., 270.)
call addlink(b , a)
call IssueImmediateOrder(a, "healon")
set a=CreateUnit(p, 0x70723031, 0., 0., 270.)
call s__prima_Add(a , 150)
call IssueImmediateOrder(a, "webon")
endif
set a=null
set b=null
set c=null
endfunction
function initbase1 takes nothing returns nothing
local player p=Player(11)
local unit a
local unit b
local unit c
local unit d
if NoGem == false then
call Trig_basegem_Actions()
endif
if Diff != 0 then
set a=CreateUnit(p, 0x67616D6D, - 300., 7200., 270.)
set b=CreateUnit(p, 0x67616D6D, 180., 7200., 270.)
endif
set a=null
set b=null
set c=null
endfunction
function restartgame takes nothing returns nothing
if restarting == true then
return
endif
set restarting=true
call CinematicFilterGenericBJ(3, BLEND_MODE_ADDITIVE, "ReplaceableTextures\\CameraMasks\\DiagonalSlash_mask.blp", 100, 100, 100, 100, 0, 0, 0, 0)
call DisplayCineFilterBJ(true)
if dispOnRes != "" then
call print1(dispOnRes)
endif
call s__UpgradeProgressStruct_destroyAll()
call s__destsave_renu()
call s__svod_clear()
call clearmap()
call s__cftstruct_onRest()
call s__crist_recirculate()
call PauseTimer(spawner)
if LOC == 0 then
call initbase()
elseif LOC == 1 then
call SetCameraPosition(0, 6777)
endif
call sc__gamepr_gameStart()
call GroupClear(creepsgro)
set creepsnum=0
call PauseGame(false)
call PlayMusicBJ("MIDI\\egtd1.mid")
call VolumeGroupSetVolumeBJ(SOUND_VOLUMEGROUP_MUSIC, 200.00)
call VolumeGroupSetVolumeBJ(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, 0.00)
call DisplayCineFilterBJ(false)
set restarting=false
set dispOnRes=""
endfunction
function game___Votediff takes nothing returns nothing
local button b=GetClickedButton()
local player p=GetTriggerPlayer()
local integer id=GetPlayerId(p)
if b == b1 then
set but1=but1 + 1
elseif b == b2 then
set but2=but2 + 1
endif
set vote=vote - 1
if vote == 0 then
if ( but0 >= but1 and but0 >= but2 ) then
set Diff=0
elseif ( but1 >= but0 and but1 >= but2 ) then
set Diff=1
elseif but2 >= but0 and but2 >= but1 then
set Diff=2
endif
call restartgame()
endif
endfunction
function govotedif takes nothing returns nothing
local dialog d
local trigger t
local integer i=0
set vote=activeplayer
set d=DialogCreate()
call DialogSetMessage(d, "Уровень сложности:")
set b1=DialogAddButton(d, "Средний", 0)
set b2=DialogAddButton(d, "Высокий", 0)
set t=CreateTrigger()
call TriggerRegisterDialogEvent(t, d)
call TriggerAddAction(t, function game___Votediff)
loop
exitwhen i == activeplayer
call DialogDisplay(s__gamepr_p[actgpa[i]], d, true)
set i=i + 1
endloop
set but0=0
set but1=0
set but2=0
endfunction
function game___Vote takes nothing returns nothing
local button b=GetClickedButton()
local player p=GetTriggerPlayer()
local integer id=GetPlayerId(p)
set s__gamepr_educ[gpa[GetPlayerId(p)]]=false
set vote=vote - 1
if vote == 0 and go == true then
call govotedif()
elseif vote == 0 and go != true then
endif
endfunction
function game___init takes nothing returns nothing
call TriggerSleepAction(0.1)
call PauseGame(true)
set go=true
set vote=activeplayer
call SetAmbientDaySound("AshenvaleDay")
call SetAmbientNightSound("AshenvaleDay")
call VolumeGroupSetVolumeBJ(SOUND_VOLUMEGROUP_MUSIC, 1.00)
set Diff=1
set dispOnRes=GetLocalizedString("TRIGSTR_2")
call restartgame()
endfunction
function govote takes nothing returns nothing
local dialog d
local trigger t
local integer i=0
call PauseGame(true)
set go=true
set vote=activeplayer
set d=DialogCreate()
set b2=DialogAddButton(d, "Начать Заново", 0)
call DialogSetMessage(d, MAP_NAME)
set t=CreateTrigger()
call TriggerRegisterDialogEvent(t, d)
call TriggerAddAction(t, function game___Vote)
loop
exitwhen i == activeplayer
call DialogDisplay(s__gamepr_p[actgpa[i]], d, true)
set i=i + 1
endloop
endfunction

//library game ends
//library gameplayer:
function s__gamepr_onLeave takes nothing returns nothing
local integer j=0
local integer gp
local group g
local integer i=0
local unit u
call print1(GetPlayerName(GetTriggerPlayer()) + GetLocalizedString("TRIGSTR_7"))
set gp=gpa[GetPlayerId(GetTriggerPlayer())]
call RemoveUnit(s__gamepr_u[gp])
call RemoveUnit(s__gamepr_krest[gp])
call DestroyEffect(s__gamepr_but[gp])
set g=s__gamepr_units[gp]
loop
exitwhen i == activeplayer
if actgpa[i] == gp then
if i != activeplayer then
set g=s__gamepr_units[actgpa[i]]
set actgpa[i]=actgpa[activeplayer - 1]
else
set activeplayer=activeplayer - 1
endif
endif
set i=i + 1
endloop
set u=FirstOfGroup(g)
loop
exitwhen u == null
call RescueUnitBJ(u, Player(11), false)
call GroupRemoveUnit(g, u)
set u=FirstOfGroup(g)
endloop
call sc__gamepr_compareLost()
endfunction
function s__gamepr_onRev takes nothing returns nothing
local unit u=GetTriggerUnit()
local integer gp=gpa[GetPlayerId(GetOwningPlayer(u))]
local integer p
call ReviveHero(s__gamepr_u[gp], GetUnitX(s__gamepr_krest[gp]), GetUnitY(s__gamepr_krest[gp]), true)
call DestroyEffect(s__gamepr_but[gp])
set s__gamepr_krestis[gp]=false
set p=GetUnitUserData(s__gamepr_krest[gp])
call SetUnitX(s__gamepr_u[gp], GetUnitX(s__UnitDataStruct_from[p]))
call SetUnitY(s__gamepr_u[gp], GetUnitY(s__UnitDataStruct_from[p]))
call KillUnit(s__gamepr_krest[gp])
set u=null
endfunction
function s__gamepr_compareLost takes nothing returns nothing
local boolean array b
local integer i=0
local boolean l__l=true
loop
exitwhen i == slots
if ( GetPlayerSlotState(Player(i)) != PLAYER_SLOT_STATE_PLAYING ) or ( CountUnitsInGroup(s__gamepr_units[gpa[i]]) == 0 and s__gamepr_krestis[gpa[i]] == true ) then
set b[i]=true
else
set b[i]=false
endif
set i=i + 1
endloop
set i=0
loop
exitwhen i == slots
set l__l=l__l and b[i]
set i=i + 1
endloop
if l__l then
set dispOnRes=GetLocalizedString("TRIGSTR_8")
call restartgame()
endif
endfunction
function s__gamepr_onDeath takes nothing returns nothing
local unit u=GetTriggerUnit()
local trigger t=CreateTrigger()
local integer gp=gpa[GetPlayerId(GetOwningPlayer(u))]
set s__gamepr_krest[gp]=CreateUnit(s__gamepr_p[gp], 0x6B726573, GetUnitX(u), GetUnitY(u), 0)
set s__gamepr_but[gp]=AddSpecialEffect("Abilities\\Spells\\NightElf\\FaerieFire\\FaerieFireTarget.mdl", GetUnitX(s__gamepr_krest[gp]), GetUnitY(s__gamepr_krest[gp]))
call s__UnitDataStruct_add(s__gamepr_krest[gp] , 0)
set s__gamepr_krestis[gp]=true
call TriggerRegisterUnitManaEvent(t, s__gamepr_krest[gp], GREATER_THAN_OR_EQUAL, 9.00)
call TriggerAddAction(t, function s__gamepr_onRev)
call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, GetPlayerName(GetOwningPlayer(u)) + GetLocalizedString("TRIGSTR_10"))
if GetLocalPlayer() == GetOwningPlayer(u) then
call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, GetLocalizedString("TRIGSTR_9"))
endif
call s__gamepr_compareLost()
set u=null
set t=null
endfunction
function s__gamepr_playerpointinit takes player p returns nothing
if Diff == 0 then
if GetPlayerId(p) == 0 then
set s__pair_x[playerpoint]=0
set s__pair_y[playerpoint]=2555
elseif GetPlayerId(p) == 1 then
set s__pair_x[playerpoint]=0
set s__pair_y[playerpoint]=- 2555
elseif GetPlayerId(p) == 2 then
set s__pair_x[playerpoint]=2555
set s__pair_y[playerpoint]=0
elseif GetPlayerId(p) == 3 then
set s__pair_x[playerpoint]=- 2555
set s__pair_y[playerpoint]=0
endif
else
if LOC == 0 then
set s__pair_x[playerpoint]=0
set s__pair_y[playerpoint]=0
elseif LOC == 1 then
set s__pair_x[playerpoint]=0
set s__pair_y[playerpoint]=6777
endif
endif
endfunction
function s__gamepr_initPlayer takes integer this returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterPlayerEventLeave(t, s__gamepr_p[this])
call TriggerAddAction(t, function s__gamepr_onLeave)
if s__gamepr_u[this] != null then
call s__UnitDataStruct_rem(s__gamepr_u[this])
call RemoveUnit(s__gamepr_u[this])
call DestroyEffect(s__gamepr_but[this])
endif
call s__gamepr_playerpointinit(s__gamepr_p[this])
set s__gamepr_u[this]=CreateUnit(s__gamepr_p[this], 0x48303030, s__pair_x[playerpoint], s__pair_y[playerpoint], 0)
call UnitAddTypeBJ(UNIT_TYPE_PEON, s__gamepr_u[this])
call s__UnitDataStruct_add(s__gamepr_u[this] , pHERO)
set s__gamepr_units[this]=CreateGroup()
set t=CreateTrigger()
call TriggerRegisterUnitEvent(t, s__gamepr_u[this], EVENT_UNIT_DEATH)
call TriggerAddAction(t, function s__gamepr_onDeath)
endfunction
function s__gamepr_gameStart takes nothing returns nothing
local integer i=0
local integer gp
loop
exitwhen i == slots
call RemoveUnit(s__gamepr_u[gpa[i]])
set i=i + 1
endloop
set i=0
set activeplayer=0
loop
exitwhen i == slots
if ( GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(Player(i)) == MAP_CONTROL_USER ) then
set gp=s__gamepr__allocate()
set s__gamepr_p[gp]=Player(i)
set gpa[i]=gp
set actgpa[activeplayer]=gp
set s__gamepr_act[gp]=activeplayer
set activeplayer=activeplayer + 1
call s__gamepr_initPlayer(gp)
endif
set i=i + 1
endloop
set i=0
loop
exitwhen i == activeplayer
call SetPlayerStateBJ(s__gamepr_p[actgpa[i]], PLAYER_STATE_RESOURCE_FOOD_CAP, 40 + ( 60 / activeplayer ))
set i=i + 1
endloop
call initdiff()
call print("gameStart Called")
set falseStartCountDown=falseStartCountDownInitialSec / spawnperiod
call TimerStart(spawner, spawnperiod, true, function GO)
endfunction
function s__gamepr_win takes nothing returns nothing
set dispOnRes="WIN!"
call restartgame()
endfunction
function s__gamepr_gpunits takes nothing returns nothing
local unit u=GetConstructedStructure()
if u != null and GetUnitTypeId(u) != 0x77697370 and GetUnitTypeId(u) != 0x61636331 then
call GroupAddUnit(s__gamepr_units[gpa[GetPlayerId(GetTriggerPlayer())]], u)
else
set u=GetDyingUnit()
call GroupRemoveUnit(s__gamepr_units[gpa[GetPlayerId(GetTriggerPlayer())]], u)
endif
call s__gamepr_compareLost()
endfunction
function s__gamepr_onInit takes nothing returns nothing
endfunction
function gameplayer___init takes nothing returns nothing
local trigger tr=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(tr, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerRegisterAnyUnitEventBJ(tr, EVENT_PLAYER_UNIT_DEATH)
call TriggerAddAction(tr, function s__gamepr_gpunits)
set playerpoint=s__pair__allocate()
call s__gamepr_gameStart()
endfunction

//library gameplayer ends
function InitGlobals takes nothing returns nothing
set udg_fgh=0
set udg_lj=DialogCreate()
set udg_dsfg=0
endfunction
function CreateUnitsForPlayer0 takes nothing returns nothing
local player p=Player(0)
local unit u
local integer unitID
local trigger t
local real life
set u=CreateUnit(p, 0x72657370, 2675.6, - 939.4, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x74617267, 8.9, 7.9, 219.887)
set u=CreateUnit(p, 0x72657370, 1424.0, - 2994.0, 0.000)
set u=CreateUnit(p, 0x72657370, 2945.0, - 3075.7, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 2)
set u=CreateUnit(p, 0x72657370, 2589.4, 962.9, 0.000)
set u=CreateUnit(p, 0x72657370, 2913.9, 3012.3, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x72657370, 1440.1, 3001.3, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x72657370, - 2511.8, 1008.0, 0.000)
set u=CreateUnit(p, 0x72657370, - 2905.7, 3059.8, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 2)
set u=CreateUnit(p, 0x72657370, - 1212.4, 3068.0, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x72657370, 257.6, 16484.3, 185.934)
call SetUnitState(u, UNIT_STATE_MANA, 2)
set u=CreateUnit(p, 0x72657370, - 219.0, 16490.1, 1.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x72657370, - 732.5, 16507.5, 1.000)
set u=CreateUnit(p, 0x72657370, - 1788.5, 16507.5, 1.000)
set u=CreateUnit(p, 0x72657370, 801.6, 16484.3, 1.000)
call SetUnitState(u, UNIT_STATE_MANA, 2)
set u=CreateUnit(p, 0x72657370, 1752.5, 16475.4, 1.000)
set u=CreateUnit(p, 0x72657370, - 1307.0, 16490.1, 1.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
set u=CreateUnit(p, 0x72657370, 1329.6, 16526.8, 1.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
endfunction
function CreateUnitsForPlayer1 takes nothing returns nothing
local player p=Player(1)
local unit u
local integer unitID
local trigger t
local real life
set u=CreateUnit(p, 0x72657370, - 2514.4, - 1085.7, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 2)
set u=CreateUnit(p, 0x72657370, - 2902.6, - 3001.4, 0.000)
set u=CreateUnit(p, 0x72657370, - 1258.3, - 2991.4, 0.000)
call SetUnitState(u, UNIT_STATE_MANA, 1)
endfunction
function CreateNeutralPassiveBuildings takes nothing returns nothing
local player p=Player(PLAYER_NEUTRAL_PASSIVE)
local unit u
local integer unitID
local trigger t
local real life
set u=CreateUnit(p, 0x6E303034, - 1728.0, 704.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 0.0, - 1920.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 2112.0, - 2944.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 3072.0, - 1856.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 1792.0, - 704.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 3072.0, - 1920.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 1984.0, - 3136.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 1728.0, - 896.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 768.0, - 2432.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 704.0, - 2368.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 0.0, - 3328.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 3008.0, 1920.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 2048.0, 3200.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 0.0, 1984.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 1792.0, 896.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 2880.0, 1792.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 2176.0, 3200.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 896.0, 2304.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 768.0, 2176.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 128.0, 3200.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 64.0, 7040.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 0.0, 9088.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 832.0, 11648.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 832.0, 11712.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303033, - 768.0, 10048.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303033, 896.0, 10048.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 0.0, 10880.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303033, - 1024.0, 13184.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303033, 1024.0, 13184.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, 1024.0, 14656.0, 270.000)
call SetResourceAmount(u, 12500)
set u=CreateUnit(p, 0x6E303034, - 1024.0, 14656.0, 270.000)
call SetResourceAmount(u, 12500)
endfunction
function CreatePlayerBuildings takes nothing returns nothing
endfunction
function CreatePlayerUnits takes nothing returns nothing
call CreateUnitsForPlayer0()
call CreateUnitsForPlayer1()
endfunction
function CreateAllUnits takes nothing returns nothing
call CreateNeutralPassiveBuildings()
call CreatePlayerBuildings()
call CreatePlayerUnits()
endfunction
function CreateRegions takes nothing returns nothing
local weathereffect we
set gg_rct_qqqqqqqqq=Rect(2848.0, - 32.0, 2976.0, 64.0)
set gg_rct_p1=Rect(32.0, - 2496.0, 1280.0, - 1856.0)
set gg_rct_p2=Rect(- 2144.0, - 2592.0, - 896.0, - 1952.0)
set gg_rct_p3=Rect(- 3200.0, - 544.0, - 1952.0, 96.0)
set gg_rct_p4=Rect(- 928.0, 2304.0, 320.0, 2944.0)
set gg_rct_base=Rect(- 384.0, - 384.0, 384.0, 416.0)
endfunction
function Trig_sel_Action1s takes nothing returns nothing
set lcpu[GetPlayerId(GetTriggerPlayer())]=not ( lcpu[GetPlayerId(GetTriggerPlayer())] )
if GetLocalPlayer() == GetTriggerPlayer() then
call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "lowcpu " + B2S(lcpu[GetPlayerId(GetTriggerPlayer())]))
endif
endfunction
function InitTrig_lowcpu takes nothing returns nothing
local integer i=0
set gg_trg_lowcpu=CreateTrigger()
loop
exitwhen i == slots
call TriggerRegisterPlayerChatEvent(gg_trg_lowcpu, Player(i), "-lowcpu", false)
set lcpu[i]=false
set i=i + 1
endloop
call TriggerAddAction(gg_trg_lowcpu, function Trig_sel_Action1s)
endfunction
function Trig_re_Actions takes nothing returns nothing
call print1("RESTART")
call restartgame()
endfunction
function InitTrig_restart takes nothing returns nothing
set gg_trg_restart=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_restart, Player(0), "-re", false)
call TriggerAddAction(gg_trg_restart, function Trig_re_Actions)
endfunction
function eTrig_re_Actions takes nothing returns nothing
call print1("RESTART")
set LOC=1
call restartgame()
endfunction
function InitTrig_restart_____________________u takes nothing returns nothing
set gg_trg_restart_____________________u=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_restart_____________________u, Player(0), "-nu", false)
call TriggerAddAction(gg_trg_restart_____________________u, function eTrig_re_Actions)
endfunction
function Trig_SkeepLVL_Actionswd takes nothing returns nothing
set spawnnummax=( spawnnummax + S2I(SubStringBJ(GetEventPlayerChatString(), 5, 6)) )
endfunction
function InitTrig_spawnnummax takes nothing returns nothing
set gg_trg_spawnnummax=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_spawnnummax, Player(0), "-сн ", false)
call TriggerAddAction(gg_trg_spawnnummax, function Trig_SkeepLVL_Actionswd)
endfunction
function qTrig_SkeepLVL_Actionswd takes nothing returns nothing
set spawnperiod=( spawnperiod + S2I(SubStringBJ(GetEventPlayerChatString(), 5, 6)) )
endfunction
function InitTrig_spawnperiod takes nothing returns nothing
set gg_trg_spawnperiod=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_spawnperiod, Player(0), "-сп ", false)
call TriggerAddAction(gg_trg_spawnperiod, function qTrig_SkeepLVL_Actionswd)
endfunction
function Trig_SkeepLVL_Actionsw takes nothing returns nothing
set lvlnum=( lvlnum + S2I(SubStringBJ(GetEventPlayerChatString(), 4, 5)) )
call BJDebugMsg("Пропуск " + SubStringBJ(GetEventPlayerChatString(), 4, 5) + "'х волн.")
endfunction
function InitTrig_SkeepLVL_____________________u takes nothing returns nothing
set gg_trg_SkeepLVL_____________________u=CreateTrigger()
call TriggerRegisterPlayerChatEvent(gg_trg_SkeepLVL_____________________u, Player(0), "-s ", false)
call TriggerAddAction(gg_trg_SkeepLVL_____________________u, function Trig_SkeepLVL_Actionsw)
endfunction
function Trig_SkeepLVL_Actions takes nothing returns nothing
if GetLocalPlayer() == GetTriggerPlayer() then
set lspeed=( S2I(SubStringBJ(GetEventPlayerChatString(), 6, 7)) )
if lspeed < 10 then
set lspeed=10
elseif lspeed > 80 then
set lspeed=80
endif
endif
endfunction
function InitTrig_lms takes nothing returns nothing
local integer i=0
set gg_trg_lms=CreateTrigger()
loop
exitwhen i == slots
call TriggerRegisterPlayerChatEvent(gg_trg_lms, Player(i), "-lms ", false)
set i=i + 1
endloop
call TriggerAddAction(gg_trg_lms, function Trig_SkeepLVL_Actions)
endfunction
function Trig_wear_Actions takes nothing returns nothing
call FogEnableOff()
call FogMaskEnableOff()
endfunction
function InitTrig_wear takes nothing returns nothing
set gg_trg_wear=CreateTrigger()
call TriggerAddAction(gg_trg_wear, function Trig_wear_Actions)
endfunction
function Trig_initQWERTY_Actions takes nothing returns nothing
call FlashQuestDialogButtonBJ()
call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_1358", "TRIGSTR_1359", "UI\\Minimap\\MinimapIconCreepLoc2.blp")
call CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_1362")
call CreateQuestBJ(bj_QUESTTYPE_REQ_DISCOVERED, "TRIGSTR_1363", "TRIGSTR_1364", "UI\\Minimap\\MinimapIconCreepLoc2.blp")
endfunction
function InitTrig_initQWERTY takes nothing returns nothing
set gg_trg_initQWERTY=CreateTrigger()
call TriggerAddAction(gg_trg_initQWERTY, function Trig_initQWERTY_Actions)
endfunction
function Trig_MOOVE_Conditions takes nothing returns boolean
if GetSpellAbilityId() == 0x6D6F7632 or GetSpellAbilityId() == 0x6D6F7631 then
return true
endif
return false
endfunction
function Trig_MOOVE_Actions takes nothing returns nothing
local unit u=GetTriggerUnit()
local location l__l=GetSpellTargetLoc()
call TriggerSleepAction(0.10)
call SetUnitPositionLoc(u, l__l)
call s__lig_renu(u)
set u=null
endfunction
function InitTrig_MOOVE takes nothing returns nothing
set gg_trg_MOOVE=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_MOOVE, EVENT_PLAYER_UNIT_SPELL_CAST)
call TriggerAddCondition(gg_trg_MOOVE, Condition(function Trig_MOOVE_Conditions))
call TriggerAddAction(gg_trg_MOOVE, function Trig_MOOVE_Actions)
endfunction
function Trig_moxer_Func003C takes nothing returns boolean
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6D6F7662 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6D6F7661 ) ) then
return true
endif
return false
endfunction
function Trig_moxer_Conditions takes nothing returns boolean
if ( not Trig_moxer_Func003C() ) then
return false
endif
return true
endfunction
function Trig_moxer_Actions takes nothing returns nothing
call SetUnitPositionLoc(GetTriggerUnit(), Location(- 3000.00, - 3000.00))
call ShowUnitHide(GetTriggerUnit())
call RemoveUnit(GetTriggerUnit())
endfunction
function InitTrig_moxer takes nothing returns nothing
set gg_trg_moxer=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_moxer, EVENT_PLAYER_UNIT_CONSTRUCT_START)
call TriggerAddCondition(gg_trg_moxer, Condition(function Trig_moxer_Conditions))
call TriggerAddAction(gg_trg_moxer, function Trig_moxer_Actions)
endfunction
function Trig_charges_Func001Func001Func001C takes nothing returns boolean
if ( not ( GetManipulatedItem() != UnitItemInSlotBJ(GetTriggerUnit(), GetForLoopIndexA()) ) ) then
return false
endif
if ( not ( GetItemTypeId(GetManipulatedItem()) == GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(), GetForLoopIndexA())) ) ) then
return false
endif
return true
endfunction
function Trig_charges_Func001Func001C takes nothing returns boolean
if ( not Trig_charges_Func001Func001Func001C() ) then
return false
endif
return true
endfunction
function Trig_charges_Actions takes nothing returns nothing
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=6
loop
exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
if ( Trig_charges_Func001Func001C() ) then
call SetItemCharges(UnitItemInSlotBJ(GetTriggerUnit(), GetForLoopIndexA()), ( GetItemCharges(UnitItemInSlotBJ(GetTriggerUnit(), GetForLoopIndexA())) + GetItemCharges(GetManipulatedItem()) ))
call RemoveItem(GetManipulatedItem())
else
endif
set bj_forLoopAIndex=bj_forLoopAIndex + 1
endloop
endfunction
function InitTrig_charges takes nothing returns nothing
set gg_trg_charges=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_charges, EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddAction(gg_trg_charges, function Trig_charges_Actions)
endfunction
function Trig_autorem_Func002C takes nothing returns boolean
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E303037 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E303038 ) ) then
return true
endif
return false
endfunction
function Trig_autorem_Conditions takes nothing returns boolean
if ( not Trig_autorem_Func002C() ) then
return false
endif
return true
endfunction
function Trig_autorem_Actions takes nothing returns nothing
call IssueImmediateOrderBJ(GetTriggerUnit(), "healon")
endfunction
function InitTrig_autorem takes nothing returns nothing
set gg_trg_autorem=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_autorem, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerRegisterAnyUnitEventBJ(gg_trg_autorem, EVENT_PLAYER_UNIT_UPGRADE_FINISH)
call TriggerAddCondition(gg_trg_autorem, Condition(function Trig_autorem_Conditions))
call TriggerAddAction(gg_trg_autorem, function Trig_autorem_Actions)
endfunction
function Trig_peredat_Func004C takes nothing returns boolean
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x746F7765 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x746F7732 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x746F7733 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x746F7735 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x746F7734 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E616130 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E616131 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E616132 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E616133 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6E616134 ) ) then
return true
endif
if ( ( GetUnitTypeId(GetTriggerUnit()) == 0x6B726573 ) ) then
return true
endif
return false
endfunction
function Trig_peredat_Conditions takes nothing returns boolean
if ( not Trig_peredat_Func004C() ) then
return false
endif
return true
endfunction
function Trig_peredat_Actions takes nothing returns nothing
call ShowUnitHide(GetTriggerUnit())
call AddSpecialEffectLocBJ(GetUnitLoc(GetTriggerUnit()), "Abilities\\Spells\\Human\\Polymorph\\PolyMorphDoneGround.mdl")
call DestroyEffectBJ(GetLastCreatedEffectBJ())
endfunction
function InitTrig_peredat takes nothing returns nothing
set gg_trg_peredat=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_peredat, EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(gg_trg_peredat, Condition(function Trig_peredat_Conditions))
call TriggerAddAction(gg_trg_peredat, function Trig_peredat_Actions)
endfunction
function Trig_selfkill_Conditions takes nothing returns boolean
if ( not ( GetIssuedOrderIdBJ() == String2OrderIdBJ("roar") ) ) then
return false
endif
return true
endfunction
function Trig_selfkill_Actions takes nothing returns nothing
local unit u=GetTriggerUnit()
call s__UpgradeProgressStruct_onSelfDestroy(u)
call KillUnit(u)
set u=null
endfunction
function InitTrig_selfkill takes nothing returns nothing
local integer i=0
set gg_trg_selfkill=CreateTrigger()
loop
exitwhen i == slots
call TriggerRegisterPlayerUnitEventSimple(gg_trg_selfkill, Player(i), EVENT_PLAYER_UNIT_ISSUED_ORDER)
set i=i + 1
endloop
call TriggerAddCondition(gg_trg_selfkill, Condition(function Trig_selfkill_Conditions))
call TriggerAddAction(gg_trg_selfkill, function Trig_selfkill_Actions)
endfunction
function InitCustomTriggers takes nothing returns nothing
//Function not found: call InitTrig_towadd()
//Function not found: call InitTrig_towers()
//Function not found: call InitTrig_unittimeremove()
//Function not found: call InitTrig_destruct()
//Function not found: call InitTrig_indicator_____________________u()
//Function not found: call InitTrig_Slow()
//Function not found: call InitTrig_Effect()
//Function not found: call InitTrig_missile()
//Function not found: call InitTrig_Svod()
//Function not found: call InitTrig_prima()
//Function not found: call InitTrig_gamma()
//Function not found: call InitTrig_epicentr()
call InitTrig_lowcpu()
call InitTrig_restart()
call InitTrig_restart_____________________u()
call InitTrig_spawnnummax()
call InitTrig_spawnperiod()
call InitTrig_SkeepLVL_____________________u()
call InitTrig_lms()
call InitTrig_wear()
call InitTrig_initQWERTY()
call InitTrig_MOOVE()
call InitTrig_moxer()
call InitTrig_charges()
call InitTrig_autorem()
call InitTrig_peredat()
call InitTrig_selfkill()
endfunction
function RunInitializationTriggers takes nothing returns nothing
call ConditionalTriggerExecute(gg_trg_wear)
call ConditionalTriggerExecute(gg_trg_initQWERTY)
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
call SetPlayerStartLocation(Player(0), 0)
call SetPlayerColor(Player(0), ConvertPlayerColor(0))
call SetPlayerRacePreference(Player(0), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(0), false)
call SetPlayerController(Player(0), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(1), 1)
call SetPlayerColor(Player(1), ConvertPlayerColor(1))
call SetPlayerRacePreference(Player(1), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(1), false)
call SetPlayerController(Player(1), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(2), 2)
call SetPlayerColor(Player(2), ConvertPlayerColor(2))
call SetPlayerRacePreference(Player(2), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(2), false)
call SetPlayerController(Player(2), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(3), 3)
call SetPlayerColor(Player(3), ConvertPlayerColor(3))
call SetPlayerRacePreference(Player(3), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(3), false)
call SetPlayerController(Player(3), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(4), 4)
call SetPlayerColor(Player(4), ConvertPlayerColor(4))
call SetPlayerRacePreference(Player(4), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(4), false)
call SetPlayerController(Player(4), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(5), 5)
call SetPlayerColor(Player(5), ConvertPlayerColor(5))
call SetPlayerRacePreference(Player(5), RACE_PREF_RANDOM)
call SetPlayerRaceSelectable(Player(5), false)
call SetPlayerController(Player(5), MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(10), 6)
call ForcePlayerStartLocation(Player(10), 6)
call SetPlayerColor(Player(10), ConvertPlayerColor(10))
call SetPlayerRacePreference(Player(10), RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(10), false)
call SetPlayerController(Player(10), MAP_CONTROL_COMPUTER)
call SetPlayerStartLocation(Player(11), 7)
call ForcePlayerStartLocation(Player(11), 7)
call SetPlayerColor(Player(11), ConvertPlayerColor(11))
call SetPlayerRacePreference(Player(11), RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(11), false)
call SetPlayerController(Player(11), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
call SetPlayerTeam(Player(0), 0)
call SetPlayerTeam(Player(1), 0)
call SetPlayerTeam(Player(2), 0)
call SetPlayerTeam(Player(3), 0)
call SetPlayerTeam(Player(4), 0)
call SetPlayerTeam(Player(5), 0)
call SetPlayerTeam(Player(11), 0)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(5), true)
call SetPlayerAllianceStateAllyBJ(Player(0), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(5), true)
call SetPlayerAllianceStateAllyBJ(Player(1), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(5), true)
call SetPlayerAllianceStateAllyBJ(Player(2), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(5), true)
call SetPlayerAllianceStateAllyBJ(Player(3), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(5), true)
call SetPlayerAllianceStateAllyBJ(Player(4), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(5), Player(11), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(0), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(1), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(2), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(3), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(4), true)
call SetPlayerAllianceStateAllyBJ(Player(11), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(0), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(1), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(2), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(3), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(5), true)
call SetPlayerAllianceStateVisionBJ(Player(4), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(5), Player(11), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(0), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(1), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(2), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(3), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(4), true)
call SetPlayerAllianceStateVisionBJ(Player(11), Player(5), true)
call SetPlayerTeam(Player(10), 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
call SetStartLocPrioCount(0, 5)
call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0, 3, 4, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0, 4, 5, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(1, 3)
call SetStartLocPrio(1, 0, 2, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1, 1, 3, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(1, 2, 4, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(2, 3)
call SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(2, 2, 4, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(3, 3)
call SetStartLocPrio(3, 0, 1, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3, 1, 2, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(3, 2, 4, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(4, 3)
call SetStartLocPrio(4, 0, 1, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4, 1, 2, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(4, 2, 3, MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(5, 5)
call SetStartLocPrio(5, 0, 0, MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(5, 1, 1, MAP_LOC_PRIO_LOW)
call SetStartLocPrio(5, 2, 2, MAP_LOC_PRIO_LOW)
call SetStartLocPrio(5, 3, 3, MAP_LOC_PRIO_LOW)
call SetStartLocPrio(5, 4, 4, MAP_LOC_PRIO_LOW)
endfunction
function main takes nothing returns nothing
call SetCameraBounds(- 4224.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 6016.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5248.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 16768.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 4224.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 16768.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5248.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 6016.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
call SetDayNightModels("Environment\\DNC\\DNCUnderground\\DNCUndergroundTerrain\\DNCUndergroundTerrain.mdl", "Environment\\DNC\\DNCUnderground\\DNCUndergroundUnit\\DNCUndergroundUnit.mdl")
call NewSoundEnvironment("Default")
call SetAmbientDaySound("DungeonDay")
call SetAmbientNightSound("DungeonNight")
call SetMapMusic("Music", true, 0)
call CreateRegions()
call CreateAllUnits()
call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs37533310")
call ExecuteFunc("cjLibw560nbs9b8nse46703948___init")
call ExecuteFunc("towadd___init")
call ExecuteFunc("towers___init")
call ExecuteFunc("unittimerremove___init")
call ExecuteFunc("asciiTable___init")
call ExecuteFunc("cmind___init")
call ExecuteFunc("indicator___init")
call ExecuteFunc("manatower___init")
call ExecuteFunc("svod___init")
call ExecuteFunc("createunittime___onInit")
call ExecuteFunc("cristals___init")
call ExecuteFunc("partsConfig_setup")
call ExecuteFunc("creeps___init")
call ExecuteFunc("game___init")
call ExecuteFunc("gameplayer___init")

call ExecuteFunc("jasshelper__0initdatastructs37533310")
call InitGlobals()
call InitCustomTriggers()
call RunInitializationTriggers()
endfunction
function config takes nothing returns nothing
call SetMapName("TRIGSTR_024")
call SetMapDescription("TRIGSTR_756")
call SetPlayers(8)
call SetTeams(8)
call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
call DefineStartLocation(0, 64.0, 0.0)
call DefineStartLocation(1, 0.0, 0.0)
call DefineStartLocation(2, 0.0, 0.0)
call DefineStartLocation(3, 0.0, 0.0)
call DefineStartLocation(4, 0.0, 0.0)
call DefineStartLocation(5, 64.0, - 64.0)
call DefineStartLocation(6, 0.0, - 64.0)
call DefineStartLocation(7, 0.0, 0.0)
call InitCustomPlayerSlots()
call InitCustomTeams()
call InitAllyPriorities()
endfunction



//Struct method generated initializers/callers:
function sa__gamepr_compareLost takes nothing returns boolean

local boolean array b
local integer i=0
local boolean l__l=true
loop
exitwhen i == slots
if ( GetPlayerSlotState(Player(i)) != PLAYER_SLOT_STATE_PLAYING ) or ( CountUnitsInGroup(s__gamepr_units[gpa[i]]) == 0 and s__gamepr_krestis[gpa[i]] == true ) then
set b[i]=true
else
set b[i]=false
endif
set i=i + 1
endloop
set i=0
loop
exitwhen i == slots
set l__l=l__l and b[i]
set i=i + 1
endloop
if l__l then
set dispOnRes=GetLocalizedString("TRIGSTR_8")
call restartgame()
endif
   return true
endfunction
function sa__gamepr_gameStart takes nothing returns boolean

local integer i=0
local integer gp
loop
exitwhen i == slots
call RemoveUnit(s__gamepr_u[gpa[i]])
set i=i + 1
endloop
set i=0
set activeplayer=0
loop
exitwhen i == slots
if ( GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(Player(i)) == MAP_CONTROL_USER ) then
set gp=s__gamepr__allocate()
set s__gamepr_p[gp]=Player(i)
set gpa[i]=gp
set actgpa[activeplayer]=gp
set s__gamepr_act[gp]=activeplayer
set activeplayer=activeplayer + 1
call s__gamepr_initPlayer(gp)
endif
set i=i + 1
endloop
set i=0
loop
exitwhen i == activeplayer
call SetPlayerStateBJ(s__gamepr_p[actgpa[i]], PLAYER_STATE_RESOURCE_FOOD_CAP, 40 + ( 60 / activeplayer ))
set i=i + 1
endloop
call initdiff()
call print("gameStart Called")
set falseStartCountDown=falseStartCountDownInitialSec / spawnperiod
call TimerStart(spawner, spawnperiod, true, function GO)
   return true
endfunction
function sa__TowerBaseConfig_getByObjectId takes nothing returns boolean
local integer id=f__arg_integer1
local integer i=s__TowerBaseConfig_pointer
local integer cjlocgn_00000000
loop
set cj_v666_boolean=( i == 1 )
set i=i - 1
exitwhen cj_v666_boolean
set cjlocgn_00000000=s__TowerBaseConfig_values[i]
if ( cjlocgn_00000000 != 0 ) then
if ( s__TowerBaseConfig_unitid_int[cjlocgn_00000000] == 0 ) then
set s__TowerBaseConfig_unitid_int[cjlocgn_00000000]=s__ascii_string2int(s__TowerBaseConfig_unitid[cjlocgn_00000000])
endif
if ( s__TowerBaseConfig_unitid_int[cjlocgn_00000000] == id ) then
set f__result_integer= cjlocgn_00000000
return true
endif
if ( s__TowerBaseConfig_abilid_int[cjlocgn_00000000] == 0 ) then
set s__TowerBaseConfig_abilid_int[cjlocgn_00000000]=s__ascii_string2int(s__TowerBaseConfig_abilid[cjlocgn_00000000])
endif
if ( s__TowerBaseConfig_abilid_int[cjlocgn_00000000] == id ) then
set f__result_integer= cjlocgn_00000000
return true
endif
endif
endloop
set f__result_integer= 0
   return true
endfunction
function sa__UnitDataStruct_get takes nothing returns boolean
    set f__result_integer=s__UnitDataStruct_get(f__arg_unit1)
   return true
endfunction
function sa__UnitDataStruct_settrans takes nothing returns boolean
    call s__UnitDataStruct_settrans(f__arg_unit1,f__arg_boolean1)
   return true
endfunction
function sa__UnitDataStruct_setval takes nothing returns boolean
    call s__UnitDataStruct_setval(f__arg_unit1,f__arg_real1)
   return true
endfunction
function sa__UnitDataStruct_gettrans takes nothing returns boolean
    set f__result_boolean=s__UnitDataStruct_gettrans(f__arg_unit1)
   return true
endfunction
function sa__UnitDataStruct_findCreepFromT takes nothing returns boolean
    set f__result_integer=s__UnitDataStruct_findCreepFromT(f__arg_trigger1)
   return true
endfunction
function sa__UnitDataStruct_add takes nothing returns boolean
    set f__result_integer=s__UnitDataStruct_add(f__arg_unit1,f__arg_integer1)
   return true
endfunction
function sa__crist_find takes nothing returns boolean
    set f__result_integer=s__crist_find(f__arg_unit1)
   return true
endfunction
function sa__RadiusStruct_getr takes nothing returns boolean
    set f__result_real=s__RadiusStruct_getr(f__arg_unit1)
   return true
endfunction
function sa__RadiusStruct_initialize takes nothing returns boolean
    set f__result_integer=s__RadiusStruct_initialize(f__arg_unit1,f__arg_real1)
   return true
endfunction
function sa__RadiusStruct_Kill takes nothing returns boolean
    call s__RadiusStruct_Kill(f__arg_unit1)
   return true
endfunction
function sa__RadiusStruct_find takes nothing returns boolean
    set f__result_boolean=s__RadiusStruct_find(f__arg_unit1)
   return true
endfunction
function sa__partsStruct___TowerPartStruct_init takes nothing returns boolean
    call s__partsStruct___TowerPartStruct_init(f__arg_this,f__arg_unit1,f__arg_integer1)
   return true
endfunction
function sa__partsStruct___TowerPartStruct_applyOffset takes nothing returns boolean
local integer this=f__arg_this
call SetUnitX(s__partsStruct___TowerPartStruct_part[this], GetUnitX(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_x[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitY(s__partsStruct___TowerPartStruct_part[this], GetUnitY(s__partsStruct___TowerPartStruct_target[this]) + s__partsStruct___PartConfigStruct_y[s__partsStruct___TowerPartStruct_config[this]])
call SetUnitFacing(s__partsStruct___TowerPartStruct_part[this], s__partsStruct___PartConfigStruct_r[s__partsStruct___TowerPartStruct_config[this]])
   return true
endfunction
function sa__partsStruct___TowerPartStruct_onDestroy takes nothing returns boolean
local integer this=f__arg_this
call RemoveUnit(s__partsStruct___TowerPartStruct_part[this])
   return true
endfunction
function sa__partsStruct_TowerSetStruct_addPart takes nothing returns boolean
local integer this=f__arg_this
local integer part=f__arg_integer1
set s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+s__partsStruct_TowerSetStruct_parts_pointer[this]]=part
set s__partsStruct_TowerSetStruct_parts_pointer[this]=s__partsStruct_TowerSetStruct_parts_pointer[this] + 1
   return true
endfunction
function sa__partsStruct_TowerSetStruct_onDestroy takes nothing returns boolean
local integer this=f__arg_this
local integer i=s__partsStruct_TowerSetStruct_parts_pointer[this]
loop
set cj_v666_boolean=( i == 0 )
set i=i - 1
exitwhen cj_v666_boolean
call sc__partsStruct___TowerPartStruct_deallocate(s___partsStruct_TowerSetStruct_parts[s__partsStruct_TowerSetStruct_parts[this]+i])
endloop
set s__partsStruct_TowerSetStruct_parts_pointer[this]=0
   return true
endfunction
function sa__partsStruct___PartConfigStruct_setData takes nothing returns boolean
local integer this=f__arg_this
local integer partId=f__arg_integer1
local integer minLevel=f__arg_integer2
local integer maxLevel=f__arg_integer3
set s__partsStruct___PartConfigStruct_partId[this]=partId
set s__partsStruct___PartConfigStruct_minLevel[this]=minLevel
set s__partsStruct___PartConfigStruct_maxLevel[this]=maxLevel
   return true
endfunction
function sa__PartSetConfigStruct_getTargetLevel takes nothing returns boolean
    set f__result_integer=s__PartSetConfigStruct_getTargetLevel(f__arg_this,f__arg_unit1)
   return true
endfunction
function sa__Miss_Create takes nothing returns boolean
    set f__result_integer=s__Miss_Create(f__arg_integer1,f__arg_unit1,f__arg_real1,f__arg_unit2)
   return true
endfunction
function sa__Miss_ModBuff takes nothing returns boolean
local integer this=f__arg_this
local integer tp=f__arg_integer1
local real time=f__arg_real1
set s__Miss_buf[this]=true
set s__Miss_bufftype[this]=tp
set s__Miss_bufftime[this]=time
   return true
endfunction
function sa__Miss_ModDmg takes nothing returns boolean
local integer this=f__arg_this
local real Dmg=f__arg_real1
local attacktype At=f__arg_attacktype1
local boolean Splash=f__arg_boolean1
local real SRad=f__arg_real2
set s__Miss_bdmg[this]=true
set s__Miss_dmg[this]=Dmg
set s__Miss_at[this]=At
set s__Miss_splash[this]=Splash
set s__Miss_srad[this]=SRad
   return true
endfunction
function sa__section_REM takes nothing returns boolean
local integer this=f__arg_this
local integer j=0
loop
exitwhen j == 4
call DestroyLightning(s___section_l[s__section_l[this]+j])
set s___section_l[s__section_l[this]+j]=null
set j=j + 1
endloop
call RemoveUnit(s__section_pole[this])
set energywall___NEXTS=energywall___NEXTS - 1
set s__section_i[energywall___SECT[energywall___NEXTS]]=s__section_i[this]
set energywall___SECT[s__section_i[this]]=energywall___SECT[energywall___NEXTS]
call s__section_deallocate(this)
   return true
endfunction
function sa__section_ADD takes nothing returns boolean
local integer W=f__arg_integer1
local real x=f__arg_real1
local real y=f__arg_real2
local integer last=f__arg_integer2
local integer next=f__arg_integer3
local integer iw=f__arg_integer4
local integer S=s__section__allocate()
set s__section_wall[S]=W
set s__section_last[S]=last
set s__section_next[S]=next
set s__section_pole[S]=CreateUnit(GetOwningPlayer(s__wall_base[W]), 0x706F6C65, x, y, 0)
call SetUnitPathing(s__section_pole[S], false)
set s__section_iw[S]=iw
set s__section_i[S]=energywall___NEXTS
set s__section_t[S]=CreateTrigger()
call TriggerRegisterUnitInRangeSimple(s__section_t[S], 500, s__section_pole[S])
call TriggerAddAction(s__section_t[S], function s__section_TRIG)
set s__section_g[S]=CreateGroup()
set energywall___SECT[energywall___NEXTS]=S
set energywall___NEXTS=energywall___NEXTS + 1
set f__result_integer= S
   return true
endfunction
function sa__section_INIT takes nothing returns boolean
local integer this=f__arg_this
local integer i=0
loop
exitwhen i == 4
set s___section_l[s__section_l[this]+i]=AddLightningEx("WALL", true, GetUnitX(s__section_pole[this]), GetUnitY(s__section_pole[this]), GetUnitZ(s__section_pole[this]) + energywall___Zcord * i, GetUnitX(s__section_pole[s__section_next[this]]), GetUnitY(s__section_pole[s__section_next[this]]), GetUnitZ(s__section_pole[s__section_next[this]]) + energywall___Zcord * i)
set i=i + 1
endloop
   return true
endfunction
function sa__wall_Findw takes nothing returns boolean
    set f__result_integer=s__wall_Findw(f__arg_unit1)
   return true
endfunction
function sa__wall_ADD takes nothing returns boolean
    call s__wall_ADD(f__arg_unit1)
   return true
endfunction
function sa__sendlig_add takes nothing returns boolean
    set f__result_integer=s__sendlig_add(f__arg_unit1,f__arg_unit2,f__arg_integer1)
   return true
endfunction
function sa__sendlig_rem takes nothing returns boolean
local integer this=f__arg_this
call s__vec_deallocate(s__sendlig_pos1[this])
call s__vec_deallocate(s__sendlig_pos2[this])
call s__vec_deallocate(s__sendlig_vel[this])
call s__vec_deallocate(s__sendlig_start[this])
set Lightning___nextsl=Lightning___nextsl - 1
set s__sendlig_i[Lightning___sla[Lightning___nextsl]]=s__sendlig_i[this]
set Lightning___sla[s__sendlig_i[this]]=Lightning___sla[Lightning___nextsl]
call DestroyLightning(s__sendlig_l[this])
call s__sendlig_deallocate(this)
   return true
endfunction
function sa__rock_onDeath takes nothing returns boolean

local item i
local integer cjlocgn_00000000
if NoGem == false then
set cjlocgn_00000000=GetDestructableTypeId(GetTriggerDestructable())
if cjlocgn_00000000 == 0x42303030 then
set i=CreateItem(s__rock_getrandomgem(), GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303032 then
set i=CreateItem(pirrotin, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303033 then
set i=CreateItem(opal, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303034 then
set i=CreateItem(dioptaz, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
elseif cjlocgn_00000000 == 0x42303035 then
set i=CreateItem(obsidian, GetDestructableX(GetTriggerDestructable()), GetDestructableY(GetTriggerDestructable()))
endif
endif
set i=null
   return true
endfunction
function sa__vec_onDestroy takes nothing returns boolean
local integer this=f__arg_this
set veccount=veccount - 1
   return true
endfunction

function jasshelper__initstructs37533310 takes nothing returns nothing
    set st__gamepr_compareLost=CreateTrigger()
    call TriggerAddCondition(st__gamepr_compareLost,Condition( function sa__gamepr_compareLost))
    set st__gamepr_gameStart=CreateTrigger()
    call TriggerAddCondition(st__gamepr_gameStart,Condition( function sa__gamepr_gameStart))
    set st__TowerBaseConfig_getByObjectId=CreateTrigger()
    call TriggerAddCondition(st__TowerBaseConfig_getByObjectId,Condition( function sa__TowerBaseConfig_getByObjectId))
    set st__UnitDataStruct_get=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_get,Condition( function sa__UnitDataStruct_get))
    set st__UnitDataStruct_settrans=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_settrans,Condition( function sa__UnitDataStruct_settrans))
    set st__UnitDataStruct_setval=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_setval,Condition( function sa__UnitDataStruct_setval))
    set st__UnitDataStruct_gettrans=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_gettrans,Condition( function sa__UnitDataStruct_gettrans))
    set st__UnitDataStruct_findCreepFromT=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_findCreepFromT,Condition( function sa__UnitDataStruct_findCreepFromT))
    set st__UnitDataStruct_add=CreateTrigger()
    call TriggerAddCondition(st__UnitDataStruct_add,Condition( function sa__UnitDataStruct_add))
    set st__crist_find=CreateTrigger()
    call TriggerAddCondition(st__crist_find,Condition( function sa__crist_find))
    set st__RadiusStruct_getr=CreateTrigger()
    call TriggerAddCondition(st__RadiusStruct_getr,Condition( function sa__RadiusStruct_getr))
    set st__RadiusStruct_initialize=CreateTrigger()
    call TriggerAddCondition(st__RadiusStruct_initialize,Condition( function sa__RadiusStruct_initialize))
    set st__RadiusStruct_Kill=CreateTrigger()
    call TriggerAddCondition(st__RadiusStruct_Kill,Condition( function sa__RadiusStruct_Kill))
    set st__RadiusStruct_find=CreateTrigger()
    call TriggerAddCondition(st__RadiusStruct_find,Condition( function sa__RadiusStruct_find))
    set st__partsStruct___TowerPartStruct_init=CreateTrigger()
    call TriggerAddCondition(st__partsStruct___TowerPartStruct_init,Condition( function sa__partsStruct___TowerPartStruct_init))
    set st__partsStruct___TowerPartStruct_applyOffset=CreateTrigger()
    call TriggerAddCondition(st__partsStruct___TowerPartStruct_applyOffset,Condition( function sa__partsStruct___TowerPartStruct_applyOffset))
    set st__partsStruct___TowerPartStruct_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__partsStruct___TowerPartStruct_onDestroy,Condition( function sa__partsStruct___TowerPartStruct_onDestroy))
    set st__partsStruct_TowerSetStruct_addPart=CreateTrigger()
    call TriggerAddCondition(st__partsStruct_TowerSetStruct_addPart,Condition( function sa__partsStruct_TowerSetStruct_addPart))
    set st__partsStruct_TowerSetStruct_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__partsStruct_TowerSetStruct_onDestroy,Condition( function sa__partsStruct_TowerSetStruct_onDestroy))
    set st__partsStruct___PartConfigStruct_setData=CreateTrigger()
    call TriggerAddCondition(st__partsStruct___PartConfigStruct_setData,Condition( function sa__partsStruct___PartConfigStruct_setData))
    set st__PartSetConfigStruct_getTargetLevel=CreateTrigger()
    call TriggerAddCondition(st__PartSetConfigStruct_getTargetLevel,Condition( function sa__PartSetConfigStruct_getTargetLevel))
    set st__Miss_Create=CreateTrigger()
    call TriggerAddCondition(st__Miss_Create,Condition( function sa__Miss_Create))
    set st__Miss_ModBuff=CreateTrigger()
    call TriggerAddCondition(st__Miss_ModBuff,Condition( function sa__Miss_ModBuff))
    set st__Miss_ModDmg=CreateTrigger()
    call TriggerAddCondition(st__Miss_ModDmg,Condition( function sa__Miss_ModDmg))
    set st__section_REM=CreateTrigger()
    call TriggerAddCondition(st__section_REM,Condition( function sa__section_REM))
    set st__section_ADD=CreateTrigger()
    call TriggerAddCondition(st__section_ADD,Condition( function sa__section_ADD))
    set st__section_INIT=CreateTrigger()
    call TriggerAddCondition(st__section_INIT,Condition( function sa__section_INIT))
    set st__wall_Findw=CreateTrigger()
    call TriggerAddCondition(st__wall_Findw,Condition( function sa__wall_Findw))
    set st__wall_ADD=CreateTrigger()
    call TriggerAddCondition(st__wall_ADD,Condition( function sa__wall_ADD))
    set st__sendlig_add=CreateTrigger()
    call TriggerAddCondition(st__sendlig_add,Condition( function sa__sendlig_add))
    set st__sendlig_rem=CreateTrigger()
    call TriggerAddCondition(st__sendlig_rem,Condition( function sa__sendlig_rem))
    set st__rock_onDeath=CreateTrigger()
    call TriggerAddCondition(st__rock_onDeath,Condition( function sa__rock_onDeath))
    set st__vec_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__vec_onDestroy,Condition( function sa__vec_onDestroy))










































    call ExecuteFunc("s__Effect_onInit")
    call ExecuteFunc("s__aurabuff_onInit")
    call ExecuteFunc("s__rock_onInit")
    call ExecuteFunc("s__towertype_onInit")
    call ExecuteFunc("s__sendlig_onInit")
    call ExecuteFunc("s__wall_onInit")
    call ExecuteFunc("s__section_onInit")
    call ExecuteFunc("s__epic_onInit")
    call ExecuteFunc("s__gamma_onInit")
    call ExecuteFunc("s__Miss_onInit")
    call ExecuteFunc("s__prima_onInit")
    call ExecuteFunc("s__RadiusStruct_onInit")
    call ExecuteFunc("s__svod_onInit")
    call ExecuteFunc("s__cristsender_onInit")
    call ExecuteFunc("s__crist_onInit")
    call ExecuteFunc("s__UnitDataStruct_onInit")
    call ExecuteFunc("s__UpgradeProgressStruct_onInit")
    call ExecuteFunc("s__gamepr_onInit")
endfunction

function jasshelper__0initdatastructs37533310 takes nothing returns nothing
 local integer s

//Loaded from: D:\_wc3\dev\slk/TowerBaseConfig.slk
    set s=s__TowerBaseConfig_getFromKey(1)
    set s__TowerBaseConfig_abilid[s]="izlu"
    set s__TowerBaseConfig_unitid[s]="gi01"
    set s__TowerBaseConfig_ident[s]="revenge"
    set s__TowerBaseConfig_level[s]=1
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=60
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=1000
    set s__TowerBaseConfig_damage[s]=10
    set s__TowerBaseConfig_dmult[s]=0
    set s__TowerBaseConfig_attackCost[s]=30
    set s__TowerBaseConfig_atcmul[s]=0
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=20
    set s__TowerBaseConfig_dpsmul[s]=0
    set s__TowerBaseConfig_mpscc[s]=60
    set s__TowerBaseConfig_bcdmg[s]=1000
    set s__TowerBaseConfig_dpm[s]=3
    set s__TowerBaseConfig_bcdps[s]=500
    set s=s__TowerBaseConfig_getFromKey(2)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi02"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=2
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=200
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=2000
    set s__TowerBaseConfig_damage[s]=50
    set s__TowerBaseConfig_dmult[s]=5
    set s__TowerBaseConfig_attackCost[s]=100
    set s__TowerBaseConfig_atcmul[s]=3
    set s__TowerBaseConfig_cooldown[s]=600
    set s__TowerBaseConfig_dpscc[s]=83
    set s__TowerBaseConfig_dpsmul[s]=4
    set s__TowerBaseConfig_mpscc[s]=167
    set s__TowerBaseConfig_bcdmg[s]=400
    set s__TowerBaseConfig_dpm[s]=5
    set s__TowerBaseConfig_bcdps[s]=241
    set s=s__TowerBaseConfig_getFromKey(3)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi03"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=3
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=300
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=5000
    set s__TowerBaseConfig_damage[s]=250
    set s__TowerBaseConfig_dmult[s]=5
    set s__TowerBaseConfig_attackCost[s]=150
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=700
    set s__TowerBaseConfig_dpscc[s]=357
    set s__TowerBaseConfig_dpsmul[s]=4
    set s__TowerBaseConfig_mpscc[s]=214
    set s__TowerBaseConfig_bcdmg[s]=200
    set s__TowerBaseConfig_dpm[s]=17
    set s__TowerBaseConfig_bcdps[s]=140
    set s=s__TowerBaseConfig_getFromKey(4)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi04"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=4
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=500
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=10000
    set s__TowerBaseConfig_damage[s]=1000
    set s__TowerBaseConfig_dmult[s]=4
    set s__TowerBaseConfig_attackCost[s]=250
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=800
    set s__TowerBaseConfig_dpscc[s]=1250
    set s__TowerBaseConfig_dpsmul[s]=4
    set s__TowerBaseConfig_mpscc[s]=313
    set s__TowerBaseConfig_bcdmg[s]=100
    set s__TowerBaseConfig_dpm[s]=40
    set s__TowerBaseConfig_bcdps[s]=80
    set s=s__TowerBaseConfig_getFromKey(5)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi05"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=5
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=15000
    set s__TowerBaseConfig_damage[s]=4000
    set s__TowerBaseConfig_dmult[s]=4
    set s__TowerBaseConfig_attackCost[s]=500
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=900
    set s__TowerBaseConfig_dpscc[s]=4444
    set s__TowerBaseConfig_dpsmul[s]=4
    set s__TowerBaseConfig_mpscc[s]=556
    set s__TowerBaseConfig_bcdmg[s]=38
    set s__TowerBaseConfig_dpm[s]=80
    set s__TowerBaseConfig_bcdps[s]=34
    set s=s__TowerBaseConfig_getFromKey(6)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi06"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=6
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=2000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=30000
    set s__TowerBaseConfig_damage[s]=16000
    set s__TowerBaseConfig_dmult[s]=4
    set s__TowerBaseConfig_attackCost[s]=1000
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=1000
    set s__TowerBaseConfig_dpscc[s]=16000
    set s__TowerBaseConfig_dpsmul[s]=4
    set s__TowerBaseConfig_mpscc[s]=1000
    set s__TowerBaseConfig_bcdmg[s]=19
    set s__TowerBaseConfig_dpm[s]=160
    set s__TowerBaseConfig_bcdps[s]=19
    set s=s__TowerBaseConfig_getFromKey(7)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi07"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=7
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=4000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=70000
    set s__TowerBaseConfig_damage[s]=48000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=2000
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=1200
    set s__TowerBaseConfig_dpscc[s]=40000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1667
    set s__TowerBaseConfig_bcdmg[s]=15
    set s__TowerBaseConfig_dpm[s]=240
    set s__TowerBaseConfig_bcdps[s]=18
    set s=s__TowerBaseConfig_getFromKey(8)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi08"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=8
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=8000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=130000
    set s__TowerBaseConfig_damage[s]=140000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=4000
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=1400
    set s__TowerBaseConfig_dpscc[s]=100000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=2857
    set s__TowerBaseConfig_bcdmg[s]=9
    set s__TowerBaseConfig_dpm[s]=350
    set s__TowerBaseConfig_bcdps[s]=13
    set s=s__TowerBaseConfig_getFromKey(9)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi09"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=9
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=16000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=250000
    set s__TowerBaseConfig_damage[s]=430000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=8000
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=1600
    set s__TowerBaseConfig_dpscc[s]=268750
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=5000
    set s__TowerBaseConfig_bcdmg[s]=6
    set s__TowerBaseConfig_dpm[s]=538
    set s__TowerBaseConfig_bcdps[s]=9
    set s=s__TowerBaseConfig_getFromKey(10)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gi10"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=10
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=32000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=500000
    set s__TowerBaseConfig_damage[s]=1200000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=16000
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=1800
    set s__TowerBaseConfig_dpscc[s]=666667
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=8889
    set s__TowerBaseConfig_bcdmg[s]=4
    set s__TowerBaseConfig_dpm[s]=750
    set s__TowerBaseConfig_bcdps[s]=7
    set s=s__TowerBaseConfig_getFromKey(11)
    set s__TowerBaseConfig_abilid[s]="A00A"
    set s__TowerBaseConfig_unitid[s]="gm01"
    set s__TowerBaseConfig_ident[s]="chainlightning"
    set s__TowerBaseConfig_level[s]=1
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=20
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=1000
    set s__TowerBaseConfig_damage[s]=10
    set s__TowerBaseConfig_dmult[s]=0
    set s__TowerBaseConfig_attackCost[s]=20
    set s__TowerBaseConfig_atcmul[s]=0
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=5
    set s__TowerBaseConfig_dpsmul[s]=0
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=1000
    set s__TowerBaseConfig_dpm[s]=5
    set s__TowerBaseConfig_bcdps[s]=2000
    set s=s__TowerBaseConfig_getFromKey(12)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm02"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=2
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=20
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=7500
    set s__TowerBaseConfig_damage[s]=100
    set s__TowerBaseConfig_dmult[s]=10
    set s__TowerBaseConfig_attackCost[s]=20
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=50
    set s__TowerBaseConfig_dpsmul[s]=10
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=750
    set s__TowerBaseConfig_dpm[s]=50
    set s__TowerBaseConfig_bcdps[s]=1500
    set s=s__TowerBaseConfig_getFromKey(13)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm03"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=3
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=100
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=5000
    set s__TowerBaseConfig_damage[s]=100
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=100
    set s__TowerBaseConfig_atcmul[s]=5
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=50
    set s__TowerBaseConfig_dpsmul[s]=1
    set s__TowerBaseConfig_mpscc[s]=50
    set s__TowerBaseConfig_bcdmg[s]=500
    set s__TowerBaseConfig_dpm[s]=10
    set s__TowerBaseConfig_bcdps[s]=1000
    set s=s__TowerBaseConfig_getFromKey(14)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm04"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=4
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=100
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=40000
    set s__TowerBaseConfig_damage[s]=1000
    set s__TowerBaseConfig_dmult[s]=10
    set s__TowerBaseConfig_attackCost[s]=100
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=500
    set s__TowerBaseConfig_dpsmul[s]=10
    set s__TowerBaseConfig_mpscc[s]=50
    set s__TowerBaseConfig_bcdmg[s]=400
    set s__TowerBaseConfig_dpm[s]=100
    set s__TowerBaseConfig_bcdps[s]=800
    set s=s__TowerBaseConfig_getFromKey(15)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm05"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=5
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=500
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=25000
    set s__TowerBaseConfig_damage[s]=1000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=500
    set s__TowerBaseConfig_atcmul[s]=5
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=500
    set s__TowerBaseConfig_dpsmul[s]=1
    set s__TowerBaseConfig_mpscc[s]=250
    set s__TowerBaseConfig_bcdmg[s]=250
    set s__TowerBaseConfig_dpm[s]=20
    set s__TowerBaseConfig_bcdps[s]=500
    set s=s__TowerBaseConfig_getFromKey(16)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm06"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=6
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=500
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=150000
    set s__TowerBaseConfig_damage[s]=10000
    set s__TowerBaseConfig_dmult[s]=10
    set s__TowerBaseConfig_attackCost[s]=500
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=5000
    set s__TowerBaseConfig_dpsmul[s]=10
    set s__TowerBaseConfig_mpscc[s]=250
    set s__TowerBaseConfig_bcdmg[s]=150
    set s__TowerBaseConfig_dpm[s]=200
    set s__TowerBaseConfig_bcdps[s]=300
    set s=s__TowerBaseConfig_getFromKey(17)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm07"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=7
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=2000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=75000
    set s__TowerBaseConfig_damage[s]=10000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=2000
    set s__TowerBaseConfig_atcmul[s]=4
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=5000
    set s__TowerBaseConfig_dpsmul[s]=1
    set s__TowerBaseConfig_mpscc[s]=1000
    set s__TowerBaseConfig_bcdmg[s]=75
    set s__TowerBaseConfig_dpm[s]=50
    set s__TowerBaseConfig_bcdps[s]=150
    set s=s__TowerBaseConfig_getFromKey(18)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm08"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=8
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=2000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=500000
    set s__TowerBaseConfig_damage[s]=100000
    set s__TowerBaseConfig_dmult[s]=10
    set s__TowerBaseConfig_attackCost[s]=2000
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=50000
    set s__TowerBaseConfig_dpsmul[s]=10
    set s__TowerBaseConfig_mpscc[s]=1000
    set s__TowerBaseConfig_bcdmg[s]=50
    set s__TowerBaseConfig_dpm[s]=500
    set s__TowerBaseConfig_bcdps[s]=100
    set s=s__TowerBaseConfig_getFromKey(19)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm09"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=9
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=8000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=250000
    set s__TowerBaseConfig_damage[s]=100000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=8000
    set s__TowerBaseConfig_atcmul[s]=4
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=50000
    set s__TowerBaseConfig_dpsmul[s]=1
    set s__TowerBaseConfig_mpscc[s]=4000
    set s__TowerBaseConfig_bcdmg[s]=25
    set s__TowerBaseConfig_dpm[s]=125
    set s__TowerBaseConfig_bcdps[s]=50
    set s=s__TowerBaseConfig_getFromKey(20)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gm10"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=10
    set s__TowerBaseConfig_distance[s]=500
    set s__TowerBaseConfig_capacity[s]=8000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=750000
    set s__TowerBaseConfig_damage[s]=1000000
    set s__TowerBaseConfig_dmult[s]=10
    set s__TowerBaseConfig_attackCost[s]=8000
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=500000
    set s__TowerBaseConfig_dpsmul[s]=10
    set s__TowerBaseConfig_mpscc[s]=4000
    set s__TowerBaseConfig_bcdmg[s]=8
    set s__TowerBaseConfig_dpm[s]=1250
    set s__TowerBaseConfig_bcdps[s]=15
    set s=s__TowerBaseConfig_getFromKey(21)
    set s__TowerBaseConfig_abilid[s]="A00G"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="thunderbolt"
    set s__TowerBaseConfig_level[s]=1
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=200
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=2500
    set s__TowerBaseConfig_damage[s]=50
    set s__TowerBaseConfig_dmult[s]=0
    set s__TowerBaseConfig_attackCost[s]=100
    set s__TowerBaseConfig_atcmul[s]=0
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=100
    set s__TowerBaseConfig_dpsmul[s]=0
    set s__TowerBaseConfig_mpscc[s]=200
    set s__TowerBaseConfig_bcdmg[s]=500
    set s__TowerBaseConfig_dpm[s]=5
    set s__TowerBaseConfig_bcdps[s]=250
    set s=s__TowerBaseConfig_getFromKey(22)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=2
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=400
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=5000
    set s__TowerBaseConfig_damage[s]=150
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=200
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=300
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=400
    set s__TowerBaseConfig_bcdmg[s]=333
    set s__TowerBaseConfig_dpm[s]=8
    set s__TowerBaseConfig_bcdps[s]=167
    set s=s__TowerBaseConfig_getFromKey(23)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=3
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=600
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=10000
    set s__TowerBaseConfig_damage[s]=450
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=300
    set s__TowerBaseConfig_atcmul[s]=2
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=900
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=600
    set s__TowerBaseConfig_bcdmg[s]=222
    set s__TowerBaseConfig_dpm[s]=15
    set s__TowerBaseConfig_bcdps[s]=111
    set s=s__TowerBaseConfig_getFromKey(24)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=4
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=800
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=20000
    set s__TowerBaseConfig_damage[s]=1300
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=400
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=2600
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=800
    set s__TowerBaseConfig_bcdmg[s]=154
    set s__TowerBaseConfig_dpm[s]=33
    set s__TowerBaseConfig_bcdps[s]=77
    set s=s__TowerBaseConfig_getFromKey(25)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=5
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=40000
    set s__TowerBaseConfig_damage[s]=4000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=500
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=8000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1000
    set s__TowerBaseConfig_bcdmg[s]=100
    set s__TowerBaseConfig_dpm[s]=80
    set s__TowerBaseConfig_bcdps[s]=50
    set s=s__TowerBaseConfig_getFromKey(26)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=6
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1200
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=80000
    set s__TowerBaseConfig_damage[s]=12000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=600
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=24000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1200
    set s__TowerBaseConfig_bcdmg[s]=67
    set s__TowerBaseConfig_dpm[s]=200
    set s__TowerBaseConfig_bcdps[s]=33
    set s=s__TowerBaseConfig_getFromKey(27)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=7
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1400
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=160000
    set s__TowerBaseConfig_damage[s]=36000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=700
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=72000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1400
    set s__TowerBaseConfig_bcdmg[s]=44
    set s__TowerBaseConfig_dpm[s]=514
    set s__TowerBaseConfig_bcdps[s]=22
    set s=s__TowerBaseConfig_getFromKey(28)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=8
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1600
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=320000
    set s__TowerBaseConfig_damage[s]=100000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=800
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=200000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1600
    set s__TowerBaseConfig_bcdmg[s]=32
    set s__TowerBaseConfig_dpm[s]=1250
    set s__TowerBaseConfig_bcdps[s]=16
    set s=s__TowerBaseConfig_getFromKey(29)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=9
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=1800
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=640000
    set s__TowerBaseConfig_damage[s]=300000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=900
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=600000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=1800
    set s__TowerBaseConfig_bcdmg[s]=21
    set s__TowerBaseConfig_dpm[s]=3333
    set s__TowerBaseConfig_bcdps[s]=11
    set s=s__TowerBaseConfig_getFromKey(30)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="@null@"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=10
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=2000
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=1280000
    set s__TowerBaseConfig_damage[s]=900000
    set s__TowerBaseConfig_dmult[s]=3
    set s__TowerBaseConfig_attackCost[s]=1000
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=500
    set s__TowerBaseConfig_dpscc[s]=1800000
    set s__TowerBaseConfig_dpsmul[s]=3
    set s__TowerBaseConfig_mpscc[s]=2000
    set s__TowerBaseConfig_bcdmg[s]=14
    set s__TowerBaseConfig_dpm[s]=9000
    set s__TowerBaseConfig_bcdps[s]=7
    set s=s__TowerBaseConfig_getFromKey(31)
    set s__TowerBaseConfig_abilid[s]="A007"
    set s__TowerBaseConfig_unitid[s]="gp01"
    set s__TowerBaseConfig_ident[s]="thunderbolt"
    set s__TowerBaseConfig_level[s]=1
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=300
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=300
    set s__TowerBaseConfig_damage[s]=1000
    set s__TowerBaseConfig_dmult[s]=0
    set s__TowerBaseConfig_attackCost[s]=100
    set s__TowerBaseConfig_atcmul[s]=0
    set s__TowerBaseConfig_cooldown[s]=10000
    set s__TowerBaseConfig_dpscc[s]=100
    set s__TowerBaseConfig_dpsmul[s]=0
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=3
    set s__TowerBaseConfig_dpm[s]=100
    set s__TowerBaseConfig_bcdps[s]=30
    set s=s__TowerBaseConfig_getFromKey(32)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp02"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=2
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=270
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=600
    set s__TowerBaseConfig_damage[s]=2000
    set s__TowerBaseConfig_dmult[s]=2
    set s__TowerBaseConfig_attackCost[s]=90
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=9000
    set s__TowerBaseConfig_dpscc[s]=222
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=3
    set s__TowerBaseConfig_dpm[s]=222
    set s__TowerBaseConfig_bcdps[s]=27
    set s=s__TowerBaseConfig_getFromKey(33)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp03"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=3
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=240
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=1200
    set s__TowerBaseConfig_damage[s]=3000
    set s__TowerBaseConfig_dmult[s]=2
    set s__TowerBaseConfig_attackCost[s]=80
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=8000
    set s__TowerBaseConfig_dpscc[s]=375
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=4
    set s__TowerBaseConfig_dpm[s]=375
    set s__TowerBaseConfig_bcdps[s]=32
    set s=s__TowerBaseConfig_getFromKey(34)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp04"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=4
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=210
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=2400
    set s__TowerBaseConfig_damage[s]=4000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=70
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=7000
    set s__TowerBaseConfig_dpscc[s]=571
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=10
    set s__TowerBaseConfig_bcdmg[s]=6
    set s__TowerBaseConfig_dpm[s]=571
    set s__TowerBaseConfig_bcdps[s]=42
    set s=s__TowerBaseConfig_getFromKey(35)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp05"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=5
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=180
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=4800
    set s__TowerBaseConfig_damage[s]=5000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=60
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=5000
    set s__TowerBaseConfig_dpscc[s]=1000
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=12
    set s__TowerBaseConfig_bcdmg[s]=10
    set s__TowerBaseConfig_dpm[s]=833
    set s__TowerBaseConfig_bcdps[s]=48
    set s=s__TowerBaseConfig_getFromKey(36)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp06"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=6
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=150
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=9600
    set s__TowerBaseConfig_damage[s]=6000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=50
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=3000
    set s__TowerBaseConfig_dpscc[s]=2000
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=17
    set s__TowerBaseConfig_bcdmg[s]=16
    set s__TowerBaseConfig_dpm[s]=1176
    set s__TowerBaseConfig_bcdps[s]=48
    set s=s__TowerBaseConfig_getFromKey(37)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp07"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=7
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=120
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=19200
    set s__TowerBaseConfig_damage[s]=7000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=40
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=2000
    set s__TowerBaseConfig_dpscc[s]=3500
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=20
    set s__TowerBaseConfig_bcdmg[s]=27
    set s__TowerBaseConfig_dpm[s]=1750
    set s__TowerBaseConfig_bcdps[s]=55
    set s=s__TowerBaseConfig_getFromKey(38)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp08"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=8
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=90
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=38400
    set s__TowerBaseConfig_damage[s]=8000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=30
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=1500
    set s__TowerBaseConfig_dpscc[s]=5333
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=20
    set s__TowerBaseConfig_bcdmg[s]=48
    set s__TowerBaseConfig_dpm[s]=2667
    set s__TowerBaseConfig_bcdps[s]=72
    set s=s__TowerBaseConfig_getFromKey(39)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp09"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=9
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=60
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=76800
    set s__TowerBaseConfig_damage[s]=9000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=20
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=1000
    set s__TowerBaseConfig_dpscc[s]=9000
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=20
    set s__TowerBaseConfig_bcdmg[s]=85
    set s__TowerBaseConfig_dpm[s]=4500
    set s__TowerBaseConfig_bcdps[s]=85
    set s=s__TowerBaseConfig_getFromKey(40)
    set s__TowerBaseConfig_abilid[s]="@same@"
    set s__TowerBaseConfig_unitid[s]="gp10"
    set s__TowerBaseConfig_ident[s]="@same@"
    set s__TowerBaseConfig_level[s]=10
    set s__TowerBaseConfig_distance[s]=700
    set s__TowerBaseConfig_capacity[s]=30
    set s__TowerBaseConfig_hp[s]=100
    set s__TowerBaseConfig_buildCost[s]=150000
    set s__TowerBaseConfig_damage[s]=10000
    set s__TowerBaseConfig_dmult[s]=1
    set s__TowerBaseConfig_attackCost[s]=10
    set s__TowerBaseConfig_atcmul[s]=1
    set s__TowerBaseConfig_cooldown[s]=700
    set s__TowerBaseConfig_dpscc[s]=14286
    set s__TowerBaseConfig_dpsmul[s]=2
    set s__TowerBaseConfig_mpscc[s]=14
    set s__TowerBaseConfig_bcdmg[s]=150
    set s__TowerBaseConfig_dpm[s]=10204
    set s__TowerBaseConfig_bcdps[s]=105

endfunction

