-- UC_REL_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,						Kind)
VALUES	('BUILDING_JNR_ALTAR',		'KIND_BUILDING'),
		('BUILDING_JNR_MONASTERY',	'KIND_BUILDING'),
		('BUILDING_JNR_HOSPITIUM',	'KIND_BUILDING'),
		('BUILDING_JNR_GARDEN',		'KIND_BUILDING');
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
		(BuildingType,				PrereqDistrict,			PrereqCivic,				Cost,	Maintenance,	CitizenSlots,	Housing,	Entertainment,	RegionalRange,	PurchaseYield,	AdvisorType,			Name,								Description)
VALUES	('BUILDING_JNR_ALTAR',		'DISTRICT_HOLY_SITE',	'CIVIC_MYSTICISM',			70,		1,				1,				0,			0,				4,				'YIELD_GOLD',	'ADVISOR_RELIGIOUS',	'LOC_BUILDING_JNR_ALTAR_NAME',		'LOC_BUILDING_JNR_ALTAR_DESCRIPTION'),
		('BUILDING_JNR_MONASTERY',	'DISTRICT_HOLY_SITE',	'CIVIC_RECORDED_HISTORY',	140,	2,				1,				0,			0,				6,				'YIELD_GOLD',	'ADVISOR_RELIGIOUS',	'LOC_BUILDING_JNR_MONASTERY_NAME',	'LOC_BUILDING_JNR_MONASTERY_DESCRIPTION'),
		('BUILDING_JNR_HOSPITIUM',	'DISTRICT_HOLY_SITE',	'CIVIC_REFORMED_CHURCH',	240,	4,				1,				1,			0,				0,				'YIELD_FAITH',	'ADVISOR_RELIGIOUS',	'LOC_BUILDING_JNR_HOSPITIUM_NAME',	'LOC_BUILDING_JNR_HOSPITIUM_DESCRIPTION'),
		('BUILDING_JNR_GARDEN',		'DISTRICT_HOLY_SITE',	'CIVIC_HUMANISM',						240,	4,				1,				1,			0,				0,				'YIELD_FAITH',	'ADVISOR_RELIGIOUS',	'LOC_BUILDING_JNR_GARDEN_NAME',		'LOC_BUILDING_JNR_GARDEN_DESCRIPTION');



--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
INSERT OR IGNORE INTO BuildingPrereqs
		(Building,						PrereqBuilding)
VALUES	('BUILDING_JNR_MONASTERY',		'BUILDING_SHRINE'),
		('BUILDING_JNR_HOSPITIUM',		'BUILDING_TEMPLE');
INSERT OR IGNORE INTO BuildingPrereqs
		(Building,							PrereqBuilding)
SELECT	Building,							'BUILDING_JNR_ALTAR'
FROM	BuildingPrereqs	WHERE	PrereqBuilding='BUILDING_SHRINE';
INSERT OR IGNORE INTO BuildingPrereqs
		(Building,							PrereqBuilding)
SELECT	Building,							'BUILDING_JNR_MONASTERY'
FROM	BuildingPrereqs	WHERE	PrereqBuilding='BUILDING_TEMPLE';

INSERT OR IGNORE INTO BuildingPrereqs
		(Building,							PrereqBuilding)
SELECT	'BUILDING_JNR_GARDEN',				PrereqBuilding
FROM	BuildingPrereqs	WHERE	Building='BUILDING_JNR_HOSPITIUM';

insert or ignore into BuildingPrereqs (Building, PrereqBuilding) select
	Building, 'BUILDING_STAVE_CHURCH'
from BuildingPrereqs where PrereqBuilding = 'BUILDING_TEMPLE' and exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or IGNORE into BuildingPrereqs (Building, PrereqBuilding)
	select 'BUILDING_PORCELAIN_TOWER', 'BUILDING_JNR_MONASTERY'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_PORCELAIN_TOWER');
--------------------------------------------------------------

-- BuildingReplaces
--------------------------------------------------------------
DELETE FROM BuildingReplaces WHERE CivUniqueBuildingType='BUILDING_STAVE_CHURCH';
/*
INSERT OR IGNORE INTO BuildingReplaces
		(CivUniqueBuildingType,		ReplacesBuildingType)
SELECT	BuildingType,				'BUILDING_JNR_MONASTERY'
FROM	Buildings
WHERE	BuildingType='BUILDING_STAVE_CHURCH';
*/
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,					MutuallyExclusiveBuilding)
VALUES	('BUILDING_SHRINE',			'BUILDING_JNR_ALTAR'),
		('BUILDING_JNR_ALTAR',		'BUILDING_SHRINE'),
		('BUILDING_TEMPLE',			'BUILDING_JNR_MONASTERY'),
		('BUILDING_JNR_MONASTERY',	'BUILDING_TEMPLE'),
		('BUILDING_HD_ALCHEMY_ROOM',			'BUILDING_JNR_MONASTERY'),
		('BUILDING_JNR_MONASTERY',	'BUILDING_HD_ALCHEMY_ROOM'),
		('BUILDING_JNR_HOSPITIUM',	'BUILDING_JNR_GARDEN'),
		('BUILDING_JNR_GARDEN',		'BUILDING_JNR_HOSPITIUM');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_TEMPLE', 'BUILDING_STAVE_CHURCH'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_JNR_MONASTERY', 'BUILDING_STAVE_CHURCH'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_STAVE_CHURCH', 'BUILDING_TEMPLE'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_STAVE_CHURCH', 'BUILDING_JNR_MONASTERY'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_STAVE_CHURCH');

-- Uniques
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
SELECT	CivUniqueBuildingType,				'BUILDING_JNR_ALTAR'
FROM	BuildingReplaces	WHERE	ReplacesBuildingType='BUILDING_SHRINE';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
SELECT	CivUniqueBuildingType,				'BUILDING_JNR_MONASTERY'
FROM	BuildingReplaces	WHERE	ReplacesBuildingType='BUILDING_TEMPLE';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
SELECT	CivUniqueBuildingType,				'BUILDING_TEMPLE'
FROM	BuildingReplaces	WHERE	ReplacesBuildingType='BUILDING_JNR_MONASTERY';
--------------------------------------------------------------

-- Unit_BuildingPrereqs
--------------------------------------------------------------

insert or replace into Building_GreatWorks
	(BuildingType,						NumSlots,			GreatWorkSlotType)
values
	('BUILDING_JNR_HOSPITIUM',			1,					'GREATWORKSLOT_CATHEDRAL'),
	('BUILDING_JNR_HOSPITIUM',			1,					'GREATWORKSLOT_RELIC');

--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
DELETE FROM StartingBuildings WHERE District='DISTRICT_HOLY_SITE';
--------------------------------------------------------------