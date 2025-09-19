-- Yield
insert or replace into Building_YieldChanges
    (BuildingType,                      YieldType,         	 	YieldChange)
values
    ('BUILDING_JNR_MANUFACTURY',        'YIELD_PRODUCTION', 	6),
    ('BUILDING_JNR_CHEMICAL',           'YIELD_PRODUCTION', 	6),
    ('BUILDING_POWER_PLANT',            'YIELD_SCIENCE',    	3);
-- Citizen
insert or replace into Building_CitizenYieldChanges
    (BuildingType,                  YieldType,          YieldChange)
values
    ('BUILDING_JNR_TOOLING_SHOP',   'YIELD_PRODUCTION', 1),
    ('BUILDING_JNR_TOOLING_SHOP',   'YIELD_GOLD',       -1),
    ('BUILDING_HD_CHARCOAL_KILN',   'YIELD_PRODUCTION', 1),
    ('BUILDING_HD_CHARCOAL_KILN',   'YIELD_GOLD',       -1),
    ('BUILDING_IZ_WATER_MILL',      'YIELD_PRODUCTION', 1),
    ('BUILDING_IZ_WATER_MILL',      'YIELD_GOLD',       -1),
    ('BUILDING_JNR_WIND_MILL',      'YIELD_PRODUCTION', 1),
    ('BUILDING_JNR_WIND_MILL',      'YIELD_GOLD',       -1),
    ('BUILDING_WORKSHOP',           'YIELD_PRODUCTION', 1),
    ('BUILDING_WORKSHOP',           'YIELD_GOLD',       -1),
    ('BUILDING_JNR_MANUFACTURY',    'YIELD_PRODUCTION', 1),
    ('BUILDING_JNR_MANUFACTURY',    'YIELD_GOLD',       -1),
    ('BUILDING_JNR_CHEMICAL',       'YIELD_PRODUCTION', 1),
    ('BUILDING_JNR_CHEMICAL',       'YIELD_GOLD',       -1),
    ('BUILDING_JNR_FREIGHT_YARD',   'YIELD_PRODUCTION', 1),
    ('BUILDING_JNR_FREIGHT_YARD',   'YIELD_GOLD',       -1);

-- update Building_YieldChanges set YieldChange = 3 where BuildingType = 'BUILDING_JNR_WIND_MILL' and YieldType = 'YIELD_PRODUCTION';
-- update Building_YieldChanges set YieldChange = 0 where BuildingType = 'BUILDING_COAL_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
delete from Building_YieldChanges where BuildingType = 'BUILDING_COAL_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
update Building_YieldChanges set YieldChange = 3 where BuildingType = 'BUILDING_FOSSIL_FUEL_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
update Building_YieldChanges set YieldChange = 4 where BuildingType = 'BUILDING_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
update Building_GreatPersonPoints set PointsPerTurn = 1 where BuildingType in ('BUILDING_JNR_WIND_MILL', 'BUILDING_IZ_WATER_MILL', 'BUILDING_JNR_TOOLING_SHOP', 'BUILDING_HD_CHARCOAL_KILN');

-- 建筑特效
-- delete from BuildingModifiers where BuildingType = 'BUILDING_WORKSHOP' and ModifierId = 'WORKSHOP_ADD_MINE_PRODUCTION';
insert or replace into BuildingModifiers
    (BuildingType,                  ModifierId)
