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

update Building_YieldChanges set YieldChange = 3 where BuildingType = 'BUILDING_FOSSIL_FUEL_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
update Building_YieldChanges set YieldChange = 4 where BuildingType = 'BUILDING_POWER_PLANT' and YieldType = 'YIELD_PRODUCTION';
update Building_GreatPersonPoints set PointsPerTurn = 1 where BuildingType in ('BUILDING_JNR_WIND_MILL', 'BUILDING_IZ_WATER_MILL');

-- 建筑特效
insert or replace into BuildingModifiers
    (BuildingType,                  ModifierId)
values
    ('BUILDING_IZ_WATER_MILL',      'WATER_MILL_RIVER_DISTRICTS_PRODUCTION'),
    ('BUILDING_JNR_WIND_MILL',      'WIND_MILL_DISTRICTS_PRODUCTION'),
    ('BUILDING_JNR_MANUFACTURY',    'MANUFACTURY_POP_PRODUCTION'),
    ('BUILDING_JNR_FREIGHT_YARD',   'FREIGHT_YARD_POP_PRODUCTION'),
    ('BUILDING_JNR_FREIGHT_YARD',   'FREIGHT_YARD_POP_GOLD');

insert or replace into Modifiers
    (ModifierId,                                        ModifierType,                                           SubjectRequirementSetId)
values
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION',           'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',   'PLOT_IS_ADJACENT_TO_RIVER'),
    ('WIND_MILL_DISTRICTS_PRODUCTION',                  'MODIFIER_SINGLE_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',   'HD_WIND_MILL_REQUIREMENTS'),
    ('MANUFACTURY_POP_PRODUCTION',                      'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL),
    ('FREIGHT_YARD_POP_PRODUCTION',                     'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL),
    ('FREIGHT_YARD_POP_GOLD',                           'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION', NULL);

insert or replace into ModifierArguments
    (ModifierId,                                        Name,           Value)
values
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION',           'YieldType',    'YIELD_PRODUCTION'),
    ('WATER_MILL_RIVER_DISTRICTS_PRODUCTION',           'Amount',       1),
    ('WIND_MILL_DISTRICTS_PRODUCTION',                  'YieldType',    'YIELD_PRODUCTION'),
    ('WIND_MILL_DISTRICTS_PRODUCTION',                  'Amount',       1),
    ('MANUFACTURY_POP_PRODUCTION',                      'YieldType',    'YIELD_PRODUCTION'),
    ('MANUFACTURY_POP_PRODUCTION',                      'Amount',       0.5),
    ('FREIGHT_YARD_POP_PRODUCTION',                     'YieldType',    'YIELD_PRODUCTION'),
    ('FREIGHT_YARD_POP_PRODUCTION',                     'Amount',       1),
    ('FREIGHT_YARD_POP_GOLD',                           'YieldType',    'YIELD_GOLD'),
    ('FREIGHT_YARD_POP_GOLD',                           'Amount',       2);

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
    ('GREAT_PERSON_INDIVIDUAL_JAMES_WATT',  		'GREATPERSON_JNR_BUILDING_JNR_WIND_MILL',	'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_CITY');

insert or replace into Modifiers
    (ModifierId,                                ModifierType,                                          	RunOnce,	Permanent)
values
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',     'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE',  0,			1),
    ('GREATPERSON_JNR_BUILDING_JNR_WIND_MILL',  'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',   1,			1);

insert or replace into ModifierArguments
    (ModifierId,                               Name,            Value)
values
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'BuildingType',  'BUILDING_JNR_MANUFACTURY'),
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'YieldType',     'YIELD_CULTURE'),
    ('GREATPERSON_JNR_MANUFACTURY_CULTURE',    'Amount',        3),
    ('GREATPERSON_JNR_BUILDING_JNR_WIND_MILL', 'BuildingType',  'BUILDING_JNR_WIND_MILL');

--------------------------------------------------------------
-- Reqs
insert or ignore into RequirementSets
    (RequirementSetId,                                          RequirementSetType)
values
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'REQUIREMENTSET_TEST_ALL');

insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    -- Pantheon
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'REQUIRES_PLOT_ADJACENT_TO_RIVER'),
    ('PLOT_IS_ADJACENT_TO_RIVER',                               'HD_REQUIRES_DISTRICT_IS_NOT_DISTRICT_WONDER');

-- City States
insert or ignore into RequirementSets
    (RequirementSetId,                                          RequirementSetType)
values
    ('HD_CITY_HAS_INDUSTRIAL_TIER_4_BUILDING_REQUIREMENTS',     'REQUIREMENTSET_TEST_ANY');

delete from RequirementSetRequirements where RequirementSetId like 'HD_CITY_HAS_INDUSTRIAL_TIER_%_BUILDING_REQUIREMENTS';
insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_IZ_WATER_MILL'),
    ('HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_WIND_MILL'),
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


update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_3_BUILDING_REQUIREMENTS' where ModifierId in (
    'HD_UNMANNED_FACTORY_EXTRA_GOLD_CONSUME_1',
    'HD_UNMANNED_FACTORY_PLOT_YIELD_ATTACH_1'
);

update Modifiers set SubjectRequirementSetId = 'CITY_HAS_DISTRICT_INDUSTRIAL_ZONE_TIER_4_BUILDING_REQUIREMENTS' where ModifierId in (
    'HD_UNMANNED_FACTORY_EXTRA_GOLD_CONSUME_2',
    'HD_UNMANNED_FACTORY_PLOT_YIELD_ATTACH_2',
    'POLICY_HD_REINDUSTRIALIZATION_POP_PRODUCTION'
);

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

delete from District_Adjacencies where YieldChangeId = 'JNR_UC_Industry_Production';
delete from District_Adjacencies where YieldChangeId = 'JNR_UC_Corporation_Production';

-- 博洛尼亚bug修复 by xiaoxiao
update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_INDUSTRIAL_TIER_1_BUILDING_REQUIREMENTS' where SubjectRequirementSetId = 'BUILDING_IS_WORKSHOP';