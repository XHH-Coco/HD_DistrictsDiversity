delete from RequirementSetRequirements where
    RequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS' and
    RequirementId = 'REQUIRES_CITY_HAS_BUILDING_RESEARCH_LAB';
insert or ignore into RequirementSets (RequirementSetId, RequirementSetType)
values ('HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS',  'REQUIREMENTSET_TEST_ANY');
insert or ignore into RequirementSetRequirements
    (RequirementSetId,                                          RequirementId)
values
    ('HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_ACADEMY'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_2_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_SCHOOL'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_REAL_ACADEMY'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_ARCHITECTURE'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_LABORATORY'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_LIBERAL_ARTS'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_RESEARCH_LAB'),
    ('HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS',     'REQUIRES_CITY_HAS_BUILDING_JNR_EDUCATION');

insert or ignore into Requirements
    (RequirementId,                                     RequirementType)
values
    ('REQUIRES_HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING', 'REQUIREMENT_REQUIREMENTSET_IS_MET');

insert or ignore into RequirementArguments
    (RequirementId,                                     Name,               Value)
values
    ('REQUIRES_HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING', 'RequirementSetId', 'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS');

-- UPDATE Buildings SET    Description='LOC_BUILDING_LIBRARY_DESCRIPTION_UC_JNR'           WHERE BuildingType='BUILDING_LIBRARY';
-- UPDATE Buildings SET    Description='LOC_BUILDING_UNIVERSITY_DESCRIPTION_UC_JNR'        WHERE BuildingType='BUILDING_UNIVERSITY';
UPDATE Buildings SET    Description='LOC_BUILDING_MADRASA_DESCRIPTION_UC_JNR'           WHERE BuildingType='BUILDING_MADRASA';
UPDATE Buildings SET    Description='LOC_BUILDING_NAVIGATION_SCHOOL_DESCRIPTION_UC_JNR' WHERE BuildingType='BUILDING_NAVIGATION_SCHOOL';
update Buildings set PrereqTech = 'TECH_COMPUTERS', Cost = 900, Maintenance = 10, Name = 'LOC_BUILDING_RESEARCH_LAB_NAME_UC_JNR',
    Description='LOC_BUILDING_RESEARCH_LAB_DESCRIPTION_UC_JNR' where BuildingType = 'BUILDING_RESEARCH_LAB';

-- Building_CitizenYieldChanges
--------------------------------------------------------------
insert or replace into Building_CitizenYieldChanges
    (BuildingType,                  YieldType,          YieldChange)
values
    ('BUILDING_LIBRARY',                    'YIELD_SCIENCE',    1),
    ('BUILDING_LIBRARY',                    'YIELD_GOLD',       -1),
    ('BUILDING_JNR_ACADEMY',                'YIELD_CULTURE',    1),
    ('BUILDING_JNR_ACADEMY',                'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_ACADEMY',                'YIELD_GOLD',       -1),
    ('BUILDING_UNIVERSITY',                 'YIELD_SCIENCE',    1),
    ('BUILDING_UNIVERSITY',                 'YIELD_GOLD',       -1),
    ('BUILDING_JNR_SCHOOL',                 'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_SCHOOL',                 'YIELD_GOLD',       -1),
    -- campus: third level
    ('BUILDING_JNR_REAL_ACADEMY',           'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_REAL_ACADEMY',           'YIELD_GOLD',       -1),
    ('BUILDING_JNR_ARCHITECTURE',           'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_ARCHITECTURE',           'YIELD_GOLD',       -1),
    ('BUILDING_JNR_LABORATORY',             'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_LABORATORY',             'YIELD_GOLD',       -1),
    ('BUILDING_JNR_LIBERAL_ARTS',           'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_LIBERAL_ARTS',           'YIELD_GOLD',       -1),
    ('BUILDING_RESEARCH_LAB',               'YIELD_SCIENCE',    1),
    ('BUILDING_RESEARCH_LAB',               'YIELD_GOLD',       -1),
    ('BUILDING_JNR_EDUCATION',              'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_EDUCATION',              'YIELD_GOLD',       -1);

-- Building_YieldChanges
delete from Building_YieldChanges where BuildingType = 'BUILDING_RESEARCH_LAB';
--------------------------------------------------------------
insert or replace into Building_YieldChanges
    (BuildingType,                  YieldType,          YieldChange)
values
    ('BUILDING_JNR_ACADEMY',        'YIELD_SCIENCE',    1),
    ('BUILDING_JNR_REAL_ACADEMY',   'YIELD_SCIENCE',    2),
    ('BUILDING_JNR_LABORATORY',     'YIELD_SCIENCE',    10),
    ('BUILDING_JNR_ARCHITECTURE',   'YIELD_SCIENCE',    2),
    ('BUILDING_JNR_ARCHITECTURE',   'YIELD_PRODUCTION', 2),
    ('BUILDING_JNR_LIBERAL_ARTS',   'YIELD_SCIENCE',    2),
    ('BUILDING_JNR_LIBERAL_ARTS',   'YIELD_CULTURE',    2),
    ('BUILDING_RESEARCH_LAB',       'YIELD_SCIENCE',    4);
    -- ('BUILDING_JNR_EDUCATION',      'YIELD_SCIENCE',    4);

insert or replace into Building_YieldChangesBonusWithPower
    (BuildingType,                  YieldType,          YieldChange)
values
    -- ('BUILDING_JNR_REAL_ACADEMY',   'YIELD_SCIENCE',    4),
    -- ('BUILDING_JNR_LABORATORY',     'YIELD_SCIENCE',    6),
    -- ('BUILDING_JNR_ARCHITECTURE',   'YIELD_SCIENCE',    4),
    ('BUILDING_RESEARCH_LAB',       'YIELD_SCIENCE',    6),
    ('BUILDING_JNR_EDUCATION',      'YIELD_SCIENCE',    6);

insert or replace into Buildings_XP2
    (BuildingType,                  RequiredPower)
values
    ('BUILDING_JNR_REAL_ACADEMY',   2),
    ('BUILDING_JNR_ARCHITECTURE',   2),
    ('BUILDING_JNR_LABORATORY',     2),
    -- ('BUILDING_JNR_LIBERAL_ARTS',   2),
    ('BUILDING_RESEARCH_LAB',       5),
    ('BUILDING_JNR_EDUCATION',      5);

update Buildings set RegionalRange = 4 where BuildingType = 'BUILDING_JNR_ACADEMY';
update Buildings set RegionalRange = 6 where BuildingType = 'BUILDING_JNR_LABORATORY';
update Buildings set RegionalRange = 6 where BuildingType = 'BUILDING_UNIVERSITY';
--------------------------------------------------------------
insert or replace into HD_Building_Base_On_ResourceClassification (BuildingType, ResourceClassificationType, DetectRange, PropertyKey) values
	('BUILDING_JNR_ACADEMY', 'RESOURCE_CLASSIFICATION_HD_STATIONERY', 'PLAYER', 'HD_PLOT_BINARY_COMPRESS_ACADEMY');

insert or replace into HD_Binary_Compress_Keys (Key, MaxExp) values
	('HD_PLOT_BINARY_COMPRESS_ACADEMY', 1);