values
    ('BUILDING_IZ_WATER_MILL',      'WATER_MILL_RIVER_DISTRICTS_PRODUCTION'),

    -- ('BUILDING_JNR_WIND_MILL',      'WIND_MILL_ADD_COASTAL_IMPROVEMENT_PRODUCTION'),
    ('BUILDING_JNR_WIND_MILL',      'WIND_MILL_COASTAL_DISTRICTS_PRODUCTION'),
    ('BUILDING_JNR_WIND_MILL',      'WIND_MILL_WATER_DISTRICTS_PRODUCTION'),

    -- ('BUILDING_JNR_TOOLING_SHOP',     'TOOLING_SHOP_IRON_PRODUCTION_ATTCH'),
    ('BUILDING_JNR_TOOLING_SHOP',     'HD_TOOLING_SHOP_PRODUCTION'),
    ('BUILDING_JNR_TOOLING_SHOP',     'HD_TOOLING_SHOP_IRON'),
    
    ('BUILDING_HD_CHARCOAL_KILN',     'HD_CHARCOAL_KILN_PRODUCTION'),
    ('BUILDING_HD_CHARCOAL_KILN',     'HD_CHARCOAL_KILN_COAL'),

    -- ('BUILDING_WORKSHOP',           'WORKSHOP_ADD_WORKSHOP_RESOURCE_PRODUCTION'),

    ('BUILDING_JNR_MANUFACTURY',    'MANUFACTURY_POP_PRODUCTION'),
    -- ('BUILDING_JNR_MANUFACTURY',    'MANUFACTURY_ADD_MANU_RESOURCE_PRODUCTION'),

    ('BUILDING_JNR_FREIGHT_YARD',   'FREIGHT_YARD_POP_PRODUCTION'),
    ('BUILDING_JNR_FREIGHT_YARD',   'FREIGHT_YARD_POP_GOLD');

insert or replace into Modifiers
    (ModifierId,                                        ModifierType,                                           SubjectRequirementSetId)
