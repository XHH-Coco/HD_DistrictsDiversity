-------------------------------------
--     Adaptation for the Mod      --
-------------------------------------

-- Districts
--------------------------------------------------------------
update Districts set Cost = 60, Maintenance = 1, PrereqTech = 'TECH_IRRIGATION', Name='LOC_DISTRICT_AQUEDUCT_NAME_JNR_UC', Description = 'LOC_DISTRICT_AQUEDUCT_DESCRIPTION_JNR_UC' where DistrictType = 'DISTRICT_AQUEDUCT';
update Districts set Cost = 48, Maintenance = 1, PrereqTech = 'TECH_IRRIGATION' where DistrictType in (select CivUniqueDistrictType from DistrictReplaces where ReplacesDistrictType = 'DISTRICT_AQUEDUCT');
update Districts set Cost = 60,PrereqTech = NULL, PrereqCivic = 'CIVIC_EARLY_EMPIRE' where DistrictType = 'DISTRICT_SUK_TORFBAEIR';
update Districts set Entertainment = 1, Name='LOC_DISTRICT_BATH_NAME_JNR_UC', Description = 'LOC_DISTRICT_BATH_DESCRIPTION_JNR_UC' where DistrictType = 'DISTRICT_BATH';
--------------------------------------------------------------
update Buildings set Cost = 120, Maintenance = 2, CitizenSlots = 0, Housing = 1, Entertainment = 2, PrereqTech = 'TECH_MATHEMATICS', RegionalRange = 0, PrereqCivic = NULL, Description = 'LOC_BUILDING_THERMAL_BATH_DESCRIPTION_UC_JNR' where BuildingType = 'BUILDING_THERMAL_BATH';
update Buildings set Cost = 120, Maintenance = 2, CitizenSlots = 0, Housing = 1, Entertainment = 0, PrereqTech = 'TECH_CONSTRUCTION' where BuildingType = 'BUILDING_JNR_ORCHARD';
update Buildings set Cost = 120, Maintenance = 2, CitizenSlots = 0, Housing = 1, Entertainment = 0, PrereqTech = 'TECH_ENGINEERING' where BuildingType = 'BUILDING_JNR_HAMMER_WORKS';
update Buildings set Cost = 120, Maintenance = 2, CitizenSlots = 0, Housing = 1, Entertainment = 0, PrereqTech = 'TECH_MATHEMATICS' where BuildingType = 'BUILDING_JNR_BATHHOUSE';
update Buildings set Cost = 120, Maintenance = 2, CitizenSlots = 0, Housing = 1, Entertainment = 0, PrereqTech = 'TECH_TEXTILE_HD' where BuildingType = 'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL';
update Buildings set Cost = 200, Maintenance = 5, CitizenSlots = 0, Housing = 2, Entertainment = 1 where BuildingType = 'BUILDING_SEWER';

delete from Building_YieldChanges where BuildingType = 'BUILDING_THERMAL_BATH';
insert or replace into Building_YieldChanges
    (BuildingType,                              YieldType,          YieldChange)
values
    ('BUILDING_THERMAL_BATH',                   'YIELD_CULTURE',    2),
    ('BUILDING_JNR_ORCHARD',                    'YIELD_FOOD',       4),
    ('BUILDING_JNR_HAMMER_WORKS',               'YIELD_PRODUCTION', 2),
    ('BUILDING_JNR_HAMMER_WORKS',               'YIELD_SCIENCE',    2),
    ('BUILDING_JNR_BATHHOUSE',                  'YIELD_SCIENCE',    2),
    ('BUILDING_JNR_BATHHOUSE',                  'YIELD_CULTURE',    2),
    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',    'YIELD_FOOD',       2),
    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',    'YIELD_PRODUCTION', 2);

insert or replace into Building_GreatPersonPoints
    (BuildingType,                  GreatPersonClassType,           PointsPerTurn)
values
    ('BUILDING_JNR_BATHHOUSE',      'GREAT_PERSON_CLASS_SCIENTIST', 2);

delete from DistrictModifiers where DistrictType = 'DISTRICT_AQUEDUCT' and ModifierId = 'AQUEDUCT_ADDAMENITIES';
delete from DistrictModifiers where DistrictType = 'DISTRICT_BATH' and ModifierId = 'BATH_ADDAMENITIES';

insert or replace into DistrictModifiers
    (DistrictType,              ModifierId)
values
    ('DISTRICT_BATH',               'BATH_ADJUST_INSIDE_BUILDINGS_PRODUCTION_SPEED');

delete from BuildingModifiers where BuildingType = 'BUILDING_THERMAL_BATH';
insert or replace into BuildingModifiers
    (BuildingType,                  ModifierId)
