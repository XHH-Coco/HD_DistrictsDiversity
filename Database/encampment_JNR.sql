-- UC_MIC_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,							Kind)
VALUES	('BUILDING_JNR_TARGET_RANGE',	'KIND_BUILDING'),
		('BUILDING_JNR_CAVALIER',		'KIND_BUILDING'),
		('BUILDING_JNR_DEPOT',			'KIND_BUILDING'),
		('BUILDING_JNR_ARSENAL',		'KIND_BUILDING'),
		('BUILDING_JNR_PRISON',			'KIND_BUILDING');
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
INSERT or replace INTO Buildings
		(BuildingType,					PrereqDistrict,			PrereqTech,					PrereqCivic,				Cost,	Maintenance,	CitizenSlots,	Housing,	PurchaseYield,	AdvisorType,		Name,									Description)
VALUES	
--边关:后勤补给解锁解锁，110锤。1锤1住房2大军点1维护
		('BUILDING_JNR_TARGET_RANGE',	'DISTRICT_ENCAMPMENT',	NULL,						'CIVIC_DEFENSIVE_TACTICS',	110,	1,				1,				1,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_BUILDING_JNR_TARGET_RANGE_NAME',	'LOC_BUILDING_JNR_TARGET_RANGE_DESCRIPTION'),
--募兵所：封建解锁。200锤，伟人产出&维护同hd兵工厂		
		('BUILDING_JNR_CAVALIER',		'DISTRICT_ENCAMPMENT',	NULL,						'CIVIC_HERALDRY_HD',			200,	4,				1,				0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_BUILDING_JNR_CAVALIER_NAME',		'LOC_BUILDING_JNR_CAVALIER_DESCRIPTION'),
--补给站：城堡解锁。200锤，伟人产出&维护同兵工厂		
		('BUILDING_JNR_DEPOT',			'DISTRICT_ENCAMPMENT',	'TECH_CASTLES',				NULL,						200,	4,				1,				0,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_BUILDING_JNR_DEPOT_NAME',			'LOC_BUILDING_JNR_DEPOT_DESCRIPTION'),
--军事政治处：450锤，建筑本体相邻转琴，+1住房+2大军点，维护费同军事学院
		('BUILDING_JNR_ARSENAL',		'DISTRICT_ENCAMPMENT',	NULL,						'CIVIC_NATIONALISM',		450,	7,				1,				1,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_BUILDING_JNR_ARSENAL_NAME',		'LOC_BUILDING_JNR_ARSENAL_DESCRIPTION'),
--军事研究院：450锤，建筑本体相邻转瓶，+1住房+2大军点，维护费同军事学院；本城每有一种开发的战略+5%瓶，膛线解锁，专家额外+1瓶。
		('BUILDING_JNR_PRISON',			'DISTRICT_ENCAMPMENT',	'TECH_RIFLING',				NULL,						450,	7,				1,				1,			'YIELD_GOLD',	'ADVISOR_CONQUEST',	'LOC_BUILDING_JNR_PRISON_NAME',			'LOC_BUILDING_JNR_PRISON_DESCRIPTION');
--本体产出
insert or replace into Building_YieldChanges
	(BuildingType,						YieldType,				YieldChange)
values
--边关
	('BUILDING_JNR_TARGET_RANGE',		'YIELD_PRODUCTION',		1),
--募兵所
	('BUILDING_JNR_CAVALIER',			'YIELD_PRODUCTION',		3),
--补给站
	('BUILDING_JNR_DEPOT',				'YIELD_PRODUCTION',		3);

-- BuildingPrereqs
--------------------------------------------------------------
INSERT OR IGNORE INTO BuildingPrereqs
		(Building,						PrereqBuilding)
VALUES	('BUILDING_ARMORY',				'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_JNR_CAVALIER',		'BUILDING_BARRACKS'),
		('BUILDING_JNR_CAVALIER',		'BUILDING_STABLE'),
		('BUILDING_JNR_CAVALIER',		'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_JNR_DEPOT',			'BUILDING_BARRACKS'),
		('BUILDING_JNR_DEPOT',			'BUILDING_STABLE'),
		('BUILDING_JNR_DEPOT',			'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_MILITARY_ACADEMY',	'BUILDING_JNR_CAVALIER'),
		('BUILDING_MILITARY_ACADEMY',	'BUILDING_JNR_DEPOT'),
		('BUILDING_JNR_ARSENAL',		'BUILDING_ARMORY'),
		('BUILDING_JNR_ARSENAL',		'BUILDING_JNR_CAVALIER'),
		('BUILDING_JNR_ARSENAL',		'BUILDING_JNR_DEPOT'),
		('BUILDING_JNR_PRISON',			'BUILDING_ARMORY'),
		('BUILDING_JNR_PRISON',			'BUILDING_JNR_CAVALIER'),
		('BUILDING_JNR_PRISON',			'BUILDING_JNR_DEPOT'),
		('BUILDING_TERRACOTTA_ARMY',	'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_BRANDENBURG_GATE',	'BUILDING_JNR_ARSENAL'),
		('BUILDING_BRANDENBURG_GATE',	'BUILDING_JNR_PRISON');
--------------------------------------------------------------
-- fix when BRANDENBURG_GATE not enabled.
delete from BuildingPrereqs where Building = 'BUILDING_BRANDENBURG_GATE' and
not exists (select BuildingType from Buildings where BuildingType = 'BUILDING_BRANDENBURG_GATE');

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,						MutuallyExclusiveBuilding)
VALUES	-- TIER 1
		('BUILDING_BARRACKS',			'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_STABLE',				'BUILDING_JNR_TARGET_RANGE'),
		('BUILDING_JNR_TARGET_RANGE',	'BUILDING_BARRACKS'),
		('BUILDING_JNR_TARGET_RANGE',	'BUILDING_STABLE'),
		-- TIER 2
		('BUILDING_ARMORY',				'BUILDING_JNR_CAVALIER'),
		('BUILDING_ARMORY',				'BUILDING_JNR_DEPOT'),
		('BUILDING_JNR_CAVALIER',		'BUILDING_ARMORY'),
		('BUILDING_JNR_CAVALIER',		'BUILDING_JNR_DEPOT'),
		('BUILDING_JNR_DEPOT',			'BUILDING_ARMORY'),
		('BUILDING_JNR_DEPOT',			'BUILDING_JNR_CAVALIER'),
		-- TIER 3
		('BUILDING_MILITARY_ACADEMY',	'BUILDING_JNR_ARSENAL'),
		('BUILDING_MILITARY_ACADEMY',	'BUILDING_JNR_PRISON'),
		('BUILDING_JNR_ARSENAL',		'BUILDING_MILITARY_ACADEMY'),
		('BUILDING_JNR_ARSENAL',		'BUILDING_JNR_PRISON'),
		('BUILDING_JNR_PRISON',			'BUILDING_MILITARY_ACADEMY'),
		('BUILDING_JNR_PRISON',			'BUILDING_JNR_ARSENAL');
--------------------------------------------------------------

-- MutuallyExclusiveBuildings - Uniques
--------------------------------------------------------------
-- TIER 1
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_BARRACKS'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_STABLE' OR ReplacesBuildingType='BUILDING_JNR_TARGET_RANGE';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_STABLE'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_BARRACKS' OR ReplacesBuildingType='BUILDING_JNR_TARGET_RANGE';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_JNR_TARGET_RANGE'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_BARRACKS' OR ReplacesBuildingType='BUILDING_STABLE';

-- TIER 2
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_ARMORY'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_JNR_CAVALIER' OR ReplacesBuildingType='BUILDING_JNR_DEPOT';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_JNR_CAVALIER'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_ARMORY' OR ReplacesBuildingType='BUILDING_JNR_DEPOT';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_JNR_DEPOT'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_ARMORY' OR ReplacesBuildingType='BUILDING_JNR_CAVALIER';

-- TIER 3
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_MILITARY_ACADEMY'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_JNR_ARSENAL' OR ReplacesBuildingType='BUILDING_JNR_PRISON';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_JNR_ARSENAL'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_MILITARY_ACADEMY' OR ReplacesBuildingType='BUILDING_JNR_PRISON';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,				MutuallyExclusiveBuilding)
SELECT	 CivUniqueBuildingType,	'BUILDING_JNR_PRISON'
FROM BuildingReplaces WHERE ReplacesBuildingType='BUILDING_MILITARY_ACADEMY' OR ReplacesBuildingType='BUILDING_JNR_ARSENAL';
--------------------------------------------------------------
delete from MutuallyExclusiveBuildings where Building = 'BUILDING_BASILIKOI_PAIDES' and MutuallyExclusiveBuilding = 'BUILDING_STABLE';