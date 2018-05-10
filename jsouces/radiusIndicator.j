library radiusIndicator uses general
	
	#define Lig_P=24;
	#define Upd_T=0.5;
	
	private pair pp;
	private pair p1;
	private pair p2;
	private RadiusStruct array lca;
	private integer next=0;

	private RadiusStruct array lcae;
	private integer nexte=0;

	struct RadiusStruct;
		
		lightning array l[Lig_P];
		boolean pauseFade=false;
		boolean kill=false;
		boolean permanent=false;
		unit u;
		real a=0.6;

		static method getr takes unit u returns real
				if GetUnitTypeId(u)=='towe' or GetUnitTypeId(u)=='tow2' or GetUnitTypeId(u)=='tow3' or GetUnitTypeId(u)=='wisp' or GetUnitTypeId(u)=='tow5'
					return 550.
				elseif GetUnitTypeId(u)=='tow4' 
					return 1200.
				elseif GetUnitTypeId(u)=='n004'
					return 300.
				endif
				return .0
		endmethod

		static method initialize takes unit u, real r returns RadiusStruct
			if (find(u)) {return 0;}
			RadiusStruct lc=RadiusStruct.create()
			lc.u=u
			pp.fromunit(u)
			p1.past(pp)
			p1.polar(r,0)
			integer j=Lig_P
			if lcpu[GetPlayerId(GetTriggerPlayer())]
				j=j-7
			endif
			integer i=0
			loop
				exitwhen i==j
				p2.past(pp)
				p2.polar(r,(360/j)*(i+1))
				lc.l[i]=AddLightningEx( "CICL", true, p1.x, p1.y, p1.z, p2.x, p2.y, p2.z);
				SetLightningColor(lc.l[i],0,0.8,0.2,lc.a)
				p1.past(p2)
				i++
			endloop 
			lca[next]=lc
			next++
			return lc;
		endmethod
		
		static method Off takes unit u returns nothing
			integer i=0
			loop
				exitwhen i==next
				if lca[i].u==u
					lca[i].pauseFade=false
					return
				endif
				i++
			endloop
		endmethod
		
		static method Kill takes unit u returns nothing
			integer i=0
			loop
				exitwhen i==next
				if lca[i].u==u
					lca[i].kill=true
					return
				endif
				i++
			endloop
		endmethod

		static method find takes unit u returns boolean
			integer i=0
			loop
				exitwhen i==next
				if lca[i].u==u
					return true
				endif
				i++
			endloop
			return false
		endmethod
		
		static method go takes nothing returns nothing
			integer i=0
			integer n=0
			loop
				exitwhen i>=next
				if (lca[i].pauseFade==false and lca[i].permanent==false) {
					if lca[i].a>0.03 and lca[i].kill!=true
						lca[i].a=lca[i].a-0.01
						loop
							exitwhen n>=Lig_P or lca[i].l[n]==null
							SetLightningColor(lca[i].l[n],0,0.8,0.2,lca[i].a)
							n++
						endloop
						n=0
						i++
					else
						loop
							exitwhen n>=Lig_P or lca[i].l[n]==null
							DestroyLightning(lca[i].l[n])
							lca[i].l[n]=null
							n++
						endloop
						n=0
						lca[i].destroy()
						next--
						lca[i]=lca[next]
						//print("delite"+I2S(i)+"___next "+I2S(next))
					endif
				}
				i++
			endloop
		endmethod

		static nothing onInit() {
			pp=pair.create()
			p1=pair.create()
			p2=pair.create()
			timer ti=CreateTimer()
			TimerStart(ti,Upd_T,true,function RadiusStruct.go)
		}

	endstruct

endlibrary