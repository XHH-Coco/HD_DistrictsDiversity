update Buildings set MaxPlayerInstances = 1 where PrereqDistrict = 'DISTRICT_DIPLOMATIC_QUARTER';

update Buildings set PrereqCivic = 'CIVIC_RECORDED_HISTORY', Description = 'LOC_BUILDING_CONSULATE_DESCRIPTION' where BuildingType = 'BUILDING_CONSULATE';
update Buildings set PrereqCivic = 'CIVIC_DIPLOMATIC_SERVICE', Description = 'LOC_BUILDING_CHANCERY_DESCRIPTION' where BuildingType = 'BUILDING_CHANCERY';
update Districts set PrereqTech = NULL, PrereqCivic = 'CIVIC_EARLY_EMPIRE' where DistrictType = 'DISTRICT_DIPLOMATIC_QUARTER';

INSERT OR IGNORE INTO BuildingPrereqs
	(Building,										PrereqBuilding)
VALUES	
	('BUILDING_CHANCERY',					        'BUILDING_JNR_CONSULATE_SPIES'),
	('BUILDING_CHANCERY',					        'BUILDING_JNR_CONSULATE_CITYSTATES');

delete from DistrictModifiers where DistrictType = 'DISTRICT_CITY_CENTER' and (ModifierId like 'JNR_CHAMBER_OF_COMMERCE_ENABLE_%');
delete from BuildingModifiers where BuildingType = 'BUILDING_CONSULATE';
delete from BuildingModifiers where BuildingType = 'BUILDING_CHANCERY';
update Modifiers set SubjectRequirementSetId = 'PLAYER_HAS_BUILDING_JNR_CONSULATE_SPIES_REQUIREMENTS' where ModifierId = 'CONSULATE_SPY_UNLIMITED_PROMOTION';
update ModifierArguments set Value = 2 where ModifierId = 'JNR_CONSULATE_ALLIANCE_POINTS';
update ModifierArguments set Value = 1 where ModifierId = 'MERCHANTCONFEDERATION_INFLUENCETOKENGOLD' and Name = 'Amount';

insert or replace into BuildingModifiers (BuildingType, ModifierId) values
	--领事馆
	('BUILDING_CONSULATE',	'CONSULATE_INFLUENCEPOINTS'),
	('BUILDING_CONSULATE',	'DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN'),
	('BUILDING_CONSULATE',	'JNR_CONSULATE_ALLIANCE_POINTS'),
	('BUILDING_CONSULATE',	'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1'),
	('BUILDING_CONSULATE',	'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2'),
	('BUILDING_CONSULATE',	'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3'),
	--大使馆
	('BUILDING_CHANCERY',		'CHANCERY_INFLUENCEPOINTS'),
	('BUILDING_CHANCERY',		'DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN'),
	('BUILDING_CHANCERY',		'JNR_CHANCERY_ALLIANCE_FAVOR'),
	('BUILDING_CHANCERY',		'HD_CHANCERY_PLAYER_PROPERTY'),
	-- 国安局
	('BUILDING_JNR_CHANCERY_SPIES',				'CHANCERY_SPIES_ADJACENCY_ABILITY');

insert or replace into Modifiers (ModifierId, ModifierType, SubjectStackLimit, SubjectRequirementSetId) values
	('HD_CHANCERY_PLAYER_PROPERTY',							'MODIFIER_PLAYER_ADJUST_PROPERTY',		NULL,				NULL),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_1_AND_HAS_CONSULATE'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_2_AND_HAS_CONSULATE'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_3_AND_HAS_CONSULATE'),
	('CHANCERY_SPIES_ADJACENCY_ABILITY',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',															NULL,				'UNIT_IS_SPY');

insert or replace into ModifierArguments (ModifierId, Name, Value) values
	('HD_CHANCERY_PLAYER_PROPERTY',							'Key',		'HD_PLAYER_NEED_COUNT_CULTURAL_POLICY'),
	('HD_CHANCERY_PLAYER_PROPERTY',							'Amount',		1),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'YieldType',	'YIELD_GOLD'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'YieldType',	'YIELD_GOLD'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'YieldType',	'YIELD_GOLD'),
	('CHANCERY_SPIES_ADJACENCY_ABILITY',				'AbilityType','ABILITY_CHANCERY_SPY_ADJACENCY');