values
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION',           'MODIFIER_CITY_OWNER_ATTACH_MODIFIER',                  NULL),
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION_MODIFIER',  'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',   'PLOT_IS_ADJACENT_TO_RIVER'),

    -- ('WIND_MILL_ADD_COASTAL_IMPROVEMENT_PRODUCTION',   'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',          'PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS'),
    ('WIND_MILL_COASTAL_DISTRICTS_PRODUCTION',          'MODIFIER_CITY_OWNER_ATTACH_MODIFIER',                  NULL),
    ('WIND_MILL_COASTAL_DISTRICTS_PRODUCTION_MODIFIER', 'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',   'PLOT_IS_LAND_ADJACENT_TO_COAST'),
    ('WIND_MILL_WATER_DISTRICTS_PRODUCTION',            'MODIFIER_CITY_OWNER_ATTACH_MODIFIER',                  NULL),
    ('WIND_MILL_WATER_DISTRICTS_PRODUCTION_MODIFIER',   'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',   'PLOT_IS_COAST_OR_OCEAN_REQUIREMENTS'),

    -- ('TOOLING_SHOP_IRON_PRODUCTION_ATTCH',				'MODIFIER_CITY_OWNER_ATTACH_MODIFIER',					'PLAYER_HAS_ENOUGH_IRON_REQUIREMENTS'),
	-- ('TOOLING_SHOP_IRON_PRODUCTION',					'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD',			null),
    ('HD_TOOLING_SHOP_PRODUCTION',					    'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD',			'HD_TOOLING_SHOP_REQUIREMENT'),
    ('HD_TOOLING_SHOP_IRON',					        'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',	NULL),

    ('HD_CHARCOAL_KILN_PRODUCTION',					    'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD',			'HD_CHARCOAL_KILN_REQUIREMENT'),
    ('HD_CHARCOAL_KILN_COAL',					        'MODIFIER_SINGLE_CITY_ADJUST_FREE_RESOURCE_EXTRACTION',	NULL),

    -- ('WORKSHOP_ADD_WORKSHOP_RESOURCE_PRODUCTION',       'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',          'PLOT_HAS_WORKSHOP_RESOURCES_REQUIREMENTS'),

    -- ('MANUFACTURY_ADD_MANU_RESOURCE_PRODUCTION',        'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',          'PLOT_HAS_MANU_RESOURCES_REQUIREMENTS'),
    ('MANUFACTURY_POP_PRODUCTION',                      'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL),

    ('FREIGHT_YARD_POP_PRODUCTION',                     'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL),
    ('FREIGHT_YARD_POP_GOLD',                           'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL);

insert or replace into ModifierArguments
    (ModifierId,                                        Name,           Value)
values
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION',           'ModifierId',   'WATER_MILL_RIVER_DISTRICTS_PRODUCTION_MODIFIER'),
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION_MODIFIER',  'YieldType',    'YIELD_PRODUCTION'),
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION_MODIFIER',  'Amount',       1),

    -- ('WIND_MILL_ADD_COASTAL_IMPROVEMENT_PRODUCTION',    'YieldType',    'YIELD_PRODUCTION'),
    -- ('WIND_MILL_ADD_COASTAL_IMPROVEMENT_PRODUCTION',    'Amount',       1),
    ('WIND_MILL_COASTAL_DISTRICTS_PRODUCTION',          'ModifierId',   'WIND_MILL_COASTAL_DISTRICTS_PRODUCTION_MODIFIER'),
    ('WIND_MILL_COASTAL_DISTRICTS_PRODUCTION_MODIFIER', 'YieldType',    'YIELD_PRODUCTION'),
    ('WIND_MILL_COASTAL_DISTRICTS_PRODUCTION_MODIFIER', 'Amount',       1),
    ('WIND_MILL_WATER_DISTRICTS_PRODUCTION',            'ModifierId',   'WIND_MILL_WATER_DISTRICTS_PRODUCTION_MODIFIER'),
    ('WIND_MILL_WATER_DISTRICTS_PRODUCTION_MODIFIER',   'YieldType',    'YIELD_PRODUCTION'),
    ('WIND_MILL_WATER_DISTRICTS_PRODUCTION_MODIFIER',   'Amount',       1),

	-- ('TOOLING_SHOP_IRON_PRODUCTION_ATTCH',				'ModifierId',				'TOOLING_SHOP_IRON_PRODUCTION'),
	-- ('TOOLING_SHOP_IRON_PRODUCTION',					'BuildingType',				'BUILDING_JNR_TOOLING_SHOP'),
	-- ('TOOLING_SHOP_IRON_PRODUCTION',					'YieldType',				'YIELD_PRODUCTION'),
	-- ('TOOLING_SHOP_IRON_PRODUCTION',					'Amount',					3),
    ('HD_TOOLING_SHOP_PRODUCTION',					    'BuildingType',				'BUILDING_JNR_TOOLING_SHOP'),
	('HD_TOOLING_SHOP_PRODUCTION',					    'YieldType',				'YIELD_PRODUCTION'),
	('HD_TOOLING_SHOP_PRODUCTION',					    'Amount',					2),
	('HD_TOOLING_SHOP_IRON',					        'ResourceType',				'RESOURCE_IRON'),
	('HD_TOOLING_SHOP_IRON',					        'Amount',					1),

    ('HD_CHARCOAL_KILN_PRODUCTION',					    'BuildingType',				'BUILDING_HD_CHARCOAL_KILN'),
	('HD_CHARCOAL_KILN_PRODUCTION',					    'YieldType',				'YIELD_PRODUCTION'),
	('HD_CHARCOAL_KILN_PRODUCTION',					    'Amount',					2),
	('HD_CHARCOAL_KILN_COAL',					        'ResourceType',				'RESOURCE_COAL'),
	('HD_CHARCOAL_KILN_COAL',					        'Amount',					1),

    -- ('WORKSHOP_ADD_WORKSHOP_RESOURCE_PRODUCTION',       'YieldType',    'YIELD_PRODUCTION'),
    -- ('WORKSHOP_ADD_WORKSHOP_RESOURCE_PRODUCTION',       'Amount',       1),

    -- ('MANUFACTURY_ADD_MANU_RESOURCE_PRODUCTION',        'YieldType',    'YIELD_PRODUCTION'),
    -- ('MANUFACTURY_ADD_MANU_RESOURCE_PRODUCTION',        'Amount',       1),
    ('MANUFACTURY_POP_PRODUCTION',                      'YieldType',    'YIELD_PRODUCTION'),
    ('MANUFACTURY_POP_PRODUCTION',                      'Amount',       0.5),

    ('FREIGHT_YARD_POP_PRODUCTION',                     'YieldType',    'YIELD_PRODUCTION'),
    ('FREIGHT_YARD_POP_PRODUCTION',                     'Amount',       1),
    ('FREIGHT_YARD_POP_GOLD',                           'YieldType',    'YIELD_GOLD'),
    ('FREIGHT_YARD_POP_GOLD',                           'Amount',       2);

-- insert or replace into BuildingModifiers
-- 	(BuildingType,				ModifierId)
-- select
--     'BUILDING_JNR_CHEMICAL',	'CHEMICAL_HAS_' || ResourceType || '_BONUS_PRODUCTION_RATIO'
-- from Resources where ResourceType in ('RESOURCE_HORSES', 'RESOURCE_IRON', 'RESOURCE_COAL', 'RESOURCE_NITER', 'RESOURCE_OIL');
-- insert or replace into Modifiers
-- 	(ModifierId,													ModifierType,										SubjectRequirementSetId)
-- select
--     'CHEMICAL_HAS_' || ResourceType || '_BONUS_PRODUCTION_RATIO',	'MODIFIER_OWNER_CITY_ADJUST_CITY_YIELD_MODIFIER',	'PLAYER_HAS_ENOUGH_' || ResourceType || '_REQUIREMENTS'
-- from Resources where ResourceType in ('RESOURCE_HORSES', 'RESOURCE_IRON', 'RESOURCE_COAL', 'RESOURCE_NITER', 'RESOURCE_OIL');
-- insert or replace into ModifierArguments
-- 	(ModifierId,													Name,			Value)
-- select
--     'CHEMICAL_HAS_' || ResourceType || '_BONUS_PRODUCTION_RATIO',	'YieldType',	'YIELD_PRODUCTION'
-- from Resources where ResourceType in ('RESOURCE_HORSES', 'RESOURCE_IRON', 'RESOURCE_COAL', 'RESOURCE_NITER', 'RESOURCE_OIL');
-- insert or replace into ModifierArguments
-- 	(ModifierId,													Name,			Value)
-- select
--     'CHEMICAL_HAS_' || ResourceType || '_BONUS_PRODUCTION_RATIO',	'Amount',		2
-- from Resources where ResourceType in ('RESOURCE_HORSES', 'RESOURCE_IRON', 'RESOURCE_COAL', 'RESOURCE_NITER', 'RESOURCE_OIL');

insert or replace into BuildingModifiers (BuildingType, ModifierId) select
    'BUILDING_JNR_CHEMICAL',    'CHEMICAL_HAS_'||ResourceType||'_BONUS_SCIENCE'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';

insert or replace into Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_SCIENCE', 'MODIFIER_SINGLE_CITY_ADJUST_YIELD_CHANGE',  'HD_CITY_HAS_IMPROVED_' || ResourceType || '_REQUIRMENTS'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';
;
insert or replace into ModifierArguments (ModifierId, Name, Value) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_SCIENCE', 'YieldType',  'YIELD_SCIENCE'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';
insert or replace into ModifierArguments (ModifierId, Name, Value) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_SCIENCE', 'Amount',  7
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';

insert or replace into BuildingModifiers (BuildingType, ModifierId) select
    'BUILDING_JNR_CHEMICAL',    'CHEMICAL_HAS_'||ResourceType||'_BONUS_PRODUCTION_RATIO'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';

insert or replace into Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_PRODUCTION_RATIO', 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',  'HD_CITY_HAS_IMPROVED_' || ResourceType || '_REQUIRMENTS'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';

insert or replace into ModifierArguments (ModifierId, Name, Value) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_PRODUCTION_RATIO', 'YieldType',  'YIELD_PRODUCTION'
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';
insert or replace into ModifierArguments (ModifierId, Name, Value) select
    'CHEMICAL_HAS_'||ResourceType||'_BONUS_PRODUCTION_RATIO', 'Amount',  7
from Resources where ResourceClassType = 'RESOURCECLASS_STRATEGIC';


-- Districts
--insert or replace into DistrictModifiers
--    (DistrictType,                      ModifierId)
--values
--    ('DISTRICT_INDUSTRIAL_ZONE',        'WORKSHOP_ADD_MINE_PRODUCTION');
--insert or ignore into DistrictModifiers   (DistrictType,    ModifierId)
--select CivUniqueDistrictType, 'WORKSHOP_ADD_MINE_PRODUCTION' from DistrictReplaces
--where ReplacesDistrictType = 'DISTRICT_INDUSTRIAL_ZONE';

-- Projects, AI issue
-- delete from Types where Type = 'PROJECT_JNR_CONVERT_REACTOR_TO_FREIGHT';

-- Projects
--------------------------------------------------------------
-- insert or replace into Types
--     (Type,                                              Kind)
-- values
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL',  'KIND_PROJECT'),
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL',   'KIND_PROJECT');

-- insert or replace into Projects
--     (ProjectType,
--     Name,
--     ShortName,
--     Description,
--     PrereqDistrict,
--     PrereqTech,
--     RequiredBuilding,
--     Cost,
--     AdvisorType)
-- values
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL_NAME',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL_SHORT_NAME',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL_DESCRIPTION',
--     'DISTRICT_INDUSTRIAL_ZONE',
--     'TECH_ENGINEERING',
--     'BUILDING_JNR_MILL_RACE',
--     45,
--     'ADVISOR_GENERIC'),
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL_NAME',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL_SHORT_NAME',
--     'LOC_PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL_DESCRIPTION',
--     'DISTRICT_INDUSTRIAL_ZONE',
--     'TECH_CONSTRUCTION',
--     NULL,
--     45,
--     'ADVISOR_GENERIC');
-- --------------------------------------------------------------

-- -- Projects_XP2
-- --------------------------------------------------------------
-- insert or replace into Projects_XP2
--     (ProjectType,                                       CreateBuilding)
-- values
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL',  'BUILDING_IZ_WATER_MILL'),
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL',   'BUILDING_JNR_WIND_MILL');
--------------------------------------------------------------

-- Project_BuildingCosts
--------------------------------------------------------------
-- insert or replace into Project_BuildingCosts
--     (ProjectType,                                       ConsumedBuildingType)
-- values
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WATER_MILL',  'BUILDING_JNR_TOOLING_SHOP'),
--     ('PROJECT_JNR_CONVERT_TOOLING_SHOP_TO_WIND_MILL',   'BUILDING_JNR_TOOLING_SHOP');

--------------------------------------------------------------
-- Boosts
update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', BuildingType = 'BUILDING_JNR_MANUFACTURY', ImprovementType = NULL, NumItems = 1, TriggerDescription = 'LOC_BOOST_TRIGGER_MASS_PRODUCTION_JNR_UC',
    TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_MASS_PRODUCTION_JNR_UC' where TechnologyType = 'TECH_MASS_PRODUCTION';
update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', BuildingType = 'BUILDING_JNR_CHEMICAL', NumItems = 1, TriggerDescription = 'LOC_BOOST_TRIGGER_CHEMISTRY_JNR_UC',
    TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_CHEMISTRY_JNR_UC' where TechnologyType = 'TECH_CHEMISTRY';

update Boosts set BoostClass = 'BOOST_TRIGGER_HAVE_X_BUILDINGS', NumItems = 2, BuildingType = 'BUILDING_JNR_FREIGHT_YARD',
  TriggerDescription = 'LOC_BOOST_TRIGGER_BIG_DATA_HD_JNR', TriggerLongDescription = 'LOC_BOOST_TRIGGER_LONGDESC_BIG_DATA_HD_JNR'
where TechnologyType = 'TECH_BIG_DATA_HD';

--------------------------------------------------------------
-- Great Person
delete from GreatPersonIndividualActionModifiers where GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI' and ModifierId = 'JNR_GREATPERSON_WORKSHOP_PRODUCTION';
update GreatPersonIndividuals set ActionEffectTextOverride = NULL where GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI';

insert or replace into GreatPersonIndividualActionModifiers
    (GreatPersonIndividualType,                     ModifierId,									AttachmentTargetType)
values
    ('GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI',   'GREATPERSON_JNR_MANUFACTURY_CULTURE',		'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),
    ('GREAT_PERSON_INDIVIDUAL_JAMES_WATT',  		'GREATPERSON_JNR_TOOLING_SHOP',				'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_CITY');

insert or replace into Modifiers
    (ModifierId,                                ModifierType,                                          	RunOnce,	Permanent)
values
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',     'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  0,			1),
    ('GREATPERSON_JNR_TOOLING_SHOP',    		'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',   1,			1);

insert or replace into ModifierArguments
    (ModifierId,                               Name,            Value)
values
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'BuildingType',  'BUILDING_JNR_MANUFACTURY'),
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'YieldType',     'YIELD_CULTURE'),
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'Amount',        3),
    ('GREATPERSON_JNR_TOOLING_SHOP',   		   'BuildingType',  'BUILDING_JNR_TOOLING_SHOP');

