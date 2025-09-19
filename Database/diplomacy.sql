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

insert or replace into BuildingModifiers
    (BuildingType,                  			ModifierId)
values
	--领事馆
	('BUILDING_CONSULATE',         	            'CONSULATE_INFLUENCEPOINTS'),
	('BUILDING_CONSULATE',         	            'DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN'),
	('BUILDING_CONSULATE',         	            'JNR_CONSULATE_ALLIANCE_POINTS'),
	-- ('BUILDING_CONSULATE',         	            'CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_1'),
	-- ('BUILDING_CONSULATE',         	            'CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_2'),
	-- ('BUILDING_CONSULATE',         	            'CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_3'),
	('BUILDING_CONSULATE',         	            'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1'),
	('BUILDING_CONSULATE',         	            'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2'),
	('BUILDING_CONSULATE',         	            'CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3'),
	--大使馆
	('BUILDING_CHANCERY',         	            'CHANCERY_INFLUENCEPOINTS'),
	('BUILDING_CHANCERY',         	            'DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN'),
	('BUILDING_CHANCERY',			            'JNR_CHANCERY_ALLIANCE_FAVOR'),
	-- 国安局
	('BUILDING_JNR_CHANCERY_SPIES',				'CHANCERY_SPIES_ADJACENCY_ABILITY');

--大使馆同盟商路加产   
insert or replace into PolicyModifiers
	(PolicyType,                  				ModifierId)
select
	PolicyType,									'CHANCERY_TRADE_ROUTE_SCIENCE_CHANGE'
from Policies where GovernmentSlotType = 'SLOT_DIPLOMATIC';
insert or replace into PolicyModifiers
	(PolicyType,                  				ModifierId)
select
	PolicyType,									'CHANCERY_TRADE_ROUTE_CULTURE_CHANGE'
from Policies where GovernmentSlotType = 'SLOT_DIPLOMATIC';

--国际汇兑处商路产出加成
-- with TraitModifiers_Pre
-- 	(TraitType,								ModifierId)
-- as (values
-- 	('MINOR_CIV_CULTURAL_TRAIT',		    'JNR_CHANCERY_UNIQUE_INFLUENCE_CULTURAL'),
-- 	('MINOR_CIV_INDUSTRIAL_TRAIT',		    'JNR_CHANCERY_UNIQUE_INFLUENCE_INDUSTRIAL'),
-- 	('MINOR_CIV_MILITARISTIC_TRAIT',	    'JNR_CHANCERY_UNIQUE_INFLUENCE_MILITARISTIC'),
-- 	('MINOR_CIV_RELIGIOUS_TRAIT',		    'JNR_CHANCERY_UNIQUE_INFLUENCE_RELIGIOUS'),
-- 	('MINOR_CIV_SCIENTIFIC_TRAIT',		    'JNR_CHANCERY_UNIQUE_INFLUENCE_SCIENTIFIC'),
-- 	('MINOR_CIV_TRADE_TRAIT',			    'JNR_CHANCERY_UNIQUE_INFLUENCE_TRADE'),
--     ('MINOR_CIV_CSE_MARITIME_TRAIT',	    'JNR_CHANCERY_UNIQUE_INFLUENCE_MARITIME'),
-- 	('MINOR_CIV_CSE_AGRICULTURAL_TRAIT',    'JNR_CHANCERY_UNIQUE_INFLUENCE_AGRICULTURAL'))
-- insert or replace into TraitModifiers
-- 	(TraitType,		ModifierId)
-- select
-- 	TraitType,		ModifierId
-- from TraitModifiers_Pre where TraitType in (select TraitType from Traits);

insert or replace into Modifiers
	(ModifierId,									ModifierType,												SubjectStackLimit,	SubjectRequirementSetId)
values
	--领事馆商路容量
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_1',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',				NULL,				'PLAYER_IS_ALLY_LEVEL_1_AND_HAS_CONSULATE'),
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_2',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',				NULL,				'PLAYER_IS_ALLY_LEVEL_2_AND_HAS_CONSULATE'),
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_3',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',				NULL,				'PLAYER_IS_ALLY_LEVEL_3_AND_HAS_CONSULATE'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_1_AND_HAS_CONSULATE'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_2_AND_HAS_CONSULATE'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',				NULL,				'PLAYER_IS_ALLY_LEVEL_3_AND_HAS_CONSULATE'),
	('CHANCERY_SPIES_ADJACENCY_ABILITY',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',															NULL,				'UNIT_IS_SPY');

insert or replace into ModifierArguments
	(ModifierId,									Name,			Value)
values
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_1',		'Amount',		1),
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_2',		'Amount',		1),
	-- ('CONSULATE_TRADEROUTE_ALLIANCE_LEVEL_3',		'Amount',		1);
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'Amount',		3),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_1',		'YieldType',	'YIELD_GOLD'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_2',		'YieldType',	'YIELD_GOLD'),
	('CONSULATE_TRADE_GOLD_ALLIANCE_LEVEL_3',		'YieldType',	'YIELD_GOLD'),
	('CHANCERY_SPIES_ADJACENCY_ABILITY',				'AbilityType','ABILITY_CHANCERY_SPY_ADJACENCY');

-- 国家安全局
INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
	'CHANCERY_SPIES_' || DistrictType || '_ADJACENCY', 'MODIFIER_PLAYER_DISTRICTS_ADJUST_BASE_YIELD_CHANGE', 'HD_DISTRICT_IS_' || DistrictType || '_WITHIN_1_TILE'
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