delete from BuildingModifiers where BuildingType = 'BUILDING_RESEARCH_LAB';
insert or replace into BuildingModifiers
    (BuildingType,                  ModifierId)
values
    ('BUILDING_JNR_ACADEMY',         'HD_ACADEMY_REGIONAL_CULTURE'),
    ('BUILDING_JNR_ACADEMY',         'HD_ACADEMY_REGIONAL_RANGE'),
    ('BUILDING_JNR_SCHOOL',         'CITY_SCHOOL_SPECILTY_DISTRICT_SCIENCE'),
    ('BUILDING_JNR_SCHOOL',         'CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY'),
--    ('BUILDING_JNR_SCHOOL',         'CITY_SCHOOL_PRINTING_DISTRICT_PERCENT_ATTACH'),
    --('BUILDING_JNR_REAL_ACADEMY',   'REAL_ACADEMY_DISTRICT_ADJACENCY'),
    ('BUILDING_JNR_REAL_ACADEMY',   'REAL_ACADEMY_CHEMISTRY_DISTRICT_ADJACENCY'),
    ('BUILDING_JNR_REAL_ACADEMY',   'REAL_ACADEMY_CAMPUS_DOUBLE_SCIENCE'),
    ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_DISTRICT_SCIENCE'),
    ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_WONDER_SCIENCE'),
    ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_CHEMISTRY_DISTRICT_SCIENCE'),
    ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_CHEMISTRY_WONDER_SCIENCE'),
    -- ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_POWERED_DISTRICT_SCIENCE'),
    -- ('BUILDING_JNR_ARCHITECTURE',   'ARCHITECTURE_POWERED_WONDER_SCIENCE'),
    -- ('BUILDING_JNR_LABORATORY',     'LABORATORY_EXTRA_SCIENTIST_BASE'),
    -- ('BUILDING_JNR_LABORATORY',     'LABORATORY_EXTRA_SCIENTIST_CHEMISTRY'),
    ('BUILDING_JNR_LABORATORY',     'LABORATORY_POP_SCIENCE_BASE'),
    -- ('BUILDING_JNR_LABORATORY',     'LABORATORY_POP_SCIENCE_CHEMISTRY'),
    -- ('BUILDING_JNR_LABORATORY',     'LABORATORY_POP_SCIENCE_POWERED'),
    -- ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_CAMPUS_ADJ_CULTURE'),
    ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_ADJ_SCIENCE'),
    ('BUILDING_JNR_EDUCATION',      'EDUCATION_POP_SCIENCE_BASE'),
    ('BUILDING_JNR_EDUCATION',      'HD_CAMPUS_TIER_4_SCIENCE_BONUS'),
    ('BUILDING_JNR_EDUCATION',      'HD_CAMPUS_TIER_4_SCIENCE_BONUS_2'),
    ('BUILDING_JNR_EDUCATION',      'EDUCATION_15_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_15_POP_PERCENTAGE_2'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_5_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_10_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_15_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_20_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_25_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_3_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_6_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_9_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_12_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_15_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_18_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_21_POP_PERCENTAGE'),
    -- ('BUILDING_JNR_EDUCATION',      'EDUCATION_24_POP_PERCENTAGE'),
    -- ('BUILDING_RESEARCH_LAB',       'RESEARCH_LAB_DISTRICT_PERCENTAGE_ATTACH'),
    ('BUILDING_RESEARCH_LAB',       'HD_CAMPUS_TIER_4_SCIENCE_BONUS'),
    ('BUILDING_RESEARCH_LAB',       'HD_CAMPUS_TIER_4_SCIENCE_BONUS_2'),
    ('BUILDING_RESEARCH_LAB',       'RESEARCH_LAB_6_DISTRICTS_PERCENTAGE');
    -- ('BUILDING_RESEARCH_LAB',       'RESEARCH_LAB_6_DISTRICTS_PERCENTAGE_2');
    
insert or replace into Modifiers
    (ModifierId,                                    ModifierType,                                               SubjectRequirementSetId)
values
    ('HD_ACADEMY_REGIONAL_CULTURE',         'MODIFIER_SINGLE_CITY_ADJUST_PROPERTY',             'HD_PLOT_BINARY_COMPRESS_ACADEMY_1_REQUIREMENTS'),
    ('HD_ACADEMY_REGIONAL_RANGE',           'MODIFIER_SINGLE_CITY_ADJUST_PROPERTY',             'PLAYER_HAS_TECH_PAPER_MAKING_HD_REQUIREMENTS'),
    ('CITY_SCHOOL_SPECILTY_DISTRICT_SCIENCE',       'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',             'DISTRICT_IS_SPECIALTY_DISTRICT_REQUIREMENTS'),
    ('CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY',       'MODIFIER_SINGLE_CITY_DISTRICT_ADJACENCY',                  NULL),
    ('CITY_SCHOOL_PRINTING_DISTRICT_PERCENT_ATTACH','MODIFIER_CITY_DISTRICTS_ATTACH_MODIFIER',                  'DISTRICT_IS_SPECIALTY_DISTRICT_REQUIREMENTS'),
    ('CITY_SCHOOL_PRINTING_DISTRICT_PERCENT',       'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'PLAYER_HAS_PRINTING_REQUIREMENTS'),
    --('REAL_ACADEMY_DISTRICT_ADJACENCY',             'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',      NULL),
    ('REAL_ACADEMY_CAMPUS_DOUBLE_SCIENCE',          'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',      'DISTRICT_IS_CAMPUS'),
    ('REAL_ACADEMY_CHEMISTRY_DISTRICT_ADJACENCY',   'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',      'PLAYER_HAS_TECH_CHEMISTRY_REQUIREMENTS'),
    ('ARCHITECTURE_DISTRICT_SCIENCE',               'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',              'HD_DISTRICTS_IS_NOT_WONDERS_REQUIREMENTS'),
    ('ARCHITECTURE_WONDER_SCIENCE',                 'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',          NULL),
    ('ARCHITECTURE_CHEMISTRY_DISTRICT_SCIENCE',     'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',              'HD_DISTRICTS_IS_NOT_WONDERS_REQUIREMENTS'),
    ('ARCHITECTURE_CHEMISTRY_WONDER_SCIENCE',       'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',          'PLAYER_HAS_TECH_STEEL_REQUIREMENTS'),
    -- ('ARCHITECTURE_POWERED_DISTRICT_SCIENCE',       'MODIFIER_CITY_DISTRICTS_ADJUST_YIELD_CHANGE',              'HD_DISTRICTS_IS_NOT_WONDERS_OR_CITY_CENTER_REQUIREMENTS'),
    -- ('ARCHITECTURE_POWERED_WONDER_SCIENCE',         'MODIFIER_SINGLE_CITY_ADJUST_WONDER_YIELD_CHANGE',          'CITY_IS_POWERED'),
    -- ('LABORATORY_EXTRA_SCIENTIST_BASE',                 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',    NULL),
    -- ('LABORATORY_EXTRA_SCIENTIST_CHEMISTRY',            'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT',    'PLAYER_HAS_CHEMISTRY_REQUIREMENTS'),
    ('LABORATORY_POP_SCIENCE_BASE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',    NULL),
    -- ('LABORATORY_POP_SCIENCE_CHEMISTRY',            'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',    'PLAYER_HAS_CHEMISTRY_REQUIREMENTS'),
    -- ('LIBERAL_ARTS_CAMPUS_ADJ_CULTURE',             'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',       'PLAYER_HAS_CIVIC_SOCIAL_SCIENCE_HD'),
    ('LIBERAL_ARTS_THEATER_ADJ_SCIENCE',            'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',  'DISTRICT_IS_THEATER_AND_PLAYER_HAS_CIVIC_SOCIAL_SCIENCE_HD'),
    ('LABORATORY_POP_SCIENCE_POWERED',              'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',    'CITY_IS_POWERED'),
    ('EDUCATION_POP_SCIENCE_BASE',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',    null),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',    'CITY_IS_POWERED'),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS_2',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',    'CITY_IS_POWERED'),
    ('EDUCATION_15_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_15_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_15_POP_PERCENTAGE_2',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_15_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_5_POP_PERCENTAGE',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_5_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_10_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_10_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_15_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_20_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_20_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_25_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_25_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_3_POP_PERCENTAGE',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_3_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_6_POP_PERCENTAGE',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_6_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_9_POP_PERCENTAGE',                  'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_9_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_12_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_12_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_15_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_18_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_18_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_21_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_21_POPULATION_AND_IS_POWERED'),
    -- ('EDUCATION_24_POP_PERCENTAGE',                 'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_24_POPULATION_AND_IS_POWERED'),
    -- ('RESEARCH_LAB_DISTRICT_PERCENTAGE_ATTACH',     'MODIFIER_CITY_DISTRICTS_ATTACH_MODIFIER',                  'DISTRICT_IS_SPECIALTY_DISTRICT_REQUIREMENTS'),
    -- ('RESEARCH_LAB_DISTRICT_PERCENTAGE',            'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_IS_POWERED'),
    ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE',            'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_6_SPECIALTY_DISTRICTS_AND_IS_POWERED');
    -- ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE_2',            'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',          'CITY_HAS_6_SPECIALTY_DISTRICTS_AND_IS_POWERED');

update Modifiers set OwnerRequirementSetId = 'PLAYER_HAS_TECH_STEEL_REQUIREMENTS' where ModifierId = 'ARCHITECTURE_CHEMISTRY_DISTRICT_SCIENCE';
-- update Modifiers set OwnerRequirementSetId = 'PLAYER_HAS_TECH_INTEGRATED_CIRCUIT_HD_REQUIREMENTS' where ModifierId in (
--     'EDUCATION_15_POP_PERCENTAGE_2',
--     'RESEARCH_LAB_6_DISTRICTS_PERCENTAGE_2'
-- );
update Modifiers set OwnerRequirementSetId = 'PLAYER_HAS_TECH_INTEGRATED_CIRCUIT_HD_REQUIREMENTS' where ModifierId in (
    'HD_CAMPUS_TIER_4_SCIENCE_BONUS_2'
);

insert or replace into ModifierArguments
    (ModifierId,                                    Name,           Value)
values
	('HD_ACADEMY_REGIONAL_CULTURE',				    'Key',		    'HD_SINGLE_BUILDING_PROVIDE_REGIONAL_YIELD_BONUS_BUILDING_JNR_ACADEMY_YIELD_CULTURE'),
	('HD_ACADEMY_REGIONAL_CULTURE',					'Amount',	    1),
	('HD_ACADEMY_REGIONAL_RANGE',				    'Key',		    'HD_SINGLE_BUILDING_EXTRA_REGIONAL_RANGE_BUILDING_JNR_ACADEMY'),
	('HD_ACADEMY_REGIONAL_RANGE',					'Amount',	    1),
    ('CITY_SCHOOL_SPECILTY_DISTRICT_SCIENCE',       'YieldType',    'YIELD_SCIENCE'),
	('CITY_SCHOOL_SPECILTY_DISTRICT_SCIENCE',       'Amount',       2),
    ('CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY',       'DistrictType', 'DISTRICT_CAMPUS'),
    ('CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY',       'YieldType',    'YIELD_SCIENCE'),
    ('CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY',       'Amount',       1),
    ('CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY',       'Description',  'LOC_DISTRICT_DISTRICT_1_SCIENCE'),
    ('CITY_SCHOOL_PRINTING_DISTRICT_PERCENT_ATTACH','ModifierId',   'CITY_SCHOOL_PRINTING_DISTRICT_PERCENT'),
    ('CITY_SCHOOL_PRINTING_DISTRICT_PERCENT',       'YieldType',    'YIELD_SCIENCE'),
    ('CITY_SCHOOL_PRINTING_DISTRICT_PERCENT',       'Amount',       1),
    --('REAL_ACADEMY_DISTRICT_ADJACENCY',             'YieldType',    'YIELD_SCIENCE'),
    --('REAL_ACADEMY_DISTRICT_ADJACENCY',             'Amount',       50),
    ('REAL_ACADEMY_CAMPUS_DOUBLE_SCIENCE',          'YieldTypeToMirror',  'YIELD_SCIENCE'),
    ('REAL_ACADEMY_CAMPUS_DOUBLE_SCIENCE',          'YieldTypeToGrant',   'YIELD_SCIENCE'),
    ('REAL_ACADEMY_CHEMISTRY_DISTRICT_ADJACENCY',   'YieldType',    'YIELD_SCIENCE'),
    ('REAL_ACADEMY_CHEMISTRY_DISTRICT_ADJACENCY',   'Amount',       100),
    ('ARCHITECTURE_DISTRICT_SCIENCE',               'YieldType',    'YIELD_SCIENCE'),
    ('ARCHITECTURE_DISTRICT_SCIENCE',               'Amount',       2),
    ('ARCHITECTURE_WONDER_SCIENCE',                 'YieldType',    'YIELD_SCIENCE'),
    ('ARCHITECTURE_WONDER_SCIENCE',                 'Amount',       4),
    ('ARCHITECTURE_CHEMISTRY_DISTRICT_SCIENCE',     'YieldType',    'YIELD_SCIENCE'),
    ('ARCHITECTURE_CHEMISTRY_DISTRICT_SCIENCE',     'Amount',       2),
    ('ARCHITECTURE_CHEMISTRY_WONDER_SCIENCE',       'YieldType',    'YIELD_SCIENCE'),
    ('ARCHITECTURE_CHEMISTRY_WONDER_SCIENCE',       'Amount',       4),
    -- ('ARCHITECTURE_POWERED_DISTRICT_SCIENCE',       'YieldType',    'YIELD_SCIENCE'),
    -- ('ARCHITECTURE_POWERED_DISTRICT_SCIENCE',       'Amount',       1),
    -- ('ARCHITECTURE_POWERED_WONDER_SCIENCE',         'YieldType',    'YIELD_SCIENCE'),
    -- ('ARCHITECTURE_POWERED_WONDER_SCIENCE',         'Amount',       2),
    ('LABORATORY_POP_SCIENCE_BASE',                 'YieldType',    'YIELD_SCIENCE'),
    ('LABORATORY_POP_SCIENCE_BASE',                 'Amount',       0.5),
    -- ('LABORATORY_POP_SCIENCE_CHEMISTRY',            'YieldType',    'YIELD_SCIENCE'),
    -- ('LABORATORY_POP_SCIENCE_CHEMISTRY',            'Amount',       0.5),
	-- ('LABORATORY_EXTRA_SCIENTIST_BASE',			        'GreatPersonClassType',				'GREAT_PERSON_CLASS_SCIENTIST'),
	-- ('LABORATORY_EXTRA_SCIENTIST_BASE',			        'Amount',					10),
	-- ('LABORATORY_EXTRA_SCIENTIST_CHEMISTRY',			'GreatPersonClassType',				'GREAT_PERSON_CLASS_SCIENTIST'),
	-- ('LABORATORY_EXTRA_SCIENTIST_CHEMISTRY',			'Amount',					10),
    -- ('LIBERAL_ARTS_CAMPUS_ADJ_CULTURE',             'YieldTypeToMirror',    'YIELD_SCIENCE'),
    -- ('LIBERAL_ARTS_CAMPUS_ADJ_CULTURE',             'YieldTypeToGrant',     'YIELD_CULTURE'),
    ('LIBERAL_ARTS_THEATER_ADJ_SCIENCE',            'YieldTypeToMirror',    'YIELD_CULTURE'),
    ('LIBERAL_ARTS_THEATER_ADJ_SCIENCE',            'YieldTypeToGrant',     'YIELD_SCIENCE'),
    ('LABORATORY_POP_SCIENCE_POWERED',              'YieldType',    'YIELD_SCIENCE'),
    ('LABORATORY_POP_SCIENCE_POWERED',              'Amount',       0.5),
    ('EDUCATION_POP_SCIENCE_BASE',                  'YieldType',    'YIELD_SCIENCE'),
    ('EDUCATION_POP_SCIENCE_BASE',                  'Amount',       1),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS',                  'YieldType',    'YIELD_SCIENCE'),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS',                  'Amount',       10),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS_2',                  'YieldType',    'YIELD_SCIENCE'),
    ('HD_CAMPUS_TIER_4_SCIENCE_BONUS_2',                  'Amount',       10),
    ('EDUCATION_15_POP_PERCENTAGE',                  'YieldType',    'YIELD_SCIENCE'),
    ('EDUCATION_15_POP_PERCENTAGE',                  'Amount',       10),
    -- ('EDUCATION_15_POP_PERCENTAGE_2',                'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_15_POP_PERCENTAGE_2',                'Amount',       10),
    -- ('EDUCATION_5_POP_PERCENTAGE',                  'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_5_POP_PERCENTAGE',                  'Amount',       5),
    -- ('EDUCATION_10_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_10_POP_PERCENTAGE',                 'Amount',       5),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'Amount',       5),
    -- ('EDUCATION_20_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_20_POP_PERCENTAGE',                 'Amount',       5),
    -- ('EDUCATION_25_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_25_POP_PERCENTAGE',                 'Amount',       10),
    -- ('EDUCATION_3_POP_PERCENTAGE',                  'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_3_POP_PERCENTAGE',                  'Amount',       4),
    -- ('EDUCATION_6_POP_PERCENTAGE',                  'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_6_POP_PERCENTAGE',                  'Amount',       4),
    -- ('EDUCATION_9_POP_PERCENTAGE',                  'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_9_POP_PERCENTAGE',                  'Amount',       4),
    -- ('EDUCATION_12_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_12_POP_PERCENTAGE',                 'Amount',       4),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_15_POP_PERCENTAGE',                 'Amount',       4),
    -- ('EDUCATION_18_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_18_POP_PERCENTAGE',                 'Amount',       4),
    -- ('EDUCATION_21_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_21_POP_PERCENTAGE',                 'Amount',       4),
    -- ('EDUCATION_24_POP_PERCENTAGE',                 'YieldType',    'YIELD_SCIENCE'),
    -- ('EDUCATION_24_POP_PERCENTAGE',                 'Amount',       4),
    -- ('RESEARCH_LAB_DISTRICT_PERCENTAGE_ATTACH',     'ModifierId',   'RESEARCH_LAB_DISTRICT_PERCENTAGE'),
    -- ('RESEARCH_LAB_DISTRICT_PERCENTAGE',            'YieldType',    'YIELD_SCIENCE'),
    -- ('RESEARCH_LAB_DISTRICT_PERCENTAGE',            'Amount',       4),
    ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE',            'YieldType',    'YIELD_SCIENCE'),
    ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE',            'Amount',       10);
    -- ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE_2',          'YieldType',    'YIELD_SCIENCE'),
    -- ('RESEARCH_LAB_6_DISTRICTS_PERCENTAGE_2',          'Amount',       10);
    -- LIBERAL_ARTS, each theater building +4 Great Art +4 Great Music.
    -- CIVIC_SOCIAL_SCIENCE_HD, campus to culture, theater to science.

