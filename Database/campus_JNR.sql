-- UC_CMP_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
        (Type,                          Kind)
VALUES  ('BUILDING_JNR_ACADEMY',        'KIND_BUILDING'), -- Tier 1 Sishu
        ('BUILDING_JNR_SCHOOL',         'KIND_BUILDING'), -- Tier 2 City School
        ('BUILDING_JNR_REAL_ACADEMY',   'KIND_BUILDING'), -- Tier 3 Academy
        ('BUILDING_JNR_ARCHITECTURE',   'KIND_BUILDING'), -- Tier 3 Academy
        ('BUILDING_JNR_LABORATORY',     'KIND_BUILDING'), -- Tier 3 Laboratory
        ('BUILDING_JNR_LIBERAL_ARTS',   'KIND_BUILDING'), -- Tier 3 Liberal Arts
        ('BUILDING_JNR_EDUCATION',      'KIND_BUILDING'); -- Tier 4 
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
        (BuildingType,                  PrereqDistrict,     PrereqTech,                 Cost,   Maintenance,    CitizenSlots,   Housing,    PurchaseYield,  AdvisorType,            Name,                                   Description)
VALUES  ('BUILDING_JNR_ACADEMY',        'DISTRICT_CAMPUS',  'TECH_WRITING',     	95,     1,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_ACADEMY_NAME',        null),
        ('BUILDING_JNR_SCHOOL',         'DISTRICT_CAMPUS',  NULL,                       275,    4,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_SCHOOL_NAME',         'LOC_BUILDING_JNR_SCHOOL_DESCRIPTION'),
        ('BUILDING_JNR_REAL_ACADEMY',   'DISTRICT_CAMPUS',  'TECH_SCIENTIFIC_THEORY',   500,    7,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_REAL_ACADEMY_NAME',   'LOC_BUILDING_JNR_REAL_ACADEMY_DESCRIPTION'),
        ('BUILDING_JNR_ARCHITECTURE',   'DISTRICT_CAMPUS',  'TECH_CIVIL_ENGINEERING_HD',500,    7,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_ARCHITECTURE_NAME',   'LOC_BUILDING_JNR_ARCHITECTURE_DESCRIPTION'),
        ('BUILDING_JNR_LABORATORY',     'DISTRICT_CAMPUS',  'TECH_PHYSICS_HD',          450,    7,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_LABORATORY_NAME',     'LOC_BUILDING_JNR_LABORATORY_DESCRIPTION'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'DISTRICT_CAMPUS',  NULL,                       500,    7,              1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_LIBERAL_ARTS_NAME',   'LOC_BUILDING_JNR_LIBERAL_ARTS_DESCRIPTION'),
        ('BUILDING_JNR_EDUCATION',      'DISTRICT_CAMPUS',  NULL,                       900,    10,             1,              0,          'YIELD_GOLD',   'ADVISOR_TECHNOLOGY',   'LOC_BUILDING_JNR_EDUCATION_NAME',      'LOC_BUILDING_JNR_EDUCATION_DESCRIPTION');

update Buildings set    PrereqCivic = 'CIVIC_GUILDS' where BuildingType = 'BUILDING_JNR_SCHOOL';
update Buildings set    PrereqCivic = 'CIVIC_HISTORICAL_PHILOSOPHY_HD' where BuildingType = 'BUILDING_JNR_LIBERAL_ARTS'; -- CIVIC_SOCIAL_SCIENCE_HD
update Buildings set    PrereqCivic = 'CIVIC_HIGHER_EDUCATION_HD' where BuildingType = 'BUILDING_JNR_EDUCATION';
--------------------------------------------------------------

-- Buildings_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Buildings_XP2
        (BuildingType,              RequiredPower)
SELECT  'BUILDING_JNR_EDUCATION',   RequiredPower
FROM    Buildings_XP2
WHERE   BuildingType='BUILDING_RESEARCH_LAB';
--------------------------------------------------------------

-- BuildingReplaces
--------------------------------------------------------------
-- UPDATE BuildingReplaces SET ReplacesBuildingType='BUILDING_JNR_SCHOOL' WHERE CivUniqueBuildingType='BUILDING_NAVIGATION_SCHOOL';
--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_HD_AGRICULTURE_COLLEGE';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_HD_FINANCE_COLLEGE';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
VALUES  ('BUILDING_JNR_SCHOOL',         'BUILDING_LIBRARY'),
        ('BUILDING_JNR_REAL_ACADEMY',   'BUILDING_UNIVERSITY'),
        ('BUILDING_JNR_ARCHITECTURE',   'BUILDING_UNIVERSITY'),
        ('BUILDING_JNR_LABORATORY',     'BUILDING_UNIVERSITY'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'BUILDING_UNIVERSITY'),
        ('BUILDING_JNR_REAL_ACADEMY',   'BUILDING_MADRASA'),
        ('BUILDING_JNR_ARCHITECTURE',   'BUILDING_MADRASA'),
        ('BUILDING_JNR_LABORATORY',     'BUILDING_MADRASA'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'BUILDING_MADRASA'),
        ('BUILDING_RESEARCH_LAB',       'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_RESEARCH_LAB',       'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_RESEARCH_LAB',       'BUILDING_JNR_LABORATORY'),
        ('BUILDING_RESEARCH_LAB',       'BUILDING_JNR_LIBERAL_ARTS'),
        ('BUILDING_JNR_EDUCATION',      'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_JNR_EDUCATION',      'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_JNR_EDUCATION',      'BUILDING_JNR_LABORATORY'),
        ('BUILDING_JNR_EDUCATION',      'BUILDING_JNR_LIBERAL_ARTS'),

        ('BUILDING_HD_AGRICULTURE_COLLEGE',      'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_HD_AGRICULTURE_COLLEGE',      'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_HD_AGRICULTURE_COLLEGE',      'BUILDING_JNR_LABORATORY'),
        ('BUILDING_HD_AGRICULTURE_COLLEGE',      'BUILDING_JNR_LIBERAL_ARTS'),

        ('BUILDING_HD_FINANCE_COLLEGE',      'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_HD_FINANCE_COLLEGE',      'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_HD_FINANCE_COLLEGE',      'BUILDING_JNR_LABORATORY'),
        ('BUILDING_HD_FINANCE_COLLEGE',      'BUILDING_JNR_LIBERAL_ARTS'),

        ('BUILDING_HD_DATA_CENTER',      'BUILDING_JNR_EDUCATION'),
        ('BUILDING_HD_DATA_CENTER',      'BUILDING_RESEARCH_LAB');

DELETE FROM BuildingPrereqs WHERE Building='BUILDING_RESEARCH_LAB'  AND PrereqBuilding='BUILDING_UNIVERSITY';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_RESEARCH_LAB'  AND PrereqBuilding='BUILDING_ALCHEMICAL_SOCIETY';
DELETE FROM BuildingPrereqs WHERE Building='BUILDING_RESEARCH_LAB'  AND PrereqBuilding='BUILDING_MADRASA';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
SELECT  'BUILDING_JNR_REAL_ACADEMY',    BuildingType
FROM    Buildings WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
SELECT  'BUILDING_JNR_ARCHITECTURE',    BuildingType
FROM    Buildings WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
SELECT  'BUILDING_JNR_LABORATORY',      BuildingType
FROM    Buildings WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                      PrereqBuilding)
SELECT  'BUILDING_JNR_LIBERAL_ARTS',    BuildingType
FROM    Buildings WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_ACADEMY'
FROM    BuildingPrereqs WHERE   PrereqBuilding='BUILDING_LIBRARY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_SCHOOL'
FROM    BuildingPrereqs WHERE   PrereqBuilding='BUILDING_UNIVERSITY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_EDUCATION'
FROM    BuildingPrereqs WHERE   PrereqBuilding='BUILDING_RESEARCH_LAB';
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                      MutuallyExclusiveBuilding)
VALUES  ('BUILDING_LIBRARY',            'BUILDING_JNR_ACADEMY'),
        ('BUILDING_JNR_ACADEMY',        'BUILDING_LIBRARY'),
        ('BUILDING_UNIVERSITY',         'BUILDING_JNR_SCHOOL'),
        ('BUILDING_JNR_SCHOOL',         'BUILDING_UNIVERSITY'),
        ('BUILDING_MADRASA',            'BUILDING_JNR_SCHOOL'),
        ('BUILDING_JNR_SCHOOL',         'BUILDING_MADRASA'),
        ('BUILDING_JNR_REAL_ACADEMY',   'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_JNR_REAL_ACADEMY',   'BUILDING_JNR_LIBERAL_ARTS'),
        ('BUILDING_JNR_REAL_ACADEMY',   'BUILDING_JNR_LABORATORY'),
        ('BUILDING_JNR_ARCHITECTURE',   'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_JNR_ARCHITECTURE',   'BUILDING_JNR_LIBERAL_ARTS'),
        ('BUILDING_JNR_ARCHITECTURE',   'BUILDING_JNR_LABORATORY'),
        ('BUILDING_JNR_LABORATORY',     'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_JNR_LABORATORY',     'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_JNR_LABORATORY',     'BUILDING_JNR_LIBERAL_ARTS'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'BUILDING_JNR_REAL_ACADEMY'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'BUILDING_JNR_ARCHITECTURE'),
        ('BUILDING_JNR_LIBERAL_ARTS',   'BUILDING_JNR_LABORATORY'),
        ('BUILDING_RESEARCH_LAB',       'BUILDING_JNR_EDUCATION'),
        ('BUILDING_JNR_EDUCATION',      'BUILDING_RESEARCH_LAB');

update BuildingReplaces set ReplacesBuildingType = 'BUILDING_JNR_SCHOOL' where CivUniqueBuildingType = 'BUILDING_NAVIGATION_SCHOOL';
-- Uniques
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,              'BUILDING_JNR_ACADEMY'
FROM    BuildingReplaces    WHERE   ReplacesBuildingType='BUILDING_LIBRARY';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,              'BUILDING_JNR_SCHOOL'
FROM    BuildingReplaces    WHERE   ReplacesBuildingType='BUILDING_UNIVERSITY';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,              'BUILDING_JNR_EDUCATION'
FROM    BuildingReplaces    WHERE   ReplacesBuildingType='BUILDING_RESEARCH_LAB';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                          MutuallyExclusiveBuilding)
SELECT  BuildingType,                       'BUILDING_UNIVERSITY'
FROM    Buildings
WHERE   BuildingType='BUILDING_NAVIGATION_SCHOOL';
--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
DELETE FROM StartingBuildings WHERE District='DISTRICT_CAMPUS';
--------------------------------------------------------------

-- UC_CMP_Bonuses_Yields
-- Author: JNR
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_EDUCATION';
--------------------------------------------------------------

-- Building_GreatPersonPoints
--------------------------------------------------------------
INSERT OR IGNORE INTO Building_GreatPersonPoints
        (BuildingType,                  GreatPersonClassType,           PointsPerTurn)
VALUES  ('BUILDING_JNR_ACADEMY',        'GREAT_PERSON_CLASS_SCIENTIST', 1),
        ('BUILDING_JNR_SCHOOL',         'GREAT_PERSON_CLASS_SCIENTIST', 1),
        ('BUILDING_JNR_REAL_ACADEMY',   'GREAT_PERSON_CLASS_SCIENTIST', 1),
        ('BUILDING_JNR_ARCHITECTURE',   'GREAT_PERSON_CLASS_SCIENTIST', 1),
        ('BUILDING_JNR_LABORATORY',     'GREAT_PERSON_CLASS_SCIENTIST', 1),
        ('BUILDING_JNR_LIBERAL_ARTS',   'GREAT_PERSON_CLASS_SCIENTIST', 1),
        -- ('BUILDING_JNR_LIBERAL_ARTS',   'GREAT_PERSON_CLASS_WRITER',    1),
        -- ('BUILDING_JNR_LIBERAL_ARTS',   'GREAT_PERSON_CLASS_ARTIST',    1),
        -- ('BUILDING_JNR_LIBERAL_ARTS',   'GREAT_PERSON_CLASS_MUSICIAN',  1),
        ('BUILDING_JNR_EDUCATION',      'GREAT_PERSON_CLASS_SCIENTIST', 1);
--------------------------------------------------------------

-- Building_YieldChangesBonusWithPower
--------------------------------------------------------------
-- INSERT OR IGNORE INTO Building_YieldChangesBonusWithPower
--         (BuildingType,              YieldType,          YieldChange)
-- SELECT  'BUILDING_JNR_EDUCATION',   'YIELD_SCIENCE',    4
-- FROM    Building_YieldChangesBonusWithPower
-- WHERE   BuildingType='BUILDING_RESEARCH_LAB' AND YieldType='YIELD_SCIENCE';
--------------------------------------------------------------

-- UC_CMP_Bonuses_Special
-- Author: JNR
--------------------------------------------------------------

-- Building_TourismBombs_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Building_TourismBombs_XP2
        (BuildingType,          TourismBombValue)
SELECT  'BUILDING_JNR_SCHOOL',  TourismBombValue
FROM    Building_TourismBombs_XP2
WHERE   BuildingType='BUILDING_UNIVERSITY';
--------------------------------------------------------------

-- UC_CMP_Misc
-- Author: JNR
--------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------
-- Technologies and Civics
----------------------------------------------------------------------------------------------------------------------------

-- Boosts
--------------------------------------------------------------
UPDATE Boosts SET
        TriggerDescription='LOC_BOOST_TRIGGER_PRINTING_JNR_UC'
WHERE   TechnologyType='TECH_PRINTING';

UPDATE  Boosts SET
        TriggerDescription='LOC_BOOST_TRIGGER_NUCLEAR_PROGRAM_JNR_UC'
WHERE   CivicType='CIVIC_NUCLEAR_PROGRAM';
--------------------------------------------------------------

-- Technologies
--------------------------------------------------------------
--
-- Disabled due common adjacency values not being granular enough for 25% increments.
--
--UPDATE Technologies SET
--Description='LOC_TECH_ASTRONOMY_DESCRIPTION_JNR_UC'
--WHERE TechnologyType='TECH_ASTRONOMY';
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
        (RequirementId,                             RequirementType)
VALUES  ('REQUIRES_PLAYER_HAS_2_SCHOOLS_JNR',       'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY_JNR',      'REQUIREMENT_REQUIREMENTSET_IS_MET'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY',          'REQUIREMENT_PLAYER_HAS_BUILDING'),
        ('REQUIRES_PLAYER_HAS_MADRASA',             'REQUIREMENT_PLAYER_HAS_BUILDING'),
        ('REQUIRES_PLAYER_HAS_SCHOOL_JNR',          'REQUIREMENT_REQUIREMENTSET_IS_MET'),
        ('REQUIRES_PLAYER_HAS_SCHOOL',              'REQUIREMENT_PLAYER_HAS_BUILDING'),
        ('REQUIRES_PLAYER_HAS_ASTRONOMY_JNR',       'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements
        (RequirementId,                             RequirementType)
select  'REQUIRES_PLAYER_HAS_NAVIGATION_SCHOOL',    'REQUIREMENT_PLAYER_HAS_BUILDING'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');

INSERT OR IGNORE INTO Requirements
        (RequirementId,                             RequirementType)
select  'REQUIRES_PLAYER_HAS_2_NAVIGATION_SCHOOL',  'REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_BUILDINGS'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
        (RequirementId,                             Name,               Value)
VALUES  ('REQUIRES_PLAYER_HAS_2_SCHOOLS_JNR',       'BuildingType',     'BUILDING_JNR_SCHOOL'),
        ('REQUIRES_PLAYER_HAS_2_SCHOOLS_JNR',       'Amount',           2),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY_JNR',      'RequirementSetId', 'REQUIRES_PLAYER_HAS_UNIVERSITY_UBMET'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY',          'BuildingType',     'BUILDING_UNIVERSITY'),
        ('REQUIRES_PLAYER_HAS_MADRASA',             'BuildingType',     'BUILDING_MADRASA'),
        ('REQUIRES_PLAYER_HAS_SCHOOL_JNR',          'RequirementSetId', 'REQUIRES_PLAYER_HAS_SCHOOL_UBMET'),
        ('REQUIRES_PLAYER_HAS_SCHOOL',              'BuildingType',     'BUILDING_JNR_SCHOOL'),
        ('REQUIRES_PLAYER_HAS_ASTRONOMY_JNR',       'TechnologyType',   'TECH_ASTRONOMY');

INSERT OR IGNORE INTO RequirementArguments
        (RequirementId,                             Name,               Value)
select  'REQUIRES_PLAYER_HAS_NAVIGATION_SCHOOL',    'BuildingType',     'BUILDING_NAVIGATION_SCHOOL'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');

INSERT OR IGNORE INTO RequirementArguments
        (RequirementId,                             Name,               Value)
select  'REQUIRES_PLAYER_HAS_2_NAVIGATION_SCHOOL',  'BuildingType',     'BUILDING_NAVIGATION_SCHOOL'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');

INSERT OR IGNORE INTO RequirementArguments
        (RequirementId,                             Name,               Value)
select  'REQUIRES_PLAYER_HAS_2_NAVIGATION_SCHOOL',  'Amount',           2
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');
--------------------------------------------------------------

-- RequirementSets
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets
        (RequirementSetId,                                      RequirementSetType)
VALUES  ('PLAYER_HAS_2_SCHOOLS_REQUIREMENT_JNR',                'REQUIREMENTSET_TEST_ANY'),
        ('PLAYER_HAS_UNIVERSITY_AND_SCHOOL_REQUIREMENT_JNR',    'REQUIREMENTSET_TEST_ALL'),
        ('ASTRONOMY_MOUNTAIN_IS_ADJACENT_JNR',                  'REQUIREMENTSET_TEST_ALL'),
        ('ASTRONOMY_MOUNTAIN_IS_ADJACENT_NO_UNIVERSITY_JNR',    'REQUIREMENTSET_TEST_ALL'),
        ('PLAYER_HAS_ASTRONOMY_TECHNOLOGY_JNR',                 'REQUIREMENTSET_TEST_ALL'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY_UBMET',                'REQUIREMENTSET_TEST_ANY'),
        ('REQUIRES_PLAYER_HAS_SCHOOL_UBMET',                    'REQUIREMENTSET_TEST_ANY');
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements
        (RequirementSetId,                                      RequirementId)
VALUES  ('PLAYER_HAS_2_SCHOOLS_REQUIREMENT_JNR',                'REQUIRES_PLAYER_HAS_2_SCHOOLS_JNR'),
        ('PLAYER_HAS_UNIVERSITY_AND_SCHOOL_REQUIREMENT_JNR',    'REQUIRES_PLAYER_HAS_UNIVERSITY_JNR'),
        ('PLAYER_HAS_UNIVERSITY_AND_SCHOOL_REQUIREMENT_JNR',    'REQUIRES_PLAYER_HAS_SCHOOL_JNR'),
        ('ASTRONOMY_MOUNTAIN_IS_ADJACENT_JNR',                  'REQUIRES_PLAYER_HAS_ASTRONOMY_JNR'),
        ('ASTRONOMY_MOUNTAIN_IS_ADJACENT_JNR',                  'REQUIRES_PLOT_ADJACENT_TO_MOUNTAIN'),
        ('PLAYER_HAS_ASTRONOMY_TECHNOLOGY_JNR',                 'REQUIRES_PLAYER_HAS_ASTRONOMY_JNR'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY_UBMET',                'REQUIRES_PLAYER_HAS_UNIVERSITY'),
        ('REQUIRES_PLAYER_HAS_UNIVERSITY_UBMET',                'REQUIRES_PLAYER_HAS_MADRASA'),
        ('REQUIRES_PLAYER_HAS_SCHOOL_UBMET',                    'REQUIRES_PLAYER_HAS_SCHOOL');

INSERT OR IGNORE INTO RequirementSetRequirements
        (RequirementSetId,                                      RequirementId)
select  'REQUIRES_PLAYER_HAS_SCHOOL_UBMET',                     'REQUIRES_PLAYER_HAS_NAVIGATION_SCHOOL'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');

INSERT OR IGNORE INTO RequirementSetRequirements
        (RequirementSetId,                                      RequirementId)
select  'PLAYER_HAS_2_SCHOOLS_REQUIREMENT_JNR',                 'REQUIRES_PLAYER_HAS_2_NAVIGATION_SCHOOL'
where exists (select BuildingType from Buildings where BuildingType = 'BUILDING_NAVIGATION_SCHOOL');
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
        (ModifierId,                                    ModifierType,                                           SubjectRequirementSetId,                            Permanent,  RunOnce)
VALUES  ('SCHOOL_PRINTING_TECHBOOST_SCHOOL_JNR',        'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',            'PLAYER_HAS_2_SCHOOLS_REQUIREMENT_JNR',             1,          1),
        ('SCHOOL_PRINTING_TECHBOOST_MIX_JNR',           'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',            'PLAYER_HAS_UNIVERSITY_AND_SCHOOL_REQUIREMENT_JNR', 1,          1),
        ('CAMPUS_ASTRONOMYSCIENCE_JNR',                 'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',  'ASTRONOMY_MOUNTAIN_IS_ADJACENT_JNR',               0,          0),
        ('UNIQUECAMPUS_ASTRONOMYSCIENCE_JNR',           'MODIFIER_SINGLE_CITY_DISTRICT_ADJUST_YIELD_MODIFIER',  'PLAYER_HAS_ASTRONOMY_TECHNOLOGY_JNR',              0,          0);
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
        (ModifierId,                                    Name,           Value)
VALUES  ('SCHOOL_PRINTING_TECHBOOST_SCHOOL_JNR',        'TechType',     'TECH_PRINTING'),
        ('SCHOOL_PRINTING_TECHBOOST_MIX_JNR',           'TechType',     'TECH_PRINTING'),
        ('CAMPUS_ASTRONOMYSCIENCE_JNR',                 'YieldType',    'YIELD_SCIENCE'),
        ('CAMPUS_ASTRONOMYSCIENCE_JNR',                 'Amount',       50),
        ('UNIQUECAMPUS_ASTRONOMYSCIENCE_JNR',           'YieldType',    'YIELD_SCIENCE'),
        ('UNIQUECAMPUS_ASTRONOMYSCIENCE_JNR',           'Amount',       50);
--------------------------------------------------------------

-- TraitModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO TraitModifiers
        (TraitType,                 ModifierId)
VALUES  ('TRAIT_LEADER_MAJOR_CIV',  'SCHOOL_PRINTING_TECHBOOST_SCHOOL_JNR'),
        ('TRAIT_LEADER_MAJOR_CIV',  'SCHOOL_PRINTING_TECHBOOST_MIX_JNR');
--------------------------------------------------------------

-- DistrictModifiers
--------------------------------------------------------------
--
-- Disabled due common adjacency values not being granular enough for 25% increments.
--
--INSERT OR IGNORE INTO DistrictModifiers
        --(DistrictType,            ModifierId)
--VALUES    ('DISTRICT_CAMPUS',     'CAMPUS_ASTRONOMYSCIENCE_JNR');
--
--INSERT OR IGNORE INTO DistrictModifiers
        --(DistrictType,            ModifierId)
--SELECT    CivUniqueDistrictType,  'UNIQUECAMPUS_ASTRONOMYSCIENCE_JNR'
--FROM  DistrictReplaces
--WHERE ReplacesDistrictType='DISTRICT_CAMPUS';
--------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------
-- Nobel Price
----------------------------------------------------------------------------------------------------------------------------

-- EmergencyRewards
--------------------------------------------------------------
UPDATE EmergencyRewards SET Description='LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_FIRST_PLACE_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC'  WHERE ModifierID='NOBEL_PRIZE_PHY_FIRST_PLACE_UNIVERSITY_RESOURCES' AND EmergencyType='EMERGENCY_NOBEL_PRIZE_PHYSICS' AND OnSuccess=1;
UPDATE EmergencyRewards SET Description='LOC_EMERGENCY_REWARD_NOBEL_PRIZE_PHY_TOP_TIER_UNIVERSITY_RESOURCES_DESCRIPTION_JNR_UC'     WHERE ModifierID='NOBEL_PRIZE_PHY_TOP_TIER_RESEARCH_LAB_RESOURCES'  AND EmergencyType='EMERGENCY_NOBEL_PRIZE_PHYSICS' AND OnSuccess=1;
--------------------------------------------------------------

-- RequirementSetRequirements
--------------------------------------------------------------
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_CITY_HAS_CAMPUS_TIER2_JNR'    WHERE RequirementSetId='NOBEL_PRIZE_FIRST_PLACE_UNIVERSITY_RESOURCES_REQUIREMENTS'  AND RequirementId='REQUIRES_CITY_HAS_UNIVERSITY';
UPDATE RequirementSetRequirements SET RequirementId='REQUIRES_CITY_HAS_CAMPUS_TIER3_JNR'    WHERE RequirementSetId='NOBEL_PRIZE_TOP_TIER_RESEARCH_LAB_RESOURCES_REQUIREMENTS'   AND RequirementId='REQUIRES_CITY_HAS_RESEARCH_LAB';
--------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------
-- Apocalypse Mode
----------------------------------------------------------------------------------------------------------------------------

-- RandomEvent_PillagedBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
        (RandomEventType,   BuildingType)
SELECT  RandomEventType,    'BUILDING_JNR_EDUCATION'
FROM    RandomEvent_PillagedBuildings
WHERE   BuildingType='BUILDING_RESEARCH_LAB';
--------------------------------------------------------------

-- UC_CMP_Requirements
-- Author: JNR
--------------------------------------------------------------

-- Requirements
--------------------------------------------------------------
INSERT OR IGNORE INTO Requirements
        (RequirementId,                                     RequirementType)
VALUES  ('REQUIRES_CITY_HAS_CAMPUS_TIER1_JNR',              'REQUIREMENT_REQUIREMENTSET_IS_MET'),
        ('REQUIRES_CITY_HAS_CAMPUS_TIER2_JNR',              'REQUIREMENT_REQUIREMENTSET_IS_MET'),
        ('REQUIRES_CITY_HAS_CAMPUS_TIER3_JNR',              'REQUIREMENT_REQUIREMENTSET_IS_MET');
--------------------------------------------------------------

-- RequirementArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments
        (RequirementId,                                     Name,               Value)
VALUES  ('REQUIRES_CITY_HAS_CAMPUS_TIER1_JNR',              'RequirementSetId', 'HD_CITY_HAS_SCIENTIFIC_TIER_1_BUILDING_REQUIREMENTS'),
        ('REQUIRES_CITY_HAS_CAMPUS_TIER2_JNR',              'RequirementSetId', 'HD_CITY_HAS_SCIENTIFIC_TIER_2_BUILDING_REQUIREMENTS'),
        ('REQUIRES_CITY_HAS_CAMPUS_TIER3_JNR',              'RequirementSetId', 'HD_CITY_HAS_SCIENTIFIC_TIER_3_BUILDING_REQUIREMENTS');
--------------------------------------------------------------
