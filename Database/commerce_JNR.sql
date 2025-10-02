-- UC_COM_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
insert or ignore into Types
	(Type,								Kind)
values
	-- 商业中心
	('BUILDING_JNR_WAYSTATION',			'KIND_BUILDING'),--货栈
	('BUILDING_JNR_MINT',				'KIND_BUILDING'),--铸币厂
	('BUILDING_JNR_GUILDHALL',			'KIND_BUILDING'),--会馆
	('BUILDING_JNR_MERCHANT_QUARTER',	'KIND_BUILDING'),--商人中心
	('BUILDING_JNR_COMMODITY_EXCHANGE',	'KIND_BUILDING'),--交易中心
	('BUILDING_JNR_MARKETING_AGENCY',	'KIND_BUILDING'),--市场部
	-- 港口
	('BUILDING_JNR_LIGHTHOUSE_FISHING',	'KIND_BUILDING'),--贸易码头
	('BUILDING_JNR_ENTREPOT',				'KIND_BUILDING'),--避风港
	('BUILDING_JNR_FISH_MARKET',			'KIND_BUILDING'),--商港
	('BUILDING_JNR_OFFSHORE_TERMINAL',	'KIND_BUILDING'),--游轮码头
	('BUILDING_JNR_NAVAL_BASE',			'KIND_BUILDING');--海军基地
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or replace into Buildings
	(BuildingType,						PrereqDistrict,				PrereqTech,						PrereqCivic,				Cost,  Housing,	Maintenance,	CitizenSlots,	PurchaseYield,	AdvisorType,		Name,										Description)