-- insert or replace into BuildingModifiers
--     (BuildingType,                  ModifierId)
-- values
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER1_GREAT_ARTIEST'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER1_GREAT_MUSICIAN'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER2_GREAT_ARTIEST'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER2_GREAT_MUSICIAN'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER3_GREAT_ARTIEST'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER3_GREAT_MUSICIAN'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST'),
--     ('BUILDING_JNR_LIBERAL_ARTS',   'LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN');
-- delete from BuildingModifiers where BuildingType = 'BUILDING_JNR_LIBERAL_ARTS' and ModifierId in
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',
--     'LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN') and 
--     not exists (select BuildingType from Buildings where BuildingType = 'BUILDING_JNR_CABINET');

-- insert or replace into Modifiers
--     (ModifierId,                                    ModifierType,                                               SubjectRequirementSetId)
-- values
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_ARTIEST',    'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_1_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_MUSICIAN',   'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_1_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_ARTIEST',    'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_MUSICIAN',   'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_2_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_ARTIEST',    'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_MUSICIAN',   'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',   'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_4_BUILDING_REQUIREMENTS'),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',   'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM'),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN',  'MODIFIER_SINGLE_CITY_ADJUST_GREAT_PERSON_POINT',           'HD_CITY_HAS_CULTURAL_TIER_3_BUILDING_REQUIREMENTS_MUSEUM');
-- delete from Modifiers where ModifierId in
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',
--     'LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN') and 
--     not exists (select BuildingType from Buildings where BuildingType = 'BUILDING_JNR_CABINET');