-- 国家安全局
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
	'CHANCERY_SPIES_' || DistrictType || '_ADJACENCY', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE', 'HD_DISTRICT_IS_' || DistrictType || '_WITHIN_1_TILE_REQUIREMENTS'
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) select
	'CHANCERY_SPIES_' || DistrictType || '_ADJACENCY', 'YieldType', YieldType
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) select
	'CHANCERY_SPIES_' || DistrictType || '_ADJACENCY', 'Amount', 2
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
	('ABILITY_CHANCERY_SPY_ADJACENCY', 'KIND_ABILITY');

INSERT OR IGNORE INTO TypeTags (Type, Tag) VALUES
	('ABILITY_CHANCERY_SPY_ADJACENCY', 'CLASS_SPY');

insert or replace into UnitAbilities (UnitAbilityType, Name, Description, Inactive) values
	('ABILITY_CHANCERY_SPY_ADJACENCY', 'LOC_ABILITY_CHANCERY_SPY_ADJACENCY_NAME', 'LOC_ABILITY_CHANCERY_SPY_ADJACENCY_DESCRIPTION',	1);

insert or replace into UnitAbilityModifiers (UnitAbilityType, ModifierId) select
	'ABILITY_CHANCERY_SPY_ADJACENCY', 'CHANCERY_SPIES_' || DistrictType || '_ADJACENCY'
from DistrictCorrespondingYieldType_HD where HasAdjacency = 1;

-- 总领馆
insert or ignore into BuildingModifiers (BuildingType, ModifierId) select
	'BUILDING_CHANCERY', 'HD_CHANCERY_CULTURE_' || Exp || '_ATTACH'
from HD_Binary_Compress where Exp < 5;

insert or ignore into Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
	'HD_CHANCERY_CULTURE_' || Exp || '_ATTACH', 'MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER', 'HD_PLOT_BINARY_COMPRESS_PLAYER_CULTURAL_POLICY_' || Exp || '_REQUIREMENTS'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_CULTURE_' || Exp || '_ATTACH', 'ModifierId', 'HD_CHANCERY_CULTURE_' || Exp
from HD_Binary_Compress where Exp < 5;

insert or ignore into Modifiers (ModifierId, ModifierType) select
	'HD_CHANCERY_CULTURE_' || Exp, 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_CULTURE_' || Exp, 'YieldType', 'YIELD_CULTURE'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_CULTURE_' || Exp, 'Amount', Amount
from HD_Binary_Compress where Exp < 5;

insert or ignore into BuildingModifiers (BuildingType, ModifierId) select
	'BUILDING_CHANCERY', 'HD_CHANCERY_GOLD_' || Exp || '_ATTACH'
from HD_Binary_Compress where Exp < 5;

insert or ignore into Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
	'HD_CHANCERY_GOLD_' || Exp || '_ATTACH', 'MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER', 'HD_PLOT_BINARY_COMPRESS_PLAYER_CULTURAL_POLICY_' || Exp || '_REQUIREMENTS'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_GOLD_' || Exp || '_ATTACH', 'ModifierId', 'HD_CHANCERY_GOLD_' || Exp
from HD_Binary_Compress where Exp < 5;

insert or ignore into Modifiers (ModifierId, ModifierType) select
	'HD_CHANCERY_GOLD_' || Exp, 'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_ORIGIN_YIELD_FOR_ALLY_ROUTE'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_GOLD_' || Exp, 'YieldType', 'YIELD_GOLD'
from HD_Binary_Compress where Exp < 5;

insert or ignore into ModifierArguments (ModifierId, Name, Value) select
	'HD_CHANCERY_GOLD_' || Exp, 'Amount', Amount * 3
from HD_Binary_Compress where Exp < 5;