values
    ('BUILDING_JNR_ORCHARD',        'ORCHARD_ADD_LUMBER_MILL_FOOD'),
    ('BUILDING_JNR_ORCHARD',        'ORCHARD_ADD_FARM_RESOURCE_FOOD'),
    ('BUILDING_JNR_ORCHARD',        'HD_ORCHARD_FOOD'),

    ('BUILDING_JNR_HAMMER_WORKS',   'HAMMER_WORKS_ADD_MINE_PRODUCTION'),
    ('BUILDING_JNR_HAMMER_WORKS',   'HAMMER_WORKS_ADD_QUARRY_PRODUCTION'),
    ('BUILDING_JNR_HAMMER_WORKS',   'HD_HAMMER_WORKS_PRODUCTION'),

    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'HYDRAULIC_SPINNING_WHEEL_CAMP_PRODUCTION'),
    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'HYDRAULIC_SPINNING_WHEEL_PASTURE_PRODUCTION'),
    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'HYDRAULIC_SPINNING_WHEEL_PLANTATION_PRODUCTION'),
    ('BUILDING_HD_HYDRAULIC_SPINNING_WHEEL',      'HD_HYDRAULIC_SPINNING_WHEEL_PRODUCTION'),

    ('BUILDING_JNR_BATHHOUSE',      'HD_BATHHOUSE_GOLD'),

	('BUILDING_THERMAL_BATH',		'BUILDING_THERMAL_BATH_POP_CULTURE'),
	('BUILDING_THERMAL_BATH',		'BUILDING_THERMAL_BATH_POP_GOLD');

insert or replace into Modifiers
    (ModifierId,                                            ModifierType,                                               SubjectRequirementSetId)