-- insert or replace into ModifierArguments
--     (ModifierId,                                    Name,                   Value)
-- values
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_ARTIEST',    'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST'),
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_ARTIEST',    'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_MUSICIAN',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN'),
--     ('LIBERAL_ARTS_THEATER_TIER1_GREAT_MUSICIAN',   'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_ARTIEST',    'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST'),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_ARTIEST',    'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_MUSICIAN',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN'),
--     ('LIBERAL_ARTS_THEATER_TIER2_GREAT_MUSICIAN',   'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_ARTIEST',    'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST'),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_ARTIEST',    'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_MUSICIAN',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN'),
--     ('LIBERAL_ARTS_THEATER_TIER3_GREAT_MUSICIAN',   'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST'),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN'),
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',   'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',   'GreatPersonClassType', 'GREAT_PERSON_CLASS_ARTIST'),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',   'Amount',               4),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN',  'GreatPersonClassType', 'GREAT_PERSON_CLASS_MUSICIAN'),
--     ('LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN',  'Amount',               4);
-- delete from ModifierArguments where ModifierId in
--     ('LIBERAL_ARTS_THEATER_TIER4_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER4_GREAT_MUSICIAN',
--     'LIBERAL_ARTS_THEATER_TIER3M_GREAT_ARTIEST',    'LIBERAL_ARTS_THEATER_TIER3M_GREAT_MUSICIAN') and 
--     not exists (select BuildingType from Buildings where BuildingType = 'BUILDING_JNR_CABINET');

