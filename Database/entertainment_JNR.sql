-- UC_ENT_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
-------------------------------------------------------------- 
insert or ignore into Types
		(Type,								Kind)
values	('BUILDING_JNR_TOURNEY',			'KIND_BUILDING'),--勾栏瓦舍
		('BUILDING_JNR_BOTANICAL_GARDEN',	'KIND_BUILDING'),--植物园
		('BUILDING_JNR_THEME_PARK',			'KIND_BUILDING'),--博览会
		('BUILDING_JNR_MARINA',				'KIND_BUILDING'),--游艇区
		('BUILDING_JNR_CASINO',				'KIND_BUILDING'),--游客接待中心
		('BUILDING_JNR_FOOD_COURT',			'KIND_BUILDING');--纪念品商店
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
		(BuildingType,						PrereqDistrict,							PrereqCivic,				PrereqTech,						Cost,	Maintenance,	CitizenSlots,	Entertainment,	RegionalRange,	PurchaseYield,	AdvisorType,		Name,										Description)
values	('BUILDING_JNR_TOURNEY',			'DISTRICT_ENTERTAINMENT_COMPLEX',		'CIVIC_DRAMA_POETRY',		Null,							160,	1,				Null,			1,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_TOURNEY_NAME',			'LOC_BUILDING_JNR_TOURNEY_DESCRIPTION'),
		('BUILDING_JNR_BOTANICAL_GARDEN',	'DISTRICT_ENTERTAINMENT_COMPLEX',		'CIVIC_COMMERCIAL_CAPITALISM_HD',			Null,							300,	4,				Null,			2,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_BOTANICAL_GARDEN_NAME',	'LOC_BUILDING_JNR_BOTANICAL_GARDEN_DESCRIPTION'),
		('BUILDING_JNR_THEME_PARK',			'DISTRICT_ENTERTAINMENT_COMPLEX',		Null,						'TECH_RADIO',					500,	10,				Null,			1,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_THEME_PARK_NAME',			'LOC_BUILDING_JNR_THEME_PARK_DESCRIPTION'),
		('BUILDING_JNR_MARINA',				'DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	Null,						'TECH_SQUARE_RIGGING',			220,	1,				Null,			1,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_MARINA_NAME',				'LOC_BUILDING_JNR_MARINA_DESCRIPTION'),
		('BUILDING_JNR_CASINO',				'DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	'CIVIC_SOCIAL_SCIENCE_HD',	Null,					300,	4,				Null,			2,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_CASINO_NAME',				'LOC_BUILDING_JNR_CASINO_DESCRIPTION'),
		('BUILDING_JNR_FOOD_COURT',			'DISTRICT_WATER_ENTERTAINMENT_COMPLEX',	'CIVIC_CAPITALISM',			Null,							500,	10,				Null,			1,				0,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_FOOD_COURT_NAME',			'LOC_BUILDING_JNR_FOOD_COURT_DESCRIPTION');

update Buildings set Housing = 1 where BuildingType = 'BUILDING_JNR_TOURNEY';
--------------------------------------------------------------

-- BuildingReplaces
--------------------------------------------------------------

--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
values	('BUILDING_JNR_BOTANICAL_GARDEN',	'BUILDING_ARENA'),
		('BUILDING_JNR_THEME_PARK',			'BUILDING_ZOO'),
		('BUILDING_JNR_THEME_PARK',			'BUILDING_HD_SALON'),
		('BUILDING_JNR_CASINO',				'BUILDING_FERRIS_WHEEL'),
		('BUILDING_JNR_FOOD_COURT',			'BUILDING_AQUARIUM');

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_TOURNEY'
from	BuildingPrereqs	where	PrereqBuilding='BUILDING_ARENA';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_BOTANICAL_GARDEN'
from	BuildingPrereqs	where	PrereqBuilding='BUILDING_ZOO';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_MARINA'
from	BuildingPrereqs	where	PrereqBuilding='BUILDING_FERRIS_WHEEL';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_CASINO'
from	BuildingPrereqs	where	PrereqBuilding='BUILDING_AQUARIUM';
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
values	('BUILDING_ARENA',					'BUILDING_JNR_TOURNEY'),
		('BUILDING_JNR_TOURNEY',			'BUILDING_ARENA'),

		('BUILDING_ZOO',					'BUILDING_JNR_BOTANICAL_GARDEN'),
		('BUILDING_HD_SALON',					'BUILDING_JNR_BOTANICAL_GARDEN'),

		('BUILDING_JNR_BOTANICAL_GARDEN',	'BUILDING_ZOO'),
		('BUILDING_JNR_BOTANICAL_GARDEN',	'BUILDING_HD_SALON'),

		('BUILDING_STADIUM',				'BUILDING_JNR_THEME_PARK'),
		('BUILDING_JNR_THEME_PARK',			'BUILDING_STADIUM'),

		('BUILDING_FERRIS_WHEEL',			'BUILDING_JNR_MARINA'),
		('BUILDING_JNR_MARINA',				'BUILDING_FERRIS_WHEEL'),

		('BUILDING_AQUARIUM',				'BUILDING_JNR_CASINO'),
		('BUILDING_JNR_CASINO',				'BUILDING_AQUARIUM'),
		
		('BUILDING_AQUATICS_CENTER',		'BUILDING_JNR_FOOD_COURT'),
		('BUILDING_JNR_FOOD_COURT',			'BUILDING_AQUATICS_CENTER');

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	'BUILDING_TLACHTLI',				'BUILDING_JNR_TOURNEY'
where exists ( select BuildingType from Buildings where BuildingType = 'BUILDING_TLACHTLI');

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	'BUILDING_JNR_TOURNEY',				'BUILDING_TLACHTLI'
where exists ( select BuildingType from Buildings where BuildingType = 'BUILDING_TLACHTLI');
--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
DELETE from StartingBuildings where District='DISTRICT_ENTERTAINMENT_COMPLEX';
DELETE from StartingBuildings where District='DISTRICT_WATER_ENTERTAINMENT_COMPLEX';
--------------------------------------------------------------