--------------------------------------------------------------
-- Reqs
insert or ignore into RequirementSets
    (RequirementSetId,                                          RequirementSetType)
values
    ('PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS',              'REQUIREMENTSET_TEST_ALL'),
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'REQUIREMENTSET_TEST_ALL'),
    ('PLOT_IS_COAST_OR_OCEAN_REQUIREMENTS',                     'REQUIREMENTSET_TEST_ALL');

insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    -- Pantheon
    ('PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS',              'REQUIRES_PLOT_IS_IMPROVED'),
    ('PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS',              'REQUIRES_PLOT_HAS_NOT_OCEAN'),
    ('PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS',              'REQUIRES_PLOT_HAS_NOT_COAST'),
    ('PLOT_IS_COASTAL_IMPROVED_LAND_REQUIREMENTS',              'REQUIRES_PLOT_IS_ADJACENT_TO_COAST'),
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'HD_REQUIRES_DISTRICT_IS_NOT_DISTRICT_WONDER'),
    ('PLOT_IS_LAND_ADJACENT_TO_COAST',                          'HD_REQUIRES_DISTRICT_IS_NOT_DISTRICT_WONDER'),
    ('PLOT_IS_COAST_OR_OCEAN_REQUIREMENTS',                     'HD_REQUIRES_DISTRICT_IS_NOT_DISTRICT_WONDER'),
    ('PLOT_IS_COAST_OR_OCEAN_REQUIREMENTS',                     'REQUIRES_HD_PLOT_IS_COAST_OR_OCEAN');

