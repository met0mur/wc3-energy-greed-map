library initialBuildings uses manatower, passport {

	
	private nothing addlinkd(unit a, unit b) {
		ManaLinkStruct.addlink(a,b);
	}

	private unit CreateUnitd(player a, integer b, real c, real d, real e) {
		unit x = CreateUnit(a, b, c, d, e)
		UnitDataStruct unitData = UnitDataStruct.add(x,pTOWER);
		unitData.updateTowerSet();
		return x;
	}

	nothing initbase() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		if (nextDifficultyLevel != DifficultyLevel_Hard) {
			a=CreateUnitd(p,'tow2',90.,-2004.,270.)
			b=CreateUnitd(p,'tow2',90.,-1900.,270.)
			addlinkd(a,b)
			a=CreateUnitd(p,'tow2',90.,-1806.,270.)
			addlinkd(b,a)
			c=CreateUnitd(p,'tow3',0.,-1366.,270.)
			addlinkd(a,c)
			a=CreateUnitd(p,'towe',-90.,-2004.,270.)
			b=CreateUnitd(p,'tow2',-90.,-1900.,270.)
			addlinkd(a,b)
			a=CreateUnitd(p,'tow2',-90.,-1806.,270.)
			addlinkd(b,a)
			addlinkd(a,c)
			b=CreateUnitd(p,'tow3',0.,-936.,270.)
			addlinkd(c,b)
			a=CreateUnitd(p,'tow3',-100.,-300.,270.)//последняя перед развилкой
			UnitAddAbility(a,'Ane2')
			addlinkd(b,a)
			b=CreateUnitd(p,'tow3',255.,0.,270.)
			UnitAddAbility(b,'Ane2')
			addlinkd(a,b)
			c=CreateUnitd(p,'tow3',-255.,0.,270.)
			UnitAddAbility(c,'Ane2')
			addlinkd(a,c)
			a=CreateUnitd(p,'gi01',-350.,-350.,270.)
			addlinkd(c,a)
			a=CreateUnitd(p,'gi01',350.,-350.,270.)
			addlinkd(b,a)
			a=CreateUnitd(p,'gi01',-350.,350.,270.)
			addlinkd(c,a)
			a=CreateUnitd(p,'gi01',350.,350.,270.)
			addlinkd(b,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,healL1,-450.,0.,270.)
			addlinkd(c,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,healL1, 450.,0.,270.)
			addlinkd(b,a)
			IssueImmediateOrder(a,"healon")
			a=CreateUnit(p,'pr01',0.,0.,270.)
			prima.Add(a,150)
			IssueImmediateOrder(a,"webon")
		}

		a=null
		b=null
		c=null
	}
		
	nothing initbase1() {
		player p=Player(11)
		unit a
		unit b
		unit c
		unit d
		
		if (nextDifficultyLevel != DifficultyLevel_Hard) {
			a=CreateUnit(p,'gamm',-300.,7200.,270.)
			b=CreateUnit(p,'gamm',180.,7200.,270.)
		}

		a=null
		b=null
		c=null
	}

}