values
	-- 商业中心
	('BUILDING_JNR_WAYSTATION',			'DISTRICT_COMMERCIAL_HUB',	'TECH_ANIMAL_HUSBANDRY',		NULL,						65,   0,		0,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_WAYSTATION_NAME',			'LOC_BUILDING_JNR_WAYSTATION_DESCRIPTION'),
	('BUILDING_JNR_MINT',				'DISTRICT_COMMERCIAL_HUB',	'TECH_CURRENCY',				NULL,						110,   0,		1,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_MINT_NAME',				'LOC_BUILDING_JNR_MINT_DESCRIPTION'),
	('BUILDING_JNR_GUILDHALL',			'DISTRICT_COMMERCIAL_HUB',	'TECH_METAL_CASTING',			NULL,						250,   1,		4,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_GUILDHALL_NAME',			'LOC_BUILDING_JNR_GUILDHALL_DESCRIPTION'),
	('BUILDING_JNR_MERCHANT_QUARTER',	'DISTRICT_COMMERCIAL_HUB',	NULL,							'CIVIC_MEDIEVAL_FAIRES',				225,   0,		4,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_MERCHANT_QUARTER_NAME',	'LOC_BUILDING_JNR_MERCHANT_QUARTER_DESCRIPTION'),
	('BUILDING_JNR_COMMODITY_EXCHANGE',	'DISTRICT_COMMERCIAL_HUB',	NULL,			    			'CIVIC_URBANIZATION',		450,   0,		10,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_COMMODITY_EXCHANGE_NAME',	'LOC_BUILDING_JNR_COMMODITY_EXCHANGE_DESCRIPTION'),
	('BUILDING_JNR_MARKETING_AGENCY',	'DISTRICT_COMMERCIAL_HUB',	NULL,							'CIVIC_LAW_HD',	400,   0,		10,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_MARKETING_AGENCY_NAME',	'LOC_BUILDING_JNR_MARKETING_AGENCY_DESCRIPTION'),
	-- 港口
	('BUILDING_JNR_LIGHTHOUSE_FISHING',	'DISTRICT_HARBOR',			'TECH_SHIPBUILDING',	NULL,						120,   2,		1,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_NAME',	'LOC_BUILDING_JNR_LIGHTHOUSE_FISHING_DESCRIPTION'),
	('BUILDING_JNR_ENTREPOT',				'DISTRICT_HARBOR',			'TECH_CARTOGRAPHY',				NULL,						220,   0,		4,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_ENTREPOT_NAME',				'LOC_BUILDING_JNR_ENTREPOT_DESCRIPTION'),
	('BUILDING_JNR_FISH_MARKET',			'DISTRICT_HARBOR',			NULL,							'CIVIC_EXPLORATION',		220,   0,		4,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_FISH_MARKET_NAME',			'LOC_BUILDING_JNR_FISH_MARKET_DESCRIPTION'),
	('BUILDING_JNR_OFFSHORE_TERMINAL',	'DISTRICT_HARBOR',			'TECH_OCEANOGRAPHY_HD',				NULL,						400,   0,		10,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_OFFSHORE_TERMINAL_NAME',	'LOC_BUILDING_JNR_OFFSHORE_TERMINAL_DESCRIPTION'),
	('BUILDING_JNR_NAVAL_BASE',			'DISTRICT_HARBOR',			NULL,							'CIVIC_COLONIALISM',		320,   0,		10,				1,				'YIELD_GOLD',	'ADVISOR_GENERIC',	'LOC_BUILDING_JNR_NAVAL_BASE_NAME',			'LOC_BUILDING_JNR_NAVAL_BASE_DESCRIPTION');

update Buildings set Description = 'LOC_BUILDING_JNR_MINT_ALT_DESCRIPTION' where BuildingType = 'BUILDING_JNR_MINT' and exists (select ResourceType from Resources where ResourceType = 'RESOURCE_SEASHELLS');

--------------------------------------------------------------

-- Buildings_XP2
--------------------------------------------------------------
insert or ignore into Buildings_XP2
		(BuildingType,						RequiredPower)
select	'BUILDING_JNR_COMMODITY_EXCHANGE',	RequiredPower
from	Buildings_XP2
where	BuildingType = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into Buildings_XP2
		(BuildingType,						RequiredPower)
select	'BUILDING_JNR_MARKETING_AGENCY',	RequiredPower
from	Buildings_XP2
where	BuildingType = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into Buildings_XP2
		(BuildingType,						RequiredPower)
select	'BUILDING_JNR_OFFSHORE_TERMINAL',		RequiredPower
from	Buildings_XP2
where	BuildingType = 'BUILDING_SEAPORT';

insert or ignore into Buildings_XP2
		(BuildingType,						RequiredPower)
select	'BUILDING_JNR_NAVAL_BASE',			RequiredPower
from	Buildings_XP2
where	BuildingType = 'BUILDING_SEAPORT';
--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
insert or ignore into BuildingPrereqs
	(Building,							PrereqBuilding)
values
	('BUILDING_STATUE_LIBERTY',		'BUILDING_JNR_OFFSHORE_TERMINAL'),
	('BUILDING_STATUE_LIBERTY',		'BUILDING_JNR_NAVAL_BASE'),
	('BUILDING_MARKET',						'BUILDING_JNR_WAYSTATION');

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_MINT'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_MARKET';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_GRAND_BAZAAR'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_BANK';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_GUILDHALL'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_BANK';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_MERCHANT_QUARTER'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_BANK';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_COMMODITY_EXCHANGE'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_MARKETING_AGENCY'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_GUILDHALL',			PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_BANK';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_MERCHANT_QUARTER',	PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_BANK';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_COMMODITY_EXCHANGE',	PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_MARKETING_AGENCY',	PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_LIGHTHOUSE_FISHING'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_LIGHTHOUSE';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_ENTREPOT'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_SHIPYARD';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_FISH_MARKET'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_SHIPYARD';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	Building,							'BUILDING_JNR_OFFSHORE_TERMINAL'
from	BuildingPrereqs	where	PrereqBuilding = 'BUILDING_SEAPORT';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_ENTREPOT',				PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_SHIPYARD';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_FISH_MARKET',			PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_SHIPYARD';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	'BUILDING_JNR_OFFSHORE_TERMINAL',		PrereqBuilding
from	BuildingPrereqs	where	Building = 'BUILDING_SEAPORT';

insert or ignore into BuildingPrereqs
		(Building,							PrereqBuilding)
select	a.BuildingType,						b.PrereqBuilding
from	Buildings a, BuildingPrereqs b
where	a.BuildingType = 'BUILDING_JNR_NAVAL_BASE' and b.Building = 'BUILDING_SEAPORT';

delete from BuildingPrereqs where Building in (select BuildingType from Buildings where PrereqDistrict = 'DISTRICT_AERODROME');
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
values
		-- CH TIER 1
		('BUILDING_FAIR',					'BUILDING_JNR_WAYSTATION'),
		('BUILDING_JNR_WAYSTATION',				'BUILDING_FAIR'),
		-- CH TIER 2
		('BUILDING_MARKET',					'BUILDING_JNR_MINT'),
		('BUILDING_JNR_MINT',				'BUILDING_MARKET'),
		-- CH TIER 3
		('BUILDING_BANK',					'BUILDING_JNR_GUILDHALL'),
		('BUILDING_BANK',					'BUILDING_JNR_MERCHANT_QUARTER'),
		('BUILDING_JNR_GUILDHALL',			'BUILDING_BANK'),
		('BUILDING_JNR_GUILDHALL',			'BUILDING_JNR_MERCHANT_QUARTER'),
		('BUILDING_JNR_MERCHANT_QUARTER',	'BUILDING_BANK'),
		('BUILDING_JNR_MERCHANT_QUARTER',	'BUILDING_JNR_GUILDHALL'),
		-- CH TIER 4
		('BUILDING_STOCK_EXCHANGE',			'BUILDING_JNR_COMMODITY_EXCHANGE'),
		('BUILDING_STOCK_EXCHANGE',			'BUILDING_JNR_MARKETING_AGENCY'),
		('BUILDING_JNR_COMMODITY_EXCHANGE',	'BUILDING_STOCK_EXCHANGE'),
		('BUILDING_JNR_COMMODITY_EXCHANGE',	'BUILDING_JNR_MARKETING_AGENCY'),
		('BUILDING_JNR_MARKETING_AGENCY',	'BUILDING_STOCK_EXCHANGE'),
		('BUILDING_JNR_MARKETING_AGENCY',	'BUILDING_JNR_COMMODITY_EXCHANGE'),
		-- HB TIER 1
		('BUILDING_LIGHTHOUSE',				'BUILDING_JNR_LIGHTHOUSE_FISHING'),
		('BUILDING_JNR_LIGHTHOUSE_FISHING',	'BUILDING_LIGHTHOUSE'),
		-- HB TIER 2
		('BUILDING_SHIPYARD',				'BUILDING_JNR_ENTREPOT'),
		('BUILDING_SHIPYARD',				'BUILDING_JNR_FISH_MARKET'),
		('BUILDING_JNR_ENTREPOT',				'BUILDING_SHIPYARD'),
		('BUILDING_JNR_ENTREPOT',				'BUILDING_JNR_FISH_MARKET'),
		('BUILDING_JNR_FISH_MARKET',			'BUILDING_SHIPYARD'),
		('BUILDING_JNR_FISH_MARKET',			'BUILDING_JNR_ENTREPOT'),
		-- HB TIER 3
		('BUILDING_SEAPORT',				'BUILDING_JNR_OFFSHORE_TERMINAL'),
		('BUILDING_JNR_OFFSHORE_TERMINAL',	'BUILDING_SEAPORT');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_JNR_MINT', 'BUILDING_SUKIENNICE'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_SUKIENNICE');

insert or ignore into MutuallyExclusiveBuildings (Building, MutuallyExclusiveBuilding)
	select 'BUILDING_SUKIENNICE', 'BUILDING_JNR_MINT'
	where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_SUKIENNICE');

-- Naval Base Compatibility
insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	'BUILDING_SEAPORT',					BuildingType
from	Buildings	where	BuildingType = 'BUILDING_JNR_NAVAL_BASE';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	'BUILDING_JNR_OFFSHORE_TERMINAL',		BuildingType
from	Buildings	where	BuildingType = 'BUILDING_JNR_NAVAL_BASE';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	BuildingType,						'BUILDING_SEAPORT'
from	Buildings	where	BuildingType = 'BUILDING_JNR_NAVAL_BASE';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	BuildingType,						'BUILDING_JNR_OFFSHORE_TERMINAL'
from	Buildings	where	BuildingType = 'BUILDING_JNR_NAVAL_BASE';

-- Uniques CH
insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_MINT'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_MARKET';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_GUILDHALL'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_BANK';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_MERCHANT_QUARTER'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_BANK';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_COMMODITY_EXCHANGE'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_STOCK_EXCHANGE';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_MARKETING_AGENCY'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_STOCK_EXCHANGE';

-- Uniques HA
insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_LIGHTHOUSE_FISHING'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_LIGHTHOUSE';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_ENTREPOT'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_SHIPYARD';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_FISH_MARKET'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_SHIPYARD';

insert or ignore into MutuallyExclusiveBuildings
		(Building,							MutuallyExclusiveBuilding)
select	CivUniqueBuildingType,				'BUILDING_JNR_OFFSHORE_TERMINAL'
from	BuildingReplaces	where	ReplacesBuildingType = 'BUILDING_SEAPORT';

insert or ignore into BuildingPrereqs (Building, PrereqBuilding) select
	Building, 'BUILDING_FAIR'
from MutuallyExclusiveBuildings where MutuallyExclusiveBuilding = 'BUILDING_MARKET';

insert or ignore into BuildingPrereqs (Building, PrereqBuilding) select
	Building, 'BUILDING_JNR_WAYSTATION'
from MutuallyExclusiveBuildings where MutuallyExclusiveBuilding = 'BUILDING_MARKET';

insert or ignore into BuildingPrereqs (Building, PrereqBuilding) select
	CivUniqueBuildingType, 'BUILDING_JNR_WAYSTATION'
from BuildingReplaces where ReplacesBuildingType = 'BUILDING_MARKET';

insert or ignore into BuildingPrereqs (Building, PrereqBuilding) select
	CivUniqueBuildingType, 'BUILDING_JNR_WAYSTATION'
from BuildingReplaces where ReplacesBuildingType = 'BUILDING_JNR_MINT';
--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
delete from StartingBuildings where District = 'DISTRICT_COMMERCIAL_HUB';
delete from StartingBuildings where District = 'DISTRICT_HARBOR';
--------------------------------------------------------------