insert or replace into Building_GreatWorks
    (BuildingType,                  GreatWorkSlotType,          NumSlots)
values
    ('BUILDING_JNR_LIBERAL_ARTS',   'GREATWORKSLOT_WRITING',    1),
    ('BUILDING_JNR_LIBERAL_ARTS',   'GREATWORKSLOT_ART',        1);
-- update Building_GreatWorks set ThemingUniquePerson = 1, ThemingSameObjectType = 1, ThemingYieldMultiplier = 100, ThemingTourismMultiplier = 100, NonUniquePersonYield = 1, NonUniquePersonTourism = 1,
--     ThemingBonusDescription = 'LOC_BUILDING_THEMINGBONUS_ART' where BuildingType = 'BUILDING_JNR_LIBERAL_ARTS' and GreatWorkSlotType = 'GREATWORKSLOT_ART';

INSERT OR IGNORE INTO BuildingModifiers
        (BuildingType,                  ModifierId)
SELECT  'BUILDING_JNR_LIBERAL_ARTS',    'JNR_LIBERAL_ARTS_SCIENCE_' || GreatWorkObjectType
FROM    GreatWorkObjectTypes
WHERE   GreatWorkObjectType not in ('GREATWORKOBJECT_PRODUCT', 'GREATWORKOBJECT_RELIC', 'GREATWORKOBJECT_ARTIFACT');

INSERT OR IGNORE INTO Modifiers
        (ModifierId,                                        ModifierType)
SELECT  'JNR_LIBERAL_ARTS_SCIENCE_' || GreatWorkObjectType, 'MODIFIER_SINGLE_CITY_ADJUST_GREATWORK_YIELD'
FROM    GreatWorkObjectTypes
WHERE   GreatWorkObjectType not in ('GREATWORKOBJECT_PRODUCT', 'GREATWORKOBJECT_RELIC', 'GREATWORKOBJECT_ARTIFACT');
--------------------------------------------------------------

INSERT OR IGNORE INTO ModifierArguments
        (ModifierId,                                        Name,                   Value)
SELECT  'JNR_LIBERAL_ARTS_SCIENCE_' || GreatWorkObjectType, 'GreatWorkObjectType',  GreatWorkObjectType
FROM    GreatWorkObjectTypes
WHERE   GreatWorkObjectType not in ('GREATWORKOBJECT_PRODUCT', 'GREATWORKOBJECT_RELIC', 'GREATWORKOBJECT_ARTIFACT');

INSERT OR IGNORE INTO ModifierArguments
        (ModifierId,                                        Name,                   Value)
SELECT  'JNR_LIBERAL_ARTS_SCIENCE_' || GreatWorkObjectType, 'YieldType',            'YIELD_SCIENCE'
FROM    GreatWorkObjectTypes
WHERE   GreatWorkObjectType not in ('GREATWORKOBJECT_PRODUCT', 'GREATWORKOBJECT_RELIC', 'GREATWORKOBJECT_ARTIFACT');

INSERT OR IGNORE INTO ModifierArguments
        (ModifierId,                                        Name,                   Value)
SELECT  'JNR_LIBERAL_ARTS_SCIENCE_' || GreatWorkObjectType, 'YieldChange',          2
FROM    GreatWorkObjectTypes
WHERE   GreatWorkObjectType not in ('GREATWORKOBJECT_PRODUCT', 'GREATWORKOBJECT_RELIC', 'GREATWORKOBJECT_ARTIFACT');
--------------------------------------------------------------

-- UB
update Buildings set RegionalRange = 0, PrereqTech = NULL, PrereqCivic = 'CIVIC_NAVAL_TRADITION' where BuildingType = 'BUILDING_NAVIGATION_SCHOOL';
delete from Building_YieldChanges where BuildingType = 'BUILDING_NAVIGATION_SCHOOL';
delete from BuildingModifiers where BuildingType = 'BUILDING_NAVIGATION_SCHOOL' and ModifierId = 'UNIVERSITY_ADD_POPULATION_SCIENCE';

insert or replace into BuildingModifiers (BuildingType,   ModifierId)
select BuildingType,   'CITY_SCHOOL_SPECILTY_DISTRICT_SCIENCE'
from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL';

insert or replace into BuildingModifiers (BuildingType,   ModifierId)
select BuildingType,   'CITY_SCHOOL_CAMPUS_DISTRICT_ADJACENCY'
from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL';

--insert or replace into BuildingModifiers (BuildingType,   ModifierId)
--select BuildingType,   'CITY_SCHOOL_PRINTING_DISTRICT_PERCENT_ATTACH'
--from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL';

----------------------------------------------------------------------------------------------------------------------------
-- Traits and Policy
----------------------------------------------------------------------------------------------------------------------------
-- insert or replace into TraitModifiers
--     (TraitType,                             ModifierId)
-- values
--     ('TRAIT_CIVILIZATION_THREE_KINGDOMS',   'CAPITAL_CAMPUS_TIER4_TITLE');

-- insert or replace into Modifiers
--     (ModifierId,                    ModifierType)
-- values
--     ('CAPITAL_CAMPUS_TIER4_TITLE',  'MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER');

-- insert or replace into Modifiers
--     (ModifierId,                                ModifierType,                               SubjectRequirementSetId,            RunOnce,    Permanent)
-- values
--     ('CAPITAL_CAMPUS_TIER4_TITLE_MODIFIER',     'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',   'PALACE_AND_CAMPUS_TIER4_REQUIREMENTS',     1,  1);

-- insert or replace into ModifierArguments
--     (ModifierId,                            Name,           Value)
-- values
--     ('CAPITAL_CAMPUS_TIER4_TITLE',          'ModifierId',   'CAPITAL_CAMPUS_TIER4_TITLE_MODIFIER'),
--     ('CAPITAL_CAMPUS_TIER4_TITLE_MODIFIER', 'Delta',        1);

-- insert or ignore into RequirementSets
--     (RequirementSetId,                                  RequirementSetType)
-- values
--     ('PALACE_AND_CAMPUS_TIER4_REQUIREMENTS',            'REQUIREMENTSET_TEST_ALL');

