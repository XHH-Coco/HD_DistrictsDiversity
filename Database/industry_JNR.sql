-- UC_PRD_Buildings
-- Author: JNR
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
        (Type,                              Kind)
VALUES  ('BUILDING_JNR_DUMMY_IZ_RIVER',     'KIND_BUILDING'),
        ('BUILDING_JNR_MILL_RACE',          'KIND_BUILDING'),
        ('BUILDING_IZ_WATER_MILL',          'KIND_BUILDING'),
        ('BUILDING_JNR_WIND_MILL',          'KIND_BUILDING'),
        ('BUILDING_JNR_MANUFACTURY',        'KIND_BUILDING'),
        ('BUILDING_JNR_CHEMICAL',           'KIND_BUILDING'),
        ('BUILDING_JNR_FREIGHT_YARD',       'KIND_BUILDING');
        -- ('BUILDING_JNR_MODE_MACHINES',      'KIND_BUILDING'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',   'KIND_BUILDING'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',   'KIND_BUILDING'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',     'KIND_BUILDING'),
        -- ('BUILDING_JNR_MODE_PHARMA',        'KIND_BUILDING'),
        -- ('BUILDING_JNR_MODE_PLASTICS',      'KIND_BUILDING');
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
insert or ignore into Buildings
        (BuildingType,                      PrereqDistrict,             PrereqTech,             Cost,   Maintenance,    CitizenSlots,   PurchaseYield,  AdvisorType,        Name,                                       Description)
VALUES  ('BUILDING_JNR_DUMMY_IZ_RIVER',     'DISTRICT_CITY_CENTER',     NULL,                   1,      0,              Null,           NULL,           'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_DUMMY_IZ_RIVER_NAME',     NULL),
        ('BUILDING_JNR_MILL_RACE',          NULL,                       NULL,                   1,      0,              Null,           NULL,           'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MILL_RACE_NAME',          'LOC_BUILDING_JNR_MILL_RACE_DESCRIPTION'),
        ('BUILDING_IZ_WATER_MILL',          'DISTRICT_INDUSTRIAL_ZONE', 'TECH_ENGINEERING',     100,    1,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_IZ_WATER_MILL_NAME',          'LOC_BUILDING_IZ_WATER_MILL_DESCRIPTION'),
        ('BUILDING_JNR_WIND_MILL',          'DISTRICT_INDUSTRIAL_ZONE', 'TECH_CONSTRUCTION',    100,    1,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_WIND_MILL_NAME',          'LOC_BUILDING_JNR_WIND_MILL_DESCRIPTION'),
        ('BUILDING_JNR_MANUFACTURY',        'DISTRICT_INDUSTRIAL_ZONE', 'TECH_APPRENTICESHIP',  200,    4,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MANUFACTURY_NAME',        'LOC_BUILDING_JNR_MANUFACTURY_DESCRIPTION'),
        ('BUILDING_JNR_CHEMICAL',           'DISTRICT_INDUSTRIAL_ZONE', 'TECH_GEOLOGY_HD',      400,  7,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_CHEMICAL_NAME',           'LOC_BUILDING_JNR_CHEMICAL_DESCRIPTION'),
        ('BUILDING_JNR_FREIGHT_YARD',       'DISTRICT_INDUSTRIAL_ZONE', 'TECH_INDUSTRIAL_AUTOMATION_HD',      600,    10,             1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_FREIGHT_YARD_NAME',       'LOC_BUILDING_JNR_FREIGHT_YARD_DESCRIPTION');
        -- ('BUILDING_JNR_MODE_MACHINES',      'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_MACHINES_NAME',      'LOC_BUILDING_JNR_MODE_MACHINES_DESCRIPTION'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',   'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_FERTILIZERS_NAME',   'LOC_BUILDING_JNR_MODE_FERTILIZERS_DESCRIPTION'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',   'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_ELECTRONICS_NAME',   'LOC_BUILDING_JNR_MODE_ELECTRONICS_DESCRIPTION'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',     'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_SOUVENIRS_NAME',     'LOC_BUILDING_JNR_MODE_SOUVENIRS_DESCRIPTION'),
        -- ('BUILDING_JNR_MODE_PHARMA',        'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_PHARMA_NAME',        'LOC_BUILDING_JNR_MODE_PHARMA_DESCRIPTION'),
        -- ('BUILDING_JNR_MODE_PLASTICS',      'DISTRICT_INDUSTRIAL_ZONE', NULL,                   450,    0,              1,              'YIELD_GOLD',   'ADVISOR_GENERIC',  'LOC_BUILDING_JNR_MODE_PLASTICS_NAME',      'LOC_BUILDING_JNR_MODE_PLASTICS_DESCRIPTION');

UPDATE Buildings SET InternalOnly=1                                                                     WHERE BuildingType='BUILDING_JNR_DUMMY_IZ_RIVER';

-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_MACHINES';
-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_FERTILIZERS';
-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_ELECTRONICS';
-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_SOUVENIRS';
-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_PHARMA';
-- UPDATE Buildings SET InternalOnly=1 WHERE BuildingType='BUILDING_JNR_MODE_PLASTICS';

insert or replace into HD_DUMMY_BUILDINGS (BuildingType) values ('BUILDING_JNR_MILL_RACE');
--------------------------------------------------------------

-- BuildingReplaces
--------------------------------------------------------------
-- UPDATE BuildingReplaces SET ReplacesBuildingType='BUILDING_JNR_FREIGHT_YARD' WHERE CivUniqueBuildingType='BUILDING_ELECTRONICS_FACTORY';

--------------------------------------------------------------

-- Buildings_XP2
--------------------------------------------------------------
INSERT OR IGNORE INTO Buildings_XP2
        (BuildingType,                  Pillage)
VALUES  ('BUILDING_JNR_DUMMY_IZ_RIVER', 0),
        ('BUILDING_JNR_MILL_RACE',      0);

-- UPDATE Buildings_XP2 SET RequiredPower=3 WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY';

-- INSERT OR IGNORE INTO Buildings_XP2
--         (BuildingType,                          RequiredPower)
-- VALUES
--         ('BUILDING_JNR_MODE_MACHINES',          4),
--         ('BUILDING_JNR_MODE_FERTILIZERS',       4),
--         ('BUILDING_JNR_MODE_ELECTRONICS',       4),
--         ('BUILDING_JNR_MODE_SOUVENIRS',         4),
--         ('BUILDING_JNR_MODE_PHARMA',            4),
--         ('BUILDING_JNR_MODE_PLASTICS',          4);
--------------------------------------------------------------

-- BuildingPrereqs
--------------------------------------------------------------
-- UPDATE BuildingPrereqs SET PrereqBuilding='BUILDING_FACTORY'  WHERE Building='BUILDING_ELECTRONICS_FACTORY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
VALUES  ('BUILDING_JNR_MILL_RACE',          'BUILDING_JNR_DUMMY_IZ_RIVER'),
        ('BUILDING_IZ_WATER_MILL',          'BUILDING_JNR_MILL_RACE'),

        ('BUILDING_WORKSHOP',               'BUILDING_IZ_WATER_MILL'),
        ('BUILDING_JNR_MANUFACTURY',        'BUILDING_IZ_WATER_MILL'),
        ('BUILDING_JNR_CHEMICAL',           'BUILDING_WORKSHOP'),

        ('BUILDING_HD_ELECTRONICS_FACTORY', 'BUILDING_JNR_MANUFACTURY'),

        ('BUILDING_JNR_FREIGHT_YARD',       'BUILDING_FACTORY'),
        ('BUILDING_JNR_FREIGHT_YARD',       'BUILDING_HD_ELECTRONICS_FACTORY'),

        ('BUILDING_HD_INTERNET_COMPANY',    'BUILDING_JNR_CHEMICAL');

        -- ('BUILDING_JNR_MODE_MACHINES',      'BUILDING_FACTORY'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',   'BUILDING_FACTORY'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',   'BUILDING_FACTORY'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',     'BUILDING_FACTORY'),
        -- ('BUILDING_JNR_MODE_PHARMA',        'BUILDING_FACTORY'),
        -- ('BUILDING_JNR_MODE_PLASTICS',      'BUILDING_FACTORY');

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_WIND_MILL'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_IZ_WATER_MILL';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_MANUFACTURY'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_WORKSHOP';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_CHEMICAL'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_FACTORY';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_COAL_POWER_PLANT'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_POWER_PLANT';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_FOSSIL_FUEL_POWER_PLANT'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_POWER_PLANT';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  a.Building,                         'BUILDING_JNR_RENEWABLE_DISTRIBUTION'
FROM    BuildingPrereqs a, Buildings b
WHERE   a.PrereqBuilding='BUILDING_POWER_PLANT' AND b.BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION';

INSERT OR IGNORE INTO BuildingPrereqs
        (Building,                          PrereqBuilding)
SELECT  Building,                           'BUILDING_JNR_FREIGHT_YARD'
FROM    BuildingPrereqs
WHERE   PrereqBuilding='BUILDING_POWER_PLANT';

-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_FERTILIZERS'  AND PrereqBuilding='BUILDING_FACTORY';
-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_PHARMA'       AND PrereqBuilding='BUILDING_FACTORY';
-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_PLASTICS'     AND PrereqBuilding='BUILDING_FACTORY';
-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_MACHINES'     AND PrereqBuilding='BUILDING_JNR_CHEMICAL';
-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_ELECTRONICS'  AND PrereqBuilding='BUILDING_JNR_CHEMICAL';
-- DELETE FROM BuildingPrereqs WHERE Building='BUILDING_JNR_MODE_SOUVENIRS'    AND PrereqBuilding='BUILDING_JNR_CHEMICAL';
--------------------------------------------------------------

-- MutuallyExclusiveBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                              MutuallyExclusiveBuilding)
VALUES  ('BUILDING_JNR_MILL_RACE',              'BUILDING_JNR_WIND_MILL'),
        
        ('BUILDING_IZ_WATER_MILL',              'BUILDING_JNR_WIND_MILL'),
        ('BUILDING_JNR_WIND_MILL',              'BUILDING_IZ_WATER_MILL'),
        ('BUILDING_WORKSHOP',                   'BUILDING_JNR_MANUFACTURY'),
        ('BUILDING_JNR_MANUFACTURY',            'BUILDING_WORKSHOP'),
        ('BUILDING_FACTORY',                    'BUILDING_JNR_CHEMICAL'),
        ('BUILDING_JNR_CHEMICAL',               'BUILDING_FACTORY'),
        ('BUILDING_HD_ELECTRONICS_FACTORY',     'BUILDING_JNR_CHEMICAL'),
        ('BUILDING_JNR_CHEMICAL',               'BUILDING_HD_ELECTRONICS_FACTORY'),
        ('BUILDING_JNR_FREIGHT_YARD',           'BUILDING_COAL_POWER_PLANT'),
        ('BUILDING_JNR_FREIGHT_YARD',           'BUILDING_FOSSIL_FUEL_POWER_PLANT'),
        ('BUILDING_JNR_FREIGHT_YARD',           'BUILDING_POWER_PLANT'),
        ('BUILDING_COAL_POWER_PLANT',           'BUILDING_JNR_FREIGHT_YARD'),
        ('BUILDING_FOSSIL_FUEL_POWER_PLANT',    'BUILDING_JNR_FREIGHT_YARD'),
        ('BUILDING_POWER_PLANT',                'BUILDING_JNR_FREIGHT_YARD'),
        ('BUILDING_JNR_FREIGHT_YARD',           'BUILDING_HD_INTERNET_COMPANY'),
        ('BUILDING_HD_INTERNET_COMPANY',        'BUILDING_JNR_FREIGHT_YARD');

        -- ('BUILDING_JNR_MODE_MACHINES',          'BUILDING_JNR_MODE_FERTILIZERS'),
        -- ('BUILDING_JNR_MODE_MACHINES',          'BUILDING_JNR_MODE_ELECTRONICS'),
        -- ('BUILDING_JNR_MODE_MACHINES',          'BUILDING_JNR_MODE_SOUVENIRS'),
        -- ('BUILDING_JNR_MODE_MACHINES',          'BUILDING_JNR_MODE_PHARMA'),
        -- ('BUILDING_JNR_MODE_MACHINES',          'BUILDING_JNR_MODE_PLASTICS'),

        -- ('BUILDING_JNR_MODE_FERTILIZERS',       'BUILDING_JNR_MODE_MACHINES'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',       'BUILDING_JNR_MODE_ELECTRONICS'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',       'BUILDING_JNR_MODE_SOUVENIRS'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',       'BUILDING_JNR_MODE_PHARMA'),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',       'BUILDING_JNR_MODE_PLASTICS'),

        -- ('BUILDING_JNR_MODE_ELECTRONICS',       'BUILDING_JNR_MODE_MACHINES'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',       'BUILDING_JNR_MODE_FERTILIZERS'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',       'BUILDING_JNR_MODE_SOUVENIRS'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',       'BUILDING_JNR_MODE_PHARMA'),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',       'BUILDING_JNR_MODE_PLASTICS'),

        -- ('BUILDING_JNR_MODE_SOUVENIRS',         'BUILDING_JNR_MODE_MACHINES'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',         'BUILDING_JNR_MODE_FERTILIZERS'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',         'BUILDING_JNR_MODE_ELECTRONICS'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',         'BUILDING_JNR_MODE_PHARMA'),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',         'BUILDING_JNR_MODE_PLASTICS'),

        -- ('BUILDING_JNR_MODE_PHARMA',            'BUILDING_JNR_MODE_MACHINES'),
        -- ('BUILDING_JNR_MODE_PHARMA',            'BUILDING_JNR_MODE_FERTILIZERS'),
        -- ('BUILDING_JNR_MODE_PHARMA',            'BUILDING_JNR_MODE_ELECTRONICS'),
        -- ('BUILDING_JNR_MODE_PHARMA',            'BUILDING_JNR_MODE_SOUVENIRS'),
        -- ('BUILDING_JNR_MODE_PHARMA',            'BUILDING_JNR_MODE_PLASTICS'),

        -- ('BUILDING_JNR_MODE_PLASTICS',          'BUILDING_JNR_MODE_MACHINES'),
        -- ('BUILDING_JNR_MODE_PLASTICS',          'BUILDING_JNR_MODE_FERTILIZERS'),
        -- ('BUILDING_JNR_MODE_PLASTICS',          'BUILDING_JNR_MODE_ELECTRONICS'),
        -- ('BUILDING_JNR_MODE_PLASTICS',          'BUILDING_JNR_MODE_SOUVENIRS'),
        -- ('BUILDING_JNR_MODE_PLASTICS',          'BUILDING_JNR_MODE_PHARMA');


-- Renewable Energy Complexity
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                              MutuallyExclusiveBuilding)
SELECT  'BUILDING_JNR_FREIGHT_YARD',            BuildingType
FROM    Buildings
WHERE   BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION';

-- INSERT OR IGNORE INTO MutuallyExclusiveBuildings
--         (Building,                              MutuallyExclusiveBuilding)
-- SELECT  'BUILDING_ELECTRONICS_FACTORY',         BuildingType
-- FROM    Buildings
-- WHERE   BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                              MutuallyExclusiveBuilding)
SELECT  BuildingType,                           'BUILDING_JNR_FREIGHT_YARD'
FROM    Buildings
WHERE   BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION';

-- Uniques
INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                              MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,                  'BUILDING_JNR_MANUFACTURY'
FROM    BuildingReplaces
WHERE   ReplacesBuildingType='BUILDING_WORKSHOP';

INSERT OR IGNORE INTO MutuallyExclusiveBuildings
        (Building,                              MutuallyExclusiveBuilding)
SELECT  CivUniqueBuildingType,                  'BUILDING_JNR_CHEMICAL'
FROM    BuildingReplaces
WHERE   ReplacesBuildingType='BUILDING_FACTORY';
--------------------------------------------------------------

-- StartingBuildings
--------------------------------------------------------------
DELETE FROM StartingBuildings WHERE District='DISTRICT_INDUSTRIAL_ZONE';
--------------------------------------------------------------

-- Modifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO Modifiers
        (ModifierId,                        ModifierType,                                           SubjectRequirementSetId)
VALUES  ('JNR_GRANT_MILL_RACE_DUMMY_RIVER', 'MODIFIER_SINGLE_CITY_GRANT_BUILDING_IN_CITY_IGNORE',   'PLOT_ADJACENT_TO_RIVER_REQUIREMENTS');
--------------------------------------------------------------

-- ModifierArguments
--------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments
        (ModifierId,                        Name,           Value)
VALUES  ('JNR_GRANT_MILL_RACE_DUMMY_RIVER', 'BuildingType', 'BUILDING_JNR_MILL_RACE');
--------------------------------------------------------------

-- DistrictModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO DistrictModifiers
        (DistrictType,                  ModifierId)
VALUES  ('DISTRICT_INDUSTRIAL_ZONE',    'JNR_GRANT_MILL_RACE_DUMMY_RIVER');

INSERT OR IGNORE INTO DistrictModifiers
        (DistrictType,                  ModifierId)
SELECT  CivUniqueDistrictType,          'JNR_GRANT_MILL_RACE_DUMMY_RIVER'
FROM    DistrictReplaces
WHERE   ReplacesDistrictType='DISTRICT_INDUSTRIAL_ZONE';
--------------------------------------------------------------


-- UC_PRD_Bonuses_Yields
-- Author: JNR
--------------------------------------------------------------

-- Buildings
--------------------------------------------------------------
UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_COAL_POWER_PLANT';
UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_FOSSIL_FUEL_POWER_PLANT';
UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_POWER_PLANT';
UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION';

-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_MACHINES';
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_FERTILIZERS';
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_ELECTRONICS';
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_SOUVENIRS';
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_PHARMA';
-- UPDATE Buildings SET RegionalRange=6 WHERE BuildingType='BUILDING_JNR_MODE_PLASTICS';
--------------------------------------------------------------

-- Building_YieldChanges
--------------------------------------------------------------
INSERT OR IGNORE INTO Building_YieldChanges
        (BuildingType,                      YieldType,          YieldChange)
VALUES
        ('BUILDING_IZ_WATER_MILL',          'YIELD_PRODUCTION', 2),
        ('BUILDING_JNR_WIND_MILL',          'YIELD_PRODUCTION', 2);
        -- ('BUILDING_JNR_MODE_MACHINES',      'YIELD_PRODUCTION', 2),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',   'YIELD_PRODUCTION', 2),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',   'YIELD_PRODUCTION', 2),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',     'YIELD_PRODUCTION', 2),
        -- ('BUILDING_JNR_MODE_PHARMA',        'YIELD_PRODUCTION', 2),
        -- ('BUILDING_JNR_MODE_PLASTICS',      'YIELD_PRODUCTION', 2);

-- UPDATE Building_YieldChanges SET YieldChange=1 WHERE BuildingType='BUILDING_WORKSHOP'                   AND YieldType='YIELD_PRODUCTION';
-- UPDATE Building_YieldChanges SET YieldChange=4 WHERE BuildingType='BUILDING_FOSSIL_FUEL_POWER_PLANT'    AND YieldType='YIELD_PRODUCTION';
-- UPDATE Building_YieldChanges SET YieldChange=5 WHERE BuildingType='BUILDING_POWER_PLANT'                AND YieldType='YIELD_PRODUCTION';
UPDATE Building_YieldChanges SET YieldChange=6 WHERE BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION' AND YieldType='YIELD_PRODUCTION';

-- UPDATE Building_YieldChanges SET YieldChange=1 WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY'        AND YieldType='YIELD_CULTURE';
-- DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_FACTORY'                                 AND YieldType='YIELD_PRODUCTION';
-- DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY'                     AND YieldType='YIELD_PRODUCTION';
-- DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_POWER_PLANT'                             AND YieldType='YIELD_SCIENCE';
DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION'              AND YieldType='YIELD_SCIENCE';
DELETE FROM Building_YieldChanges WHERE BuildingType='BUILDING_JNR_RENEWABLE_DISTRIBUTION'              AND YieldType='YIELD_CULTURE';
--------------------------------------------------------------

-- Building_CitizenYieldChanges
--------------------------------------------------------------
INSERT OR IGNORE INTO Building_CitizenYieldChanges
        (BuildingType,                      YieldType,          YieldChange)
VALUES  ('BUILDING_JNR_MANUFACTURY',        'YIELD_PRODUCTION', 1),
        ('BUILDING_FACTORY',                'YIELD_PRODUCTION', 1),
        ('BUILDING_JNR_CHEMICAL',           'YIELD_PRODUCTION', 1),
        ('BUILDING_JNR_FREIGHT_YARD',       'YIELD_PRODUCTION', 1);
        -- ('BUILDING_ELECTRONICS_FACTORY',    'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_MACHINES',      'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_FERTILIZERS',   'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_ELECTRONICS',   'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_SOUVENIRS',     'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_PHARMA',        'YIELD_PRODUCTION', 1),
        -- ('BUILDING_JNR_MODE_PLASTICS',      'YIELD_PRODUCTION', 1);
--------------------------------------------------------------

-- Building_YieldChangesBonusWithPower
--------------------------------------------------------------
-- DELETE FROM Building_YieldChangesBonusWithPower WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY' AND YieldType='YIELD_PRODUCTION';

-- INSERT OR IGNORE INTO Building_YieldChangesBonusWithPower
--         (BuildingType,              YieldType,          YieldChange)
-- SELECT  'BUILDING_JNR_CHEMICAL',    'YIELD_PRODUCTION', YieldChange
-- FROM    Building_YieldChangesBonusWithPower
-- WHERE   BuildingType='BUILDING_FACTORY' AND YieldType='YIELD_PRODUCTION';

-- INSERT OR IGNORE INTO Building_YieldChangesBonusWithPower
--         (BuildingType,                      YieldType,          YieldChange)
-- VALUES  
--         ('BUILDING_JNR_MODE_MACHINES',      'YIELD_PRODUCTION', 2),
--         ('BUILDING_JNR_MODE_FERTILIZERS',   'YIELD_FOOD',       2),
--         ('BUILDING_JNR_MODE_ELECTRONICS',   'YIELD_SCIENCE',    2),
--         ('BUILDING_JNR_MODE_SOUVENIRS',     'YIELD_CULTURE',    2),
--         ('BUILDING_JNR_MODE_PHARMA',        'YIELD_FAITH',      2),
--         ('BUILDING_JNR_MODE_PLASTICS',      'YIELD_GOLD',       4);
--------------------------------------------------------------

-- Building_YieldDistrictCopies
--------------------------------------------------------------
-- DELETE FROM Building_YieldDistrictCopies WHERE BuildingType='BUILDING_COAL_POWER_PLANT';

INSERT OR IGNORE INTO Building_YieldDistrictCopies
        (BuildingType,                      OldYieldType,       NewYieldType)
VALUES  ('BUILDING_JNR_FREIGHT_YARD',       'YIELD_PRODUCTION', 'YIELD_PRODUCTION');
--------------------------------------------------------------

-- BuildingModifiers
--------------------------------------------------------------
-- DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_ELECTRONICS_FACTORY' AND ModifierId='ELECTRONICSFACTORY_CULTURE';

-- UC_PRD_Bonuses_Special
-- Author: JNR
--------------------------------------------------------------

-- Building_GreatPersonPoints
--------------------------------------------------------------
INSERT OR IGNORE INTO Building_GreatPersonPoints
        (BuildingType,                      GreatPersonClassType,           PointsPerTurn)
VALUES
        ('BUILDING_IZ_WATER_MILL',          'GREAT_PERSON_CLASS_ENGINEER',  1),
        ('BUILDING_JNR_WIND_MILL',          'GREAT_PERSON_CLASS_ENGINEER',  1),
        ('BUILDING_JNR_MANUFACTURY',        'GREAT_PERSON_CLASS_ENGINEER',  1),
        ('BUILDING_JNR_CHEMICAL',           'GREAT_PERSON_CLASS_ENGINEER',  1),
        ('BUILDING_JNR_FREIGHT_YARD',       'GREAT_PERSON_CLASS_ENGINEER',  1);
--------------------------------------------------------------

-- Project_BuildingCosts
--------------------------------------------------------------
INSERT OR IGNORE INTO Project_BuildingCosts
        (ProjectType,                               ConsumedBuildingType)
VALUES  ('PROJECT_CONVERT_REACTOR_TO_COAL',         'BUILDING_JNR_FREIGHT_YARD'),
        ('PROJECT_CONVERT_REACTOR_TO_OIL',          'BUILDING_JNR_FREIGHT_YARD'),
        ('PROJECT_CONVERT_REACTOR_TO_URANIUM',      'BUILDING_JNR_FREIGHT_YARD');

INSERT OR IGNORE INTO Project_BuildingCosts
        (ProjectType,                               ConsumedBuildingType)
SELECT  ProjectType,                                'BUILDING_JNR_FREIGHT_YARD'
FROM    Projects
WHERE   ProjectType='PROJECT_JNR_CONVERT_REACTOR_TO_BATTERY';

-- INSERT OR IGNORE INTO Project_BuildingCosts
--         (ProjectType,                               ConsumedBuildingType)
-- SELECT  ProjectType,                                'BUILDING_ELECTRONICS_FACTORY'
-- FROM    Projects
-- WHERE   ProjectType='PROJECT_JNR_CONVERT_REACTOR_TO_BATTERY';


----------------------------------------------------------------------------------------------------------------------------
-- Apocalypse Mode
----------------------------------------------------------------------------------------------------------------------------

-- RandomEvent_PillagedBuildings
--------------------------------------------------------------
INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
        (RandomEventType,   BuildingType)
SELECT  RandomEventType,    'BUILDING_JNR_CHEMICAL'
FROM    RandomEvent_PillagedBuildings
WHERE   BuildingType='BUILDING_FACTORY';

INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
        (RandomEventType,   BuildingType)
SELECT  RandomEventType,    'BUILDING_JNR_FREIGHT_YARD'
FROM    RandomEvent_PillagedBuildings
WHERE   BuildingType='BUILDING_POWER_PLANT';


-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_MACHINES'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';

-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_FERTILIZERS'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';

-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_ELECTRONICS'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';

-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_SOUVENIRS'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';

-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_PHARMA'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';

-- INSERT OR IGNORE INTO RandomEvent_PillagedBuildings
--         (RandomEventType,   BuildingType)
-- SELECT  RandomEventType,    'BUILDING_JNR_MODE_PLASTICS'
-- FROM    RandomEvent_PillagedBuildings
-- WHERE   BuildingType='BUILDING_POWER_PLANT';
--------------------------------------------------------------