-- City States
insert or ignore into RequirementSets
    (RequirementSetId,                                          RequirementSetType)
values
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIREMENTSET_TEST_ANY');

delete from RequirementSetRequirements where RequirementSetId like 'HD_CITY_HAS_INDUSTRIAL_TIER_%_BUILDING_REQUIREMENTS';
insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_TOOLING_SHOP'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_IZ_WATER_MILL'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_WIND_MILL'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_HD_CHARCOAL_KILN'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_2_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_WORKSHOP'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_2_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_MANUFACTURY'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_FACTORY'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_CHEMICAL'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_HD_ELECTRONICS_FACTORY'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_COAL_POWER_PLANT'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_FOSSIL_FUEL_POWER_PLANT'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_POWER_PLANT'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_FREIGHT_YARD'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_HD_INTERNET_COMPANY');

----------------------------------------------------------------------------------------------------------------------------
-- Traits and Policy
----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_INDUSTRIAL_TIER_2_BUILDING_REQUIREMENTS' WHERE ModifierId='TRAIT_GREAT_ENGINEER_FACTORY_MODIFIER';
UPDATE Modifiers SET SubjectRequirementSetId='CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_3_BUILDING_REQUIREMENTS' WHERE ModifierId in ('RUHR_VALLEY_CITIES_PRODUCTION_MODIFIER', 'RUHR_VALLEY_CITIES_EXTRA_GREAT_ENGINEER_POINTS');
--------------------------------------------------------------
-- Traits
--------------------------------------------------------------
UPDATE Traits SET Description='LOC_TRAIT_CIVILIZATION_NOBEL_PRIZE_DESCRIPTION_JNR_UC' WHERE TraitType='TRAIT_CIVILIZATION_NOBEL_PRIZE';
--------------------------------------------------------------
-- Policy
--------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId='HD_PLOT_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_2_BUILDING_REQUIREMENTS' WHERE ModifierId='INVENTION_ENGINEER_WORKSHOP';