-- insert or ignore into RequirementSetRequirements
--     (RequirementSetId,                                  RequirementId)
-- values
--     ('PALACE_AND_CAMPUS_TIER4_REQUIREMENTS',            'REQUIRES_HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING'),
--     ('PALACE_AND_CAMPUS_TIER4_REQUIREMENTS',            'REQUIRES_CITY_HAS_BUILDING_PALACE');

-- Modifiers
--------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS' WHERE ModifierId='DAOGUAN_ADDGREATSCIENTISTPOINTS';
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS' WHERE ModifierId='DIVINE_SPARK_SCIENTIST_MODIFIER';
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS' WHERE ModifierId='MINOR_CIV_STOCKHOLM_GREAT_SCIENTIST_POINTS_BONUS';
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS' WHERE ModifierId='MINOR_CIV_BOLOGNA_GREAT_SCIENTIST_POINTS_BONUS';
UPDATE Modifiers SET SubjectRequirementSetId='HD_CITY_HAS_SCIENTIFIC_TIER_2_BUILDING_REQUIREMENTS' WHERE ModifierId='TRAIT_GREAT_SCIENTIST_UNIVERSITY_MODIFIER';
--------------------------------------------------------------
-- Traits
--------------------------------------------------------------
UPDATE Traits SET Description='LOC_TRAIT_CIVILIZATION_NOBEL_PRIZE_DESCRIPTION_JNR_UC' WHERE TraitType='TRAIT_CIVILIZATION_NOBEL_PRIZE';
--------------------------------------------------------------
-- Policy
--------------------------------------------------------------
-- update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_2_BUILDING_REQUIREMENTS' where ModifierId = 'POLICY_RATIONALISM_UNIVERSITY_POPULATION_SCIENCE';
-- update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS' where ModifierId = 'POLICY_RATIONALISM_RESEARCH_LAB_POPULATION_SCIENCE';

-- UPDATE Modifiers SET SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS' WHERE ModifierId = 'SCIENCEFOUNDATION_SCIENTIST_UNIVERSITY';
-- UPDATE Modifiers SET SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS' WHERE ModifierId = 'SCIENCEFOUNDATION_SCIENTIST_RESEARCHLAB';
--------------------------------------------------------------

-- TODO: add a new GreatPeople policy for tier-2 buildings.


-- UC_CMP_Districts
-- Author: JNR
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
        (ModifierId,                                            ModifierType,                                           SubjectRequirementSetId,        Permanent,  RunOnce)
VALUES  ('GREATPERSON_ACADEMY_JNR',                             'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',   NULL,                       1,          1),
        ('GREATPERSON_SCIENTIFICTHEORYTECHBOOST_JNR',           'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',            NULL,                       1,          1),
        ('GREATPERSON_1RENAISSANCEINDUSTRIALCIVICBOOST_JNR',    'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_BY_ERA',      NULL,                       1,          1);
	
insert or replace into Modifiers
	(ModifierId,										ModifierType)
select
	'HYPATIA_' || BuildingType || '_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 1 and ReplacesOther = 0;
insert or replace into Modifiers
	(ModifierId,										ModifierType)
select
	'NEWTON_' || BuildingType || '_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 2 and ReplacesOther = 0;
insert or replace into Modifiers
	(ModifierId,										ModifierType)
select
	'MENDELEEV_' || BuildingType || '_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 3 and ReplacesOther = 0;
insert or replace into Modifiers
	(ModifierId,										ModifierType)
select
	'EINSTEIN_' || BuildingType || '_SCIENCE',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 4 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'HYPATIA_' || BuildingType || '_SCIENCE',			'BuildingType',		BuildingType
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 1 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'HYPATIA_' || BuildingType || '_SCIENCE',			'YieldType',		'YIELD_SCIENCE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 1 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'HYPATIA_' || BuildingType || '_SCIENCE',				'Amount',			2
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 1 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'NEWTON_' || BuildingType || '_SCIENCE',			'BuildingType',		BuildingType
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 2 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'NEWTON_' || BuildingType || '_SCIENCE',			'YieldType',		'YIELD_SCIENCE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 2 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'NEWTON_' || BuildingType || '_SCIENCE',				'Amount',			4
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 2 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'MENDELEEV_' || BuildingType || '_SCIENCE',			'BuildingType',		BuildingType
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 3 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'MENDELEEV_' || BuildingType || '_SCIENCE',			'YieldType',		'YIELD_SCIENCE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 3 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'MENDELEEV_' || BuildingType || '_SCIENCE',				'Amount',			6
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 3 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'EINSTEIN_' || BuildingType || '_SCIENCE',			'BuildingType',		BuildingType
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 4 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'EINSTEIN_' || BuildingType || '_SCIENCE',			'YieldType',		'YIELD_SCIENCE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 4 and ReplacesOther = 0;
insert or replace into ModifierArguments
	(ModifierId,										Name,				Value)
select
	'EINSTEIN_' || BuildingType || '_SCIENCE',			'Amount',			10
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 4 and ReplacesOther = 0;
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------

--新增拥有建筑的req
insert or ignore into Requirements
	(RequirementId,													RequirementType)
values
	('REQUIRES_HD_CITY_HAS_ACADEMY',								'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_LIBRARY',								'REQUIREMENT_CITY_HAS_BUILDING'),
	('REQUIRES_HD_CITY_HAS_SCHOOL',									'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_UNIVERSITY',								'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_NAVIGATION_SCHOOL',						'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_MADRASA',						        'REQUIREMENT_CITY_HAS_BUILDING'),
	('REQUIRES_HD_CITY_HAS_REAL_ACADEMY',					        'REQUIREMENT_CITY_HAS_BUILDING'),
	('REQUIRES_HD_CITY_HAS_ARCHITECTURE',					        'REQUIREMENT_CITY_HAS_BUILDING'),
	('REQUIRES_HD_CITY_HAS_LABORATORY',								'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_LIBERAL_ARTS',							'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_INSTITUTE',							    'REQUIREMENT_CITY_HAS_BUILDING'),
    ('REQUIRES_HD_CITY_HAS_EDUCATION',								'REQUIREMENT_CITY_HAS_BUILDING');
insert or ignore into RequirementArguments
	(RequirementId,													Name,					Value)
values
	('REQUIRES_HD_CITY_HAS_ACADEMY',								'BuildingType',         'BUILDING_JNR_ACADEMY'),
    ('REQUIRES_HD_CITY_HAS_LIBRARY',								'BuildingType',         'BUILDING_LIBRARY'),
	('REQUIRES_HD_CITY_HAS_SCHOOL',									'BuildingType',         'BUILDING_JNR_SCHOOL'),
    ('REQUIRES_HD_CITY_HAS_UNIVERSITY',								'BuildingType',         'BUILDING_UNIVERSITY'),
    ('REQUIRES_HD_CITY_HAS_NAVIGATION_SCHOOL',						'BuildingType',         'BUILDING_NAVIGATION_SCHOOL'),
    ('REQUIRES_HD_CITY_HAS_MADRASA',						        'BuildingType',         'BUILDING_MADRASA'),
	('REQUIRES_HD_CITY_HAS_REAL_ACADEMY',					        'BuildingType',         'BUILDING_JNR_REAL_ACADEMY'),
	('REQUIRES_HD_CITY_HAS_ARCHITECTURE',					        'BuildingType',         'BUILDING_JNR_ARCHITECTURE'),
	('REQUIRES_HD_CITY_HAS_LABORATORY',								'BuildingType',         'BUILDING_JNR_LABORATORY'),
    ('REQUIRES_HD_CITY_HAS_LIBERAL_ARTS',							'BuildingType',         'BUILDING_JNR_LIBERAL_ARTS'),
    ('REQUIRES_HD_CITY_HAS_INSTITUTE',							    'BuildingType',         'BUILDING_RESEARCH_LAB'),
    ('REQUIRES_HD_CITY_HAS_EDUCATION',								'BuildingType',         'BUILDING_JNR_EDUCATION');