values
    ('HD_ORCHARD_FOOD',                                     'MODIFIER_BUILDING_YIELD_CHANGE',                           'HD_ORCHARD_REQUIREMENTS'),
    ('HD_HAMMER_WORKS_PRODUCTION',                          'MODIFIER_BUILDING_YIELD_CHANGE',                           'HD_HAMMER_WORKS_REQUIREMENTS'),
    ('HD_HYDRAULIC_SPINNING_WHEEL_PRODUCTION',              'MODIFIER_BUILDING_YIELD_CHANGE',                           'HD_HYDRAULIC_SPINNING_WHEEL_REQUIREMENTS'),
    ('HD_BATHHOUSE_GOLD',                                   'MODIFIER_BUILDING_YIELD_CHANGE',                           'HD_BATHHOUSE_REQUIREMENTS'),

    ('BATH_ADJUST_INSIDE_BUILDINGS_PRODUCTION_SPEED',       'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_PRODUCTION',          NULL),
    
    ('ORCHARD_ADD_LUMBER_MILL_FOOD',                        'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',              'PLOT_HAS_IMPROVEMENT_LUMBER_MILL_REQUIREMENTS'),
    ('ORCHARD_ADD_FARM_RESOURCE_FOOD',                      'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',              'PLOT_HAS_IMPROVEMENT_FARM_REQUIREMENTS'),

    ('HAMMER_WORKS_ADD_MINE_PRODUCTION',                    'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',              'PLOT_HAS_IMPROVEMENT_MINE_REQUIREMENTS'),
    ('HAMMER_WORKS_ADD_QUARRY_PRODUCTION',                  'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',              'PLOT_HAS_IMPROVEMENT_QUARRY_REQUIREMENTS'),

    ('HYDRAULIC_SPINNING_WHEEL_CAMP_PRODUCTION',            'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',   			'PLOT_HAS_IMPROVEMENT_CAMP_REQUIREMENTS'),
    ('HYDRAULIC_SPINNING_WHEEL_PASTURE_PRODUCTION',         'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',   			'PLOT_HAS_IMPROVEMENT_PASTURE_REQUIREMENTS'),
    ('HYDRAULIC_SPINNING_WHEEL_PLANTATION_PRODUCTION',      'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',   			'PLOT_HAS_IMPROVEMENT_PLANTATION_REQUIREMENTS'),

	('BUILDING_THERMAL_BATH_POP_CULTURE',					'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	NULL),
	('BUILDING_THERMAL_BATH_POP_GOLD',						'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	NULL);

insert or replace into ModifierArguments
    (ModifierId,                                        Name,           Value)
values
    ('HD_ORCHARD_FOOD',                                 'BuildingType', 'BUILDING_JNR_ORCHARD'),
    ('HD_ORCHARD_FOOD',                                 'YieldType',    'YIELD_FOOD'),
    ('HD_ORCHARD_FOOD',                                 'Amount',       1),
    ('HD_HAMMER_WORKS_PRODUCTION',                      'BuildingType', 'BUILDING_JNR_HAMMER_WORKS'),
    ('HD_HAMMER_WORKS_PRODUCTION',                      'YieldType',    'YIELD_PRODUCTION'),
    ('HD_HAMMER_WORKS_PRODUCTION',                      'Amount',       1),
    ('HD_HYDRAULIC_SPINNING_WHEEL_PRODUCTION',          'BuildingType', 'BUILDING_HD_HYDRAULIC_SPINNING_WHEEL'),
    ('HD_HYDRAULIC_SPINNING_WHEEL_PRODUCTION',          'YieldType',    'YIELD_PRODUCTION'),
    ('HD_HYDRAULIC_SPINNING_WHEEL_PRODUCTION',          'Amount',       1),
    ('HD_BATHHOUSE_GOLD',                               'BuildingType', 'BUILDING_JNR_BATHHOUSE'),
    ('HD_BATHHOUSE_GOLD',                               'YieldType',    'YIELD_GOLD'),
    ('HD_BATHHOUSE_GOLD',                               'Amount',       3),

    ('BATH_ADJUST_INSIDE_BUILDINGS_PRODUCTION_SPEED',   'DistrictType', 'DISTRICT_AQUEDUCT'),
    ('BATH_ADJUST_INSIDE_BUILDINGS_PRODUCTION_SPEED',   'Amount',       100),

    ('ORCHARD_ADD_LUMBER_MILL_FOOD',                    'YieldType',    'YIELD_FOOD'),
    ('ORCHARD_ADD_LUMBER_MILL_FOOD',                    'Amount',       1),
    ('ORCHARD_ADD_FARM_RESOURCE_FOOD',                  'YieldType',    'YIELD_FOOD'),
    ('ORCHARD_ADD_FARM_RESOURCE_FOOD',                  'Amount',       1),

    ('HAMMER_WORKS_ADD_MINE_PRODUCTION',                'YieldType',    'YIELD_PRODUCTION'),
    ('HAMMER_WORKS_ADD_MINE_PRODUCTION',                'Amount',       1),
    ('HAMMER_WORKS_ADD_QUARRY_PRODUCTION',              'YieldType',    'YIELD_PRODUCTION'),
    ('HAMMER_WORKS_ADD_QUARRY_PRODUCTION',              'Amount',       1),

    ('HYDRAULIC_SPINNING_WHEEL_CAMP_PRODUCTION',        'YieldType',    'YIELD_PRODUCTION'),
    ('HYDRAULIC_SPINNING_WHEEL_CAMP_PRODUCTION',        'Amount',       1),
    ('HYDRAULIC_SPINNING_WHEEL_PASTURE_PRODUCTION',     'YieldType',    'YIELD_PRODUCTION'),
    ('HYDRAULIC_SPINNING_WHEEL_PASTURE_PRODUCTION',     'Amount',       1),
    ('HYDRAULIC_SPINNING_WHEEL_PLANTATION_PRODUCTION',  'YieldType',    'YIELD_PRODUCTION'),
    ('HYDRAULIC_SPINNING_WHEEL_PLANTATION_PRODUCTION',  'Amount',       1),

	('BUILDING_THERMAL_BATH_POP_CULTURE',				'YieldType',	'YIELD_CULTURE'),
	('BUILDING_THERMAL_BATH_POP_CULTURE',				'Amount',		0.5),
	('BUILDING_THERMAL_BATH_POP_GOLD',					'YieldType',	'YIELD_GOLD'),
	('BUILDING_THERMAL_BATH_POP_GOLD',					'Amount',		0.5);

-- 浴场
insert or replace into BuildingModifiers
    (BuildingType,                  ModifierId)
select
    'BUILDING_JNR_BATHHOUSE',       'HD_BATHHOUSE_' || DistrictType || '_' || GreatPersonClassType
from DistrictCorrespondingGPP_HD;

insert or replace into Modifiers
    (ModifierId,                                                     ModifierType,                                       OwnerRequirementSetId)
select
    'HD_BATHHOUSE_' || DistrictType || '_' || GreatPersonClassType,  'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',   'PLOT_ADJACENT_TO_' || DistrictType || '_REQUIREMENTS'
from DistrictCorrespondingGPP_HD;

insert or replace into ModifierArguments
    (ModifierId,                                                     Name,                    Value)
select
    'HD_BATHHOUSE_' || DistrictType || '_' || GreatPersonClassType,  'GreatPersonClassType',  GreatPersonClassType
from DistrictCorrespondingGPP_HD;

insert or replace into ModifierArguments
    (ModifierId,                                                     Name,      Value)
select
    'HD_BATHHOUSE_' || DistrictType || '_' || GreatPersonClassType,  'Amount',  4
from DistrictCorrespondingGPP_HD;

--req
insert or ignore into RequirementSetRequirements
	(RequirementSetId,												RequirementId)
values
	('CITY_HAS_DISTRICT_AQUEDUCT_TIER_1_BUILDING_REQUIREMENTS',		'REQUIRES_CITY_HAS_BUILDING_THERMAL_BATH');

--大浴场
update Buildings set AdjacentDistrict = 'DISTRICT_AQUEDUCT' where BuildingType = 'BUILDING_GREAT_BATH';
delete from Building_RequiredFeatures where BuildingType = 'BUILDING_GREAT_BATH';
insert or replace into Building_ValidTerrains
    (BuildingType,                  TerrainType)
values 
    ('BUILDING_GREAT_BATH',         'TERRAIN_GRASS'),
    ('BUILDING_GREAT_BATH',         'TERRAIN_PLAINS'),
    ('BUILDING_GREAT_BATH',         'TERRAIN_TUNDRA'),
    ('BUILDING_GREAT_BATH',         'TERRAIN_SNOW'),
    ('BUILDING_GREAT_BATH',         'TERRAIN_DESERT');