-- 再工业化
-- update RequirementSetRequirements set RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_4_BUILDING' where
-- 	RequirementSetId = 'HD_REINDUSTRIALIZATION_REQUIREMENTS' and RequirementId = 'REQUIRES_CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_3_BUILDING';
update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_4_BUILDING_REQUIREMENTS' where
	ModifierId = 'POLICY_HD_REINDUSTRIALIZATION_POP_PRODUCTION';

-- 技术革命
insert or replace into PolicyModifiers
	(PolicyType,						ModifierId)
values
    ('POLICY_HD_TECH_REVOLUTION',		'HD_TECH_REVOLUTION_GREATENGINEER_4'),
    ('POLICY_NOBEL_PRIZE',		'HD_TECH_REVOLUTION_GREATENGINEER_4');

insert or replace into Modifiers
	(ModifierId,								ModifierType,															SubjectRequirementSetId)
values
	('HD_TECH_REVOLUTION_GREATENGINEER_4',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_GREAT_PERSON_POINTS',					'HD_PLOT_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_4_BUILDING_REQUIREMENTS');

insert or replace into ModifierArguments
	(ModifierId,												Name,							Value)
values
    ('HD_TECH_REVOLUTION_GREATENGINEER_4',						'GreatPersonClassType',			'GREAT_PERSON_CLASS_ENGINEER'),
	('HD_TECH_REVOLUTION_GREATENGINEER_4',						'Amount',						4);
--------------------------------------------------------------

-- Great Person
delete from Types where Type = 'GREAT_PERSON_INDIVIDUAL_JNR_MARTINE_DE_BERTEREAU';
delete from GreatPersonIndividualActionModifiers where GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_JAMES_WATT' and ModifierId = 'JNR_GREATPERSON_FRESH_WATER_PRODUCTION';

-- 马钧
update ModifierArguments set Value = 'BUILDING_IZ_WATER_MILL' where Name = 'BuildingType' and ModifierId = 'HD_GREATPERSON_GRANT_IZ_TIER1_BUILDING';
update Modifiers set SubjectRequirementSetId = 'CITY_HAS_BUILDING_JNR_MILL_RACE_REQUIREMENTS' where ModifierId = 'HD_GREATPERSON_GRANT_IZ_TIER1_BUILDING';

-- Monopoly Deletes
delete from Types where Type = 'RESOURCE_JNR_MACHINES';
delete from Types where Type = 'RESOURCE_JNR_FERTILIZERS';
delete from Types where Type = 'RESOURCE_JNR_ELECTRONICS';
delete from Types where Type = 'RESOURCE_JNR_SOUVENIRS';
delete from Types where Type = 'RESOURCE_JNR_PHARMA';
delete from Types where Type = 'RESOURCE_JNR_PLASTICS';

delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_MACHINES';
delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_FERTILIZERS';
delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_ELECTRONICS';
delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_SOUVENIRS';
delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_PHARMA';
delete from Types where Type = 'PROJECT_CREATE_PRODUCT_JNR_PLASTICS';

delete from GreatWorks where GreatWorkType like 'GREATWORK_PRODUCT_JNR_%';

-- update Buildings set InternalOnly = 1, PrereqTech = NULL where BuildingType = 'BUILDING_JNR_MODE_MACHINES';
-- update Buildings set InternalOnly = 1, PrereqTech = NULL WHERE BuildingType = 'BUILDING_JNR_MODE_FERTILIZERS';
-- update Buildings set InternalOnly = 1, PrereqTech = NULL WHERE BuildingType = 'BUILDING_JNR_MODE_ELECTRONICS';
-- update Buildings set InternalOnly = 1, PrereqTech = NULL WHERE BuildingType = 'BUILDING_JNR_MODE_SOUVENIRS';
-- update Buildings set InternalOnly = 1, PrereqTech = NULL WHERE BuildingType = 'BUILDING_JNR_MODE_PHARMA';
-- update Buildings set InternalOnly = 1, PrereqTech = NULL WHERE BuildingType = 'BUILDING_JNR_MODE_PLASTICS';

delete from District_Adjacencies where YieldChangeId = 'JNR_UC_Industry_Production';
delete from District_Adjacencies where YieldChangeId = 'JNR_UC_Corporation_Production';

-- 博洛尼亚bug修复 by xiaoxiao
update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS' where SubjectRequirementSetId = 'BUILDING_IS_WORKSHOP';
-- --苏格兰ui
-- insert or replace into ImprovementModifiers
-- 	(ImprovementType,				ModifierID)
-- values
--     ('IMPROVEMENT_GOLF_COURSE',		'GOLD_COURSE_PRODUCTION_TIER5');
-- insert or replace into Modifiers
-- 	(ModifierId,					ModifierType,										SubjectRequirementSetId)
-- values
--     ('GOLD_COURSE_PRODUCTION_TIER5','MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',				'CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_4_BUILDING_REQUIREMENTS');
-- insert or replace into ModifierArguments
-- 	(ModifierId,						Name,				Value)
-- values
--     ('GOLD_COURSE_PRODUCTION_TIER5',	'ModifierId',		'GOLD_COURSE_PRODUCTION');