insert or ignore into RequirementSets
	(RequirementSetId,												RequirementSetType)
values
	('HD_CITY_HAS_ACADEMY',                                         'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_LIBRARY',                                         'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_SCHOOL',                                          'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_UNIVERSITY',                                      'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_NAVIGATION_SCHOOL',                               'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_MADRASA',                                         'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_REAL_ACADEMY',                                    'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_ARCHITECTURE',                                    'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_LABORATORY',                                      'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_LIBERAL_ARTS',                                    'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_INSTITUTE',                                       'REQUIREMENTSET_TEST_ALL'),
    ('HD_CITY_HAS_EDUCATION',                                       'REQUIREMENTSET_TEST_ALL');
insert or ignore into RequirementSetRequirements
	(RequirementSetId,												RequirementId)
values
	('HD_CITY_HAS_ACADEMY',                                         'REQUIRES_HD_CITY_HAS_ACADEMY'),
    ('HD_CITY_HAS_LIBRARY',                                         'REQUIRES_HD_CITY_HAS_LIBRARY'),
    ('HD_CITY_HAS_SCHOOL',                                          'REQUIRES_HD_CITY_HAS_SCHOOL'),
    ('HD_CITY_HAS_UNIVERSITY',                                      'REQUIRES_HD_CITY_HAS_UNIVERSITY'),
    ('HD_CITY_HAS_NAVIGATION_SCHOOL',                               'REQUIRES_HD_CITY_HAS_NAVIGATION_SCHOOL'),
    ('HD_CITY_HAS_MADRASA',                                         'REQUIRES_HD_CITY_HAS_MADRASA'),
    ('HD_CITY_HAS_REAL_ACADEMY',                                    'REQUIRES_HD_CITY_HAS_REAL_ACADEMY'),
    ('HD_CITY_HAS_ARCHITECTURE',                                    'REQUIRES_HD_CITY_HAS_ARCHITECTURE'),
    ('HD_CITY_HAS_LABORATORY',                                      'REQUIRES_HD_CITY_HAS_LABORATORY'),
    ('HD_CITY_HAS_LIBERAL_ARTS',                                    'REQUIRES_HD_CITY_HAS_LIBERAL_ARTS'),
    ('HD_CITY_HAS_INSTITUTE',                                       'REQUIRES_HD_CITY_HAS_INSTITUTE'),
    ('HD_CITY_HAS_EDUCATION',                                       'REQUIRES_HD_CITY_HAS_EDUCATION');
--------------------------------------------------------------

-- GreatPersonIndividualActionModifiers
--------------------------------------------------------------
-- DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ISAAC_NEWTON'         AND ModifierId='GREATPERSON_LIBRARY';
-- DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ISAAC_NEWTON'         AND ModifierId='GREATPERSON_UNIVERSITY';
-- DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ALBERT_EINSTEIN'      AND ModifierId='GREATPERSON_1MODERNATOMICTECHBOOST';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ALBERT_EINSTEIN'      AND ModifierId='GREATPERSON_RESEARCHLABS_BIG_SCIENCE';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_HYPATIA'      AND ModifierId='GREATPERSON_LIBRARIES_SCIENCE';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ISAAC_NEWTON'      AND ModifierId='GREATPERSON_UNIVERSITIES_SMALL_SCIENCE';

insert or ignore into GreatPersonIndividualActionModifiers
	(GreatPersonIndividualType,							ModifierId,											AttachmentTargetType)
select
	'GREAT_PERSON_INDIVIDUAL_HYPATIA',					'HYPATIA_' || BuildingType || '_SCIENCE',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 1 and ReplacesOther = 0;
insert or ignore into GreatPersonIndividualActionModifiers
	(GreatPersonIndividualType,							ModifierId,											AttachmentTargetType)
select
	'GREAT_PERSON_INDIVIDUAL_ISAAC_NEWTON',				'NEWTON_' || BuildingType || '_SCIENCE',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 2 and ReplacesOther = 0;
insert or ignore into GreatPersonIndividualActionModifiers
	(GreatPersonIndividualType,							ModifierId,											AttachmentTargetType)
select
	'GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV',			'MENDELEEV_' || BuildingType || '_SCIENCE',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 3 and ReplacesOther = 0;
insert or ignore into GreatPersonIndividualActionModifiers
	(GreatPersonIndividualType,							ModifierId,											AttachmentTargetType)
select
	'GREAT_PERSON_INDIVIDUAL_ALBERT_EINSTEIN',			'EINSTEIN_' || BuildingType || '_SCIENCE',			'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'
from HD_BuildingTiers where PrereqDistrict = 'DISTRICT_CAMPUS' and Tier = 4 and ReplacesOther = 0;
--------------------------------------------------------------

-- GreatPersonIndividuals
--------------------------------------------------------------
-- UPDATE GreatPersonIndividuals SET ActionEffectTextOverride=NULL WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_OMAR_KHAYYAM';
-- UPDATE GreatPersonIndividuals SET ActionEffectTextOverride=NULL WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_ISAAC_NEWTON';
-- UPDATE GreatPersonIndividuals SET ActionEffectTextOverride=NULL WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_DMITRI_MENDELEEV';
--------------------------------------------------------------

-- Special, for national wonder
INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_ACADEMY'
FROM    BuildingPrereqs WHERE   PrereqBuilding='BUILDING_LIBRARY';

--------------------------------------------------------------
    -- 安善
--insert or replace into Modifiers
--    (ModifierId,                                        ModifierType,                                           SubjectRequirementSetId)
--values
--    ('MINOR_CIV_BABYLON_CAMPUS_TIER1_BONUS',            'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',                 'PLAYER_IS_SUZERAIN'),
--    ('MINOR_CIV_BABYLON_CAMPUS_TIER1_SCIENCE',          'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',      'HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS'),
--    ('MINOR_CIV_BABYLON_THEATER_TIER1_BONUS',           'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',                 'PLAYER_IS_SUZERAIN'),
--    ('MINOR_CIV_BABYLON_THEATER_TIER1_CULTURE',         'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',      'HD_CITY_HAS_CULTURAL_TIER_1_BUILDING_REQUIREMENTS');

--insert or replace into ModifierArguments
--    (ModifierId,                                        Name,               Value)
--values
--    ('MINOR_CIV_BABYLON_CAMPUS_TIER1_BONUS',            'ModifierId',       'MINOR_CIV_BABYLON_CAMPUS_TIER1_SCIENCE'),
--    ('MINOR_CIV_BABYLON_CAMPUS_TIER1_SCIENCE',          'Amount',           2),
--    ('MINOR_CIV_BABYLON_CAMPUS_TIER1_SCIENCE',          'YieldType',        'YIELD_SCIENCE'),
--    ('MINOR_CIV_BABYLON_THEATER_TIER1_BONUS',           'ModifierId',       'MINOR_CIV_BABYLON_THEATER_TIER1_CULTURE'),
--    ('MINOR_CIV_BABYLON_THEATER_TIER1_CULTURE',         'Amount',           2),
--    ('MINOR_CIV_BABYLON_THEATER_TIER1_CULTURE',         'YieldType',        'YIELD_SCIENCE');

--delete from TraitModifiers where ModifierId = 'MINOR_CIV_BABYLON_WRITING_BONUS' and TraitType = 'MINOR_CIV_BABYLON_TRAIT';

--insert or replace into TraitModifiers
--    (TraitType,                             ModifierId)
--values
--    ('MINOR_CIV_BABYLON_TRAIT',             'MINOR_CIV_BABYLON_CAMPUS_TIER1_BONUS'),
--    ('MINOR_CIV_BABYLON_TRAIT',             'MINOR_CIV_BABYLON_THEATER_TIER1_BONUS');

    -- 超级大国
-- update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS' where ModifierId = 'SUPERPOWER_SCIENCE_ATTACH';

    -- 平总督 科教兴国
insert or replace into GovernorPromotionModifiers
    (GovernorPromotionType,                             ModifierId)
values
    ('GOVERNOR_PROMOTION_EDUCATOR_SPACE_INITIATIVE',    'EDUCATOR_CAMPUS_TIER4_SCIENCE'),
    ('GOVERNOR_PROMOTION_EDUCATOR_SPACE_INITIATIVE',    'EDUCATOR_CAMPUS_TIER4_SCIENCE_MODIFIER');
insert or replace into Modifiers
    (ModifierId,                                    ModifierType,                                           SubjectRequirementSetId)
values
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE',               'MODIFIER_SINGLE_CITY_ADJUST_YIELD_CHANGE',             'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS'),
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE_MODIFIER',      'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_MODIFIER',      'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS');
insert or replace into ModifierArguments
    (ModifierId,                                    Name,           Value)
values
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE',               'YieldType',    'YIELD_SCIENCE'),
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE',               'Amount',       5),
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE_MODIFIER',      'YieldType',    'YIELD_SCIENCE'),
    ('EDUCATOR_CAMPUS_TIER4_SCIENCE_MODIFIER',      'Amount',       10);

update ModifierArguments set Value = 500 where ModifierId = 'GREATPERSON_ADJACENT_SNOWMOUNTAIN_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 500 where ModifierId = 'GREATPERSON_ADJACENT_TUNDRAMOUNTAIN_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 500 where ModifierId = 'GREATPERSON_ADJACENT_DESERTMOUNTAIN_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 500 where ModifierId = 'GREATPERSON_ADJACENT_PLAINSMOUNTAIN_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 500 where ModifierId = 'GREATPERSON_ADJACENT_GRASSMOUNTAIN_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 2000 where ModifierId = 'GREATPERSON_ADJACENT_NATURALWONDER_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 1600 where ModifierId = 'GREATPERSON_ADJACENT_RAINFOREST_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 6000 where ModifierId = 'GREAT_PERSON_GRANT_LOTSO_SCIENCE' and Name = 'Amount';
update ModifierArguments set Value = 2000 where ModifierId = 'GREAT_PERSON_GRANT_LOTSO_CULTURE' and Name = 'Amount';
update ModifierArguments set Value = 900 where ModifierId = 'GREATPERSON_ARTIFACT_SCIENCE' and Name = 'Amount';

-- v4
update Technologies set Cost = 12500 where Cost = 4500;
-- 未来
update Technologies set Cost = 12000 where Cost = 4000;
update TechnologyRandomCosts set Cost = 11000 where Cost = 3700;
update TechnologyRandomCosts set Cost = 10000 where Cost = 3600;
-- 信息
update Technologies set Cost = 9000 where Cost = 3100;
update Technologies set Cost = 8000 where Cost = 3000;
-- 原子能
update Technologies set Cost = 7000 where Cost = 2500;
update Technologies set Cost = 6000 where Cost = 2400;
-- 现代
update Technologies set Cost = 5500 where Cost = 2000;
update Technologies set Cost = 4800 where Cost = 1900;
update Technologies set Cost = 4150 where Cost = 1800;
-- 工业
update Technologies set Cost = 3650 where Cost = 1400;
update Technologies set Cost = 2500 where Cost = 1300;
-- 文艺复兴
update Technologies set Cost = 1750 where Cost = 950;
update Technologies set Cost = 1350 where Cost = 850;
-- 中世纪
update Technologies set Cost = 750 where Cost = 600;
update Technologies set Cost = 500 where Cost = 450;
-- 古典
update Technologies set Cost = 300 where Cost = 280;
update Technologies set Cost = 160 where Cost = 160;
-- 远古
update Technologies set Cost = 80 where Cost = 80;
update Technologies set Cost = 50 where Cost = 50;
-- 耶稣会
--update ModifierArguments set Value = 0.3 where ModifierId = 'JESUIT_EDUCATION_POPULATION_SCIENCE_MODIFIER' and Name = 'Amount';
--update ModifierArguments set Value = 0.3 where ModifierId = 'JESUIT_EDUCATION_SHRINE_POPULATION_SCIENCE_MODIFIER' and Name = 'Amount';
--update ModifierArguments set Value = 0.6 where ModifierId = 'JESUIT_EDUCATION_TEMPLE_POPULATION_SCIENCE_MODIFIER' and Name = 'Amount';
--update ModifierArguments set Value = 0.6 where ModifierId = 'JESUIT_EDUCATION_WORSHIP_POPULATION_SCIENCE_MODIFIER' and Name = 'Amount';
--update ModifierArguments set Value = 0.6 where ModifierId = 'JESUIT_EDUCATION_3_POPULATION_SCIENCE_MODIFIER' and Name = 'Amount';
--苏格兰ui
-- insert or replace into ImprovementModifiers
-- 	(ImprovementType,				ModifierID)
-- values
--     ('IMPROVEMENT_GOLF_COURSE',		'GOLD_COURSE_SCIENCE_TIER5');
-- insert or replace into Modifiers
-- 	(ModifierId,					ModifierType,										SubjectRequirementSetId)
-- values
--     ('GOLD_COURSE_SCIENCE_TIER5',	'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',				'CITY_HAS_DISTRICT_CAMPUS_TIER_4_BUILDING_REQUIREMENTS');
-- insert or replace into ModifierArguments
-- 	(ModifierId,						Name,				Value)
-- values
--     ('GOLD_COURSE_SCIENCE_TIER5',		'ModifierId',		'GOLD_COURSE_SCIENCE');
-- --朝鲜
-- update Modifiers set SubjectRequirementSetId = 'HD_CITY_HAS_SCIENTIFIC_TIER_4_BUILDING_REQUIREMENTS' where ModifierId = 'HWARANG_ALLBUFF';